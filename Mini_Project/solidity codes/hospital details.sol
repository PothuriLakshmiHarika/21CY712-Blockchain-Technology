//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.7.0;

 
contract Medical  {
    
     
      mapping(uint256 => hospital)  hospitallist;
      
    
     struct  hospital{
         string  hospital_name;
         string  hospital_address;
         

      
          
     }
     hospital m;
     
     address owner;
     
      
    
      constructor() public {
          owner = msg.sender;
      }
      
      
      // modifier to give access only to hospital
      modifier isOwner() {

         require(msg.sender == owner, "Access is not allowed");

         _;

     }
      
     
     
    
  
     function store_hospital_details(uint256 hospital_id,string memory _hospital_name,string memory _hospital_address)public isOwner {
        
         m.hospital_name = _hospital_name;
         m.hospital_address = _hospital_address;
         
         
        hospitallist[hospital_id] = m;
        
        
         }
         
        

         function retreive_hospital_details(uint256 hospital_id) public view returns (string memory,string memory){
             
     hospital memory m = hospitallist[hospital_id];
     
     return (m.hospital_name,m.hospital_address);
     
          }
          
          
          
}