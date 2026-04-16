To Provision VMs onto Proxmox Nodes:
* Edit `all.yaml` to set up specs for each VM on the PX nodes
* Edit `inventory/hosts` to include correct IPs defined in all.yaml
* Run command `ansible-playbook -i inventory/hosts playbooks/provision-main.yaml --extra-vars "@group-vars/all.yaml"` (also found in `playbooks/provision-main.yaml`)

To Install Docker on newly Provisioned VMs:
* Run command `ansible-playbook -i inventory/hosts playbooks/misc/docker.yaml --extra-vars "@group-vars/all.yaml"` (also found in `playbooks/docker.yaml`)

NOTE: When adding new VMs to global vars file, add their IPs again to `hosts` file