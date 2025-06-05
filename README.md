# 📚 E-Learning Website with Adaptive Learning & Recommendation System

An intelligent e-learning platform that personalizes the learning experience by analyzing user behavior and preferences. The system predicts a learner's style (e.g., Visual, Auditory) using machine learning and recommends suitable content accordingly.

---

## 🚀 Features

- 🔐 Secure role-based login (Admin, Staff, Student)
- 🧠 Learning style prediction using Felder-Silverman Model
- 🌐 Fuzzy logic for behavioral uncertainty
- 🎯 Personalized course and content recommendation
- 📊 Learner performance tracking with visual analytics
- 📝 Mock tests tailored to user preferences
- 📂 Admin panel for content and user management

---

## 🧠 Technologies Used

| Area      | Technology            |
|-----------|------------------------|
| Frontend  | HTML, CSS, JSP         |
| Backend   | Java (Servlets), MySQL |
| Tools     | NetBeans, WAMP Server  |
| ML Logic  | FSLSM + Fuzzy Logic    |
| Testing   | JUnit (Unit Testing)   |

---

## ⚙️ Setup Instructions

1. ✅ Install **WAMP Server**: [https://www.wampserver.com](https://www.wampserver.com)
2. ✅ Install **NetBeans IDE**
3. ✅ Create MySQL database and tables (e.g., `notes_details`, `users`, `results`, etc.)
4. ✅ Import this project in NetBeans
5. ✅ Run the project and access it via `http://localhost:8080/E_learning_website/`

---

## 👥 User Roles

- **Admin**
  - Add/manage questions
  - Add/view staff and students
  - View learner performance
- **Staff**
  - Upload notes for specific learning styles
  - Monitor student learning behavior
- **Student**
  - Take style prediction test
  - View result & recommended materials
  - Attempt mock tests

---

## 🧪 Testing

### ✔️ Unit Testing with JUnit
- Validates login functions, prediction accuracy, and recommendation logic.
- Sample test cases include:
  - Admin adds a question
  - Learner receives accurate learning style result
  - Recommendation system returns relevant content

---






