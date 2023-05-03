// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/TokenSale.sol";

contract TokenSaleTest is Test {
    TokenSale public tokenSale;
    ExploitContract public exploitContract;

    function setUp() public {
        tokenSale = (new TokenSale){value: 1 ether}();
        exploitContract = new ExploitContract(tokenSale);
        vm.deal(address(exploitContract), 4 ether);
    }

// Use the instance of tokenSale and exploitContract
    function testIncrement() public {
        // Write your codes below this line

        // Do not modify the codes below this line
        assertTrue(tokenSale.isComplete(), "Challenge Incomplete");
    }
    receive() external payable {}

}
