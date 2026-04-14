// SPDX-License-Identifier: MIT
pragma solidity  0.8.18;

contract SimpleStorage {
    int256 public magic_number;

    int256[] listOfMagicNumbers;

    function store( int256 _magic_number ) public {
        magic_number = _magic_number;
    }

    function retrive() public view returns(int256) {
        return magic_number;
    }

    // own type
    struct Person {
        int256 magicNumber;
        string name;
    }

    Person public jhonDoe = Person(32,"jhon doe");
    Person public janeDoe = Person({ magicNumber: 42, name: "jane doe"});

    // dynamic array 
    Person[] public listOfPeople;

    mapping(string => int256) public getFavoriteNumberUsingName;

    function adPerson(string memory _name, int256 _magicNumber) public {
        // Person memory newPerson = Person({ magicNumber: _magicNumber, name: _name});
        listOfPeople.push(Person({ magicNumber: _magicNumber, name: _name}));
        getFavoriteNumberUsingName[_name] = _magicNumber;
    }   


}
