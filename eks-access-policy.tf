# resource "aws_eks_access_policy_association" "policy" {
#   cluster_name  = aws_eks_cluster.fastfood-tf.name
#   policy_arn    = var.policyArn
#   principal_arn = var.principalArn

#   access_scope {
#     type = "cluster"
#   }
# }
resource "aws_iam_role_policy_attachment" "eks_admin_policy" {
  role       = var.principalArn
  policy_arn = var.policyArn
}

resource "null_resource" "eks_auth_config_map" {
  provisioner "local-exec" {
    command = <<EOT
      kubectl apply -f - <<EOF
      apiVersion: v1
      kind: ConfigMap
      metadata:
        name: aws-auth
        namespace: kube-system
      data:
        mapRoles: |
          - rolearn: ${var.principalArn}
            username: admin
            groups:
              - system:masters
      EOF
    EOT
  }
}