# tf-ops-tf-foreach
sample repo - for_each (gh repo)

This manual is dedicated to test Terraform Cli for_each

## Requirements

- Hashicorp terraform recent version installed
[Terraform installation manual](https://learn.hashicorp.com/tutorials/terraform/install-cli)

- git installed
[Git installation manual](https://git-scm.com/download/mac)

## Preparation 

- Clone git repository

```bash
git clone https://github.com/antonakv/tf-ops-tf-foreach.git
```

Expected output:

```bash
Cloning into 'tf-ops-tf-foreach'...
remote: Enumerating objects: 12, done.
remote: Counting objects: 100% (12/12), done.
remote: Compressing objects: 100% (12/12), done.
remote: Total 12 (delta 1), reused 3 (delta 0), pack-reused 0
Receiving objects: 100% (12/12), done.
Resolving deltas: 100% (1/1), done.
```

- Change folder to tf-ops-tf-foreach

```bash
cd tf-ops-tf-foreach
```

## Run terraform code

- In the same folder you were before, run

```bash
terraform init
```

Sample result:

```bash
% terraform init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/null from the dependency lock file
- Installing hashicorp/null v3.1.1...
- Installed hashicorp/null v3.1.1 (signed by HashiCorp)

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```


- Run the `terraform apply`

```bash
% terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # null_resource.foreach["four"] will be created
  + resource "null_resource" "foreach" {
      + id = (known after apply)
    }

  # null_resource.foreach["one"] will be created
  + resource "null_resource" "foreach" {
      + id = (known after apply)
    }

  # null_resource.foreach["three"] will be created
  + resource "null_resource" "foreach" {
      + id = (known after apply)
    }

  # null_resource.foreach["two"] will be created
  + resource "null_resource" "foreach" {
      + id = (known after apply)
    }

Plan: 4 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

null_resource.foreach["four"]: Creating...
null_resource.foreach["one"]: Creating...
null_resource.foreach["two"]: Creating...
null_resource.foreach["three"]: Creating...
null_resource.foreach["three"]: Creation complete after 0s [id=7840347103344775051]
null_resource.foreach["two"]: Creation complete after 0s [id=469174931009709416]
null_resource.foreach["four"]: Creation complete after 0s [id=4741981016870173583]
null_resource.foreach["one"]: Creation complete after 0s [id=4465814688053473850]

Apply complete! Resources: 4 added, 0 changed, 0 destroyed.
```

