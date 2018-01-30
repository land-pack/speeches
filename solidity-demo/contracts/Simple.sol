pragma solidity ^0.4.17;


contract Simple {
  uint myVariable;
  event Odd();
  event Even();

  function Simple() {

   }
  function set(uint x) public {
     myVariable = x;
     if(x % 2 == 0){
       Odd();
     }else{
       Even();
     }
   }
   function get() constant public returns(uint) {
    return myVariable;
   }
}
