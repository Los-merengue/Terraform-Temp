- Note about using separate AWS accounts (avoids prefix issues, improved IAM control)
  - Cover this in advanced section?
  
```
provider “aws” {
  region = “us-east-1”
  assume_role {
    role_arn = “arn:aws:iam::123456789012:role/iac”
  }
}
```

### File Structure 

#### Pros
- Isolation of backends: This can lead to improved security and decreased potential for human error
- Codebase fully represents deployed state

#### Cons
- Multiple terraform apply required to provision environments
- More code duplication, but can be minimized with modules!

### File Structire (Environments + Components)
- Further separation (at logical component groups) useful for larger projects : This will isolate things that chanhe frequently from those which don't
- Referencing resources across configuration is possible using terraform_remote_state

Look into the tool `Terragrunt`

Tool by gruntwork.io that provides utilities to make certain Terraform use cases easier
- Keeping Terraform code DRY
- Executing commands across multiple TF configs
- Working with multiple cloud accounts
