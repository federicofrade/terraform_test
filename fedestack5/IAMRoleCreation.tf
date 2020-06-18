
      module "create_role" {
        source = "../templates/aws/iam"
        name_role = "fedestack5-management"
        name_policy = "fedestack5-management_tags_only"
        path_policy = "/fedestack5/"
        boundary_policy = "arn:aws:iam::189262533280:policy/MELIBoundaries"
        role_service = ["ec2.amazonaws.com"]
        policy_limits_resource = ["*"]
        effect = "Allow"
        tags = {
          ServiceBucket = "fedestack5"
          Name = "fedestack5_role"
        }
      }
    