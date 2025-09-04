package controllers

import (
	"encoding/json"
	"net/http"
	"strconv"

	"github.com/brycewoodland/avatar_last_airbender/models"
)

// GET /api/v1/locations
func GetLocationsHandler(w http.ResponseWriter, r *http.Request) {
	// Parse query params
	page, _ := strconv.Atoi(r.URL.Query().Get("page"))
	pageSize, _ := strconv.Atoi(r.URL.Query().Get("pageSize"))

	var nationID *int
	if n := r.URL.Query().Get("nation"); n != "" {
		if id, err := strconv.Atoi(n); err == nil {
			nationID = &id
		} else {
			http.Error(w, "Invalid nation ID", http.StatusBadRequest)
			return
		}
	}

	// Fetch from model
	locations, err := models.GetAllLocations(nationID, page, pageSize)
	if err != nil {
		http.Error(w, "Failed to fetch locations: "+err.Error(), http.StatusInternalServerError)
		return
	}

	// Respond JSON
	w.Header().Set("Content-Type", "application/json")
	if err := json.NewEncoder(w).Encode(locations); err != nil {
		http.Error(w, "Failed to encode response", http.StatusInternalServerError)
		return
	}
}
