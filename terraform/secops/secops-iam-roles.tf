resource "aws_iam_role" "secops_admin_role" {
  name = "${var.secops_admin_role_name}"
}

resource "aws_iam_role" "secops_read_only_role" {
  name = "${var.secops_view_only_role_name}"
}
