contract NameRegistry {
  mapping (address => string) registry; // address to string mapping
  address[] registeredAddrs; // to iterate over all registered Addresses

  uint numRegAddrs;

  function NameRegistry() {
    numRegAddrs = 0;
  }

  function getName(address addr) returns (string) {
    return registry[addr];
  }

  function setName(string name) {
     registry[msg.sender] = name;
  }
}
