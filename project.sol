// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EarnTokensByWatching {
    address public owner;
    uint256 public tokenRewardPerVideo;
    mapping(address => uint256) public balances;
    mapping(address => mapping(uint256 => bool)) public watchedVideos;

    event TokensEarned(address indexed user, uint256 videoId, uint256 tokens);
    event TokensWithdrawn(address indexed user, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action.");
        _;
    }

    constructor(uint256 _tokenRewardPerVideo) {
        owner = msg.sender;
        tokenRewardPerVideo = _tokenRewardPerVideo;
    }

    function markVideoAsWatched(address user, uint256 videoId) external onlyOwner {
        require(!watchedVideos[user][videoId], "Video already watched by the user.");

        watchedVideos[user][videoId] = true;
        balances[user] += tokenRewardPerVideo;

        emit TokensEarned(user, videoId, tokenRewardPerVideo);
    }

    function withdrawTokens() external {
        uint256 amount = balances[msg.sender];
        require(amount > 0, "No tokens available for withdrawal.");

        balances[msg.sender] = 0;

        payable(msg.sender).transfer(amount);

        emit TokensWithdrawn(msg.sender, amount);
    }

    function updateTokenReward(uint256 newReward) external onlyOwner {
        tokenRewardPerVideo = newReward;
    }

    receive() external payable {}
}