# load_env.ps1
# PowerShell script to load .env file into environment variables
(Get-Content .env) | ForEach-Object {
    if ($_ -match "^(.*?)=(.*)$") {
        [System.Environment]::SetEnvironmentVariable($matches[1].Trim(), $matches[2].Trim(), [System.EnvironmentVariableTarget]::Process)
    }
}

# Run Terraform commands after loading environment variables
terraform init
terraform plan
terraform apply
