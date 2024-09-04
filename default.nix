{ pkgs ? import ./pinned.nix {} }:
pkgs.symlinkJoin {
  name = "layover-bootstrap";
  paths = with pkgs; [
    bash
    coreutils
    gcc
    hello
    hostname
    gnumake
    gnutar
    gzip
    unixtools.ping
  ];
}
