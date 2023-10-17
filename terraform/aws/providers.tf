# Terraform Configuration Block
# This block sets the requirements for the Terraform providers and the version of Terraform itself.

terraform {
  # Define the required providers and their respective versions.

  required_providers {
    # AWS provider configuration. Ensure at least version 5.12.0 is used.
    aws = {
      source  = "hashicorp/aws" # The source of the AWS provider.
      version = ">=5.12.0"      # The minimum version of the AWS provider.
    }

    # Random provider configuration. Use a specific version of 3.5.1.
    random = {
      source  = "hashicorp/random" # The source of the Random provider.
      version = "3.5.1"            # The exact version of the Random provider.
    }
  }

  # Specify the required version of Terraform. The configuration is compatible with version 1.5.0.
  required_version = "~>1.5.0"
}

# AWS Provider Configuration Block
provider "aws" {
  # Define the AWS region where the resources will be deployed.
  region = "us-east-1"

  # Set default tags for all AWS resources created by this configuration.
  default_tags {
    tags = var.tags
  }
}
