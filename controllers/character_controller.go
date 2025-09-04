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
	query := r.URL.Query()

	// Parse nation query parameter
	var nationID *int
	if val := query.Get("nation"); val != "" {
		if n, err := strconv.Atoi(val); err == nil {
			nationID = &n
		} else {
			http.Error(w, "Invalid nation parameter", http.StatusBadRequest)
			return
		}
	}

	// Parse pagination
	page := 1
	if val := query.Get("page"); val != "" {
		if p, err := strconv.Atoi(val); err == nil && p > 0 {
			page = p
		}
	}

	pageSize := 10
	if val := query.Get("pageSize"); val != "" {
		if ps, err := strconv.Atoi(val); err == nil && ps > 0 {
			pageSize = ps
		}
	}

	// Fetch from model
	characters, err := models.GetAllCharacters(nationID, page, pageSize)
	if err != nil {
		log.Printf("Error fetching characters: %v", err)
		http.Error(w, "Failed to fetch characters", http.StatusInternalServerError)
		return
	}

	// Return JSON
	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(characters)
}

// GET /api/v1/characters/{id}
func GetCharacterByIDHandler(w http.ResponseWriter, r *http.Request) {
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
