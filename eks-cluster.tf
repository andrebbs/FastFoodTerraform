resource "aws_eks_cluster" "fastfood-tf" {
  name     = "cluster-fastfood-tf"
  role_arn = var.labrole

  vpc_config {
    subnet_ids         = ["${var.subnetA}", "${var.subnetB}", "${var.subnetC}"]
    security_group_ids = ["${var.sgId}"]
  }
}