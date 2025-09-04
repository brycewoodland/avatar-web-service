package controllers

import (
	"net/http"
	"encoding/json"
	"log"

	"github.com/brycewoodland/avatar_last_airbender/models"
)

func GetAllNationsHandler(w http.ResponseWriter, r *http.Request) {
	nations, err := models.GetAllNations()
	if err != nil {
		log.Fatalf("Error fetching nations: %v", err)
		http.Error(w, "Failed to fetch nations", http.StatusInternalServerError)
		return
	}

	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(nations)
}