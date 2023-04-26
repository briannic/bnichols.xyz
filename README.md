# Welcome

This is a personal website template built with [Hugo](https://gohugo.io/getting-started/quick-start/), deployed using [Terraform](https://registry.terraform.io/providers/hashicorp/google/latest/docs), hosted in a [Google Cloud Storage bucket](https://cloud.google.com/storage/docs/hosting-static-website) 

## Installation

### Prerequisites

1. Google Cloud account and [`gcloud` CLI tools](https://cloud.google.com/sdk/docs/install-sdk)
1. [Terraform CLI tools](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
1. [Go](https://go.dev/doc/install) and [Hugo](https://gohugo.io/installation/)

### Initialization

1. Update Terraform `main.tf` file with Google Cloud details
1. Deploy Terraform infrastructure 

    ```
    terraform plan
    terraform apply
    ```
1. Update Hugo `config.toml` file with Google Cloud details
1. Build and deploy Hugo Site 

    ```
    hugo 
    hugo deploy
    ```
