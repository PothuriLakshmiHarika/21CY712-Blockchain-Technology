//SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract newuser{

    mapping(string =>user) internal usermap;

 

    struct user {

        string Manufacture_Name;

        string Email;

        string Password;

        uint256 phone ;

    }

 

    user internal use;

address internal admin;

constructor(){

    admin = msg.sender;

}

modifier isadmin(){

    require(admin == msg.sender,"only admin can access it");

    _;

}

 

function store (string memory Manufacture_Name,string memory Email,string memory Password,uint256 phone) public isadmin{

    use.Email = Email;

    use.Password = Password;

    use.phone= phone;

    usermap[Manufacture_Name] = use;

}

 

}