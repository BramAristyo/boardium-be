package main

import "boardium-api/database"

func main() {
	db := database.DBConnection()
	defer db.Close()
}