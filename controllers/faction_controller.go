package controllers

import (
	"encoding/json"
	"log"
	"net/http"
	"strconv"

	"github.com/brycewoodland/avatar_last_airbender/models"
)

// Get /api/v1/factions
func GetAllFactionsHandler(w http.ResponseWriter, r *http.Request) {
	query := r.URL.Query()

	// Parse nationID
	var nation *int
	if val := query.Get("nation"); val != "" {
		if n, err := strconv.Atoi(val); err == nil {
			nation = &n
		} else {
			http.Error(w, "Invalid nation parameter", http.StatusBadRequest)
			return
		}
	}

	// Parse pagination (defaults handled in service.ValidatePagination)
	page, _ := strconv.Atoi(query.Get("page"))
	pageSize, _ := strconv.Atoi(query.Get("pageSize"))

	// Fetch from model
	factions, err := models.GetAllFactions(nation, page, pageSize)
	if err != nil {
		log.Printf("Error fetching factions: %v", err)
		http.Error(w, "Failed to fetch factions", http.StatusInternalServerError)
		return
	}

	// Return JSON
	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(factions)
}
