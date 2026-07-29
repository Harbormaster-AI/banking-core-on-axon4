# AWS Cluster
data "aws_eks_cluster" "bankingeventsourced-cluster" {
  name = "bankingeventsourced-cluster"
}

output "endpoint" {
  value = "${data.aws_eks_cluster.bankingeventsourced-cluster.endpoint}"
}

output "kubeconfig-certificate-authority-data" {
  value = "${data.aws_eks_cluster.bankingeventsourced-cluster.certificate_authority.0.data}"
}

# Output for K8S
