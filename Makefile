SPASM=tools/spasm64
ZIP=zip
BINARIES := $(wildcard bin/*.8x[pv])

build:
	$(SPASM) -E src/GD.z80 bin/AGD.8xp

release: 
	rm -f GeometryDash.zip
	cp $(BINARIES) .
	$(ZIP) -r GeometryDash.zip include/ levels/ images/ src/ *.8x[vp] README.md
	rm -f $(subst bin/,,$(BINARIES))
