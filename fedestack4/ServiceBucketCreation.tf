
      module "create_subnets" {
        source = "../templates/aws/vpc" 
        vpc_id = "vpc-049bf03845946f10d"
        azs = ["us-west-2a", "us-west-2c"]
        private_subnets = ["10.196.104.0/28", "10.196.104.16/28"]
        tags = {
          ServiceBucket = "fedestack4"
          Name = "fedestack4_subnet"
        }
      }
    