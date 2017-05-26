pragma solidity ^0.4.11;

//Dentacoin token import
contract exToken {
  function transfer(address, uint256) returns (bool) {  }
  function balanceOf(address) constant returns (uint256) {  }
}


// Timelock
contract DentacoinTimeLock {

  address public owner;
  uint lockTime = 1 years;
  uint public startTime;
  uint256 lockedAmount;
  exToken public tokenAddress;

  modifier onlyBy(address _account){
    if (msg.sender != _account)
    throw;
    _;
  }

  function () payable {}

  function DentacoinTimeLock() {

    owner = msg.sender;
    startTime = now;
    tokenAddress = exToken(0x08d32b0da63e2C3bcF8019c9c5d849d7a9d791e6);
  }

  function withdraw() onlyBy(owner) {
    lockedAmount = tokenAddress.balanceOf(this);
    if ((startTime + lockTime) < now) {
      tokenAddress.transfer(owner, lockedAmount);
    } else { throw; }
  }

}
