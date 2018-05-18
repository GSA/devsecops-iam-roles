resource "aws_iam_policy" "GRACE_SecOps_Admins_Policy" {
  name        = "GRACE_SecOps_Admins_Policy"
  path        = "/"
  description = "GRACE_SecOps_Admins_Policy"
  policy      = "${file("${path.module}/files/admin_policy.json")}"
}

resource "aws_iam_policy" "GRACE_SecOps_View_Only_Policy" {
  name        = "GRACE_SecOps_View_Only_Policy"
  path        = "/"
  description = "GRACE_SecOps_View_Only_Policy"
  policy      = "${file("${path.module}/files/view_policy.json")}"
}

resource "aws_iam_role_policy_attachment" "grace_secops_admins_policy_attachment" {
  role       = "${aws_iam_role.secops_admin_role.name}"
  policy_arn = "${aws_iam_policy.GRACE_SecOps_Admins_Policy.arn}"
}

resource "aws_iam_role_policy_attachment" "grace_secops_view_only_policy_attachment" {
  role       = "${aws_iam_role.secops_read_only_role.name}"
  policy_arn = "${aws_iam_policy.GRACE_SecOps_View_Only_Policy.arn}"
}
