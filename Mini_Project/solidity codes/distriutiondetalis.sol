//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.7.0;

 
contract Medical  {
    
     
      mapping(uint256 => distribution)  distributionlist;
      
    
     struct  distribution{
         string  distribution_name;
         string  distribution_address;
         

      
          
     }
     distribution m;
     
     address owner;
     
      
    
      constructor() public {
          owner = msg.sender;
      }
      
      
      // modifier to give access only to hospital
      modifier isOwner() {

         require(msg.sender == owner, "Access is not allowed");

         _;

     }
      
     
     
    
  
     function store_distribution_details(uint256 distribution_id,string memory _distribution_name,string memory _distribution_address)public isOwner {
        
         m.distribution_name = _distribution_name;
         m.distribution_address = _distribution_address;
         
         
        distributionlist[distribution_id] = m;
        
        
         }
         
        

         function retreive_distribution_details(uint256 distribution_id) public view returns (string memory,string memory){
             
     distribution memory m = distributionlist[distribution_id];
     
     return (m.distribution_name,m.distribution_address);
     
          }
          
          
          
}