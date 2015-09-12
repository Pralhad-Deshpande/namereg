contract NameReg3{
  address owner;
  mapping (bytes32 => address) public registry;

  function NameReg3(){
	owner = msg.sender;
  }

  function getOwner() constant returns (address addr){
	return owner;
  }

  function addName (bytes32 name, address addr) constant returns (bool result){
	registry[name] = addr;
	return true;
  } 

  function getName (bytes32 name) constant returns (address result){
	return registry[name];	
  }
}
