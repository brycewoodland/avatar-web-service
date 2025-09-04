package service

import (
	"fmt"
	"strconv"
)

// ValidatePagination ensures page and pageSize have sensible defaults.
func ValidatePagination(page, pageSize int) (int, int) {
	if page <= 0 {
		page = 1
	}
	if pageSize <= 0 {
		pageSize = 10
	}
	return page, pageSize
}

// BuildFilters validates and builds a map of filters for nation_id.
// Right now, it only supports nation_id but can be extended later.
func BuildFilters(rawFilters map[string]string) (map[string]interface{}, error) {
	filters := make(map[string]interface{})

	if val, ok := rawFilters["nation"]; ok && val != "" {
		id, err := strconv.Atoi(val)
		if err != nil {
			return nil, fmt.Errorf("invalid nation id: %v", val)
		}
		filters["nation_id"] = id
	}

	return filters, nil
}
