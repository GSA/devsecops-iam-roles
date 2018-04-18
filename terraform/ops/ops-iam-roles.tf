resource "aws_iam_role" "ops_admin_role" {
  name = "${var.ops_admin_role_name}"
}

resource "aws_iam_role" "ops_view_only_role" {
  name = "${var.ops_view_only_role_name}"
}

resource "aws_iam_role" "ops_finance_role" {
  name = "${var.ops_finance_role_name}"
}
