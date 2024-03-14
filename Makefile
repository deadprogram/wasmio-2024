.ONESHELL:

clean:
	rm -rf build

builddir:
	mkdir -p build

build/showvideo:
	go build -o ./build/showvideo ./demo/showvideo/main.go

showvideo: builddir build/showvideo
	./build/showvideo 2

simple:
	cd ./demo/simple
	
	mecha run .

thumby:
	cd ./demo/thumby
	
	mecha flash -m thumby .

wasmbadge-sim:
	cd ./demo/wasmbadge
	
	mecha run -i wasman pybadge .

wasmbadge-real:
	cd ./demo/wasmbadge
	
	mecha flash -i wasman -m pybadge .

wasmdrone:
	cd ./demo/wasmdrone
	
	mecha flash -i wasman -params main.ssid=TELLO-AA5556 -m pybadge
