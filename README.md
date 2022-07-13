# terraform-template

This is template directory for terraform

This post is the first in the series which focuses on point 1 in the list, ‘how to structure your Terraform projects’.
Use a consistent file structure across your projects.
Use modules wherever possible.
Use a consistent naming convention.
Use a consistent format and style.
Hold your state file remotely, not on your local machine.
Avoid hardcoding variables.
Fewer resources in a project are easier and faster to work with.
Limit resources in the project to reduce the blast radius.
Test your code.



main.tf - call modules, locals, and data sources to create all resources
variables.tf - contains declarations of variables used in main.tf
outputs.tf - contains outputs from the resources created in main.tf
versions.tf - contains version requirements for Terraform and providers


# References:
https://medium.com/codex/terraform-best-practices-how-to-structure-your-terraform-projects-b5b050eab554
https://www.terraform-best-practices.com/code-structure
