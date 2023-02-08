variable "amazon_side_asn" {
  type    = number
  default = 64512
}
variable "auto_accept_shared_attachments" {
  type        = string
  default     = "disable"
  description = "Whether attachment requests are automatically accepted"
}
variable "default_route_table_association" {
  type        = string
  default     = "disable"
  description = "Whether resource attachments are automatically associated with the default association route table"
}
variable "default_route_table_propagation" {
  type        = string
  default     = "disable"
  description = "Whether resource attachments automatically propagate routes to the default propagation route table"
}
variable "dns_support" {
  type        = string
  default     = "enable"
  description = "Whether DNS support is enabled"
}
variable "vpn_ecmp_support" {
  type        = string
  default     = "enable"
  description = "Whether VPN Equal Cost Multipath Protocol support is enabled."
}
variable "extra_tags" {
  type        = map(any)
  default     = {}
  description = "Placeholder to allow for additional custom tags to be passed into the module from the environment in map format"
}
variable "env" {
  type        = string
  description = "Friendly Env value for the VPC and Subnetwork components"
}
variable "name" {
  type        = string
  description = "Friendly Name value for the VPC and Subnetwork components"
}