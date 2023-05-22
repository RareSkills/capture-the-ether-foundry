// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/TokenWhale.sol";

contract TokenWhaleTest is Test {
    TokenWhale public tokenWhale;
    ExploitContract public exploitContract;
    // Feel free to use these random addresses
    address constant Alice = address(0x5E12E7);
    address constant Bob = address(0x5311E8);
    address constant Pete = address(0x5E41E9);

    function setUp() public {
        // Deploy contracts
        tokenWhale = new TokenWhale(address(this));
        exploitContract = new ExploitContract(tokenWhale);
    }

    // Use the instance tokenWhale and exploitContract
    // Use vm.startPrank and vm.stopPrank to change between msg.sender
    function testExploit() public {
        // Put your solution here

        _checkSolved();
    }

    function _checkSolved() internal {
        assertTrue(tokenWhale.isComplete(), "Challenge Incomplete");
    }

    receive() external payable {}
}
