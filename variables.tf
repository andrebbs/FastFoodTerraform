variable "labrole" {
  default = "arn:aws:iam::580651182494:role/LabRole"
}

variable "principalArn" {
  default = "arn:aws:iam::580651182494:role/voclabs"
}

variable "policyArn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}

variable "subnetA" {
  default = "subnet-0882c77cb71408813"
}

variable "subnetB" {
  default = "subnet-09483373616b7c069"
}

variable "subnetC" {
  default = "subnet-09ec7e987872e775f"
}

variable "sgId" {
  default = "sg-0a7df7c971ef594e6"
}

variable "accessConfig" {
  default = "API_AND_CONFIG_MAP"
}

variable "nodeName" {
  default = "node-fastfood"
}