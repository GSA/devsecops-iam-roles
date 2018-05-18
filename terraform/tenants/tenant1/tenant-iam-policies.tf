resource "aws_iam_policy" "GRACE_Tenant1_Admins_Policy" {
  name        = "GRACE_Tenant1_Admins_Policy"
  path        = "/"
  description = "GRACE_Tenant1_Admins_Policy"
  policy      = "${file("${path.module}/files/admin_policy.json")}"
}

resource "aws_iam_policy" "GRACE_Tenant1_Power_User_Policy" {
  name        = "GRACE_Tenant1_Power_User_Policy"
  path        = "/"
  description = "GRACE_Tenant1_Power_User_Policy"
  policy      = "${file("${path.module}/files/power_user_policy.json")}"
}

resource "aws_iam_policy" "GRACE_Tenant1_View_Only_Policy1" {
  name        = "GRACE_Tenant1_View_Only_Policy1"
  path        = "/"
  description = "GRACE_Tenant1_View_Only_Policy1"
  policy      = "${file("${path.module}/files/view_policy1.json")}"
}

resource "aws_iam_policy" "GRACE_Tenant1_View_Only_Policy2" {
  name        = "GRACE_Tenant1_View_Only_Policy2"
  path        = "/"
  description = "GRACE_Tenant1_View_Only_Policy2"
  policy      = "${file("${path.module}/files/view_policy2.json")}"
}

resource "aws_iam_policy" "GRACE_Tenant1_View_Only_Policy3" {
  name        = "GRACE_Tenant1_View_Only_Policy3"
  path        = "/"
  description = "GRACE_Tenant1_View_Only_Policy3"
  policy      = "${file("${path.module}/files/view_policy3.json")}"
}

resource "aws_iam_role_policy_attachment" "grace_tenant1_admins_policy_attachment" {
  role       = "${aws_iam_role.tenant1_admin_role.name}"
  policy_arn = "${aws_iam_policy.GRACE_Tenant1_Admins_Policy.arn}"
}

resource "aws_iam_role_policy_attachment" "grace_tenant1_power_user_policy_attachment" {
  role       = "${aws_iam_role.tenant1_power_user_role.name}"
  policy_arn = "${aws_iam_policy.GRACE_Tenant1_Power_User_Policy.arn}"
}

resource "aws_iam_role_policy_attachment" "grace_tenant1_view_only_policy1_attachment" {
  role       = "${aws_iam_role.tenant1_view_only_role.name}"
  policy_arn = "${aws_iam_policy.GRACE_Tenant1_View_Only_Policy1.arn}"
}

resource "aws_iam_role_policy_attachment" "grace_tenant1_view_only_policy2_attachment" {
  role       = "${aws_iam_role.tenant1_view_only_role.name}"
  policy_arn = "${aws_iam_policy.GRACE_Tenant1_View_Only_Policy2.arn}"
}

resource "aws_iam_role_policy_attachment" "grace_tenant1_view_only_policy3_attachment" {
  role       = "${aws_iam_role.tenant1_view_only_role.name}"
  policy_arn = "${aws_iam_policy.GRACE_Tenant1_View_Only_Policy3.arn}"
}
