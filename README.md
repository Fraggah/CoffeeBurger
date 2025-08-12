# CoffeeBurger

<img width="1920" height="1080" alt="CoffeBurger" src="https://github.com/user-attachments/assets/540bb3d2-39ae-48e9-9377-45a0a589116d" />

**Genre:** Idle Tycoon / Management Simulation  
**Engine:** Godot Engine (GDScript)  
**Platform:** Mobile (Android)  

CoffeeBurger is a mobile idle tycoon game where the player manages a café and burger shop, automating sales, hiring staff, and upgrading production to maximize profits over time. The game focuses on persistent resource systems, scalable upgrades, and adaptive mobile UI design.

---

## 🎮 Technical Features

- **Persistent resource management system**: Tracks money, coffee stock, burger stock, and upgrades across sessions using `File` I/O for save/load functionality.
- **Scalable upgrade systems**:
  - **Cashier upgrades**: Increase transaction speed and customer throughput.
  - **Product upgrades**: Improve coffee and burger value and production rate.
- **Hiring system**: Unlock and hire additional cashiers to scale revenue generation.
- **Idle income simulation**: Generates resources while the game is closed, calculated upon return.
- **UI scaling and adaptation**: Mobile-friendly layout with touch input optimization.
- **Soft economy balancing**: Dynamic price curves to prevent runaway inflation while keeping gameplay rewarding.
- **Progression tracking**: Milestone-based goals and achievements.

---

## 🛠 Technical Challenges & Solutions

- **Issue:** Save data corruption when the game closed unexpectedly on mobile devices.  
  **Solution:** Implemented atomic save operations with temporary files and validation checks before overwriting main save data.

- **Issue:** UI overlap and misalignment on devices with different aspect ratios.  
  **Solution:** Used `Control` nodes with anchors, margins, and responsive scaling scripts to adapt layout automatically.

- **Issue:** Idle income calculations producing unrealistic spikes after long inactivity.  
  **Solution:** Added caps and diminishing returns for offline progress to balance gameplay and prevent economy exploits.

---
