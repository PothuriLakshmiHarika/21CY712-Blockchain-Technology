//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.7.0;

 
contract Medical  {
    
     
      mapping(uint256 => manufacture)  manufacturelist;
      
    
     struct  manufacture{
         string  manufacture_name;
         string  manufacture_address;
         

      
          
     }
     manufacture m;
     
     address owner;
     
      
    
      constructor() public {
          owner = msg.sender;
      }
      
      
      // modifier to give access only to hospital
      modifier isOwner() {

         require(msg.sender == owner, "Access is not allowed");

         _;

     }
      
     
     
    
  
     function store_manufacture_details(uint256 manufacture_id,string memory _manufacture_name,string memory _manufacture_address)public isOwner {
        
         m.manufacture_name = _manufacture_name;
         m.manufacture_address = _manufacture_address;
         
         
        manufacturelist[manufacture_id] = m;
        
        
         }
         
        

         function retreive_manufacture_details(uint256 manufacture_id) public view returns (string memory,string memory){
             
     manufacture memory m = manufacturelist[manufacture_id];
     
     return (m.manufacture_name,m.manufacture_address);
     
          }
          
          
          
}