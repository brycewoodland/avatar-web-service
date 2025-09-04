package models

import (
	"fmt"
	"strconv"
	"strings"

	"github.com/brycewoodland/avatar_last_airbender/db"
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

// Fetch all characters with optional filters and pagination
func GetAllCharacters(filters map[string]string, limit, offset int) ([]Character, error) {
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

	var conditions []string
	var args []interface{}
	argID := 1

	// Add filters
	nation := filters["nation"]
	if nation != "" {
		// Convert to int
		nationID, err := strconv.Atoi(nation)
		if err != nil {
			// Invalid nation id, return an error instead of querying
			return nil, fmt.Errorf("invalid nation id: %v", nation)
		}

		// Use the integer value in the query
		conditions = append(conditions, fmt.Sprintf("nation_id = $%d", argID))
		args = append(args, nationID)
		argID++
	}

	// Combine base query with conditions
	if len(conditions) > 0 {
		baseQuery += " AND " + strings.Join(conditions, " AND ")
	}

	// Add pagination
	baseQuery += fmt.Sprintf(" ORDER BY id LIMIT $%d OFFSET $%d", argID, argID+1)
	args = append(args, limit, offset)

	// Execute query
	rows, err := db.DB.Query(baseQuery, args...)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	// Parse results
	characters := make([]Character, 0)
	for rows.Next() {
		var c Character
		err := rows.Scan(
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
			return nil, err
		}
		characters = append(characters, c)
	}

	return characters, nil
}