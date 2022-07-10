// SPDX-License-Identifier:MIT
pragma solidity ^0.8.4;                                     // any compiler from 0.8.4 and up can compile this code

contract MoodDiary{
    string mood;                                            // private string -> won't show up in ABI, because its private

    function setMood(string memory _mood) public {          // "string memory" necessary because strings do not have a fixed length (just like arrays) - "public" -> function can be accessed from outside the contract 
        mood = _mood;
    }

    function getMood() public view returns(string memory){  // "view" because function does not changes anything -> no computational steps, so function does not require gas - "returns" to specify return type
        return mood;
    }
}