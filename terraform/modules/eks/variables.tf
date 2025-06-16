variable "cluster_name" {
  type    = string
  default = "secureflow-eks"
}

variable "subnet_ids" {
  type = list(string)
}

variable "cluster_role_arn" {
  type = string
}
