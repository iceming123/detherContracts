pragma solidity ^0.5.3;

contract IGeoRegistry {
  // Ownable.sol
  function owner() public returns (address);
  function transferOwnership(address _newOwner) public;
  // GeoRegistry.sol
  function zoneInsideCountry(bytes2 _countryCode, bytes4 _zone) public view returns (bool);
  function level_2(bytes2 _countryCode, bytes3 _geohash3chars) public returns (bytes4);
  function countryIsEnabled(bytes2 _countryCode) public view returns (bool);
  function enabledCountries(uint idx) public returns (bytes2);
  function updateLevel2(bytes2 _countryCode, bytes3 _letter, bytes4 _subLetters) public;
  function updateLevel2batch(bytes2 _countryCode, bytes3[] memory _letters, bytes4[] memory _subLetters) public;
  function enableCountry(bytes2 _country) external;
  function disableCountry(bytes2 _country) external;
  function countryTierDailyLimit(bytes2 _countryCode, uint _tier) public returns (uint);
  function validGeohashChars(bytes memory _bytes) public returns (bool);
  function validGeohashChars12(bytes12 _bytes) public returns (bool);
}
