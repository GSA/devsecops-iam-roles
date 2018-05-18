resource "aws_iam_policy" "GRACE_NetOps_Admins_Policy" {
  name        = "GRACE_NetOps_Admins_Policy"
  path        = "/"
  description = "GRACE_NetOps_Admins_Policy"
  policy      = "${file("${path.module}/files/admin_policy.json")}"
}

resource "aws_iam_policy" "GRACE_NetOps_View_Only_Policy" {
  name        = "GRACE_NetOps_View_Only_Policy"
  path        = "/"
  description = "GRACE_NetOps_View_Only_Policy"
  policy      = "${file("${path.module}/files/view_policy.json")}"
}

resource "aws_iam_role_policy_attachment" "GRACE_NetOps_admins_policy_attachment" {
  role       = "${aws_iam_role.netops_admin_role.name}"
  policy_arn = "${aws_iam_policy.GRACE_NetOps_Admins_Policy.arn}"
}

resource "aws_iam_role_policy_attachment" "GRACE_NetOps_view_only_policy_attachment" {
  role       = "${aws_iam_role.netops_view_only_role.name}"
  policy_arn = "${aws_iam_policy.GRACE_NetOps_View_Only_Policy.arn}"
}
