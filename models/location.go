package models

import (
	"strconv"

	"github.com/brycewoodland/avatar_last_airbender/db"
	"github.com/brycewoodland/avatar_last_airbender/service"
)

type Location struct {
	ID          int      `json:"id"`
	Name        string   `json:"name"`
	NationID    *int     `json:"nationId"`
	Description *string  `json:"description"`
}

// Fetch all locations with optional filters and pagination
func GetAllLocations(nationID *int, page, pageSize int) ([]Location, error) {
	
	// --- Step 1: Business logic via helpers ---
    page, pageSize = service.ValidatePagination(page, pageSize)

    rawFilters := map[string]string{}
    if nationID != nil {
        rawFilters["nation"] = strconv.Itoa(*nationID)
    }

    filters, err := service.BuildFilters(rawFilters)
    if err != nil {
        return nil, err
    }

    // --- Step 2: Repository / SQL ---
    baseQuery := "SELECT id, name, nation_id, description FROM locations WHERE 1 = 1"
    params := []interface{}{}
    paramIndex := 1

    if val, ok := filters["nation_id"]; ok {
        baseQuery += " AND nation_id = $" + strconv.Itoa(paramIndex)
        params = append(params, val)
        paramIndex++
    }

    offset := (page - 1) * pageSize
    baseQuery += " LIMIT $" + strconv.Itoa(paramIndex) + " OFFSET $" + strconv.Itoa(paramIndex+1)
    params = append(params, pageSize, offset)

    rows, err := db.DB.Query(baseQuery, params...)
    if err != nil {
        return nil, err
    }
    defer rows.Close()

    var locations []Location
    for rows.Next() {
        var l Location
        if err := rows.Scan(&l.ID, &l.Name, &l.NationID, &l.Description); err != nil {
            return nil, err
        }
        locations = append(locations, l)
    }

    return locations, nil
}