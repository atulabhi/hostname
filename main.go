package main

import "fmt"
import "os"

func main() {
	fmt.Println("vim-go")
	name, err := os.Hostname()
	if err != nil {
		panic(err)
	}

	fmt.Println("I'm on", name)
}
