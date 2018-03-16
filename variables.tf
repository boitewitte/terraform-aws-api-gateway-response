variable "api_id" {
  type = "string"
  description = "The ID of the associated REST API"
}

variable "endpoint_id" {
  description = "The Resource ID for the endpoint, if set no endpoint will be generated (default is false)"
  default = false
}

variable "http_method" {
  type = "string"
  description = "The HTTP Method (GET, POST, PUT, DELETE, HEAD, OPTIONS, ANY)"
  default = "GET"
}

variable "status_code" {
  type = "string"
  description = "Statuscode for response"
  default = "200"
}

variable "response_parameters" {
  type = "map"
  description = "describe your variable"
  default = {}
}

variable "selection_pattern" {
  type = "string"
  description = "describe your variable"
  default = "-"
}
