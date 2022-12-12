//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.7.0;

 
contract Medical  {
    
     
      mapping(uint256 => manufacture)  manufacturelist;
      
    
     struct  manufacture{
         string  manufacture_name;
         string  manufacture_address;
         string  drug_name;
         uint256 drug_manifactureddate;
         uint256 drug_expirydate;
         uint256 units_manifactured;
         uint256 phone_no;

      
          
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
      
     
     
    
  
     function store_manufacture_details(uint256 manufacture_id,uint256 durg_id,uint256 _drug_manifactureddate,uint256 _drug_expirydate,uint256 _units_manifactured,uint256 _phone_no,string memory _manufacture_name,string memory _manufacture_address,string memory _drug_name)public isOwner {
        
         m.manufacture_name = _manufacture_name;
         m.manufacture_address = _manufacture_address;
         m.manufacture_drug_manifactureddate = _drug_manifactureddate;
         m.manufacturedrug_expirydate = _drug_expirydate;
         m.manufactureunits_manifactured = _units_manifactured;
         m.manufacturephone_no = _phone_no;
         m.manufacturephone_drug_name = _drug_name;
         
        manufacturelist[manufacture_id] = m;
        
        
         }
         
        

         function retreive_manufacture_details(uint256 manufacture_id) public view returns (string memory,string memory,string memory){
             
     manufacture memory m = manufacturelist[manufacture_id];
     
     return (m.manufacture_name,m.manufacture_address,m.manufacture_drug_name);
     
          }
          
          
          
}