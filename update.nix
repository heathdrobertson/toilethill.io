with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "base-jekyll-builder";

  buildInputs = [
    ruby
    jekyll
    nodejs
  ];
  shellHook = ''
    bundler package --no-install --path vendor
    rm -rf .bundle/ vendor/
    $(nix-build '<nixpkgs>' -A bundix)/bin/bundix
    rm result
  '';

}

######
#NOTES
######
# update.nix is used to rebuild the Jekyll environment after updates to _config.yml or Gemfile.
# This file borrows heavily from: http://stesie.github.io/2016/08/nixos-github-pages-env

# docker run --rm --volumes-from=nix -it -v=$(pwd):/home -w=/home nixos/nix nix-shell /home/update.nix
