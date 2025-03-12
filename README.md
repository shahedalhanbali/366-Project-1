![image](https://github.com/user-attachments/assets/b2f26f02-dca6-47ba-bcee-9b0c7945222a)

# 📌 ECE 366: PROJECT 1  

## 🔹 Project Overview  
This repository contains the full implementation of four major problems related to adders and subtractors:  

- **Problem 1:** 1-bit & 4-bit Ripple-Carry Adder (RCA) and Subtractor (RCS).  
- **Problem 2:** 32-bit Carry Lookahead Adder (CLA).  
- **Problem 3:** 16-bit & 32-bit Parallel Prefix Adders (PPA).  
- **Problem 4:** 16-bit Kogge-Stone (KS) Adder.  

---

## 👥 Team Members & Contributions  


| **Team Member**     | **Role**    | **Contributions**  |
|---------------------|------------|--------------------|
| **Qudsia Sultana**  | Developer  | - Designed the **1-bit full adder** (behavioral & structural).  <br> - Built the **4-bit Ripple-Carry Adder (RCA)** and integrated it into **RCS**.  <br> - Developed & verified **16-bit Prefix Adder (PPA)** logic.  <br> - Created **4-bit CLA** & optimized it for **32-bit CLA**.  <br> - Assisted in debugging and validation of all testbenches. |
| **Shahed Alhanbali** | Developer  | - Implemented and tested the **4-bit RCA** and **4-bit RCS**.  <br> - Developed the **32-bit CLA** using **4-bit CLA blocks** and ensured correct carry propagation.  <br> - Extended the **Prefix Adder** to support **32-bit operations**.  <br> - Designed and implemented the **16-bit Kogge-Stone (KS) Adder**.  <br> - Maintained & updated **GitHub repository** with final implementations. |
| **Cindy Jurado**     | Developer  | - Developed the **4-bit Ripple-Carry Subtractor (RCS)** using two’s complement logic.  <br> - Wrote testbenches for **1-bit, 4-bit, 16-bit, and 32-bit adders/subtractors**.  <br> - Developed and debugged testbenches for **32-bit CLA** and **16-bit KS Adder**.  <br> - Maintained project **progress reports and documentation**.  <br> - Assisted in debugging, validating edge cases, and verifying overflow handling. |


---

## 📌 Project Status  

✔️ **Problem 1:** **Completed** (Adder & Subtractor)  
✔️ **Problem 2:** **Completed** (32-bit CLA Implementation)  
✔️ **Problem 3:** **Completed** (16-bit & 32-bit Parallel Prefix Adder)  
✔️ **Problem 4:** **Completed** (16-bit Kogge-Stone Adder)  

📅 **Team Completion Date:** March 13, 2025  

---

## 🛠️ Problem Implementations  

### 🔹 **Problem 1: Designing a 1-bit & 4-bit Full Adder & Subtractor**  
✅ Implemented **1-bit Full Adder** using **behavioral & structural modeling**.  
✅ Designed a **4-bit Ripple-Carry Adder (RCA)** using 1-bit full adder modules.  
✅ Extended the **4-bit RCA** to a **4-bit Ripple-Carry Subtractor (RCS)** using **two’s complement**.  
✅ Developed a **testbench** to verify RCA & RCS functionality for **signed and unsigned** numbers.  

### 🔹 **Problem 2: Designing a 32-bit Carry Lookahead Adder (CLA)**  
✅ Constructed a **32-bit CLA** using **4-bit CLA blocks** for efficient carry propagation.  
✅ Used **only 2-input AND & OR gates** to implement carry propagation logic.  
✅ Created a **testbench** with extensive test cases, ensuring correct overflow handling.  

### 🔹 **Problem 3: Designing a 16-bit & 32-bit Parallel Prefix Adder (PPA)**  
✅ Implemented a **16-bit Parallel Prefix Adder (PPA)** for optimized carry computation.  
✅ Extended the **PPA** to a **32-bit version** for better performance.  
✅ Verified correctness via **testbench simulations**.  

### 🔹 **Problem 4: Designing a 16-bit Kogge-Stone (KS) Adder**  
✅ Designed a **16-bit Kogge-Stone Adder**, a **high-performance parallel prefix adder**.  
✅ Ensured **fast carry propagation** using the logic: `Pi:i = Ai ⊕ Bi`.  
✅ Verified correctness using an **enhanced testbench**.  

---

## 📸 Screenshots of Waveforms  
Below are the captured **waveforms** for different implementations:  

### 🔹 **Problem 1:**
- ✅ **1-bit Full Adder (Behavioral)**  
- ✅ **1-bit Full Adder (Structural)**  
- ✅ **4-bit Ripple-Carry Adder (RCA)**  
- ✅ **4-bit Ripple-Carry Subtractor (RCS)**  

### 🔹 **Problem 2:**
- ✅ **32-bit Carry Lookahead Adder (CLA)**  

### 🔹 **Problem 3:**
- ✅ **16-bit Parallel Prefix Adder (PPA)**  
- ✅ **32-bit Parallel Prefix Adder (PPA)**  

### 🔹 **Problem 4:**
- ✅ **16-bit Kogge-Stone (KS) Adder**  

---

## 📂 GitHub Repository & Submission Details  
- **Team Members:** Qudsia Sultana, Shahed Alhanbali, Cindy Jurado  
- **GitHub Repository:** [366-Project-1](https://github.com/shahedalhanbali/366-Project-1)  
- **Submission Date:** March 13, 2025  

🚀 **This project was successfully completed and verified!** 🚀  
