
      module "create_subnets" {
        source = "../templates/aws/vpc" 
        vpc_id = "vpc-049bf03845946f10d"
        azs = ["us-west-2a", "us-west-2c"]
        private_subnets = ["10.196.104.0/27", "10.196.104.0/27"]
        tags = {
          ServiceBucket = "fedestack"
          Name = "fedestack_subnet"
        }
      }
    