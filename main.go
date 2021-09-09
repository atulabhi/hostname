package main

import (
    "fmt"
    "log"
     "os"
    "net/http"
)

func main() {

    http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
        name, err := os.Hostname()
        if err != nil {
            log.Fatal(err)
        }
        fmt.Fprintf(w, "I'm on %q",name)
    })

    log.Fatal(http.ListenAndServe("0.0.0.0:8081", nil))

}

