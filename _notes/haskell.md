---
title: "Haskell"
permalink: /notes/haskell
excerpt: "Haskell and Jupyter Notebooks."
toc_label: "Haskell TOC"
header:
    teaser: /assets/images/haskell_teaser_image.png
    overlay_color: "#616261"
---

## iHaskell JupyterLab
__A Haskell JupyterLab environment in a Docker container.__

1. Current working directory files are accesible in the container.
1. Matching host ***user*** and container ***user***.
1. JupyterLab extensions; ***Vim, TOC, Spellchecker***, installed and activated.
1. CodeHappens@ToiletHill.io if I have made an error or if you have questions.

### Quickstart
- Clone [IHaskell].
  - `git clone https://github.com/gibiansky/IHaskell.git`
- Replace the contents of **Dockerfile** with **02_Dockerfile.md** below.
- `touch jupyter_lab_extensions.sh` copy and paste the contents of **03_jupyter_lab_extensions.sh**.
- Build image:
```bash
docker build --build-arg NB_USER=$(id -un) --build-arg NB_UID=$(id -u) -t heathdrobertson/ihaskell:latest .
```
- Run a container:
```bash
docker run --rm -it -v $(pwd):/home/$(id -un)/codehappens -p=8888:8888 heathdrobertson/ihaskell:latest
```
- Copy the produced link to a new browser tab e.g. `http://127.0.0.1:8888/?token=cf4cca2dc8c50982f3c90bc843197fc8be1d89c04855fbcb`.  The token will be different in your console output.

### Embeded GitHub Gist 
__Dockerfile & Bash Script__

<script src="https://gist.github.com/heathdrobertson/28fb3f8f4f30261186670192e1d878cb.js"></script>

[IHaskell]: http://bit.ly/33MSIoW

___
![Haskell Math](https://raw.githubusercontent.com/heathdrobertson/tools/master/web_headers/haskell_mathematics.jpg)
# Haskell in a NixOs Docker Container
__Docker Container Using Nix Shell__

## Building Haskell Projects With Nix

- Docker image and container setup.
    - Clone or copy my Dockerfile.
    - Link to my Docker file in github
- Build the image.
    - ```docker build --rm -t heathdrobertson/nixshell:latest .```
- Run a container.
    - ```docker run -it --init --name haskell-mule --network toilethill-net -v $(pwd):/home -p 3000:3000 heathdrobertson/nixshell:latest```
- Building projects With Nix
    - $ ```nix-shell --pure -p ghc cabal-install --run "cabal init"```
- Auto-generate default.nix file.
    - ```nix-shell --pure -p cabal2nix --run "cabal2nix ." > default.nix```
- Change file permisions so they can be editied ouside the container.
    - ```chmod 777 -R ./*```

> The default.nix file would contain the dependencies and build information extracted from the .cabal file. Note that you have to regenerate default.nix every time you update the .cabal file.

___

**Resources**

- [Creating Your Own Project](https://github.com/Gabriel439/haskell-nix/blob/master/project0/README.md#creating-your-own-project)
- [Nix Docker Image](https://github.com/nix-community/docker-nix)
- [Cabal](https://www.haskell.org/cabal/)
