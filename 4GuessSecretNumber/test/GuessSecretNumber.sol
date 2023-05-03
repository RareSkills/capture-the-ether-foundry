// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/GuessSecretNumber.sol";

contract GuessSecretNumberTest is Test {
    ExploitContract public exploitContract;
    GuessTheSecretNumber public guessTheSecretNumber;

    function setUp() public {
        exploitContract = new ExploitContract();
        guessTheSecretNumber =(new GuessTheSecretNumber){value: 1 ether}();
    }

    function testFindSecretNumber() public{
        // Write your codes below this line
        uint8 secretnumber = exploitContract.Exploiter();


        // Do not modify the codes below this line
        assertTrue(guessTheSecretNumber.guess{value: 1 ether}(secretnumber), "Wrong Number");
        assertTrue(guessTheSecretNumber.isComplete(), "Challenge Incomplete");
    }
    receive() external payable{}

}
