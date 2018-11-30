## Description

This module uses EKS to get provider config for the kubernetes terraform provider.

## Example

```
module "eks_config" {
  source = "github.com/mergermarket/tf_eks_k8s_provider_config"
  cluster_name = "my-cluster"
}

provider "kubernetes" {
  host                   = "${module.eks_config.host}"
  cluster_ca_certificate = "${module.eks_config.cluster_ca_certificate}"
  token                  = "${module.eks_config.token}"
  load_config_file       = false
}
```

## Inputs

* `cluster_name` - (required) the name fo the EKS cluster to get config for.

## Outputs

* `host` - the cluster endpoint.
* `cluster_ca_certificate` - the CA cert for the cluster.
* `token` - the token to use to connect to the k8s api.
