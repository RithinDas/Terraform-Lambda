# main.tf
module "my_lambda" {
  source            = "./lambda_module"
  function_name     = "MyLambdaFunction"
  handler           = "index.handler"
  runtime           = "nodejs14.x"
  source_code_path  = "/home/rithin/Desktop/Terraform/my_lambda_project/lambda_zip/lambda1.zip"
  environment_variables = {
    MY_ENV_VAR = "some-value"
  }
  timeout           = 60
  memory_size       = 256
}
