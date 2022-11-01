// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
 contract examination {

    uint8 rollnumber;
    string Name;
    string Department;
    uint256 Mark1;
    uint256 Mark2;
    uint256 Mark3;
    uint256 Mark4;
    uint256 Mark5;
    uint256 total;
    uint256 avg;

    /**
     * @dev Store value in variable
     * @param _Name value to store
     */
    function store(uint8 _rollnumber, string memory _Name, string memory _Dept, uint256 _M1, uint256 _M2, uint256 _M3, uint256 _M4, uint256 _M5) public {
     rollnumber = _rollnumber;
     Name = _Name;
     Department = _Dept;
     Mark1 = _M1;
     Mark2 = _M2;
     Mark3 = _M3;
     Mark4 = _M4;
     Mark5 = _M5;
         }
    
    function Calculate() public{
        total = Mark1 + Mark2 + Mark3 + Mark4 + Mark5;
        avg = (total/5);

    }

    /**
     * @dev Return value 
     * @return num value of 'number'
     */
    function retrieve() public view returns (uint8, string memory, uint256, uint256){
        return(rollnumber, Name, total, avg);
    }
}