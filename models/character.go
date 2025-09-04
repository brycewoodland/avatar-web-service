package models

import (
	"database/sql"
	"fmt"
	"strconv"

	"github.com/brycewoodland/avatar_last_airbender/db"
	"github.com/brycewoodland/avatar_last_airbender/service"
)

type Character struct {
	ID          int      `json:"id"`
	Name        string   `json:"name"`
	NationID    int      `json:"nation_id"`
	DateOfBirth *string  `json:"date_of_birth"`
	DateOfDeath *string  `json:"date_of_death"`
	Gender      *string  `json:"gender"`
	Height      *float64 `json:"height"`
	HairColor   *string  `json:"hair_color"`
	EyeColor    *string  `json:"eye_color"`
}

// Fetch all characters with optional nation filter and pagination
func GetAllCharacters(nationID *int, page, pageSize int) ([]Character, error) {
	page, pageSize = service.ValidatePagination(page, pageSize)

	baseQuery := `
		SELECT 
			id, 
			name, 
			nation_id, 
			date_of_birth, 
			date_of_death,
		    gender, 
			height, 
			hair_color, 
			eye_color
		FROM characters 
		WHERE 1=1
	`
	args := []interface{}{}
	paramIndex := 1

	if nationID != nil {
		baseQuery += " AND nation_id = $" + strconv.Itoa(paramIndex)
		args = append(args, *nationID)
		paramIndex++
	}

	offset := (page - 1) * pageSize
	baseQuery += " ORDER BY id LIMIT $" + strconv.Itoa(paramIndex)
	args = append(args, pageSize)
	paramIndex++
	baseQuery += " OFFSET $" + strconv.Itoa(paramIndex)
	args = append(args, offset)

	rows, err := db.DB.Query(baseQuery, args...)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	characters := []Character{}
	for rows.Next() {
		var c Character
		if err := rows.Scan(
			&c.ID,
			&c.Name,
			&c.NationID,
			&c.DateOfBirth,
			&c.DateOfDeath,
			&c.Gender,
			&c.Height,
			&c.HairColor,
			&c.EyeColor,
		); err != nil {
			return nil, err
		}
		characters = append(characters, c)
	}

	return characters, nil
}

// Fetch Character By ID
func GetCharacterByID(characterID int) (*Character, error) {
	query := `
		SELECT 
			id, 
			name, 
			nation_id, 
			date_of_birth, 
			date_of_death,
		    gender, 
			height, 
			hair_color, 
			eye_color
		FROM characters 
		WHERE id = $1
	`

	row := db.DB.QueryRow(query, characterID)
	var c Character
	err := row.Scan(
		&c.ID,
		&c.Name,
		&c.NationID,
		&c.DateOfBirth,
		&c.DateOfDeath,
		&c.Gender,
		&c.Height,
		&c.HairColor,
		&c.EyeColor,
	)
	if err != nil {
		if err == sql.ErrNoRows {
			return nil, fmt.Errorf("character with id %d not found", characterID)
		}
		return nil, err
	}
	return &c, nil
}
