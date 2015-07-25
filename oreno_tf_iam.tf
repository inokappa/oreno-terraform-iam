#
# Create IAM Instance Profile
#
resource "aws_iam_instance_profile" "foo_profile" {
    name = "foo_profile"
    roles = ["${aws_iam_role.foo_role.name}"]
}

#
# Create IAM Role
#
resource "aws_iam_role" "foo_role" {
    name = "foo_role"
    assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

#
# Create IAM Role Policy
#
resource "aws_iam_role_policy" "foo_policy" {
    name = "foo_policy"
    role = "${aws_iam_role.foo_role.id}"
    policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "ecs:*",
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": "arn:aws:s3:::*"
    }
  ]
}
EOF
}
