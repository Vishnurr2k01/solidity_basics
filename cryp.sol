pragma solidity ^0.8.7;

contract HotelRoom{

    enum Statuses {vacant , Occupies}
    Statuses currentStatus;
    
    event Occupy (address _occupant,uint value);

    address payable public owner;
    


    constructor() public {
        owner = payable(msg.sender);
        currentStatus = Statuses.vacant;

    }

    modifier onlyWhenVacant(){
    require(currentStatus==Statuses.vacant , "occuppied");
    _;
    }

    modifier costs ( uint amount){
    require(msg.value >= amount , "not enoguh amt");
    _;
    }
    receive() external payable onlyWhenVacant costs(2 ether){
        currentStatus = Statuses.Occupies;
        owner.transfer(msg.value);
        emit Occupy(msg.sender,msg.value);
    }
}