# Provisioning an AWS Custom VPC Using Terraform

- Deploy the code using Vs code; first, authenticate to AWS either using an IAM user with ACCESS_KEY and SECRET_ACCESS_KEY via aws configure or deploy the code using a VM server with appropriate role and policy configured.

- The terraform code implemented the following:
1. A custom vpc with the associated components
2. An instance with user data
3. S3 bucket
4. The state file was stored using local backend path # terraform cloud or AWS s3 bucket or Azure blob storage can also be used as remote backend to store the state file.


- The code can be reused in different environments, only the terraform.tfvars needs to be modified.

# Feel free to tweak it.
