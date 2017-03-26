
all: build.debug-quiet

build.release-quiet:
	@echo "make: build release -quiet"
	@echo "make: run release\n--------"
	@xbuild /p:Configuration=Release /verbosity:quiet /nologo  PBIGettingStarted/PBIGettingStarted.csproj

build.debug-quiet:
	@echo "make: build debug -quiet"
	@xbuild /p:Configuration=Debug /verbosity:quiet /nologo PBIGettingStarted/PBIGettingStarted.csproj
	@echo "make: run debug\n--------"
	@mono PBIGettingStarted/bin/debug/PBIGettingStarted.exe

build.debug:
	@echo "make: build debug"
	@echo "make: run debug\n--------"
	@xbuild /p:Configuration=Debug /nologo PBIGettingStarted/PBIGettingStarted.csproj

build.release:
	@echo "make: build release"
	@echo "make: run release\n--------"
	@xbuild /p:Configuration=Release /nologo PBIGettingStarted/PBIGettingStarted.csproj

clean:
	@echo "make: clean"
	@rm -rf ./bin/
	@rm -rf ./obj/
