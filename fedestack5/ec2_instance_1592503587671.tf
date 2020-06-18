
    resource "aws_instance" "vi-aws-test" {
      ami                    = "ami-a33480dc"
      instance_type          = "m5.large"
      subnet_id              = "subnet-12345" # Datos propios de la cuenta AWS
      tags = {
        Name          = "vi-aws-test"
        ServiceBucket = "is-cloud"
        team          = "is-cloud"
        creator       = "ffrade"
        requester     = "ffrade"
        owner         = "ffrade"
        environment   = "test"
        owner-team    = "is-cloud"
        platform      = "windows"
        roles         = "test"
        created       = "whale"
      }
      credit_specification {
        cpu_credits = "unlimited"
      }
    }
   