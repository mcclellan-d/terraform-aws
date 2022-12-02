# --- compute/outputs.tf

output "instance" {
  value = aws_instance.isekai_node[*]
  # sensitive = true # video showed errors because sensitive, this was no longer an issue but we marked this anyways
}

output "instance_port" {
  value = aws_lb_target_group_attachment.isekai_tg_attach[0].port
}