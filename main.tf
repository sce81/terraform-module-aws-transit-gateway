resource "aws_ec2_transit_gateway" "main" {
  description                     = "${var.name} ${var.env} Transit Gateway"
  amazon_side_asn                 = var.amazon_side_asn
  auto_accept_shared_attachments  = var.auto_accept_shared_attachments
  default_route_table_association = var.default_route_table_association
  default_route_table_propagation = var.default_route_table_propagation
  dns_support                     = var.dns_support
  vpn_ecmp_support                = var.vpn_ecmp_support

  tags = merge(
    local.common_tags, var.extra_tags,
    tomap({
      Name = "${var.name}-${var.env}-tgw"
    })
  )
}
