---
title: "NixOs"
permalink: /notes/nixos
excerpt: "NixOs & Nix Shell tools of the trade."
toc_label: "NixOs TOC"
header:
    teaser: /assets/images/nixos_teaser_image.png
    overlay_color: "#616261"
    overlay_image: https://www.freewebheaders.com/wp-content/gallery/artistic-abstract/brown-fractal-abstract-design-header-2780.jpg
---
## NixOS & Nix Shell Container Configurations

### Setting Up A Docker Data Container
Used to collect the Nix packages that can be accessed from other containers.

- Create a Docker data container named nix to use a shared persistent /nix for all your Nix containers.

```bash
docker create --name nix -v nix:/nix --network toilethill-net nixos/nix sh
```
- To list the volumes in the /nix volume and list all installed nix packages.

```bash
docker run --rm --volumes-from nix nixos/nix ls -la /nix
```
- Clean up by purging nix-store cache:

```bash
docker run --rm --volumes-from=nix nixos/nix nix-collect-garbage -d
```

### Nix Shell with a Custom Nix Configuration
- To use your own nix configuration within a container:
- Assumes you have a custom [Nix Expression] file in a .config sub dir in $(pwd).


```bash
docker run --rm --volume=$(pwd):/home --volumes-from=nix -it nixos/nix nix-shell /home/.config/default.nix --run 'echo "Holy Cow! This is awsome!!" | cowsay'
```
- GitHub Gist
<script src="https://gist.github.com/heathdrobertson/b75c075475f4871eece8a372ad36f3af.js"></script>



### Haskell Environment:
```bash
docker run --rm --volumes-from=nix -it -v $(pwd):/home -w /home -p 3000:3000 nixos/nix nix-shell /home/.config/haskell.nix
```
- Github Gist
<script src="https://gist.github.com/heathdrobertson/6c4d9f1799cae998454831bcfc21c4d6.js"></script>


### GitHub Pages with Jekyll

- Create a GitHub repo for your GitHub Pages site [pages.github.com](https://pages.github.com).
- Run the commands below and clone your repo into a directory ```blog```
- Copy any files from a starter Jekyll project
```bash
mkdir <your-project>
cd <your-project>
git clone git@github.com:<repo-path>.git blog
```
- Download the Nix scripts in the Gist below into ```<your-project>``` directory.
- GitHub Gist
<script src="https://gist.github.com/heathdrobertson/67601264548a648a6299c85f496decf3.js"></script>

- To **update** a Jekyl site.
```bash
docker run --rm --volumes-from=nix -it -v=$(pwd):/home -w=/home nixos/nix nix-shell /home/update.nix
```
- To **build** and **serve** a local Jekyll site. 
```bash
docker run --rm --volumes-from=nix -it -v=$(pwd):/home -w=/home --ip=localhost -p=4000:4000 nixos/nix nix-shell /home/post.nix
```


## Links
[Nix in Docker – Best of Both Worlds](https://datakurre.pandala.org/2015/11/nix-in-docker-best-of-both-worlds.html/)

[Nix Expression]: https://nixos.org/nix/manual/#chap-writing-nix-expressions
