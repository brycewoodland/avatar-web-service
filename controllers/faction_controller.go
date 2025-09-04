package controllers

import (
	"encoding/json"
	"log"
	"net/http"
	"strconv"

	"github.com/brycewoodland/avatar_last_airbender/models"
)

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

	// Parse Pagination
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

	factions, err := models.GetAllFactions(nation, page, pageSize)
	if err != nil {
		log.Fatalf("Error fetching factions: %v", err)
		http.Error(w, "Failed to fetch factions", http.StatusInternalServerError)
		return
	}
	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(factions)
}