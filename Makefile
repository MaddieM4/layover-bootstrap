img: default.nix pinned.nix clean
	nix-build .
	mkdir -p img/nix/store
	nix path-info --recursive ./result | xargs -I{} cp -r {} img{}
	cp -r result/* img # Seems weird but we do need /bin and such at root

clean:
	if [ -e img ]; then chmod -R +w img; fi # Sigh. Nix.
	rm -rf img result
