package main

import (
	"fmt"
	"html"
	"net/http"
)

func main() {
	fmt.Println("Hello, golang with 🐳")

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello, %q", html.EscapeString(r.URL.Path))
	})

	http.HandleFunc("/say", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "🦖")
	})

	http.ListenAndServe(":3001", nil)
}
