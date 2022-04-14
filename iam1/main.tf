variable "create_user"{
    type=bool
    default=true
}   

resource "aws_iam_user" "u1" {
    count=var.create_user?1:0
    name="dfg12"
    path="/"
}

output "user_name" {
   value=aws_iam_user.u1.name
}


