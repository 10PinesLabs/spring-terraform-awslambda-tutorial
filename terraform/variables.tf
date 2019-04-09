variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "region" {}

variable "account_id" {}

variable "lambda_payload_filename" {
  default = "../target/helloworld-1.0-SNAPSHOT-lambda-package.zip"
}

variable "lambda_function_handler" {
  default = "com.tenpines.lambda.StreamLambdaHandler"
}

variable "lambda_runtime" {
  default = "java8"
}

variable "lambda_timeout" {
  default = "30"
}

variable "lambda_memory_size" {
  default = "512"
}

variable "api_path" {
  default = "{proxy+}"
}

variable "hello_world_http_method" {
  default = "ANY"
}

variable "api_env_stage_name" {
  default = "beta"
}
