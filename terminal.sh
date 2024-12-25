# ETCD
etcdctl get --prefix ""
etcdctl user add root
etcdctl auth status
etcdctl auth enable
etcdctl --user=root:1234 user list
etcdctl --user=root:1234 get --prefix ""

