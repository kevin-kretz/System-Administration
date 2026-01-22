## Install K3s
Install K3s on Primary Node
```
curl -sfL https://get.k3s.io | sh -
```
Get Node token
```
sudo cat /var/lib/rancher/k3s/server/node-token
```
Join secondary node (run on secondary node)
```
curl -sfL https://get.k3s.io | K3S_URL=https://<NODE-1-IP>:6443 K3S_TOKEN=<PASTE_TOKEN_HERE> sh -
```

Verify node joined (run on primary)
```
sudo kubectl get nodes
```

## Configure NFS storage
1. Prep the NFS Server
Assuming primary node is hosting the files:

Install the server: `sudo apt install nfs-kernel-server`

Create the share: `sudo mkdir -p /mnt/k3s_share`

Edit `/etc/exports` and add: `/mnt/k3s_share *(rw,sync,no_subtree_check,no_root_squash)`

Apply: `sudo exportfs -ra`

Prep secondary node: `sudo apt update && sudo apt install nfs-common -y`

Install Helm on Node-1.

Add the NFS Provisioner

```
helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner/
helm install nfs-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
    --set nfs.server=<NODE-1-IP> \
    --set nfs.path=/mnt/k3s_share
```
