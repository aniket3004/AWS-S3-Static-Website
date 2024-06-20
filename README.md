# Terraform AWS S3 Static Website Hosting

## Project Description
This project automates the deployment of a static website hosted on AWS S3(Simple Storage Service) infrastructure on AWS using Terraform.
## Table of Contents

1. [Overview](#overview)
2. [Prerequisites](#prerequisites)
3. [Getting Started](#getting-started)
4. [Deployment](#deployment)
5. [Usage](#usage)
6. [Contributing](#contributing)
7. [Running Website](#running-website)

## Overview
This project demonstrates how to set up a static website hosted on AWS S3 using Terraform. It includes Terraform scripts to provision necessary AWS resources.
-----
[!Alt text](/images/S3.png)


## Prerequisites

Before you begin, ensure you have the following:
- AWS account with appropriate permissions to create resources.
- Terraform installed locally. You can download it from [terraform.io](https://www.terraform.io/downloads.html).
- AWS CLI configured with appropriate credentials

## Getting Started

Instructions on setting up the project locally. Include steps such as:
1. Clone the repository: 
   ```
   git clone https://github.com/yourusername/your-repository.git
   ```
2. Navigate into the directory:
   ```
   cd your-repository
   ```
3. Initialize Terraform:
   ```
   terraform init

## Deployment

Steps to deploy the project:
1. Execute Terraform plan to see what changes will be applied:
   ```
   terraform plan
   ```
2. Apply the Terraform configuration:
   ```
   terraform apply
   ```

## Usage

After deployment, you can access your static website via the S3 website endpoint . To manage the infrastructure:
- Use `terraform plan` to see the execution plan.
- Use `terraform apply` to apply the changes required to reach the desired state of the configuration.
- Use `terraform destroy` to destroy the Terraform-managed infrastructure.

## Contributing

Contributions are welcome! Please fork this repository and submit a pull request with your changes. For major modifications, please open an issue first to discuss the proposed changes.

## Running Website

Index.html:
[!Alt text](/images/image1.png)

Error.html:
[!Alt text](/images/image2.png)

---

