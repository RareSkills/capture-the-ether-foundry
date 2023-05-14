// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Donation.sol";

contract DonationsTest is Test {
    Donations public donation;
    ExploitContract public exploitContract;

    function setUp() public {
        donation = (new Donations){value: 1 ether}();
        exploitContract = new ExploitContract(donation);
    }

    function testIncrement() public {
        // Put your solution here

        _checkSolved();
    }

    function _checkSolved() internal {
        assertTrue(donation.isComplete(), "Challenge Incomplete");
    }

    receive() external payable {}
}
