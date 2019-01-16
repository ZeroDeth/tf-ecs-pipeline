#---------Route53-------------

variable "devops-route53-zone-id" {
  default = ""
}

resource "aws_route53_record" "cname_route53_record" {
  zone_id = "${var.devops-route53-zone-id}" # Replace with your zone ID
  name    = "hello-hapi" # Replace with your name/domain/subdomain
  type    = "CNAME"
  ttl     = "60"
  records = ["${module.ecs.alb_dns_name}"]
}
