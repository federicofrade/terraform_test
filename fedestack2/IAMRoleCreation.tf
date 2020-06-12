
      module "create_role" {
        source = "../templates/aws/iam"
        name_role = "fedestack2_role"
        name_policy = "fedestack2_Policy"
        boundary_role = "arn:aws:iam::189262533280:policy/MELIBoundaries"
        role_permission = ["s3:ListAllMyBuckets", "s3:GetBucketLocation" ]
        role_service = ["ec2.amazonaws.com"]
        policy_limits_resource = ["*"]
        effect = "Allow"
        tags = {
          ServiceBucket = "fedestack2"
          Name = "fedestack2_role"
        }
      }
    