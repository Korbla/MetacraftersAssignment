// SPDX-License-Identifier: MIT
pragma solidity  0.8.18;
contract shallycoin {
    string public tokenName = "shallycoin";
    string public tokenAbbrv = "SC";

    uint public totalSupply;
    mapping (address => uint) public balances;
    function mint(address user, uint amount) public {
        totalSupply += amount;
        balances[user] += amount;

    }

    function burn(address user, uint amount) public {
        if(amount > balances[user]) {
            revert("the burner address doesnt have sufficient shallycoins");
        }
        totalSupply -= amount;
        balances[user] -= amount;

    }
    

}
