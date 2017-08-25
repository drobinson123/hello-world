package main

import (
	"fmt"
	"log"
	"net/http"
)

func indexHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello world...")
}

func main() {
	http.HandleFunc("/", indexHandler)
	log.Println("listening on http://localhost:8080/")
	log.Fatal(http.ListenAndServe(":8080", nil))
}
