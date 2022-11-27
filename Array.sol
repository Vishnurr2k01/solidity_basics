pragma solidity ^0.8.7;

contract Mycontract {
    // uint[] public arr = [1,2,3,4];
    // string[] public arr2 = ["apple","banana","carrot"];
    // string[] public values;
    // uint[][] public arr2d = [[1,2,3],[4,5,5]];


    // function addValue(string memory _value) public{
    //     values.push(_value);
    // }
    mapping(uint=>string) public names;

    struct book{
        string author;
        string title;
        }
     mapping (uint => book) public Books;
     mapping(address => mapping(uint => Books)) public myMapping; 

    constructor(){
        names[1] = "vishnu";
        names[2] = "resmi";
        names[3]= "gowri";

    }
    function addBook(uint _id,string memory _title,string memory _author) public{
        Books[_id] = Books(_title,_author);
 
    }
    function addMyBook(uint _id,string memory _title,string memory _author) public{
            myMapping[msg.sender][_id] = Books(_title,_author);
    }

 }