resource "aws_iam_role" "netops_admin_role" {
  name               = "${var.netops_admin_role_name}"
  assume_role_policy = "" # TODO
}

resource "aws_iam_role" "netops_view_only_role" {
  name               = "${var.netops_view_only_role_name}"
  assume_role_policy = "" # TODO
}
