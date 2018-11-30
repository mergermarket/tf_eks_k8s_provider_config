data "aws_eks_cluster" "eks_cluster" {
  name = "${var.cluster_name}"
}

data "external" "aws_iam_authenticator" {
  program = ["python", "${path.module}/external_scripts/get_token.py"]

  query = {
    cluster = "${data.aws_eks_cluster.eks_cluster.id}"
  }
}
