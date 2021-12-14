pragma solidity ^0.8.10;

contract donarContract {

    struct donar
    {

        string firstname;
        string lastname;
        uint age;
        string gender;
        string medical_id;
        string blood_type;
        string location;

    }

    struct patient
    {

        string firstname;
        string lastname;
        uint age;
        string gender;
        string medical_id;
        string blood_type;
        string location;

    }

    mapping ( string =>donar ) donarMap;
    mapping ( string =>patient) patientMap;

    string[] DonarsArray;
    string[] PatientArray;

    function addDonars(string memory _firstname, string memory _lastname, uint _age, string memory _gender,
                       string memory _medical_id, string memory _blood_type, string memory _location)
    public
    {
        // Set parameters as required
        require(bytes(_firstname).length > 0);
        require(bytes(_lastname).length > 0);
        require(uint(_age) > 0);
        require(bytes(_gender).length > 0);
        require(bytes(_medical_id).length > 0);
        require(bytes(_blood_type).length > 0);
        require(bytes(_location).length > 0);

        require ( keccak256(abi.encodePacked((donarMap[_medical_id].medical_id))) != keccak256(abi.encodePacked(_medical_id)));
        donarMap[_medical_id].firstname = _firstname;
        donarMap[_medical_id].lastname = _lastname;
        donarMap[_medical_id].age = _age;
        donarMap[_medical_id].gender = _gender;
        donarMap[_medical_id].medical_id = _medical_id;
        donarMap[_medical_id].blood_type = _blood_type;
        donarMap[_medical_id].location = _location;

        DonarsArray.push(_medical_id);
    }

    function addPatients(string memory _firstname, string memory _lastname, uint _age, string memory _gender,
                       string memory _medical_id, string memory _blood_type, string memory _location)
    public
    {
        // Set parameters as required
        require(bytes(_firstname).length > 0);
        require(bytes(_lastname).length > 0);
        require(uint(_age) > 0);
        require(bytes(_gender).length > 0);
        require(bytes(_medical_id).length > 0);
        require(bytes(_blood_type).length > 0);
        require(bytes(_location).length > 0);

        require ( keccak256(abi.encodePacked((donarMap[_medical_id].medical_id))) != keccak256(abi.encodePacked(_medical_id)) );
        patientMap[_medical_id].firstname = _firstname;
        patientMap[_medical_id].lastname = _lastname;
        patientMap[_medical_id].age = _age;
        patientMap[_medical_id].gender = _gender;
        patientMap[_medical_id].medical_id = _medical_id;
        patientMap[_medical_id].blood_type = _blood_type;
        patientMap[_medical_id].location = _location;

        PatientArray.push(_medical_id);
    }

    function getDonar(string memory _medical_id) view public returns(string memory ,string memory, uint, string memory, string memory, string memory, string memory)
    {
        return
        (
            donarMap[_medical_id].firstname,
            donarMap[_medical_id].lastname,
            donarMap[_medical_id].age,
            donarMap[_medical_id].gender,
            donarMap[_medical_id].medical_id,
            donarMap[_medical_id].blood_type,
            donarMap[_medical_id].location
        );
    }

    function getPatient(string memory _medical_id) view public returns(string memory ,string memory, uint, string memory, string memory, string memory, string memory)
    {
        return
        (
            patientMap[_medical_id].firstname,
            patientMap[_medical_id].lastname,
            patientMap[_medical_id].age,
            patientMap[_medical_id].gender,
            patientMap[_medical_id].medical_id,
            patientMap[_medical_id].blood_type,
            patientMap[_medical_id].location
        );
    }

    function validateDonar(string memory _medical_id) view public returns(bool)
    {

     if (keccak256(abi.encodePacked((donarMap[_medical_id].medical_id))) == keccak256(abi.encodePacked(_medical_id)))
     return true;
     else return false;

    }

    function validatePatient(string memory _medical_id) view public returns(bool)
    {

     if (keccak256(abi.encodePacked((patientMap[_medical_id].medical_id))) == keccak256(abi.encodePacked(_medical_id)))
     return true;
     else return false;

    }

    function getAllDonarIDs() view public returns(string[] memory)
    {
            return DonarsArray;
    }

    function getAllPatientIDs() view public returns(string[] memory)
    {
            return PatientArray;
    }

    function getCountOfDonars() view public returns (uint)
    {
        return DonarsArray.length;
    }

    function getCountOfPatients() view public returns (uint)
    {
        return PatientArray.length;
    }

}
