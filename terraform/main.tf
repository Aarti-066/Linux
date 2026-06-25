terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "worker1" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"
  key_name      = "abc-keypair"
  tags = {
    Name = "Worker1-Jenkins"
  }
}

resource "aws_instance" "worker2" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"
  key_name      = "abc-keypair"
  tags = {
    Name = "Worker2-Docker-K8s"
  }
}

resource "aws_instance" "worker3" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"
  key_name      = "abc-keypair"
  tags = {
    Name = "Worker3-Java-Docker-K8s"
  }
}

resource "aws_instance" "worker4" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"
  key_name      = "abc-keypair"
  tags = {
    Name = "Worker4-Docker-K8s"
  }
}
