package db

import (
	"database/sql"
	_ "github.com/lib/pq"
	"log"
)

// DB instance
var DB *sql.DB

func Init(dataSourceName string) {
	var err error
	DB, err = sql.Open("postgres", dataSourceName)
	if err != nil {
		log.Fatal("Failed to connect:", err)
	}

	if err = DB.Ping(); err != nil {
		log.Fatal("Cannot reach DB:", err)
	}
}