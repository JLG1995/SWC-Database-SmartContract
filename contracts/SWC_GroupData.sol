// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SWC_GroupData {
    struct Member {
        string nickname;
        uint256 id;
        bool isActive;
    }
    

    mapping(address => Member) public members;
    address[] public memberKeys;

    // Add new member. mKey represents the address of the wallet account
    function addMember(address _mKey, string memory _nickname, uint256 _id) public {
        // If member does not already exist, add address to the list
        if (bytes(members[_mKey].nickname).length == 0) {
            memberKeys.push(_mKey);
        }

        members[_mKey] = Member(_nickname, _id, true);
    }

    // Marks member inactive
    function deactivateMember(address _mKey) public {
        // Mappings return default values for unknown keys.
        // If nickname is empty, this address was never added as a member.
        require(bytes(members[_mKey].nickname).length > 0, "Member does not exist");
        members[_mKey].isActive = false;
    }

    

    // Return the number of stored member addresses
    function getMemberCount() public view returns (uint256) {
        return memberKeys.length;
    }

    // Return one member by address
    function getMember(address _mKey) public view returns (string memory, uint256, bool) {
        Member memory m = members[_mKey];
        return (m.nickname, m.id, m.isActive);
    }

    // Return all member addresses
    function getAllMemberAddresses() public view returns (address[] memory) {
        return memberKeys;
    }

}