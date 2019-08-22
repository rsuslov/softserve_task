# Softserve task:
  Terraform + Ansible

  1. Install awscli:
     pip3 install awscli

  2. Create SSH keys:
     ssh-keygen -b 4096 -f mykey
  
  3. Enter AWS credentials:
     aws configure

  4. Initialize Terraform:
     terraform init

  5. Run Terraform:
     terraform apply -auto-approve

  6. Check result:
     curl <ip_address>
