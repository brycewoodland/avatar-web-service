package controllers

import (
    "encoding/json"
    "log"
    "net/http"
    "strconv"
	"strings"

    "github.com/brycewoodland/avatar_last_airbender/models"
)

func GetCharactersHandler(w http.ResponseWriter, r *http.Request) {
    // Read filters from query parameters
    filters := map[string]string{
        "nation": r.URL.Query().Get("nation"),
    }

    // Parse pagination parameters
    page := 1
    size := 10

    if p := r.URL.Query().Get("page"); p != "" {
        if parsed, err := strconv.Atoi(p); err == nil && parsed > 0 {
            page = parsed
        }
    }

    if s := r.URL.Query().Get("pageSize"); s != "" {
        if parsed, err := strconv.Atoi(s); err == nil && parsed > 0 {
            size = parsed
        }
    }

    offset := (page - 1) * size

    // Fetch characters from the model
    characters, err := models.GetAllCharacters(filters, size, offset)
    if err != nil {
		if strings.Contains(err.Error(), "invalid nation id") {
			http.Error(w, err.Error(), http.StatusBadRequest)
			return
		}

        log.Printf("Error fetching characters: %v", err)
        http.Error(w, "Failed to fetch characters", http.StatusInternalServerError)
        return
    }

    // Return JSON response
    w.Header().Set("Content-Type", "application/json")
    json.NewEncoder(w).Encode(characters)
}
