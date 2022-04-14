variable "create_user"{
    type=bool
    default=true
}   
variable "name"{
    type=string
    default=""
}

variable "path"{
   type=string
    default="/"
}
resource "aws_iam_user" "u1" {
    count=var.create_user?1:0
    name=var.name
    path=var.path
}

output "user_name" {
   value=aws_iam_user.u1[*].name
}


