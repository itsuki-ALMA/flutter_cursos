flutter_cursos

This repository is a learning project developed during Alura and Udemy courses to study mobile development with Flutter.
📚 Table of Contents

    📌 About the Project

    🛠️ Technologies Used

    ▶️ How to Run

    🐳 Running with Docker

    📋 Requirements

    📁 Project Structure

    🤝 Contributing

    📄 License

    👨‍💻 Author

📌 About the Project

This project contains code, examples, and exercises completed during the courses to practice and improve mobile development skills, especially with Flutter and Dart.
It also serves as documentation of learning progress and a reference for future projects.
🛠️ Technologies Used

    Flutter

    Dart

    C++

    CMake

    Swift

    C

    HTML

▶️ How to Run

    Clone the repository:

git clone https://github.com/itsuki-ALMA/flutter_cursos.git

Enter the project directory:

cd flutter_cursos

Install dependencies:

flutter pub get

Run the project:

    flutter run

🐳 Running with Docker

You can run this project inside a container using Docker or Docker Compose.
🔧 Using Docker

    Build the Docker image:

docker build -t flutter_cursos .

Run the container:

    docker run -p 8080:8080 flutter_cursos

    Access the app:
    http://localhost:8080

🔧 Using Docker Compose

    Make sure Docker Compose is installed.

    Start the service:

    docker-compose up

    Open your browser and go to:
    http://localhost:8080

    💡 Note:
    The provided Dockerfile uses a custom base image: lmatrangolo/flutter-custom.
    Make sure you have access to this image or update the Dockerfile to use a standard Flutter image.

📋 Requirements

    Flutter SDK

    Dart SDK (included with Flutter)

    Recommended code editor: VSCode or Android Studio

    Git

    Docker (optional)

    Docker Compose (optional)

📁 Project Structure

flutter_cursos/
├── lib/                # Main Dart source code
├── test/               # Automated tests
├── android/            # Native Android code (Kotlin/Java)
├── ios/                # Native iOS code (Swift/Objective-C)
├── web/                # Web deployment code
├── README.md           # This file
└── ...                 # Other files and folders

🤝 Contributing

Contributions are welcome!
Feel free to open issues or pull requests with improvements, bug fixes, or suggestions.
📄 License

This project is licensed under the MIT License.
See the LICENSE file for more information.
👨‍💻 Author

itsuki-ALMA
Project created for educational purposes during Flutter courses.
