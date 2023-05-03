// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Donations {
    struct Donation {
        uint256 timestamp;
        uint256 etherAmount;
    }
    Donation[] public donations;

    address public owner;

    constructor() payable {
        require(msg.value == 1 ether);

        owner = msg.sender;
    }

    function isComplete() public view returns (bool) {
        return address(this).balance == 0;
    }

    function donate(uint256 etherAmount) public payable {
        // amount is in ether, but msg.value is in wei
        uint256 scale = 10 ** 18 * 1 ether;
        require(msg.value == etherAmount / scale);

        Donation storage donation = donations.push();
        donation.timestamp = block.timestamp;
        donation.etherAmount = etherAmount;

        donations.push(donation);
    }

    function withdraw() public {
        require(msg.sender == owner, "You are not the owner");

        (bool ok, ) = msg.sender.call{value: address(this).balance}("");
        require(ok, "Transfer to msg.sender failed");
    }
}

// Write your exploit codes below
contract ExploitContract {
    Donations public donations;

    constructor(Donations _donations) {
        donations = _donations;
    }

}
