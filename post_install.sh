keyFile='/var/www/nailgun/plugins/%{name}/deployment_scripts/puppet/modules/nsxv/files/compute_vmware_key'
if [ -f $keyFile ]; then
  echo "  Ssh key file exists, skip generation"
else
  echo -n "  Ssh key file for nsxv plugin not found, "
  ssh-keygen -t rsa -b 2048 -N "" -f $keyFile
fi