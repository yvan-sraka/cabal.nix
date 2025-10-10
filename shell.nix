{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs.buildPackages; [
    (haskell.lib.justStaticExecutables (haskellPackages.cabal-install))
    ghc
    ghcid
    haskell-language-server
    (haskell.lib.dontCheck (haskellPackages.callHackage "fourmolu" "0.12.0.0" {}))
    pkg-config
    zlib.dev

    haskellPackages.fix-whitespace
    haskellPackages.hlint
  ];
}
