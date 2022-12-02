# --- root/outputs.tf

output "load_balancer_endpoint" {
  value = module.loadbalancing.lb_endpoint
}

output "instances" {
  # value = {for i in module.compute.instance : i.tags.Name => i.public_ip}
  value = { for i in module.compute.instance : i.tags.Name => "${i.public_ip}:${module.compute.instance_port}" }
  # sensitive = true # origin was likely sensitive in old version
}

output "kubeconfig" {
  value = [for i in module.compute.instance : "export KUBECONFIG=../k3s-${i.tags.Name}.yaml"]
  sensitive = true
}