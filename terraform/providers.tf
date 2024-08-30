terraform {
  required_version = ">=0.12"
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    
    random =  {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }

  backend "remote" {
         # The name of your Terraform Cloud organization.
         organization = "ratanavery"

         # The name of the Terraform Cloud workspace to store Terraform state files in.
         workspaces {
           name = "test-wf"
         }
       }
}

provider "azurerm" {
  features {}
}
