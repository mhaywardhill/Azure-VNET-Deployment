## Project: Azure VNET setup for Databricks VNET injected workspace

**Project Description**: This project will deploy the resource group for the Databricks workspace and the VNET for the injected workspace.

## Project Organization

```
    ├── README.md                               <- README file
    ├── LICENSE                                 <- the LICENSE
    └── terraform                               <- Terraform config files 
        ├── environments        
        │   └── test                            <- test environment folder, holds the Terraform state
        └── modules            
            ├── resource_group                  <- Terraform config file to add resource group for the Databricks workspace and VNET
            ├── securitygroups                  <- Terraform config file to add security groups to the subnets
            └── network                         <- Terraform config file to add VNET for the Databricks injected workspace
     
  
```

## Getting started

##  Setup

Clone the repository locally:
```
git clone https://github.com/mhaywardhill/azure-adb-vnet-deployment.git
```

and go into the repository and navigate to the terraform environment folder:

```
cd  azure-adb-vnet-deployment/terraform/environments/test/
```

Run the Terraform init, plan, and apply commands to deploy the resources to build the Azure infrastructure:

```
./terraform init

./terraform plan

./terraform apply
```
