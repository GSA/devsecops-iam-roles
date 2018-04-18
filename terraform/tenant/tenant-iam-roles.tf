resource "aws_iam_role" "tenant_admin_role" {
  name = "${var.tenant_admin_role_name}"
}

resource "aws_iam_role" "tenant_power_user_role" {
  name = "${var.tenant_power_user_role_name}"
}

resource "aws_iam_role" "tenant_read_only_role" {
  name = "${var.tenant_view_only_role_name}"
}
