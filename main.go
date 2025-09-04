package main

import (
	"fmt"
	"log"
	"net/http"
	"os"

	"github.com/brycewoodland/avatar_last_airbender/controllers"
	"github.com/brycewoodland/avatar_last_airbender/db"
	"github.com/joho/godotenv"
)

func main() {
	// Load .env file
	err := godotenv.Load()
	if err != nil {
		log.Println("Warning: .env file not found, using environment variables")
	}

	// Get database URL from environment
	dbURL := os.Getenv("DATABASE_URL")
	if dbURL == "" {
		log.Fatal("DATABASE_URL not set")
	}

	// Initialize DB
	db.Init(dbURL)

	mux := http.NewServeMux()

	// Character endpoint
	mux.HandleFunc("/api/v1/characters", controllers.GetCharactersHandler)
	mux.HandleFunc("/api/v1/characters/", controllers.GetCharacterByIDHandler)
	mux.HandleFunc("/api/v1/nations", controllers.GetAllNationsHandler)

	fmt.Println("Server is running on :8080")
	log.Fatal(http.ListenAndServe(":8080", mux))
}
