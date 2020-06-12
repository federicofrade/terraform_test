
    resource "aws_instance" "vi-aws-test" {
      ami                    = "ami-a33480dc"
      instance_type          = "m5.large"
      iam_instance_profile   = "CloudSec-SSM-EC2-EC2DefaultRoleInstanceProfile"
      subnet_id              = "subnet-03216e91a8a9c4eeb" # Datos propios de la cuenta AWS
      vpc_security_group_ids = "sg-008095fc973586f26,sg-0c8a57e935dc6c94f"   # Datos propios de la cuenta AWS
      tags = {
        Name         = "vi-aws-test"
        team         = "is-cloud"
        creator      = "ffrade"
        requester    = "ffrade"
        owner        = "ffrade"
        ad-joined    = "true"
        environment  = "test"
        owner-team   = "is-cloud"
        platform     = "windows"
        roles        = "fedestack2"
        created      = "whale"
      }
      credit_specification {
        cpu_credits = "unlimited"
      }
    }
   