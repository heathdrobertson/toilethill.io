---
title: "NodeJS"
permalink: /notes/nodejs
excerpt: "NodeJS, Javascript, code, configuration and setup."
toc_label: "NodeJS TOC"
header:
    teaser: /assets/images/nodejs_teaser_image.png
    overlay_color: "#616261"
---

## Development Environment
A Docker container running NixOS with a Nix Shell
### A Nodejs 
```bash
docker run --rm --volumes-from=nix -it -v $(pwd):/home -w /home -p 3000:3000 nixos/nix nix-shell -p nodejs
```

### Express Framework
[Bitcoin Notes](/notes/bitcoin)
```bash
docker run --rm --volumes-from=nix -it -v $(pwd):/app -w /app -p 3000:3000 nixos/nix nix-shell /app/.config/node_express.nix"
```
1. GitHub Gist
<script src="https://gist.github.com/heathdrobertson/8f29733b19805a3a13a5d0ddd2637f2b.js"></script>

## Debugging
### Node Inspect
1. ```node inspect app.js```
1. [Node.js Docs for Debugger](https://nodejs.org/api/debugger.html)
    1. Comands etcetera.
1. Open Chrome debugger ```chrome://inspect```
    1. Open dedicated DevTools for Node

## Testing

## Code Snipets

## Reference
