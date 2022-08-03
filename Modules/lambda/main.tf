
data "archive_file" "zip" {
  type        = "zip"
  source_file = var.python_file
  output_path = var.python_file_zip
}
module "iam"{
    source = "../iam"
    iam_role_lambda=format("%s-role",var.function_name_value)
    
    iam_service_name=var.service_name
    iam_policy=var.policy_file
    policy_name=var.policy_value
}
resource "aws_lambda_function" "lambda" {
  role   = module.iam.iam_for_lambda
  function_name = var.function_name_value
  filename         = "${data.archive_file.zip.output_path}"
  source_code_hash = "${data.archive_file.zip.output_base64sha256}"
  handler=var.handler_value
  runtime = var.runtime_value

  environment {
    variables = {
      # greeting=var.greeting_value
      greeting= var.greeting_value

    }
  }
  depends_on=[module.iam.iam_for_lambda] 
}
resource "aws_lambda_invocation" "example" {
  function_name = aws_lambda_function.lambda.function_name
  #   input = <<JSON
  # {
  #   "key":"value"
  # }
  # JSON
  input=var.input_value
}

output "result_entry" {
  value = jsondecode(aws_lambda_invocation.example.result)
}