# 🖼️ NFT Mood Collection

A dynamic NFT collection that reflects the owner's mood, built with **Solidity** and **Foundry**.

---

## 🧠 Overview

This project implements a dynamic NFT collection where each NFT can change its appearance based on the owner's mood. The NFTs can switch between **"Happy"** and **"Sad"** states, with their visuals updating accordingly.

---

## ✨ Key Features

- 🎨 **100% On-Chain NFTs** – SVG images stored directly in the contract  
- 🔁 **Dynamic State Switching** – Owners can flip between moods  
- 💾 **Base64 Encoding** – Efficient on-chain storage and rendering  
- ⚙️ **Built with Foundry** – For testing and deployment  

---

## 🛠 Technical Details

### 📜 Smart Contracts

- `MoodNft.sol`: Main ERC721 contract  
  - Mints NFTs  
  - Lets users flip their NFT’s mood  
  - Generates metadata dynamically  

---

## 🗃 On-Chain Storage

This project stores NFT images directly on-chain using:

- 🖼 **SVG Images**
- 🧬 **Base64 Encoding** (to embed SVG in tokenURI)

---

## 🧾 Token URI Structure

The metadata includes:

- Name  
- Description  
- Attributes (e.g., moodiness)  
- The SVG image (changes with mood)

---

## 🎭 SVG Mood Variants

### 🙂 Happy Mood

data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjAwIDIwMCIgd2lkdGg9IjQwMCIgaGVpZ2h0PSI0MDAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8Y2lyY2xlIGN4PSIxMDAiIGN5PSIxMDAiIGZpbGw9InllbGxvdyIgcj0iNzgiIHN0cm9rZT0iYmxhY2siIHN0cm9rZS13aWR0aD0iMyIgLz4KICAgIDxnIGNsYXNzPSJleWVzIj4KICAgICAgICA8Y2lyY2xlIGN4PSI3MCIgY3k9IjgyIiByPSIxMiIgLz4KICAgICAgICA8Y2lyY2xlIGN4PSIxMjciIGN5PSI4MiIgcj0iMTIiIC8+CiAgICA8L2c+CiAgICA8cGF0aCBkPSJtMTM2LjgxIDExNi41M2MuNjkgMjYuMTctNjQuMTEgNDItODEuNTItLjczIiBzdHlsZT0iZmlsbDpub25lOyBzdHJva2U6IGJsYWNrOyBzdHJva2Utd2lkdGg6IDM7IiAvPgo8L3N2Zz4=

shell
Copy
Edit

### 😢 Sad Mood

data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTAyNHB4IiBoZWlnaHQ9IjEwMjRweCIgdmlld0JveD0iMCAwIDEwMjQgMTAyNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGZpbGw9IiMzMzMiCiAgICAgICAgZD0iTTUxMiA2NEMyNjQuNiA2NCA2NCAyNjQuNiA2NCA1MTJzMjAwLjYgNDQ4IDQ0OCA0NDggNDQ4LTIwMC42IDQ0OC00NDhTNzU5LjQgNjQgNTEyIDY0em0wIDgyMGMtMjA1LjQgMC0zNzItMTY2LjYtMzcyLTM3MnMxNjYuNi0zNzIgMzcyLTM3MiAzNzIgMTY2LjYgMzcyIDM3Mi0xNjYuNiAzNzItMzcyIDM3MnoiIC8+CiAgICA8cGF0aCBmaWxsPSIjRTZFNkU2IgogICAgICAgIGQ9Ik01MTIgMTQwYy0yMDUuNCAwLTM3MiAxNjYuNi0zNzIgMzcyczE2Ni42IDM3MiAzNzIgMzcyIDM3Mi0xNjYuNiAzNzItMzcyLTE2Ni42LTM3Mi0zNzItMzcyek0yODggNDIxYTQ4LjAxIDQ4LjAxIDAgMCAxIDk2IDAgNDguMDEgNDguMDEgMCAwIDEtOTYgMHptMzc2IDI3MmgtNDguMWMtNC4yIDAtNy44LTMuMi04LjEtNy40QzYwNCA2MzYuMSA1NjIuNSA1OTcgNTEyIDU5N3MtOTIuMSAzOS4xLTk1LjggODguNmMtLjMgNC4yLTMuOSA3LjQtOC4xIDcuNEgzNjBhOCA4IDAgMCAxLTgtOC40YzQuNC04NC4zIDc0LjUtMTUxLjYgMTYwLTE1MS42czE1NS42IDY3LjMgMTYwIDE1MS42YTggOCAwIDAgMS04IDguNHptMjQtMjI0YTQ4LjAxIDQ4LjAxIDAgMCAxIDAtOTYgNDguMDEgNDguMDEgMCAwIDEgMCA5NnoiIC8+CiAgICA8cGF0aCBmaWxsPSIjMzMzIgogICAgICAgIGQ9Ik0yODggNDIxYTQ4IDQ4IDAgMSAwIDk2IDAgNDggNDggMCAxIDAtOTYgMHptMjI0IDExMmMtODUuNSAwLTE1NS42IDY3LjMtMTYwIDE1MS42YTggOCAwIDAgMCA4IDguNGg0OC4xYzQuMiAwIDcuOC0zLjIgOC4xLTcuNCAzLjctNDkuNSA0NS4zLTg4LjYgOTUuOC04OC42czkyIDM5LjEgOTUuOCA4OC42Yy4zIDQuMiAzLjkgNy40IDguMSA3LjRINjY0YTggOCAwIDAgMCA4LTguNEM2NjcuNiA2MDAuMyA1OTcuNSA1MzMgNTEyIDUzM3ptMTI4LTExMmE0OCA0OCAwIDEgMCA5NiAwIDQ4IDQ4IDAgMSAwLTk2IDB6IiAvPgo8L3N2Zz4=

yaml
Copy
Edit

---

## 🧪 Testing & Running

### 📦 Prerequisites

- [Foundry](https://book.getfoundry.sh/)
- Git

### 🧬 Clone the Repo

```bash
git clone https://github.com/sahilsan95/NFT-COLLECTION.git
cd NFT-COLLECTION
📥 Install Dependencies
bash
Copy
Edit
forge install
⚙️ Build Contracts
bash
Copy
Edit
forge build
🧪 Run Tests
bash
Copy
Edit
forge test
🚀 Deployment
🔹 Deploy to Local Anvil
bash
Copy
Edit
anvil
In a new terminal:

bash
Copy
Edit
forge script script/DeployMoodNft.s.sol:DeployMoodNft \
  --rpc-url http://localhost:8545 \
  --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 \
  --broadcast
🔸 Deploy to Sepolia/Testnet
bash
Copy
Edit
forge script script/DeployMoodNft.s.sol:DeployMoodNft \
  --rpc-url <YOUR_RPC_URL> \
  --private-key <YOUR_PRIVATE_KEY> \
  --broadcast --verify
📄 License
This project is licensed under the MIT License.

🙏 Acknowledgments
OpenZeppelin – for secure ERC contracts

Foundry – for Ethereum development

yaml
Copy
Edit

---








