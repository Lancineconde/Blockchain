// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Donatee {

    string private name;
    string private loc;
    uint256 private totalamount = 0;

    function receiveDonation(uint _amount) external payable{
        totalamount += _amount;
    }

    function withdraw(uint _amount) external payable {
        require(_amount <= totalamount, "Must be <= totalamount");
        totalamount -= _amount;
    }

    function showBalance() public view returns (uint) {
        return totalamount;
    }

    function setName(string memory _name) public {
        name = _name;
    }

    function setLocation(string memory _location) public {
        loc = _location;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function getLocation() public view returns (string memory) {
        return loc;
    }
}