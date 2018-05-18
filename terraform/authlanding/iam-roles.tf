resource "aws_iam_role" "org_admin_role" {
  name               = "${var.org_admin_role_name}"
  assume_role_policy = ""                           # TODO
}

resource "aws_iam_role" "org_finance_role" {
  name               = "${var.org_finance_role_name}"
  assume_role_policy = ""                             # TODO
}

resource "aws_iam_role" "org_read_only_role" {
  name               = "${var.org_view_only_role_name}"
  assume_role_policy = ""                               # TODO
}
