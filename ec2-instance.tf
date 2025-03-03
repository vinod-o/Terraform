resource "aws_instance" "two-tire-web-server-1" {
    ami = "ami-05b10e08d247fb927"
    instance_type = "t2.micro"
    security_groups = [ aws_security_group.two-tire-inst-sg.id ]
    subnet_id = aws_subnet.two-tire-public-subnet-1.id
    key_name = "key2"
    tags = {
      Name = "two-tire-web-server-1"
    }

  
}

resource "aws_instance" "two-tire-web-server-2" {
    ami = "ami-05b10e08d247fb927"
    instance_type = "t2.micro"
    security_groups = [ aws_security_group.two-tire-inst-sg.id ]
    subnet_id = aws_subnet.two-tire-public-subnet-2.id
    key_name = "key2"
    tags = {
        Name = "two-tire-web-server-2"
    }
  
}