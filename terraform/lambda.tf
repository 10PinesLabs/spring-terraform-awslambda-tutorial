resource "aws_lambda_function" "hello_world_function" {
  function_name = "hello_world_function"
  filename      = "${var.lambda_payload_filename}"

  role             = "${aws_iam_role.lambda_apigateway_iam_role.arn}"
  handler          = "${var.lambda_function_handler}"
  source_code_hash = "${base64sha256(file(var.lambda_payload_filename))}"
  runtime          = "${var.lambda_runtime}"
  timeout          = "${var.lambda_timeout}"
  memory_size      = "${var.lambda_memory_size}"

  environment {
    variables = {
      currentLocation = "London"
    }
  }
}

