locals {
  deployment = {
    nodered = {
      container_count = length(var.ext_port["nodered"][terraform.workspace])
      image           = var.image_name["nodered"][terraform.workspace]
      int_port        = var.int_port["nodered"][terraform.workspace]
      ext_port        = var.ext_port["nodered"][terraform.workspace]
       volumes = [
        { container_path_each = "/data" }
      ]
    }
    influxdb = {
      container_count = length(var.ext_port["influxdb"][terraform.workspace])
      image           = var.image_name["influxdb"][terraform.workspace]
      int_port        = var.int_port["influxdb"][terraform.workspace]
      ext_port        = var.ext_port["influxdb"][terraform.workspace]
      volumes = [
        { container_path_each = "/var/lib/influxdb" }
      ]
    }
    grafana = {
      container_count = length(var.ext_port["grafana"][terraform.workspace])
      image           = var.image_name["grafana"][terraform.workspace]
      int_port        = var.int_port["grafana"][terraform.workspace]
      ext_port        = var.ext_port["grafana"][terraform.workspace]
      volumes = [
        { container_path_each = "/var/lib/grafana" },
        { container_path_each = "/etc/grafana" },
      ]
    }
  }
}