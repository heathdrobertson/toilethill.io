with import <nixpkgs> { };

let jekyll_env = bundlerEnv rec {
    name = "jekyll_env";
    inherit ruby;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
  };
in
stdenv.mkDerivation rec {
  name = "jekyll_env";
  buildInputs = [ jekyll_env bundler ruby ];

  shellHook = ''
    export LANG=C.UTF-8 
    exec ${jekyll_env}/bin/jekyll serve --watch --host 0.0.0.0 --port 4000
  '';
}

######
#NOTES
######
# post.nix generates a local environment for updating a Jekyll website, hosted on GitHub Pages.
# This file borrows heavily from: 
  # http://stesie.github.io/2016/08/nixos-github-pages-env
# This line is to prevent a sass compile error, generated because the NixOs Docker image is built on Alpine Linux and locales are not installed by default:
  # export LANG=C.UTF-8 
  # Alternatively:
    # Add -e=LANG C.UTF-8 or --env-file=env.list to your docker run command.
      # Add LANG=C.UTF-8 to your docker env.list file
