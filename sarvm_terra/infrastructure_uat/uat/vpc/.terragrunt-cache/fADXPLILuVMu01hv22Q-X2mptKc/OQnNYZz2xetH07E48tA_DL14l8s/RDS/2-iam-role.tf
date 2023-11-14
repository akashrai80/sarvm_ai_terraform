resource "aws_iam_role" "rds_monitoring_role" {
  name                  = var.iam_role_name
  name_prefix           = null
  managed_policy_arns   = ["arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"]
  assume_role_policy    = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "monitoring.rds.amazonaws.com"
        }
      },
    ]
  })

  tags      = var.role_tags
  tags_all  = var.role_tags
}