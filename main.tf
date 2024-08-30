# The configuration for the `remote` backend.
     terraform {
       backend "remote" {
         # The name of your Terraform Cloud organization.
         organization = "ratanavery"

         # The name of the Terraform Cloud workspace to store Terraform state files in.
         workspaces {
           name = "test-wf"
         }
       }
     }

     # An example resource that does nothing.
     resource "null_resource" "example" {
       triggers = {
         value = "example resource that does nothing!"
       }
     }
