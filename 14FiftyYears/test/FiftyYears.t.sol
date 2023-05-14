// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/FiftyYears.sol";

contract FiftyYearsTest is Test {
    FiftyYears public fiftyYears;
    ExploitContract public exploitContract;
    address constant Player1 = address(0x5E11E7);

    function setUp() public {
        // Deploy contracts
        fiftyYears = (new FiftyYears){value: 1 ether}();
        exploitContract = (new ExploitContract){value: 1 ether}(fiftyYears);
    }

    function testExploitContract() public {
        // Put your solution here

        _checkSolved();
    }

    function _checkSolved() internal {
        assertTrue(fiftyYears.isComplete(), "Challenge Incomplete");
    }

    receive() external payable {}
}
