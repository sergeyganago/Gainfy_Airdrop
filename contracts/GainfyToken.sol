pragma solidity ^0.4.18;

import '../node_modules/zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';
import '../node_modules/zeppelin-solidity/contracts/ownership/Ownable.sol';

contract GainfyToken is StandardToken, Ownable {

    //declare all the metadata
	string public constant name = "Gainfy Token";
	string public constant symbol = "GAIN";
	uint8 public constant decimals = 2;

    function GainfyToken(uint256 initSupply) Ownable() {
        totalSupply_ = initSupply;
        balances[msg.sender] = totalSupply_;
    }


}