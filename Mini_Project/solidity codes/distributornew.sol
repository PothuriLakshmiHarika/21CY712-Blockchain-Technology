//SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract Login {

    mapping(string => user) internal usermap;

 

    struct user{

        string Username;

        string Password;  

    }

 

    user internal use;

 

address internal admin;

constructor(){

    admin = msg.sender;

}

 

modifier isadmin(){

    require(admin == msg.sender,"Only admin can access it");

    _;

}

 


 

function submit(string memory _Username, string memory _Password) public isadmin{

    use.Password = _Password;

    usermap[_Username] = use;

}

}