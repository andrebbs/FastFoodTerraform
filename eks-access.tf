# resource "aws_eks_access_entry" "access" {
#   cluster_name      = aws_eks_cluster.fastfood-tf.name
#   principal_arn     = var.principalArn
#   kubernetes_groups = ["group_fastfood", "group_masters"]
#   type              = "STANDARD"
# }
# resource "null_resource" "eks_auth_config_map" {
#   provisioner "local-exec" {
#     command = <<EOT
#       kubectl apply -f - <<EOF
#       apiVersion: v1
#       kind: ConfigMap
#       metadata:
#         name: aws-auth
#         namespace: kube-system
#       data:
#         mapRoles: |
#           - rolearn: ${var.principalArn}
#             username: admin
#             groups:
#               - system:masters
#       EOF
#     EOT
#   }
# }