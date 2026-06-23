# Project 1 - EC2 with Auto Scaling and RDS MySQL

## Problem Statement
Company ABC wants to move their product to AWS with high availability using Auto Scaling.

## What I Built
- Launched EC2 instance (abc-web-server) with t3.micro
- Created Auto Scaling Group (min 2, max 4) across 2 Availability Zones
- Attached Application Load Balancer for traffic distribution
- Created RDS MySQL instance (abc-rds-database)
- Created database 'intel' and table 'data'
- Connected PHP website to RDS endpoint
- Configured security groups for EC2 and RDS

## AWS Services Used
- EC2
- Auto Scaling Group
- Application Load Balancer
- RDS MySQL
- Security Groups
- CloudWatch

## Region
Asia Pacific - Mumbai (ap-south-1)
