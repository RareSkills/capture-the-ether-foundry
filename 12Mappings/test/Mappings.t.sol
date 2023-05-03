// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Mappings.sol";

contract MappingsTest is Test {
    Mappings public mappings;
    ExploitContract public exploitContract;

    function setUp() public {
        mappings = new Mappings();
        exploitContract = new ExploitContract(mappings);
    }

// use the instance mappingss and exploitContract
    function testIncrement() public {
        // Write your codes below this line


        // Do not modify the codes below this line
        assertTrue(mappings.isComplete(), "Challenge Incomplete");
    }
    receive() external payable{}
}
