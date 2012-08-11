VERSION=1.2
default:
	./generate.pe Navilu.sfd; echo "Navilu.ttf file generated, copy to ~/.fonts/ and run fc-cache"
fedora:
	rm -rf /tmp/navilu-ttf-${VERSION}
	mkdir /tmp/navilu-ttf-${VERSION}
	cp ChangeLog COPYING Navilu.ttf README /tmp/navilu-ttf-${VERSION}/

	rm -rf /tmp/navilu-${VERSION}
	mkdir /tmp/navilu-${VERSION}
	cp ChangeLog COPYING Navilu.sfd generate.pe README /tmp/navilu-${VERSION}/
	cp fedora_makefile /tmp/navilu-${VERSION}/Makefile

	cd /tmp/; \
	tar -cvzf navilu-ttf-${VERSION}.tar.gz navilu-ttf-${VERSION}/; \
	tar -cvzf navilu-${VERSION}.tar.gz navilu-${VERSION}/; \
	rm -rf navilu-ttf-${VERSION}; \
	rm -rf navilu-${VERSION}; 
clean:
	rm -rf /tmp/navilu-ttf-${VERSION}
	rm -rf /tmp/navilu-${VERSION}
	rm -rf /tmp/navilu-ttf-${VERSION}.tar.gz
	rm -rf /tmp/navilu-${VERSION}.tar.gz
