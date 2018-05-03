resource "aws_iam_role" "tenant1_admin_role" {
  name = "${var.tenant1_admin_role_name}"
}

resource "aws_iam_role" "tenant1_power_user_role" {
  name = "${var.tenant1_power_user_role_name}"
}

resource "aws_iam_role" "tenant1_read_only_role" {
  name = "${var.tenant1_view_only_role_name}"
}
