package main 

import (
	"fmt"
	"log"
	"net/http"
	"github.com/brycewoodland/avatar_last_airbender/controllers"
    "github.com/brycewoodland/avatar_last_airbender/db"
)

func main() {
	// Initialize DB
	db.Init("postgres://avatar_user:Gr33n3ggs%26%23am@localhost:5432/avatar_api?sslmode=disable")

	mux := http.NewServeMux()

	// Character endpoint
	mux.HandleFunc("/api/v1/characters", controllers.GetCharactersHandler)

	fmt.Println("Server is running on :8080")
	log.Fatal(http.ListenAndServe(":8080", mux))
}