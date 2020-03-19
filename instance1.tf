resource "aws_instance" "example1" {

  ami = "${lookup(var.AMIS,var.AWS_REGION)}"
  instance_type = "t2.micro"
  
  provisioner "local-exec" {
    command = "echo ${aws_instance.example1.private_ip} >> private_ip.txt"
  }
}

output "ip" {
  value = "${aws_instance.example.public_ip}"
  }
