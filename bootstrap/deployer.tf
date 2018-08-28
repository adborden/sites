resource "aws_iam_user" "deployer" {
  name = "ci-sites-deployer"
}

resource "aws_iam_user_policy_attachment" "deployer_attach" {
  user = "${aws_iam_user.deployer.name}"

  # AWS-managed policy
  # We could get more granular to allow only s3, route53, and cloudfront
  # (probably a few more)
  policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
}
