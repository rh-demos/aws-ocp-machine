Ansible playbook for running OpenShift with oc cluster up on AWS
# aws-ocp-machine

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
