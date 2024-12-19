
//SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;
contract SimpleStorage{

    uint256 favNumber;

    struct Person{
        uint256 favNumber;
        string name;
    }

    Person[] public listOfFavNumber; //array of data type Person 

    function store(uint256 _favNumber) public {
        favNumber = _favNumber;
    }

    function retrieve() public view returns(uint256){
        return favNumber; //it is just retrieving it not storing it so low gas is used
    }

    mapping(string => uint256) public numberTofavNumber;

    function addPerson(string memory _name , uint256 _favNumber) public{
        listOfFavNumber.push(Person(_favNumber,_name));
        //but we want to find fav number per name we have to use mapping
        numberTofavNumber[_name] = _favNumber; 
    }

}

//if here are more contracts 
contract SimpleStorage2{}
contract SimpleStorage3{}
contract SimpleStorage4{}
contract SimpleStorage5{}
//and all these are filled with code so taking the whole out would be very hard so better is to only import the contract that we want in the new file
