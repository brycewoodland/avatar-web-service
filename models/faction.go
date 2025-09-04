package models

import (
	"strconv"

	"github.com/brycewoodland/avatar_last_airbender/db"
)

type Faction struct {
	ID			int			`json:"id"`
	Name		string		`json:"name"`
	NationID	*int		`json:"nationId"`
	Description *string 	`json:"description"`
}

func GetAllFactions(nationID *int, page, pageSize int) ([]Faction, error) {
	baseQuery := "SELECT id, name, nation_id, description FROM factions WHERE 1 = 1"
	params := []interface{}{}
	paramIndex := 1

	// nation filtering param query
	if nationID != nil {
		baseQuery += " AND nation_id = $" + strconv.Itoa(paramIndex)
		params = append(params, nationID)
		paramIndex++
	}

	// pagination
	if page <= 0 {
		page = 1
	}
	if pageSize <= 0 {
		pageSize = 10
	}
	offset := (page - 1) * pageSize

	baseQuery += " LIMIT $" + strconv.Itoa(paramIndex) + " OFFSET $" + strconv.Itoa(paramIndex + 1)
	params = append(params, pageSize, offset)
	
	rows, err := db.DB.Query(baseQuery, params...)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var factions []Faction
	for rows.Next() {
		var f Faction
		if err := rows.Scan(&f.ID, &f.Name, &f.NationID, &f.Description); err != nil {
			return nil, err
		}
		factions = append(factions, f)
	}
	return factions, nil
}