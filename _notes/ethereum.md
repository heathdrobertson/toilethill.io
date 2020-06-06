---
title: "Ethereum"
permalink: /notes/ethereum
excerpt: "The Ethereum blockchain and Smart Contracts with Solidity"
toc_label: "Ethereum TOC"
header:
    overlay_color: "#616261"
---
## Notes

### What is Gas

- Gas is needed to incentivize miners to pick up and validate transactions. It's a small fee paid for the cost of each bit of code executed to complete a smart contract. While the gas is specific to execution costs, it can be converted to its equivalent value in ether and given to the miner as reward for their effort.


## Debugging

## Testing

## Code Snippets

### Running Ganache
- The mnemonic can be changed, and is auto-generated when running Truffle or Ganache the first time, copy and save the twelve words.  This is useful if you need to use the same accounts for testing and have to re-run the Ganache server.
- host 0.0.0.0 is set to serve from within a container.
```bash
ganache-cli --host 0.0.0.0 --mnemonic "twelve words provided by ganache the first time the command is run"
```

### Setting up Web3 & Infura
- From a Nix shell run `node <file-name.js>`.
```javascript
var Web3 = require('web3');
var web3 = new Web3(Web3.givenProvider || 'https://rinkeby.infura.io/v3/<PROJECT-ID>');
```


## Development Environment
A Docker container running NixOS with a Nix Shell

1. Build a container and install dependencies.
```bash
docker run --rm --volumes-from=nix -it -v $(pwd):/app -w /app -p 3000:3000 -p 3001:3001 -p 8545:8545 nixos/nix nix-shell /app/.config/build.nix
```
2. To run the container.
```bash
docker run --rm --volumes-from=nix -it -v $(pwd):/app -w /app -p 3000:3000 -p 8545:8545 nixos/nix nix-shell /app/.config/eth.nix
```
### Gists
<script src="https://gist.github.com/heathdrobertson/d855a77ff685005ae11a7aa6de31ab19.js"></script>

## Reference

### Looking for something Ethereum related, start here [Ethereum Developer Page]

### Tools

* [Etherscan] - Block explorer used to search Ethereum analytics. 
* [Metamask] - Browser extension for carrying out Ethereum transactions.
* [Remix] - An online integrated development environment for creating smart contracts in Solidity.
* [web3.js] - Access data from the Ethereum blockchain & info seen in Metamask or Etherscan can be accessed.
    * [web3.js docs](https://web3js.readthedocs.io)
    * [web3.js GitHub](https://github.com/ethereum/web3.js/)
    * [Community Forum](https://forum.ethereum.org/categories/ethereum-js)
    * [Getting Started](https://github.com/ethereum/wiki/wiki/JavaScript-API#getting-started)
* [Infura] - Provides the connections needed to access data on the Ethereum blockchain. 
* [Ganache] - Builds a local blockchain you can use to build and test Dapps.
* [Truffle] - The Dapp framework for Ethereum, build, test and deploying.
* [Solidity] - Solidity is an object-oriented, high-level language for implementing smart contracts.
* [Geth] - Sets up a local Ethereum node on your system.
* Dapp Stores
    * [DappRadar](https://www.stateofthedapps.com/) | [State of the Dapps](https://www.stateofthedapps.com/)

### Ethereum

* [Ethereum.org] - Communities & Groups.
|   [Github](https://github.com/ethereum)
|   [YouTube](https://www.youtube.com/user/ethereumproject)
|   [Gitter](https://gitter.im/ethereum/home)
|   [Twitter](https://twitter.com/ethereum)
|   [Stack Exchange](https://ethereum.stackexchange.com/)
|   [Reddit](https://www.reddit.com/r/ethereum)
|   [Meetups](https://www.meetup.com/topics/ethereum/)
|   [Blog](https://blog.ethereum.org/)


### Geth 

* [Geth](https://ethereum.github.io/go-ethereum/) - Communities & Groups.
| [Geth Github](https://github.com/ethereum/go-ethereum)
| [Geth Wiki](https://github.com/ethereum/go-ethereum/wiki/geth)
| [Geth Community](https://gitter.im/ethereum/go-ethereum)
| [Download Geth](https://ethereum.github.io/go-ethereum/downloads/)
| [Installation instructions for Mac](https://github.com/ethereum/go-ethereum/wiki/Installation-Instructions-for-Mac)
| [Command Line Options](https://github.com/ethereum/go-ethereum/wiki/Command-Line-Options)
| [Etherescan - Rinkeby](https://rinkeby.etherscan.io/blocks)
| [Rinkeby IO](https://www.rinkeby.io/#stats)


### Ethereum GUI

* [Mist / Ethereum Wallet](http://ethdocs.org/en/latest/ethereum-clients/choosing-a-client.html#what-should-i-install-on-my-desktop-laptop)
| [Ethereum GUI - Mist](https://ethereum.org/)
| [See other GUI versions](https://github.com/ethereum/mist/releases/tag/v0.11.1)



[Ethereum Developer Page]: https://ethereum.stackexchange.com/ 
[Ethereum.org]: https://Ethereum.org
[Etherscan]: https://etherscan.io/
[Ethe Stats]: https://ethstats.net/
[Metamask]: https://metamask.io/
[Remix]: https://remix.ethereum.org
[web3.js]: https://web3js.readthedocs.io/en/1.0/
[Infura]: https://infura.io/
[Ganache]: https://truffleframework.com/ganache
[Truffle]: https://truffleframework.com/
[Geth]: https://geth.ethereum.org/
[Solidity]: https://solidity.readthedocs.io
