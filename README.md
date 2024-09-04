# Layover Bootstrap image

The Layover package manager needs some super-early-stage sandbox to build
software in a pure environment. This needs to be consistent and adequate,
and as long as those boxes are checked, the software can come from anywhere.
It's just going to be a compiler toolchain for building a more native stage
of the compiler toolchain:

```
This Repo -> Native Toolchain -> Everything Else
```

Now ideally, it should be automated and simple to produce this stage of the
toolchain. Hence, building it with Nix off a pinned version of Nixpkgs.
There's not much to the technique, it's intentionally minimal: use the
`symlinkJoin` [trivial builder][1] to create a root tree, which is full of
symlinks into the Nix Store. Then use a simple command to copy that _out_ of
Nix and into an image directory suitable for importing into Layover/Dirtabase.

TODO:

 * Add more packages as it becomes clear they're needed
 * Multiple architecture support
 * Automatically build Github Releases using Actions

[1]: https://ryantm.github.io/nixpkgs/builders/trivial-builders/#chap-trivial-builders
