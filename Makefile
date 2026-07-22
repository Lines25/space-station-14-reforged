# LOONIX ONLY btw
.PHONY: all clean

all:
	$(MAKE) -C RobustToolbox
	cp RobustToolbox/reforged/build/libreforged.so bin/Content.Server/
	cp RobustToolbox/reforged/build/libreforged.so bin/Content.Client/

run-server: all
	@chmod +x runserver.sh
	./runserver.sh

clean:
	$(MAKE) -C RobustToolbox clean
