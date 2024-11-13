# VPC Peering Project 🚀

Welcome to the **VPC Peering Project**! In this project, we're taking a big step forward by setting up VPC Peering, connecting TWO VPCs instead of just one. This project will help you revise and solidify your previous knowledge in a new and exciting scenario.

## Table of Contents

- [Introduction](#introduction)
- [Project Overview](#project-overview)
- [Prerequisites](#prerequisites)
- [Setup Guide](#setup-guide)
  - [Step 1: Create VPCs](#step-1-create-vpcs)
  - [Step 2: Set Up VPC Peering](#step-2-set-up-vpc-peering)
  - [Step 3: Configure Route Tables](#step-3-configure-route-tables)
  - [Step 4: Test Connectivity](#step-4-test-connectivity)
- [Project Modes](#project-modes)
- [Resources](#resources)

## Introduction

In this project, you'll get hands-on experience with setting up VPC Peering between two Virtual Private Clouds (VPCs). This will enhance your understanding of network segmentation, security, and connectivity within the AWS environment.

## Project Overview

### Objectives

- ☁️ Set up multiple VPCs.
- 🌉 Create a VPC peering connection to enable communication between two VPCs.
- 👩‍🔬 Test VPC peering with connectivity tests.

## Prerequisites

Before you start, ensure you have:

- An AWS account.
- Basic knowledge of VPCs, subnets, and route tables.
- Familiarity with the AWS Management Console.

 Setup Guide
flowchart TD
    A[Request Peering Connection] --> B[Accept Peering Connection]

flowchart TD
    A[Update Route Table in VPC 1] --> B[Add Route to VPC 2]
    C[Update Route Table in VPC 2] --> D[Add Route to VPC 1]

flowchart TD
    A[Start: Initialize Project] --> B[Create VPC1]
    A --> C[Create VPC2]
    B --> D[Configure Subnets & Routing for VPC1]
    C --> E[Configure Subnets & Routing for VPC2]
    D --> F[Initiate VPC Peering from VPC1 to VPC2]
    E --> G[Accept VPC Peering in VPC2]
    F --> H[Update Route Tables for VPC1]
    G --> I[Update Route Tables for VPC2]
    H --> J[Test Connectivity]
    I --> J
    J --> K[Project Complete!]
    K --> L[Clean Up Resources (Optional)]





