//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.7.0;

 
contract Medical  {
    
     
      mapping(uint256 => pharmacy_address)  pharmacy_addresslist;
      
    
     struct  pharmacy_address{
         string  pharmacy_address_name;
         string  pharmacy_address_address;
         

      
          
     }
     pharmacy_address m;
     
     address owner;
     
      
    
      constructor() public {
          owner = msg.sender;
      }
      
      
      // modifier to give access only to pharmacy_address
      modifier isOwner() {

         require(msg.sender == owner, "Access is not allowed");

         _;

     }
      
     
     
    
  
     function store_pharmacy_address_details(uint256 pharmacy_address_id,string memory _pharmacy_address_name,string memory _pharmacy_address_address)public isOwner {
        
         m.pharmacy_address_name = _pharmacy_address_name;
         m.pharmacy_address_address = _pharmacy_address_address;
         
         
        pharmacy_addresslist[pharmacy_address_id] = m;
        
        
         }
         
        

         function retreive_pharmacy_address_details(uint256 pharmacy_address_id) public view returns (string memory,string memory){
             
     pharmacy_address memory m = pharmacy_addresslist[pharmacy_address_id];
     
     return (m.pharmacy_address_name,m.pharmacy_address_address);
     
          }
          
          
          
}