# Web Application DevOps Project

## Introduction

The project spans multiple milestones, each focusing on a different aspect of the DevOps lifecycle. From setting up the development environment and implementing version control best practices to deploying the application on a Kubernetes cluster and ensuring its security with Azure Key Vault, this project covers the full spectrum of DevOps methodologies.


## Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Technical Documentation](#technical-documentation)
  - [Containerization](#containerization)
  - [Infrastructure as Code (IaC)](#infrastructure-as-code-iac)
  - [Kubernetes Deployment](#kubernetes-deployment)
  - [CI/CD Pipeline](#cicd-pipeline)
  - [Monitoring and Logging](#monitoring-and-logging)
  - [Secrets Management](#secrets-management)
- [Getting Started](#getting-started)
- [Contributing](#contributing)
- [License](#license)

## Project Overview

This DevOps project integrates multiple technologies and practices to deploy a web application that allows users to manage and track orders. The application features an intuitive UI, database integration for order storage, and secure access controls.

## Technical Documentation

### Containerization

The application is containerized using Docker, encapsulating its dependencies and runtime environment. This process involves:

- **Dockerfile Creation**: A Dockerfile was crafted to specify the application's environment, copy project files, and define the runtime command.

#### Docker Commands

- **Build Image**: `docker build -t app-name:tag .`
- **Run Container**: `docker run --name app-container -p 80:80 app-name:tag`
- **Tag Image**: `docker tag app-name:tag username/app-name:tag`
- **Push to Docker Hub**: `docker push username/app-name:tag`

#### Cleanup

- **Remove Containers**: `docker rm $(docker ps -a -q)`
- **Remove Images**: `docker rmi $(docker images -q)`

### Infrastructure as Code (IaC)

Using Terraform, we defined and provisioned the networking resources and the AKS cluster necessary for the application:

- **Networking**: Defined Azure Resource Group, Virtual Network (VNet), subnets, and Network Security Groups (NSG) to support the AKS cluster.
- **AKS Cluster**: Provisioned an AKS cluster integrated with the defined networking resources, using Terraform modules for modularity and reusability.

### Kubernetes Deployment

Deployment and service manifests define the Kubernetes resources for the application:

- **Deployment Manifest**: Specifies the desired state of the application, including the Docker image and resource requirements.
- **Service Manifest**: Defines how the application is exposed within the cluster or externally.
- **Deployment Strategy**: Utilizes a rolling update strategy to minimize downtime during updates.

### CI/CD Pipeline

Configured a CI/CD pipeline using Azure DevOps to automate the build, test, and deployment processes:

- **Pipeline Configuration**: Includes steps for building the Docker image, pushing it to Docker Hub, and deploying to AKS using Helm charts or kubectl.
- **Validation**: Automated tests ensure application functionality and reliability post-deployment.

### Monitoring and Logging

Implemented monitoring and logging using Azure Monitor and Log Analytics:

- **Metrics Explorer Charts**: Track key metrics like CPU usage, pod counts, and disk usage.
- **Log Analytics**: Provides detailed logs for diagnosing issues and understanding application behavior.
- **Alerts**: Configured to notify of critical conditions that may affect the application's performance or availability.

### Secrets Management

Integrated Azure Key Vault for secure secrets management, allowing the application to access database credentials securely:

- **Azure Key Vault Setup**: Created and configured Key Vault with necessary secrets.
- **Managed Identity**: Enabled AKS to use a managed identity to securely retrieve secrets from Key Vault.

## Getting Started

Refer to the individual documentation sections for detailed setup and usage instructions.

## Contributing

Contributions are welcome! Please read through our contributing guidelines for detailed contribution procedures.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
