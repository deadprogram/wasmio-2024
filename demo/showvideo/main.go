package main

import (
	"os"

	"gocv.io/x/gocv"
)

func main() {
	webcam, _ := gocv.OpenVideoCapture(os.Args[1])
	window := gocv.NewWindow("TinyGo")
	img := gocv.NewMat()

	for {
		webcam.Read(&img)
		window.IMShow(img)
		gocv.WaitKey(1)
	}
}
