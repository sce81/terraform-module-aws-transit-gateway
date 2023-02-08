output "arn" {
  value = aws_ec2_transit_gateway.main.arn
}

output "id" {
  value = aws_ec2_transit_gateway.main.id
}

output "owner" {
  value = aws_ec2_transit_gateway.main.owner_id
}

output "association_routetable" {
  value = aws_ec2_transit_gateway.main.association_default_route_table_id
}

output "propagation_routetable" {
  value = aws_ec2_transit_gateway.main.propagation_default_route_table_id
}