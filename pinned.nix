let
  # We start with whatever random nixpkgs you have,
  # which is adequate to pull a specific pinned version.
  pkgs = import <nixpkgs> {};
in
import (
  # Currently, this is nixpkgs 24.05.
  pkgs.fetchFromGitHub {
    owner = "nixos";
    repo = "nixpkgs";
    rev = "63dacb46bf939521bdc93981b4cbb7ecb58427a0";
    sha256 = "sha256-vboIEwIQojofItm2xGCdZCzW96U85l9nDW3ifMuAIdM=";
  }
)
