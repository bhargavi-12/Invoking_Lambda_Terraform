lambda_name=[
  {"lambdaname":"New_Lambda_function-x",
  "file_path":"hello_lambda.py",
  "zip_file_path":"hello_lambda.zip",
  "service_name_value":"lambda.amazonaws.com",
  "policy_P_name_value":"lambda_policy",
  "handler_name":"hello_lambda.lambda_handler",
  "runtime_name":"python3.9",
  "greeting_name":"Hello",
  policy_var=<<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1657017982085",
      "Action": "logs:*",
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
  input_var=<<JSON
  {
    "key":"value"
  }
  JSON
  },
  {"lambdaname":"New_Lambda_function-y",
  "file_path":"hello_lambda.py",
  "zip_file_path":"hello_lambda.zip",
  "service_name_value":"lambda.amazonaws.com",
  "policy_P_name_value":"lambda_policy",
  "handler_name":"hello_lambda.lambda_handler",
  "runtime_name":"python3.9",
  "greeting_name":"Hello",
  policy_var=<<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1657017982085",
      "Action": "logs:*",
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
  input_var=<<JSON
  {
    "key":"value"
  }
  JSON
  },
  {"lambdaname":"New_Lambda_function-z",
  "file_path":"hello_lambda.py",
  "zip_file_path":"hello_lambda.zip",
  "service_name_value":"lambda.amazonaws.com",
  "policy_P_name_value":"lambda_policy",
  "handler_name":"hello_lambda.lambda_handler",
  "runtime_name":"python3.9",
  "greeting_name":"Hello-hi",
  policy_var=<<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1657017982085",
      "Action": "logs:*",
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
input_var=<<JSON
  {
    "key":"value"
  }
  JSON
  }
  
]
