Warning about manually switching environments
```
terraform workspace new production
terraform workspace list
terraform workspace select staging
```

### Terraform Workspaces

#### Pros of Workspaces
- Easy to get started
- Convenient terraform.workspace expression
- Minimizes Code Duplication

#### Cons of Workspaces
- Prone to human error
- State stored with same backend
- Codebase doesn't unambiguosly show deployment configurations