pragma solidity ^0.6.0;
// SPDX-License-Identifier: MIT

contract ElementaryTypesWithConstructor  {
    address public owner;
    bool active;
    string hello;
    int count;
    uint ucount;
    bytes32 samevar;

    constructor() public {
        owner = address(0x123);
        active = true;
        hello = "hello";
        count = -123;
        ucount = 123;
        samevar = "stringliteral";
    }
}
