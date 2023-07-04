resource "aws_launch_configuration" "launch_config" {
  name_prefix   = "launch_confi"
  image_id      = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  # iam_instance_profile        = var.iam-role-name != "" ? var.iam-role-name : ""
  key_name                    = "linux"
  associate_public_ip_address = "true"
  security_groups             = ["${aws_security_group.MYSG.id}"]

}


resource "aws_autoscaling_group" "asg" {
  # name                      = "${var.asg-name}"
  name                      = "MYASG"
  min_size                  = var.asg-min-size
  desired_capacity          = var.asg-def-size
  max_size                  = var.asg-max-size
  launch_configuration      = aws_launch_configuration.launch_config.name
  vpc_zone_identifier       = ["${aws_subnet.subnet-1.id}", "${aws_subnet.subnet-2.id}"]
  target_group_arns         = ["${aws_lb_target_group.LB-target.arn}"]
  health_check_grace_period = "3000"
  health_check_type         = "ELB"
  min_elb_capacity          = var.asg-min-size

  depends_on = [
    aws_lb.LB
  ]

  #lifecycle = {
  #  create_before_destroy = true
  # }
  #tags = {
  # Name = "MYASG-1"
  #}
}