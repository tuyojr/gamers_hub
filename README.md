#

![Altschool Africa](https://github.com/tuyojr/cloudTasks/blob/main/logos/AltSchool.svg)

## REQUIREMENTS

1. Terraform v1.3.7
2. Ansible [core 2.12.10]
3. AWS CLI [aws configure]

### DEPLOYMENT

This project was deployed at [terraform-test.tuyojr.me](http://terraform-test.tuyojr.me), at some point in January - Early February 2023.

Ansible `main.yml`

```YAML
---
- hosts: webServer1-AMZL2
  gather_facts: no
  roles:
    - name: Configure Amazon Linux 2 Server
      role: amz

- hosts: webServer2-UBUNT
  gather_facts: no
  become: yes
  roles:
    - name: Configure Ubuntu 20.04 Focal Fossa Server
      role: ubuntu

- hosts: webServer3-DEBI11
  gather_facts: no
  become: yes
  roles:
    - name: Configure Debian 11 Bullseye Server
      role: debian
```

## MINI PROJECT

- Using Terraform, create 3 EC2 instances and put them behind an Elastic Load Balancer
- Make sure the after applying your plan, Terraform exports the public IP addresses of the 3 instances to a file called host-inventory
- Get a .com.ng or any other domain name for yourself (be creative, this will be a domain you can keep using) and set it up with AWS Route53 within your terraform plan, then add an A record for subdomain terraform-test that points to your ELB IP address.
- Create an Ansible script that uses the host-inventory file Terraform created to install Apache, set timezone to Africa/Lagos and displays a simple HTML page that displays content to clearly identify on all 3 EC2 instances.
- Your project is complete when one visits terraform-test.yourdomain.com and it shows the content from your instances, while rotating between the servers as your refresh to display their unique content.
- Submit both the Ansible and Terraform files created
