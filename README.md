# **random_output**



#### This repo is a guideline on HOW to use null provider with random_pet and print object names as aoutput in terraform using Ubuntu.

# **Repo content**
```main.tf``` - Terraform configuration file
```output.tf``` - Terraform configuration file containing the output configuration 

# **PreRequsits**
#### You need to have terraform cli instaled 
#### [download link](https://www.terraform.io/downloads)

# **How to use**
```
    Download the repo  igabrpro/random_output  git clone https://github.com/igabrpro/random_output.git
    Change to Count_null_provider: cd Count_null_provider
    Type in your terminal terraform init in order to be downloaded required providers
    Type in your terminal terraform plan in order to see the changes which terraform is going to be made
    Type in your terminal terraform apply execute changes bases on our code(.tf) files
```
    
    
# **Expected results**
```
random_pet.server: Creating...
random_pet.server: Creation complete after 0s [id=big-kit]
null_resource.igabr: Creating...
null_resource.igabr: Provisioning with 'local-exec'...
null_resource.igabr (local-exec): Executing: ["/bin/sh" "-c" "echo resource name big-kit"]
null_resource.igabr (local-exec): resource name big-kit
null_resource.igabr: Creation complete after 0s [id=8667088643056981228]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

server_id = "8667088643056981228"
server_name = "big-kit"
```
# **Example**

```
Execute terraform show to check the created objects

# null_resource.igabr:
resource "null_resource" "igabr" {
    id       = "8667088643056981228"
    triggers = {
        "build_number" = "Object big-kit"
    }
}

# random_pet.server:
resource "random_pet" "server" {
    id        = "big-kit"
    length    = 2
    separator = "-"
}


Outputs:

server_id = "8667088643056981228"
server_name = "big-kit"
```
