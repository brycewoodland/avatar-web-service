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

    p := r.URL.Query().Get("page")
    if p != "" {
        parsed, err := strconv.Atoi(p)
        if err == nil && parsed > 0 {
            page = parsed
        }
    }

    s := r.URL.Query().Get("pageSize")
    
    if s != "" {
        parsed, err := strconv.Atoi(s)
        if err == nil && parsed > 0 {
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

func GetCharacterByIDHandler(w http.ResponseWriter, r *http.Request) {
    // Get "id" from query paramters
    idStr := r.URL.Query().Get("id")
    if idStr == "" {
        http.Error(w, "Missing character ID", http.StatusBadRequest)
        return
    }

    characterID, err := strconv.Atoi(idStr)
    if err != nil || characterID <= 0 {
        http.Error(w, "Invalid character ID", http.StatusBadRequest)
        return
    }

    // Fetch the character from the model
    character, err := models.GetCharacterByID(characterID)
    if err != nil {
        if strings.Contains(err.Error(), "not found") {
            http.Error(w, err.Error(), http.StatusNotFound)
            return
        }

        log.Printf("Error fetching character: %v", err)
        http.Error(w, "Failed to fetch character", http.StatusInternalServerError)
        return
    }
    w.Header().Set("Content-Type", "application/json")
    json.NewEncoder(w).Encode(character)
}