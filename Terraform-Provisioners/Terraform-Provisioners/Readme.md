# Resource Provisioners:

- Provisioners allow you to execute scripts or commands on the resource after it has been created. 

- Provisioners can be useful for bootstrapping resources or performing configuration tasks. 

- Example: Running a shell script on an EC2 instance after it is created

# Types of Provisioners:

- File provisioner
- Local-exec
- Remote-exec

- checkout main.tf where i show the blocks for the three types within instance resource block.


# Connection block

- The connection block specifies how Terraform should connect to the instance.

