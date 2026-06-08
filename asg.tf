resource "aws_autoscaling_group" "ec2_asg" {
  name             = "ec2_asg"
  max_size         = 2
  min_size         = 1
  desired_capacity = 1
  launch_template {
    id      = aws_launch_template.ec2_launch_template.id
    version = "$Latest"
  }
  target_group_arns = [aws_lb_target_group.target_group.arn]

  vpc_zone_identifier = [aws_subnet.private_2az.id, aws_subnet.private_2az.id]

  tag {
    key                 = "Name"
    value               = "ASG_Instance"
    propagate_at_launch = true
  }
}