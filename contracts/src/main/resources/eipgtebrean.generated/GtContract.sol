
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.20 <0.9.0;

contract GtContract {

    string private name_g = "George";
    string private sym = "$";
    uint256 private tsupp = 22;
    uint8 private dec = 8;

    function balanceOf(address _owner) public view returns (uint256 balance){
        return _owner.balance;
    }

    function decimals() public view returns (uint8){
        dec;
    }


    function totalSupply() public view returns (uint256){
        return tsupp;
    }

    function transfer(address _to, uint256 _value) public view returns (bool success){
        if(_to.balance == _value){
            return true;
        }
        return false;
    }

    function transferFrom(address _from, address _to, uint256 _value) public view returns (bool success){
        if(_from.balance == _value && _to.balance == _value){
            return true;
        }
        return false;
    }
    function approve(address _spender, uint256 _value) public view returns (bool success){
        if(_spender.balance > _value){
            return true;
        }
        return false;
    }

    function allowance(address _owner, address _spender) public view returns (uint256 remaining){
        if(_owner == _spender){
            return _spender.balance;
        }
        return 0;
    }


}
