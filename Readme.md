

## Project Title
EarnTokensByWatching: Reward System for Watching Videos

## Project Description
EarnTokensByWatching is a blockchain-based application that allows users to earn tokens as rewards for watching videos. Designed to incentivize content engagement, this smart contract securely tracks viewed videos and rewards users with tokens. This system can be leveraged by content creators, advertisers, or educational platforms aiming to boost audience participation.

## Contract Address
0xe36107a87509244a6b94943b29fab2d4e435ce14

## Project Vision
The project envisions a fair and transparent system where users are rewarded for their time and attention spent consuming content. By leveraging blockchain technology, this system ensures trustless operations and provides a unique way to engage audiences in decentralized ecosystems.

## Key Features

1. *Ownership and Control*
   - The contract is managed by an owner, who can update token rewards and mark videos as watched.

2. *Reward System*
   - Users earn tokens for every video they watch, with the reward amount defined by tokenRewardPerVideo.
   - Rewards are tracked per user and per video to avoid duplication.

3. *Token Withdrawal*
   - Users can withdraw their accumulated rewards as Ether from the smart contract.

4. *Transparency and Security*
   - Blockchain technology ensures an immutable record of watched videos and earned rewards.

5. *Configurable Rewards*
   - The owner can adjust the token reward per video to align with changing strategies or budgets.

6. *Event Logging*
   - Key actions such as earning tokens and withdrawing tokens are logged via events for tracking and analytics.

7. *Fallback Support*
   - The contract includes a fallback receive function to handle direct Ether transfers.


### Future Enhancements
- Integration with off-chain systems to automate video-watching verification.
- Support for ERC-20 tokens as rewards.
- Advanced analytics and reporting for video engagement trends.
