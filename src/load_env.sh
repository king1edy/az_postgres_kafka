#!/bin/bash
# Load environment variables from .env file
set -a
source .env
set +a

# Run Terraform with the loaded environment variables
terraform "$@"
