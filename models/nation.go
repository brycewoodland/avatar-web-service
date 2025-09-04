package models

import (
	"github.com/brycewoodland/avatar_last_airbender/db"
)

type Nation struct {
	ID				int		`json:"id"`
	Name    		string  `json:"name"`
	Description		string  `json:"description"`
}

func GetAllNations() ([]Nation, error) {
	rows, err := db.DB.Query(`SELECT * FROM nations`,
	)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var nations []Nation
	for rows.Next() {
		var n Nation
		if err := rows.Scan(&n.ID, &n.Name, &n.Description); err != nil {
			return nil, err
		}
		nations = append(nations, n)
	}
	return nations, nil
}