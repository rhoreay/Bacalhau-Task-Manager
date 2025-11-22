# Web-based system for managing group tasks

![Ruby Version](https://img.shields.io/badge/Ruby-3.2%2B-red)
![Rails Version](https://img.shields.io/badge/Rails-8.1.0-red)

## 📋 About the project

A modular system developed to improve group tasks management. The main objective of the project is to desmontrate rigorous uses of development patterns and conventions, like **MVC**, **SOLID**, **Design Patterns** and **DevOps** practices with Continuous Integration (CI).

The application supports CRUD actions with People and Tasks models, and associate them.  
**Many-to-Many** relationship.

## 🎯 Objectives

Project was idealized to follow this principles:

* **Architecture MVC**
* **SOLID principles** 
* **Data Validation**
* **Design Patterns:** 
    * *Observer:* automated notifications in status changing.
    * *Service Objects / Command:* encapsulate complex business logic to avoid fat controllers.
* **Code quality:** Automated tests with Minitest and Rubocop
* **DevOps:** Pipeline de CI configurado via GitHub Actions.

## 🚀 Funcionalities

* [x] **People Management:** Create, Read, Update and Delete actions
* [x] **Validate information:** validators/ layer to insure data is correct
* [x] **Tasks Management:** Create, Read, Update and Delete actions
* [x] **Atribution:** Delegate tasks for one or more person. N-N
* [x] **Status Workflow:** Status controled transition (pending, in_progress, finished)

## 🛠 Used technologies

* **Language:** Ruby 3.x
* **Framework:** Ruby on Rails 8.1.0
* **Database:** SQLite
* **Tests:** Minitest
* **Styling:** Tailwind CSS
* **CI/CD:** GitHub Actions

## 🏗 Architecture and Patterns

### MVC and Layers
Rails default uses MVC architecture. To improve decoupling, we can add the services/ layer, to handle complex business logic.
1.  **Controllers:** Responsible for receiving HTTP requests and and responds it.
2.  **Services/Interactors:** Extra layer to handle business logic.
3.  **Models:** Responsible for data and validations.

## 🔧 Installation and Execution

1. **Clone the repo:**
   ```bash
   git clone https://github.com/seu-usuario/task-manager.git
   cd Bacalhau-Task-Manager
   ```
   Install dependencies:

   ```bash
   bundle install
   ```
   Configure database:
   ```bash
   bin/rails db:create
   bin/rails db:migrate
   bin/dev
   ```
   Acesse http://localhost:3000.

# 🧪 Execute all tests
   The code quality is ensured by automated tests of validators, models and controllers

   To run tests suite:
   ```bash
   bin/rails test
   ```

🔄 Continuous Integration (CI)
This repositorie have a GitHub Actions workflow configured in  **./github/workflos/ci.yml.**


