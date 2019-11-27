pragma solidity ^0.5.0;


contract medrecords{
   struct Patient{
        uint id;
        string name;
        string[] record;

   }
   struct Doctor{
        uint id;
        string name;
        string[] docrecord;

   }
    mapping (uint => Patient) patients;
    uint[] public patientAccts;
    mapping (uint => bool) public oldpatients;
    
    mapping (uint => Doctor) doctors;
    uint[] public doctorAccts;
    mapping (uint => bool) public doc;

    function loginpat(uint _id, string memory _name) public {
      
    require(!oldpatients[_id],"not an old patient");
    patients[_id] = Patient(_id, _name, new string[](0));
    patientAccts.push(_id)-1;
    oldpatients[_id] = true;



    }
    function logindoc(uint _id, string memory _name) public {
      
    require(!doc[_id],"not an old doc");
    doctors[_id] = Doctor(_id, _name, new string[](0));
    doctorAccts.push(_id)-1;
    doc[_id] = true;



    }
    
   
}