pragma solidity ^0.5.0;

contract HelloWorld{
    
    
    string Name = "Harsha Bingi";
    
    string Location = "New York, United States";
    
    int date = 7;
    
    function setValues(string memory name1,string memory location1, int date1) public {
        
        Name = name1;
        Location = location1;
        date = date1;
        
        
        kill 
        
        
    }
    
    function getValues() public returns (string memory,string memory,int) {
        
        return (Name,Location,date);
    }
    

}