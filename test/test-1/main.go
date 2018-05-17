package main

import (
	"net/http"
	"strings"
)

func sayHello(w http.ResponseWriter, r *http.Request) {
	message := r.URL.Path
	message = strings.TrimPrefix(message, "/")
	message = "Driver Hello 1" + message
	w.Write([]byte(message))
}
func main() {
	http.HandleFunc("/", sayHello)
	if err := http.ListenAndServe(":80", nil); err != nil {
		panic(err)
	}
}
