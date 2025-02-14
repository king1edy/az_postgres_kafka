# Azure Terraform Setup with Environment Variables

This guide explains how to set up and use Azure credentials with Terraform using environment variables stored in a .env file.

## Prerequisites
- Terraform installed
- Azure CLI installed
- Git Bash (for Windows users)

## Setup Steps

### 1. Create .env File
Create a `.env` file in the `src` directory with your Azure credentials:
```
AZURE_CLIENT_ID=your_client_id
AZURE_CLIENT_SECRET=your_client_secret
AZURE_TENANT_ID=your_tenant_id
AZURE_SUBSCRIPTION_ID=your_subscription_id
```

### 2. Using the Environment Variables

#### For Linux/MacOS:
1. Make the script executable:
   ```bash
   chmod +x src/load_env.sh
   ```

2. Run Terraform commands:
   ```bash
   ./src/load_env.sh init
   ./src/load_env.sh plan
   ./src/load_env.sh apply
   ```

#### For Windows:
##### Using Git Bash:
1. Run Terraform commands:
   ```bash
   ./src/load_env.sh init
   ./src/load_env.sh plan
   ./src/load_env.sh apply
   ```

##### Using Command Prompt:
1. Set environment variables:
   ```cmd
   for /f "tokens=*" %i in (src\.env) do set %i
   ```

2. Run Terraform commands:
   ```cmd
   terraform init
   terraform plan
   terraform apply
   ```

### 3. How It Works
- The `load_env.sh` script loads environment variables from `.env`
- Terraform variables in `variables.tf` map to these environment variables
- The Azure provider in `main.tf` uses these variablesI'll create a comprehensive README.md file with detailed instructions for both Windows and Linux systems.

<create_file>
<path>README.md</path>
<content>
# Azure Terraform Configuration with Environment Variables

This guide explains how to securely manage Azure credentials using environment variables in your Terraform configuration.

## Prerequisites
- Terraform installed
- Azure CLI installed
- Git Bash (for Windows users)

## Setup Instructions

### 1. Create .env File
Create a `.env` file in the `src` directory with your Azure credentials:
```bash
AZURE_CLIENT_ID=your_client_id
AZURE_CLIENT_SECRET=your_client_secret
AZURE_TENANT_ID=your_tenant_id
AZURE_SUBSCRIPTION_ID=your_subscription_id
```

### 2. Using the Configuration

#### For Linux/MacOS:
1. Make the script executable:
   ```bash
   chmod +x src/load_env.sh
   ```

2. Run Terraform commands:
   ```bash
   ./src/load_env.sh init
   ./src/load_env.sh plan
   ./src/load_env.sh apply
   ```

#### For Windows:
##### Using Git Bash:
1. Run Terraform commands:
   ```bash
   ./src/load_env.sh init
   ./src/load_env.sh plan
   ./src/load_env.sh apply
   ```

##### Using Command Prompt:
1. Set environment variables:
   ```cmd
   for /f "tokens=*" %i in (src\.env) do @set %i
   ```

2. Run Terraform commands:
   ```cmd
   terraform init
   terraform plan
   terraform apply
   ```

## Security Best Practices
1. Never commit `.env` file to version control
2. Ensure `.env` is listed in `.gitignore`
3. Use environment variables instead of hardcoding credentials
4. Regularly rotate your Azure credentials

## Troubleshooting
- If you get permission errors on Linux/MacOS, ensure the script is executable:
  ```bash
  chmod +x src/load_env.sh
  ```
- If environment variables aren't loading, verify the `.env` file format
- Ensure all required Azure permissions are granted to your service principal

## File Structure
```
.
├── src/
│   ├── .env                # Azure credentials
│   ├── load_env.sh          # Environment loader script
│   ├── main.tf              # Main Terraform configuration
│   ├── variables.tf         # Variable definitions
│   └── .gitignore           # Git ignore rules
└── README.md                # This documentation
