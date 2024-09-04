{ pkgs ? import ./pinned.nix {} }:
pkgs.symlinkJoin {
  name = "layover-bootstrap";
  paths = with pkgs; [
    gcc
    hello
  ];
}
