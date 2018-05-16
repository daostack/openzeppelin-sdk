---
id: basil
title: Basil
---

## Zeppelin Basil

This is a sample Dapp built on top of *ZOS* (ZeppelinOS). It presents a basic contract `Basil.sol` and then uses an `AppManager` from ZOS to upgrade the contract to `BasilERC721.sol` using a proxy that preserves the original contract's state, while mutating its logic. The upgraded contract also makes use of ZOS' on-chain standard library, connecting to a proxy of the `MintableERC721Token` implementation of the `openzeppelin-zos` release.

As for functionality, the Dapp allows users to change the light color of a Basil plant, using an Arduino and an RGB wifi light bulb. The upgraded contract also emits an ERC721 non fungible token to the user.

### Tests

The truffle test suite first checks the behavior of the basic Basil contract functionality, and then the behavior of the upgraded BasilERC721 functionality. Im a manner of illustration, it then makes use of the lower level zos-lib objects to demonstrate that the proxied contracts have exactly the same behaviors as the ones without ZOS.  

### ZOS cli

This example makes use of [zeppelinos/zos-cli](https://github.com/zeppelinos/zos-cli). ZeppelinOS's cli is a tool for automating deployment of [zeppelinos/zos-lib](https://github.com/zeppelinos/zos-lib) contracts, as well as storing deployment information in json files. The UI reads deployment data directly from these files.

For a lower level understanding of ZOS and zos-lib, please see the [complex-example](https://github.com/zeppelinos/zos-lib/tree/master/examples/complex), or the tests within this project.

### RPI

The code that controls the actual lighting (via a Raspberry Pi and a HUE light) is at [zeppelinos/basil-rpi](https://github.com/zeppelinos/basil-rpi).