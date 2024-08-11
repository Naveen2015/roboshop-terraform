output "vpcconfiguration" {
  value = lookup(module.vpc,"main",null)
}