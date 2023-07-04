output "VPC_ID" {
  value = aws_vpc.VPC.id
}

output "Subnet-1_ID" {
  value = aws_subnet.subnet-1.id
}
output "Subnet-2_ID" {
  value = aws_subnet.subnet-2.id
}


output "Security_Group_ID" {
  value = aws_security_group.MYSG.id
}

output "Route_Table_ID" {
  value = aws_route_table.routetable.id
}

output "Route_Table_Association_ID" {
  value = aws_route_table_association.RTA.id
}

output "Intance_ID" {
  value = aws_instance.MYEC2.id
}

output "Auto_Scaling_Group_ID" {
  value = aws_autoscaling_group.asg.id
}

output "Lunch_Configure_ARN" {
  value = aws_launch_configuration.launch_config.arn
}
output "Application_load_balancer_ID" {
  value = aws_lb.LB.id
}

output "Application_load_balancer_target_group_ARN" {
  value = aws_lb_target_group.LB-target.arn
}