Ansible playbook for running OpenShift with oc cluster up on AWS
# aws-ocp-machine

## Before installing
Setup AMI ID
Inside AWS click your user id and select 'My Security Credentials'. Choose access keys and create a new access key. Info you need for AWS access is in the downloaded csv file.

To setup ssh access to machines go to services -> ec2 -> key_pairs. Click 'Create key pair' name it 'my_key' and the cert file (pem format) will automatically be downloaded. Save this file in your project.

## To install
fill in env variables in set_env.sh then
```
source set_env.sh
./run.sh
ssh -i my_key.pem ec2-user@xxx
./install.sh
```
xxx is the ip of the host


regarding registry (not relevant anymore)
https://docs.openshift.com/container-platform/3.11/install_config/configuring_red_hat_registry.html

cp -r ~/.docker /var/lib/origin/
  systemctl restart atomic-openshift-node
