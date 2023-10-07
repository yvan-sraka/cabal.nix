{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs.buildPackages; [
    cabal-install
    ghc
    ghcid
    haskell-language-server
    haskellPackages.fourmolu_0_12_0_0
    pkgconfig
    zlib.dev
  ];
}
