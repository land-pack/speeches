pragma solidity ^0.4.17;

contract Simple {
  uint myVariable;
    function Simple() {

   }
   function set(uint x) public {
     myVariable = x;
   }
   function get() constant public returns(uint) {
    return myVariable;
   }
}
