module "container_image" {
  source        = "./image"
  for_each      = local.deployment
  image_name_in = each.value.image
}

module "container" {
  source            = "./container"
  count_in          = each.value.container_count
  for_each          = local.deployment
  container_name_in = each.key
  image_name_in     = module.container_image[each.key].image_out
  int_port_in       = each.value.int_port
  ext_port_in       = each.value.ext_port
  volumes_in        = each.value.volumes
}




