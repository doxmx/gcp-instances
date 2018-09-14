# GCP-instances - Terraform

## Table of Contents

1. [Overview](#overview)
1. [Requirements](#requirements)
1. [Creating the environment](#creating-the-environment)
1. [Removing the environment](#removing-the-environment)
1. [Outputs](#outputs)

## Overview

Creates GPC instances in Google Cloud Platform using terraform.

### Requirements

1. Operating system: Linux, Mac OS X, Windows.
1. [Terraform](https://www.terraform.io/downloads.html)
1. [Generate a Service account](https://cloud.google.com/iam/docs/creating-managing-service-accounts) and update the provider.tf file with the path to the JSON file. 
1. Update the vars.tf file with the proper values for your deployment.

### Creating the environment
    ```
    $ terraform plan -out /tmp/create
    $ terraform apply /tmp/create
    ```

### Removing the environment
        ```
    $ terraform plan -destroy -out /tmp/delete
    $ terraform apply /tmp/delete
    ```
    
### Outputs
1. IP addresses of the instances generated.

