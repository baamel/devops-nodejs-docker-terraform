# CloudNative Deployment Automation Platform

## About the Project

This project is a DevOps application deployment project.

It uses a simple Node.js and Express.js web application and automates
its containerization and deployment using Docker and Terraform.

## Technologies Used

- Node.js
- Express.js
- Docker
- Terraform
- Git
- GitHub

## Project Architecture

Node.js Application
        ↓
     Docker
        ↓
   Docker Image
        ↓
    Terraform
        ↓
 Docker Container
        ↓
  localhost:8080

## How to Run

### 1. Start the application with Node.js

Go to the nodeapp directory:

cd nodeapp

Install the dependencies:

npm install

Start the application:

node app.js

The application runs on:

http://localhost:8080

### 2. Deploy using Docker and Terraform

Go to the Terraform directory:

cd terraform

Initialize Terraform:

terraform init

Create the deployment:

terraform apply

The application will be available on:

http://localhost:8080

## Project Status

Currently implemented:

- Node.js application
- Express.js server
- Docker containerization
- Terraform infrastructure automation
- Git repository
- GitHub repository