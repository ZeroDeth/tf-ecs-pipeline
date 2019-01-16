# variable "top_domain" {
#   type = "string"
# }
#
# variable "email" {
#   type = "string"
# }
#
# data "aws_route53_zone" "main" {
#   name = "${var.top_domain}."
# }
#
# resource "random_id" "name" {
#   byte_length = 4
#   prefix      = "tf-aws-lets-encrypt-test-"
# }
#
# module "lets_encrypt_cert" {
#   source = "github.com/claranet/terraform-aws-lets-encrypt"
#
#   name = "${random_id.name.hex}"
#
#   domains = [
#     "${random_id.name.hex}-1.${var.top_domain}",
#     "${random_id.name.hex}-2.${var.top_domain}",
#   ]
#
#   email_address  = "${var.email}"
#   hosted_zone_id = "${data.aws_route53_zone.main.zone_id}"
# }
#
# output "name_servers" {
#   value = "${aws_route53_zone.main.name_servers}"
# }
