# Seashell

A Daemonset that does nothing, but has all your network utilities ready to go, 
so you can test workloads in your Kubernetes cluster.

## Kubernetes API and Kubelet

Uses RBAC to leverage the Kubernetes API and Kubelet.

Use `kcurl` instead of `curl` when interacting with the Kubernetes API and Kubelet.
This alias was created to pass proper authentication tokens to the API when used.
The `KUBERNETS_API` environment variable exists which points to the Kubernetes API endpoint.
The `KUBELET` environment variable exists which points to the URL for the Kubelet.
These allow you to have shorthand access from the command line.

To get a list of namespaces from the Kubernetes API run:
```shell
kcurl $KUBERNETES_API/api/v1/namespaces
```

To get a list of pods from the Kubelet run:
```shell
kcurl $KUBELET/pods
```

## Utilities
The image is based on [jonlabelle/network-tools](https://github.com/jonlabelle/docker-network-tools).
Several utilities are installed including:
- telnet
- wget
- curl
- awk
- jq
- git
- tcpdump
- dig
- nslookup
- ping
- traceroute
- netstat
- ... and more
