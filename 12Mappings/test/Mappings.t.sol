// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Mappings.sol";

contract MappingsTest is Test {
    Mappings public mappings;
    ExploitContract public exploitContract;

    function setUp() public {
        // Deploy contracts
        mappings = new Mappings();
        exploitContract = new ExploitContract(mappings);
    }

    // Use the instance mappings and exploitContract
    function testIncrement() public {
        // Put your solution here

        _checkSolved();
    }

    function _checkSolved() internal {
        assertTrue(mappings.isComplete(), "Challenge Incomplete");
    }

    receive() external payable {}
}
