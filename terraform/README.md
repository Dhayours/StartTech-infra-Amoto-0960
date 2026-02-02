## Terraform Apply Note (AWS Account Restriction)

Terraform configuration initializes, validates, and plans successfully.

`terraform apply` fails only because the AWS account used for this assessment
does not allow creation of:
- Application Load Balancers (ELBv2) — OperationNotPermitted
- CloudFront Distributions — account must be verified

These are account-level restrictions and not Terraform configuration errors.
