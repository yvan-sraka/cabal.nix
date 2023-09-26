# `cabal.nix`

This is a simple Nix developer environment for [hacking on Cabal](https://github.com/haskell/cabal/blob/master/CONTRIBUTING.md).

The most convenient way to use it is to have [`direnv` hooked into your shell](https://direnv.net/docs/hook.html) and a `.envrc` in the root of your `cabal` checkout that looks like:

```bash
# https://github.com/nix-community/nix-direnv A fast, persistent use_nix/use_flake implementation for direnv:
if ! has nix_direnv_version || ! nix_direnv_version 2.3.0; then
  source_url "https://raw.githubusercontent.com/nix-community/nix-direnv/2.3.0/direnvrc" "sha256-Dmd+j63L84wuzgyjITIfSxSD57Tx7v51DMxVZOsiUD8="
fi
# https://github.com/yvan-sraka/cabal.nix Slightly opinionated Cabal developer environment
use flake "github:yvan-sraka/cabal.nix"
```
