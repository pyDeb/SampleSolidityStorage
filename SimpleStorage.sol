//orange buttons under the contract in remix are the function calls that cost gas

pragma solidity ^0.8.0;

contract SimpleStorage {
    // there are four visibilities for solidity variables and functions
    // public
    // internal: only other functions inside the contract or derivied contracts can call that function. It is the default visibility option
    // external: the function can only be accessed by other contracts via transactions. However, they can be accessed with "this" inside the contract
    // private: Private functions and variables are accessible only within the contract they are defined in and not the derivied or external ones
    uint256 public good_number = 8;

    // declaring variable in Solidity: type + visibility + name

    struct People{
        string name;
        uint256 favorite_number;
    }

    People[] public people;

    function store(uint256 _good_number) public{
        good_number = _good_number;
    }

    // this function does not change the status of the blockchain.
    function get() public view returns(uint256){
        return good_number;
    }


    // pure functions are used for math calculations but they also do not change the state of blockchain
    function do_some_math(uint256 input_number) public pure{
        input_number * input_number;
    }

    function add_person(string memory name, uint256 favorite_number) public{
        people.push(People(name, favorite_number));
    }


}
