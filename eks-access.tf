resource "aws_eks_access_entry" "access" {
  cluster_name      = aws_eks_cluster.fastfood-tf.name
  principal_arn     = var.principalArn
  kubernetes_groups = ["group_fastfood", "group_masters"]
  type              = "STANDARD"
}