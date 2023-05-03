// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/TokenWhale.sol";

contract TokenWhaleTest is Test {
    TokenWhale public tokenWhale;
    ExploitContract public exploitContract;
    // feel free to use these random addresses
    address constant David = address(0x5E11E7);
    address constant Goliath = address(0x5E11E8);
    address constant Saul = address(0x5E11E9);

    function setUp() public {
        tokenWhale = new TokenWhale(address(this));
        exploitContract = new ExploitContract(tokenWhale, David);
    }

// use the instance tokenWhale and exploitContract
// use vm.startPrank and vm.stopPrank to change between msg.sender
    function testExploit() public {
        // write your codes below this line

        // Do not modify the codes below this line
        assertTrue(tokenWhale.isComplete(), "Challenge Incomplete");
    }

    receive() external payable {}
}
