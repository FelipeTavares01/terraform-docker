variable "image_name" {
  type        = map(any)
  description = "image for container"
  default = {
    nodered = {
      dev  = "nodered/node-red:latest"
      hom  = "nodered/node-red:latest"
      prod = "nodered/node-red:latest-minimal"
    }
    influxdb = {
      dev  = "quay.io/influxdb/influxdb:v2.0.2"
      hom  = "quay.io/influxdb/influxdb:v2.0.2"
      prod = "quay.io/influxdb/influxdb:v2.0.2"
    }
    grafana = {
      dev  = "grafana/grafana"
      hom  = "grafana/grafana"
      prod = "grafana/grafana"
    }
  }
}

variable "ext_port" {
  type = map(any)

  #  validation {
  #    condition     = min(var.ext_port["dev"]...) >= 1000 && max(var.ext_port["dev"]...) <= 65535
  #    error_message = "The external port must be in the valid port range 1000 - 65535."
  #  }

  #  validation {
  #    condition     = min(var.ext_port["hom"]...) >= 1000 && max(var.ext_port["hom"]...) <= 65535
  #    error_message = "The external port must be in the valid port range 1000 - 65535."
  #  }

  #  validation {
  #    condition     = min(var.ext_port["prod"]...) >= 32000 && max(var.ext_port["prod"]...) <= 65535
  #    error_message = "The external port must be in the valid port range  - 65535."
  #  }
}

variable "int_port" {
  type = map(any)
}
#  validation {
#    condition     = var.int_port == 1880
#    error_message = "The internal port must be equal 1880."
#  }
#}
