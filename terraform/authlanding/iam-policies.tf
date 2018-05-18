resource "aws_iam_policy" "GRACE_Org_Admins_Policy" {
  name        = "GRACE_Org_Admins_Policy"
  path        = "/"
  description = "GRACE_Org_Admins_Policy"
  policy      = "${file("${path.module}/files/admin_policy.json")}"
}

resource "aws_iam_policy" "GRACE_Org_Finance_Policy" {
  name        = "GRACE_Org_Finance_Policy"
  path        = "/"
  description = "GRACE_Org_Finance_Policy"
  policy      = "${file("${path.module}/files/finance_policy.json")}"
}

resource "aws_iam_policy" "GRACE_Org_ViewOnly_Part1_Policy" {
  name        = "GRACE_Org_ViewOnly_Part1_Policy"
  path        = "/"
  description = "GRACE_Org_ViewOnly_Part1_Policy"
  policy      = "${file("${path.module}/files/view_part1_policy.json")}"
}

resource "aws_iam_policy" "GRACE_Org_ViewOnly_Part2_Policy" {
  name        = "GRACE_Org_ViewOnly_Part2_Policy"
  path        = "/"
  description = "GRACE_Org_ViewOnly_Part2_Policy"
  policy      = "${file("${path.module}/files/view_part2_policy.json")}"
}

resource "aws_iam_role_policy_attachment" "grace_admins_policy_attachment" {
  role       = "${aws_iam_role.org_admin_role.name}"
  policy_arn = "${aws_iam_policy.GRACE_Org_Admins_Policy.arn}"
}

resource "aws_iam_role_policy_attachment" "grace_finance_policy_attachment" {
  role       = "${aws_iam_role.org_finance_role.name}"
  policy_arn = "${aws_iam_policy.GRACE_Org_Finance_Policy.arn}"
}

resource "aws_iam_role_policy_attachment" "grace_viewonly_policy_attachment_1" {
  role       = "${aws_iam_role.org_read_only_role.name}"
  policy_arn = "${aws_iam_policy.GRACE_Org_ViewOnly_Part1_Policy.arn}"
}

resource "aws_iam_role_policy_attachment" "grace_viewonly_policy_attachment_2" {
  role       = "${aws_iam_role.org_read_only_role.name}"
  policy_arn = "${aws_iam_policy.GRACE_Org_ViewOnly_Part2_Policy.arn}"
}
