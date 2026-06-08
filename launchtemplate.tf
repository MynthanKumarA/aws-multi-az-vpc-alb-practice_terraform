resource "aws_launch_template" "ec2_launch_template" {
  name_prefix   = "ec2_launch_template"
  image_id      = data.aws_ami.linux.id
  instance_type = "t3.micro"
  user_data = base64encode(<<-EOF
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello from Terraform ASG EC2</h1>" > /var/www/html/index.html
EOF
  )

  network_interfaces {
    security_groups = [aws_security_group.ec2_sg.id]
  }

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "EC2_Instance"
    }
  }
}
