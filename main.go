package main

import (
	"bufio"
	"fmt"
	"log"
	"os"

	"github.com/cosmos/cosmos-sdk/types/bech32"
)

func main() {

	f, err := os.Open(os.Args[1])

	if err != nil {
		log.Fatal(err)
	}
	defer f.Close()
	scanner := bufio.NewScanner(f)
	scanner.Split(bufio.ScanLines)

	for scanner.Scan() {
		addr := scanner.Text()
		_, bz, err := bech32.DecodeAndConvert(addr)
		if err != nil {
			log.Fatal(err)
		}
		convertedAddr, err := bech32.ConvertAndEncode(os.Args[2], bz)
		if err != nil {
			log.Fatal(err)
		}
		fmt.Printf("%s,%s\n", addr, convertedAddr)
	}
}
