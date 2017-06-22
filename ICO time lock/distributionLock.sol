pragma solidity ^0.4.11;

//Dentacoin token import
contract exToken {
  function transfer(address, uint256) returns (bool) {  }
  function balanceOf(address) constant returns (uint256) {  }
}


// Timelock
contract DentacoinTimeLock {

  // amount to withdraw each year
  uint256 jan2018 = 124440000000;   //2%
  uint256 jan2019 = 0;   //3%
  uint256 jan2020 = 0;   //4%
  uint256 jan2021 = 0;   //5%
  uint256 jan2022 = 0;   //6%
  uint256 jan2023 = 0;   //8%
  uint256 jan2024 = 0;   //10%
  uint256 jan2025 = 0;   //9%
  uint256 jan2026 = 0;   //8%
  uint256 jan2027 = 0;   //8%
  uint256 jan2028 = 0;   //6%
  uint256 jan2029 = 0;   //5%
  uint256 jan2030 = 0;   //2%
  uint256 jan2031 = 0;   //2%
  uint256 jan2032 = 0;   //2%
  uint256 jan2033 = 0;   //2%
  uint256 jan2034 = 0;   //2%
  uint256 jan2035 = 0;   //2%
  uint256 jan2036 = 0;   //2%
  uint256 jan2037 = 0;   //2%
  uint256 jan2038 = 0;   //2%
  uint256 jan2039 = 0;   //2%
  uint256 jan2040 = 0;   //2%
  uint256 jan2041 = 0;   //2%
  uint256 jan2042 = 0;   //2%

  //lockTime for each withdraw
  uint256 lockTime18 = 1 years - 195 days;
  uint256 lockTime19 = 2 years - 195 days;
  uint256 lockTime20 = 3 years - 195 days;
  uint256 lockTime21 = 4 years - 195 days;
  uint256 lockTime22 = 5 years - 195 days;
  uint256 lockTime23 = 6 years - 195 days;
  uint256 lockTime24 = 7 years - 195 days;
  uint256 lockTime25 = 8 years - 195 days;
  uint256 lockTime26 = 9 years - 195 days;
  uint256 lockTime27 = 10 years - 195 days;
  uint256 lockTime28 = 11 years - 195 days;
  uint256 lockTime29 = 12 years - 195 days;
  uint256 lockTime30 = 13 years - 195 days;
  uint256 lockTime31 = 14 years - 195 days;
  uint256 lockTime32 = 15 years - 195 days;
  uint256 lockTime33 = 16 years - 195 days;
  uint256 lockTime34 = 17 years - 195 days;
  uint256 lockTime35 = 18 years - 195 days;
  uint256 lockTime36 = 19 years - 195 days;
  uint256 lockTime37 = 20 years - 195 days;
  uint256 lockTime38 = 21 years - 195 days;
  uint256 lockTime39 = 22 years - 195 days;
  uint256 lockTime40 = 23 years - 195 days;
  uint256 lockTime41 = 24 years - 195 days;
  uint256 lockTime42 = 25 years - 195 days;
  uint256 lockTime43 = 26 years - 195 days;


  address public owner;
  uint public startTime;
  uint256 lockedAmount;
  uint public yearCount = 2018;
  exToken public tokenAddress;

  modifier onlyBy(address _account){
    if (msg.sender != _account)
    throw;
    _;
  }

  function () {}

  function DentacoinTimeLock() {

    owner = msg.sender;
    startTime = now;
    tokenAddress = exToken(0x08d32b0da63e2C3bcF8019c9c5d849d7a9d791e6);
  }

  function withdraw2018() onlyBy(owner) {
    if (yearCount != 2018) { throw; }
    if ((startTime + lockTime18) < now) {
      tokenAddress.transfer(owner, jan2018);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2019() onlyBy(owner) {
    if (yearCount != 2019) { throw; }
    if ((startTime + lockTime19) < now) {
      tokenAddress.transfer(owner, jan2019);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2020() onlyBy(owner) {
    if (yearCount != 2020) { throw; }
    if ((startTime + lockTime20) < now) {
      tokenAddress.transfer(owner, jan2020);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2021() onlyBy(owner) {
    if (yearCount != 2021) { throw; }
    if ((startTime + lockTime21) < now) {
      tokenAddress.transfer(owner, jan2021);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2022() onlyBy(owner) {
    if (yearCount != 2022) { throw; }
    if ((startTime + lockTime22) < now) {
      tokenAddress.transfer(owner, jan2022);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2023() onlyBy(owner) {
    if (yearCount != 2023) { throw; }
    if ((startTime + lockTime23) < now) {
      tokenAddress.transfer(owner, jan2023);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2024() onlyBy(owner) {
    if (yearCount != 2024) { throw; }
    if ((startTime + lockTime24) < now) {
      tokenAddress.transfer(owner, jan2024);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2025() onlyBy(owner) {
    if (yearCount != 2025) { throw; }
    if ((startTime + lockTime25) < now) {
      tokenAddress.transfer(owner, jan2025);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2026() onlyBy(owner) {
    if (yearCount != 2026) { throw; }
    if ((startTime + lockTime26) < now) {
      tokenAddress.transfer(owner, jan2026);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2027() onlyBy(owner) {
    if (yearCount != 2027) { throw; }
    if ((startTime + lockTime27) < now) {
      tokenAddress.transfer(owner, jan2027);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2028() onlyBy(owner) {
    if (yearCount != 2028) { throw; }
    if ((startTime + lockTime28) < now) {
      tokenAddress.transfer(owner, jan2028);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2029() onlyBy(owner) {
    if (yearCount != 2029) { throw; }
    if ((startTime + lockTime29) < now) {
      tokenAddress.transfer(owner, jan2029);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2030() onlyBy(owner) {
    if (yearCount != 2030) { throw; }
    if ((startTime + lockTime30) < now) {
      tokenAddress.transfer(owner, jan2030);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2031() onlyBy(owner) {
    if (yearCount != 2031) { throw; }
    if ((startTime + lockTime31) < now) {
      tokenAddress.transfer(owner, jan2031);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2032() onlyBy(owner) {
    if (yearCount != 2032) { throw; }
    if ((startTime + lockTime32) < now) {
      tokenAddress.transfer(owner, jan2032);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2033() onlyBy(owner) {
    if (yearCount != 2033) { throw; }
    if ((startTime + lockTime33) < now) {
      tokenAddress.transfer(owner, jan2033);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2034() onlyBy(owner) {
    if (yearCount != 2034) { throw; }
    if ((startTime + lockTime34) < now) {
      tokenAddress.transfer(owner, jan2034);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2035() onlyBy(owner) {
    if (yearCount != 2035) { throw; }
    if ((startTime + lockTime35) < now) {
      tokenAddress.transfer(owner, jan2035);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2036() onlyBy(owner) {
    if (yearCount != 2036) { throw; }
    if ((startTime + lockTime36) < now) {
      tokenAddress.transfer(owner, jan2036);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2037() onlyBy(owner) {
    if (yearCount != 2037) { throw; }
    if ((startTime + lockTime37) < now) {
      tokenAddress.transfer(owner, jan2037);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2038() onlyBy(owner) {
    if (yearCount != 2038) { throw; }
    if ((startTime + lockTime38) < now) {
      tokenAddress.transfer(owner, jan2038);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2039() onlyBy(owner) {
    if (yearCount != 2039) { throw; }
    if ((startTime + lockTime39) < now) {
      tokenAddress.transfer(owner, jan2039);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2040() onlyBy(owner) {
    if (yearCount != 2040) { throw; }
    if ((startTime + lockTime40) < now) {
      tokenAddress.transfer(owner, jan2040);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2041() onlyBy(owner) {
    if (yearCount != 2041) { throw; }
    if ((startTime + lockTime41) < now) {
      tokenAddress.transfer(owner, jan2041);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2042() onlyBy(owner) {
    if (yearCount != 2042) { throw; }
    if ((startTime + lockTime42) < now) {
      tokenAddress.transfer(owner, jan2042);
      yearCount += 1;
    } else { throw; }
  }
  function withdraw2043() onlyBy(owner) {
    if (yearCount != 2043) { throw; }
    if ((startTime + lockTime43) < now) {
      tokenAddress.transfer(owner, tokenAddress.balanceOf(this));
      yearCount += 1;
    } else { throw; }
  }






}
