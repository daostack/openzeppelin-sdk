pragma solidity ^0.6.0;
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";

contract GLDToken is ERC20, ERC20Detailed {
    constructor(uint256 initialSupply) public ERC20Detailed("Gold", "GLD", 18) {
        _mint(msg.sender, initialSupply);
    }
}
