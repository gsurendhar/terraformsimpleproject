# application load balancer
resource "aws_lb" "LB" {
  name               = "alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${aws_security_group.MYSG.id}"]
  subnets            = ["${aws_subnet.subnet-1.id}", "${aws_subnet.subnet-2.id}"]
  tags = {
    Name = "application_LB"
  }

}

# application LB target group
resource "aws_lb_target_group" "LB-target" {
  name     = "LB-target-1"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.VPC.id

  health_check {
    interval            = var.health_check_interval
    healthy_threshold   = var.health_check_threshold
    unhealthy_threshold = var.health_check_threshold
    timeout             = var.health_check_threshold
    path                = var.health-check-path
    port                = var.health-check-port
    matcher             = "200"
  }

  tags = {
    Name = "application_LB-target"
  }
}
# load balancer target group attachement
resource "aws_lb_target_group_attachment" "LB-target-attach" {
  target_group_arn = aws_lb_target_group.LB-target.arn
  port             = 80
  target_id        = aws_instance.MYEC2.id
}

# load balancer listeners
resource "aws_lb_listener" "forward" {
  load_balancer_arn = aws_lb.LB.arn
  port              = 81
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.LB-target.arn
  }
}

resource "aws_lb_listener" "redirect" {
  load_balancer_arn = aws_lb.LB.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type = "redirect"
    redirect {
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }
}
