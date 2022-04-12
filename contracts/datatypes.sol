// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.12;

interface IDataTypesPractice {
    function getInt256() external view returns(int256);
    function getUint256() external view returns(uint256);
    function getInt8() external view returns(int8);
    function getUint8() external view returns(uint8);
    function getBool() external view returns(bool);
    function getAddress() external view returns(address);
    function getBytes32() external view returns(bytes32);
    function getArrayUint5() external view returns(uint256[5] memory);
    function getArrayUint() external view returns(uint256[] memory);
    function getString() external view returns(string memory);

    function getBigUint() external pure returns(uint256);
}

contract DataTypesPractice is IDataTypesPractice {
    int256 i256Val = type(int256).min;
    uint256 u256Val = type(uint256).max;
    int8 i8Val = type(int8).min;
    uint8 u8Val = type(uint8).max;
    bool boolVal = true;
    address addrVal = 0x05A266562c5DcB7FccE300Acf211f4c2756C8CEB;
    bytes32 b32Val = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
    uint256[5] arr5 = [1, 2, 3, 4, 5];
    uint256[] arr = [99, 14, 2, 4, 0, 19];
    string str = "Hello World!";

    function getInt256() external view override returns(int256) {
        return i256Val;
    }

    function getUint256() external view override returns(uint256) {
        return u256Val;
    }

    function getInt8() external view override returns(int8) {
        return i8Val;
    }

    function getUint8() external view override returns(uint8) {
        return u8Val;
    }

    function getBool() external view override returns(bool) {
        return boolVal;
    }

    function getAddress() external view override returns(address) {
        return addrVal;
    }

    function getBytes32() external view override returns(bytes32) {
        return b32Val;
    }

    function getArrayUint5() external view override returns(uint256[5] memory) {
        return arr5;
    }

    function getArrayUint() external view override returns(uint256[] memory) {
        return arr;
    }

    function getString() external view override returns(string memory) {
        return str;
    }

    function getBigUint() external pure override returns(uint256) {
        uint256 v1 = 1;
        uint256 v2 = 2;
        return uint256(-int256(v1));
    }
}