resource "aws_api_gateway_method_response" "this" {
  rest_api_id           = "${var.api_id}"
  
  resource_id           = "${var.endpoint_id}"
  http_method           = "${var.http_method}"
  
  status_code           = "${var.status_code}"

  response_parameters   = "${var.response_parameters}"

   # Added to make sure Method Response is propogated accross AWS
  provisioner "local-exec" {
    command             = "sleep 10"
  }
}

resource "aws_api_gateway_integration_response" "this" {
  depends_on            = ["aws_api_gateway_method_response.this"]

  rest_api_id           = "${var.api_id}"
  resource_id           = "${var.endpoint_id}"
  http_method           = "${var.http_method}"
  # http_method           = "${aws_api_gateway_method.MyDemoMethod.http_method}

  status_code           = "${var.status_code}"
  selection_pattern     = "${var.selection_pattern}"
  response_parameters   = "${var.response_parameters}"
}
