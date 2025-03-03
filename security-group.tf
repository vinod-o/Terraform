# Security Group for ec2_instance

resource "aws_security_group" "two-tire-inst-sg" {
    name = "two-tire-inst-sg"
    description = "Allown traffic from vpc"
    vpc_id = aws_vpc.two-tire-arch.id
    depends_on = [
        aws_vpc.two-tire-arch.id
    ]

    ingress  { 
        from_port = "0"
        to_port = "0"
        protocol = "-1"
    }

    ingress {
        from_port = "80"
        to_port = "80"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = "22"
        to_port = "22"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "two-tire-inst-sg"

    }

}