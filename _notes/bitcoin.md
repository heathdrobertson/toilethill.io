---
title: "Bitcoin"
permalink: /notes/bitcoin
excerpt: "The Bitcoin blockchain and scripting using Bitcoin Core."
toc_label: "Bitcoin TOC"
header:
    overlay_color: "#616261"
---

## Bitcoin Core

### Signing a message with a wallet
- I can sign with curl rps call:
- make sure to use a "legacy" address, fails with any other.
- Standard  
```bash 
curl --user toilethill --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "signmessage", "params": ["17JtKLSeXiDxA4Tf8aFtSN7iz17aCBRBrk", "my message"] }' -H 'content-type: text/plain;' http://127.0.0.1:8332/
```
- no username
```bash 
curl --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "signmessage", "params": ["myHtQaLRKSn65jWnVhK4bhjy2yca4EiP7w", "my message"] }' -H 'content-type: text/plain;' http://127.0.0.1:8332/
```
- Encrypted wallet
```bash 
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "walletpassphrase", "params": ["my pass phrase", 60] }' -H 'content-type: text/plain;' http://127.0.0.1:8332/
```


## Bitcoincore Download & Install
__According to the Udacity course.__

1. I have downloaded a copy of bitcoincore to my external usb drive ***btc*** and unzipped it.
1. `cd /media/toilethill/btc/bitcoin-0.18.1/`
1. Run the command: `bin/bitcoin-qt` to start the ***GUI*** app and download historical transactions.
1. I created: `mkdir /media/toilethill/btc/.bitcoin` to download the 248gb history, it's going to take a while.

### Working with Testnet or RegNet Networks
1. I created a ***bitcoin.conf*** file in the Bitcoin Core `.bitcoin` dir.
    1. `testnet=1` added to the ***bitcoin.conf***.
    1. The Bitcoin App needs to be restarted and the logo turns from orange to green.

### Create a raw transaction using the Bitcoin Protocol.

*   Step 1 - View all unspent confirmed UTXO in the wallet
    *   [listunspent](http://chainquery.com/bitcoin-api/listunspent) - Show all the unspent confirmed outputs in our wallet)
*   Step 2 - View Details about a Specific UTXO
    *   [gettxout](http://chainquery.com/bitcoin-api/gettxout) - Get the details of this unspent output above
*   Step 3 - Create a Raw Transaction
    *   [createrawtransaction](http://chainquery.com/bitcoin-api/createrawtransaction) - Create a transaction
*   Step 4 - Decode the Raw Transaction (to double-check it went through correctly)
    *   [decoderawtransaction](http://chainquery.com/bitcoin-api/decoderawtransaction) - View raw hex string that encodes the transaction details we supplied
*   Step 5 - Sign the Raw Transaction
    *   [signrawtransactionwithwallet](http://chainquery.com/bitcoin-api/signrawtransactionwithwallet)
        *   signrawtransaction - older versions than 0.17
*   Step 6 - Submit the Raw Transaction to the Network
    *   [sendrawtransction](http://chainquery.com/bitcoin-api/sendrawtransaction) - Takes the raw hex string produced by signrawtransaction and returns a transaction hash (txid) as it submits the transaction on the network.
*   Step 7 - Query the TxID of the Transaction we sent
    *   [gettransaction](http://chainquery.com/bitcoin-api/gettransaction) - Query the TxID and view details. Similar to online block explorer

### Resources
