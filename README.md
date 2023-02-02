# This template helps you to deploy docker image to acr and run through azure webapp service.

Prerequisites:

* azure account
* azure-cli
* latest version of terraform 

# Steps 

* clone the repository
* type `az login` command  in your  CLI 

* select the azure account.
* Run the terraform script 
 `terraform init`
  `terraform plan `
  `terraform apply`

After the apply command It gives a endpoint for run the application.