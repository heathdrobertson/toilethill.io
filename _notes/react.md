---
permalink: /notes/react
title: "React"
excerpt: "Building with React"
toc_label: "React TOC"
header:
    teaser: /assets/images/jekyll_teaser_image.png
    overlay_color: "#616261"
---
## TL;DR
Building a React JS App environemnt with Docker, Nix Shell and a NeoVim IDE.

## Docker Container Setup
> Change `<container-name>` in the commands below.

### IDE Container

```bash
docker run -it \
    --volumes-from nix \
    --volumes-from config \
    -v $(pwd):/home \
    -w /home \
    --name <container-name> \
    nixos/nix nix-shell /home/.config/nvim.nix
```


### React Development Container

```bash
docker run -it \
    --volumes-from nix \
    --volumes-from config \
    -v $(pwd):/home \
    -w /home \
    --name <conatiner-name>\
    -p 9005:9005 \
    -p 3000:3000 \
    -p 3001:3001 \
    -p 8080:8080 \
    nixos/nix nix-shell /home/.config/eth.nix
```
- Container exposed ports:
    - 9005 Firebase verification.
    - 3000 Firebase serve hosting locally.
    - 3001 Firebase serve functions locally.
    - 8080 Dapp local serve.
- Container serves on IP host address 0.0.0.0 and are accessable via localhost: or 127.0.0.1: outside of the container.

You should now be running a `nix-shell` in a container.

```bash
[nix-shell:/home]#
```

### Starting an existing container.

If your container has already been created above and is not running.

- List all built containers
```bash
docker ps -a
```
- Make a note of the ```<container-name>```
```bash
docker start <container-name>
```
- Then execute an iteractive session into the running container.
```bash
docker exec -it <container-name> nix-shell
```


[Top]

# Notes

npx create-react-app dapp

npm install 


Success! Created app at /home/app
Inside that directory, you can run several commands:
```bash

# Starts the development server.
  npm start 

# Bundles the app into static files for production.
  npm run build 

# Starts the test runner.
  npm test

# Removes this tool and copies build dependencies, configuration files
# and scripts into the app directory. If you do this, you can’t go back!
  npm run eject

# We suggest that you begin by typing:

  cd app
  npm start
```

Happy hacking!

## Tools
* [HTML to Markdown] Don't leave home without it.


## Links

- [Sample Markdown Files](https://github.com/mmistakes/minimal-mistakes/tree/master/docs)

[react-docs]: https://reactrb.com/docs/home
