pragma solidity ^0.8.7;

contract Mycontract{
    // state and local variables
    string public myString = "hello world";
    // address public my address = 0x5afde134f2343ddd23123U
struct myStruct{
    uint myInt;
    string myString;
}
myStruct public my = myStruct(1,"hello world");

}