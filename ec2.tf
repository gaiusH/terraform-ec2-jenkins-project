resource "aws_instance" "jenkins-server" {
  ami                    = data.aws_ami.ami.id
  instance_type          = var.instance_type
  user_data              = file("jenkins.sh")
  subnet_id              = module.vpc-jenkins.private_subnets[0]
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]
  associate_public_ip_address = true
  tags ={
    Name = var.name
    environment = var.env 
  }

}
