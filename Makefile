all: img

result: default.nix pinned.nix
	nix-build .

img: result
	mkdir -p img/nix/store
	nix path-info --recursive ./result | xargs -I{} cp -r {} img{}
	cp -r result/* img # Seems weird but we do need /bin and such at root

clean:
	chmod -R +w img # Sigh. Nix.
	rm -rf img result
