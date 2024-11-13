# 🚀 VPC Peering Project 🚀

Welcome to the **VPC Peering Project**! This project is all about setting up **VPC Peering** between **two VPCs** to establish a secure, private connection for seamless communication. This is a perfect way to solidify your knowledge and build on what you've learned in previous networking projects.

---

## 📑 Table of Contents

- [Overview](#overview)
- [Objectives](#objectives)
- [Prerequisites](#prerequisites)
- [Setup Guide](#setup-guide)
  - [Step 1: Create VPCs](#step-1-create-vpcs)
  - [Step 2: Set Up VPC Peering](#step-2-set-up-vpc-peering)
  - [Step 3: Configure Route Tables](#step-3-configure-route-tables)
  - [Step 4: Test Connectivity](#step-4-test-connectivity)
- [Project Modes](#project-modes)
- [Resources](#resources)
- [Happy Peering! 🌐](#happy-peering-🌐)

---

## 🎯 Overview

In this project, you’ll set up **VPC Peering** to link two Virtual Private Clouds, allowing secure communication and demonstrating the power of network segmentation within an AWS environment.

---

## 🚀 Objectives

- ☁️ **Create and Configure Multiple VPCs**
- 🌉 **Establish a VPC Peering Connection** - enabling communication between isolated VPCs
- 👩‍🔬 **Test Peering Connectivity** to ensure the setup is successful

---

## 🛠 Prerequisites

Before we start, make sure you have the following:

- **AWS Account** (Free tier is sufficient)
- **Basic knowledge of VPCs, subnets, and route tables**
- Familiarity with the **AWS Management Console**

---

## 🧩 Setup Guide

### Step 1: Create VPCs

Start by creating **two VPCs** with unique CIDR blocks.

```mermaid
flowchart TD
    A[Start Project] --> B[Create VPC 1]
    B --> C[Create VPC 2]
    C --> D[Configure Subnets & Routing for VPC 1]
    D --> E[Configure Subnets & Routing for VPC 2]
Step 2: Set Up VPC Peering
Establish a VPC Peering Connection between the two VPCs.

mermaid
Copy code
flowchart TD
    F[Request VPC Peering from VPC 1] --> G[Accept VPC Peering in VPC 2]
    G --> H[Confirm Connection]
Step 3: Configure Route Tables
Enable communication by updating the route tables to direct traffic between VPCs.

mermaid
Copy code
flowchart TD
    I[Update Route Table for VPC 1] --> J[Add Route to VPC 2]
    J --> K[Update Route Table for VPC 2]
    K --> L[Add Route to VPC 1]
Step 4: Test Connectivity
Launch instances and test the peering connection to verify the setup.

mermaid
Copy code
flowchart TD
    M[Launch EC2 in VPC 1] --> N[Launch EC2 in VPC 2]
    N --> O[Test Ping from VPC 1 to VPC 2]
    O --> P[Test Ping from VPC 2 to VPC 1]
    P --> Q[Connection Verified]
🎮 Project Modes
Choose your style:

Guided Mode: Step-by-step instructions with detailed guidance.
Explorer Mode: Use the resources and dive into the project with your creativity!
📚 Resources
Want a full demo of this project? Check out our 🎬 Walkthrough with Natasha!

AWS Documentation on VPC Peering
AWS VPC Peering User Guide
Happy Peering! 🌐
mermaid
Copy code
flowchart TD
    Start[Initialize Project] --> VPC1[Create VPC 1]
    Start --> VPC2[Create VPC 2]
    VPC1 --> Subnet1[Configure Subnets for VPC 1]
    VPC2 --> Subnet2[Configure Subnets for VPC 2]
    Subnet1 --> Peering1[Request Peering Connection from VPC 1]
    Subnet2 --> Peering2[Accept Peering Connection in VPC 2]
    Peering1 --> Route1[Update Route Table for VPC 1]
    Peering2 --> Route2[Update Route Table for VPC 2]
    Route1 --> Test1[Test Connectivity from VPC 1 to VPC 2]
    Route2 --> Test2[Test Connectivity from VPC 2 to VPC 1]
    Test1 --> Complete[Project Complete! 🎉]
    Complete --> Cleanup[Optional: Clean Up Resources]
