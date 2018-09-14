variable "region" {
  default = "us-central1-b" # Oregon
}

variable "project-name" {
  default = "micro-runner-209019"
}

variable "subnetwork-region" {
  default = "us-central1"
}

variable "network" {
  default = "my-network"
}

variable "ip_cidr_range" {
  default = "10.0.0.0/16"
}

variable "instance_count" {
  default = "2"
}

variable "user" {
  default = "admin"
}

variable "instance_prefix" {
  default = "instance"
}

variable "vm_type" {
  default {
    "512gig"     = "f1-micro"
    "1point7gig" = "g1-small"
    "7point5gig" = "n1-standard-2"
  }
}

variable "os" {
  default {
    "centos7"         = "centos-7-v20170816"
    "debian9"         = "debian-9-stretch-v20170816"
    "ubuntu-1604-lts" = "ubuntu-1604-xenial-v20170815a"
    "ubuntu-1704"     = "ubuntu-1704-zesty-v20170811"
  }
}

variable "gce_ssh_pub_key_file" {
  default = "<path>/.ssh/sistemas.pub"
}

