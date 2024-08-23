TARGET=feather-nrf52840

.PHONY: build flash flash-monitor clean
build: 
	mkdir -p build
	tinygo build -target=${TARGET} --size short -o build/firmware.uf2 .
flash:
	tinygo flash -target=${TARGET} --size short . 
monitor:
	tinygo monitor
clean:
	rm -rf build