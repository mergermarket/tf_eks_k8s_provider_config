output "host" {
  value = "${data.aws_eks_cluster.eks_cluster.endpoint}"
}

output "cluster_ca_certificate" {
  value = "${base64decode(data.aws_eks_cluster.eks_cluster.certificate_authority.0.data)}"
}

output "token" {
  value = "${data.external.aws_iam_authenticator.result.token}"
}
