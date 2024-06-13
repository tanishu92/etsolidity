// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract binancecoin {

    // Public variables to store token details
    string public name = 'binancecoin';
    string public symbol = 'bnc';
    uint16 public totalSupply;

    // Mapping to store balances of addresses
    mapping(address => uint16) public balances;

    // Mint function to create new tokens
    function mint(address _to, uint16 _amount) public {
        totalSupply += _amount;
        balances[_to] += _amount;
    }

    // Burn function to destroy tokens
    function burn(address _from, uint16 _amount) public {
        require(balances[_from] >= _amount, "Insufficient balance to burn");
        totalSupply -= _amount;
        balances[_from] -= _amount;
    }
}
