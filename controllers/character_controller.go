package controllers

import (
	"encoding/json"
	"log"
	"net/http"
	"strconv"
	"strings"

	"github.com/brycewoodland/avatar_last_airbender/models"
)

// GET /api/v1/characters
func GetCharactersHandler(w http.ResponseWriter, r *http.Request) {
	// Filters
	filters := map[string]string{
		"nation": r.URL.Query().Get("nation"),
	}

	// Pagination
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

	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(characters)
}

// GET /api/v1/characters/{id}
func GetCharacterByIDHandler(w http.ResponseWriter, r *http.Request) {
	// Extract ID from path
	path := strings.TrimPrefix(r.URL.Path, "/api/v1/characters/")
	id, err := strconv.Atoi(path)
	if err != nil || id <= 0 {
		http.Error(w, "Invalid character ID", http.StatusBadRequest)
		return
	}

	character, err := models.GetCharacterByID(id)
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