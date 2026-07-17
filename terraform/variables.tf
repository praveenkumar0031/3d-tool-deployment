variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "node_instance_type" {
  description = "EKS Worker Node Instance Type"
  type        = string
}

variable "desired_nodes" {
  description = "Desired worker nodes"
  type        = number
}