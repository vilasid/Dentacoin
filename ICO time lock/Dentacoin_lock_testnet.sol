//ICOlock Testnet
/*
Dentacoin Foundation TimeLock Contract year 2043

6 088 888 888 888 DCN will be locked in total
Every year a certain amount will be released:
01/01/2018 = 121777777777   //2% Contract Address:
01/01/2019 = 182666666666   //3% Contract Address:
01/01/2020 = 243555555555   //4% Contract Address:
01/01/2021 = 304444444444   //5% Contract Address:
01/01/2022 = 365333333333   //6% Contract Address:
01/01/2023 = 487111111111   //8% Contract Address:
01/01/2024 = 608888888888   //10% Contract Address:
01/01/2025 = 547999999999   //9% Contract Address:
01/01/2026 = 487111111111   //8% Contract Address:
01/01/2027 = 487111111111   //8% Contract Address:
01/01/2028 = 365333333333   //6% Contract Address:
01/01/2029 = 304444444444   //5% Contract Address:
01/01/2030 = 121777777777   //2% Contract Address:
01/01/2031 = 121777777777   //2% Contract Address:
01/01/2032 = 121777777777   //2% Contract Address:
01/01/2033 = 121777777777   //2% Contract Address:
01/01/2034 = 121777777777   //2% Contract Address:
01/01/2035 = 121777777777   //2% Contract Address:
01/01/2036 = 121777777777   //2% Contract Address:
01/01/2037 = 121777777777   //2% Contract Address:
01/01/2038 = 121777777777   //2% Contract Address:
01/01/2039 = 121777777777   //2% Contract Address:
01/01/2040 = 121777777777   //2% Contract Address:
01/01/2041 = 121777777777   //2% Contract Address:
01/01/2042 = 121777777777   //2% Contract Address: this address
01/01/2043 = everything else     Contract Address:
*/


pragma solidity ^0.4.11;

//Dentacoin token import
contract exToken {
  function transfer(address, uint256) returns (bool) {  }
  function balanceOf(address) constant returns (uint256) {  }
}


// Timelock
contract DentacoinTimeLock {

  uint constant public year = 2043;
  address public owner;
  uint lockTime = 5 minutes;
  uint public startTime;
  uint256 lockedAmount;
  exToken public tokenAddress;

  modifier onlyBy(address _account){
    require(msg.sender == _account);
    _;
  }

  function () payable {}

  function DentacoinTimeLock() {

    //owner = msg.sender;
    owner = 0x95f2Ca20d11d448150117C129ff8D4F37a4C725C;  // Dentacoin Foundation owner
    startTime = now;
    tokenAddress = exToken(0x571280B600bBc3e2484F8AC80303F033b762048f);
  }

  function withdraw() onlyBy(owner) {
    lockedAmount = tokenAddress.balanceOf(this);
    if ((startTime + lockTime) < now) {
      tokenAddress.transfer(owner, lockedAmount);
    } else { throw; }
  }
}
