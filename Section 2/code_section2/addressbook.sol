pragma solidity 0.5.0;

contract AddressBook {
    
    mapping( address => uint) private _state;
    mapping(address => address[]) private addresses;
    mapping(address => mapping(address => string)) private _aliases;
    
    
    function addAddress(address addr, string alias) public{
        
        _addresses[msg.sender].push(addr);
        _aliases[msg.sender][addr] =alias;
        _state[msg.sender]++;
        
        
    }
    
    
    function removeaddress(address addr) public {
        
        uint length = _addresses[msg.sender].length;
        
        for(uint i =0;i<length;i++){
            
            
            if(addr == _addresses[msg.sender][i]){
                
                _addresses[msg.sender][i] = _addresses[msg.sender][length-1];
       
            }
            
            delete _addresses[msg.sender][length-1];
            _addresses[msg.sender].length--;
            delete _aliases[msg.sender][addr];
            _state[msg.sender]++;
            break;
        }
        
        
        
    }
    
}