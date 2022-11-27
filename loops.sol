pragma solidity ^0.8.7;

contract MyContract{
    uint[] public numbers = [1,2,3,4,5,6];

    address public owner;

    constructor () public{
        owner = msg.sender;
    }


    function isEvenNuber (uint _number) public view returns(bool){
        if(_number % 2==0)return true;
        return false;
    }

    function isOwner() public view returns(bool){
        if(msg.sender == owner)return true;
        return false;
    }
}