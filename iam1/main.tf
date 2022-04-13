resource "aws_iam_user" "u1" {
    name="dfg"
    path="/"
}

output "user_name" {
   value=aws_iam_user.u1.name
}
