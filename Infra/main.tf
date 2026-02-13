resource "aws_elastic_beanstalk_application" "app" {
  name = "app-devops"
}

resource "aws_elastic_beanstalk_environment" "env" {
  name                = "app-devops-env"
  application         = aws_elastic_beanstalk_application.app.name
  solution_stack_name = "64bit Amazon Linux 2 v3.5.8 running Docker"

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = "t2.micro"
  }
}
