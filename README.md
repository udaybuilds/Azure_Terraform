# Azure_Terraform
Terraform Connection With Azure


Follow documentation for azure logins : https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs

We will AZ cli for azure related functionalities – first download Azure cli 
1-	Az login –tenant tenant_id 
Find tenant id from azure portal 
2-	 Now create a Service principle to manage resource on Azure portal using –

az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/YOUR_SUBSCRIPTION_ID"

Output:
{
  "appId": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
  "displayName": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
  "password": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
  "tenant": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
}

 

3 – Now We can perform Terraform login using service principal . The first login was to authenticate the user . 

az login --service-principal -u CLIENT_ID -p CLIENT_SECRET --tenant TENANT_ID 
Replacing values 
az login --service-principal -u XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -p XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX --tenant XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

Now logged in using service principal .

Now Go see the folder Terraform Video 8 for the Setup We do . Most of the code is from documentation . 

How did we create the Terraform infra :
Step 1 : After Service Principal login , we created the provider.tf 
Step 2 : In provider.tf , we took the code from the documentation and basically started configuring the providers . 
Step 3 : We exported or Set few of the environment variables for our current terminal session . Those commands are in the secret.txt . Just run the SET commands in windows . 
Step 4 : Now we required the Azure Virtual machines and Subnets . We searched for the same in the documentation and took the code and created the main.tf file. 
Step 5 : Now all the variables that are defined in main.tf can be moved to a separate file with extension as .tfvars . Any file with extension as .tfvars is by default loaded as the environment variables . And these variables can be imported in other tf files . 

Note the resources are used in following manner :
resource "azurerm_resource_group" "example"
where “azurerm_resource_group” is the actual name of the azureresource and “example is the local name for our reference .”

Now terraform Commands.:
Terraform init – Download provider plugins
Terraform fmt – Formats any misaligned stuff 
Terraform validate – Validates the terraform file for any syntactical error 
Terraform plan – Creates the plan for what will be added and what will be deleted . 
Terraform apply – Creates the resources .
Terraform apply  --auto-approve – Creates the resources with auto approve .
We can see all the resources under the resource group are created .

