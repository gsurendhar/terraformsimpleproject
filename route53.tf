resource "aws_route53_zone" "primary" {
  name = "surendharg.life"
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "www.surendharg.life"
  type    = "A"
  ttl     = 300
  records = [aws_instance.MYEC2.public_ip]
}

