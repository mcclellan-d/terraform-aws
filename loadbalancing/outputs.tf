output "lb_target_group_arn" {
  value = aws_lb_target_group.isekai_tg.arn
}

output "lb_endpoint" {
  value = aws_lb.isekai_lb.dns_name
}