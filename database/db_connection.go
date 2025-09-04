package database

import (
	"boardium-api/config"
	"database/sql"
	"fmt"

	_ "github.com/lib/pq"
)

func DBConnection() *sql.DB {
	c := config.LoadConfig()

	psqlInfo := fmt.Sprintf("host=%s port=%s user=%s password=%s dbname=%s sslmode=%s",
		c.DBHost, c.DBPort, c.DBUser, c.DBPassword, c.DBName, c.DBSSLMode)

	db, err := sql.Open("postgres", psqlInfo)
	if err != nil {
			panic(err)
	}

	fmt.Println("Successfully connected to the database")
	
	return db
}