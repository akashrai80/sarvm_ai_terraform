resource "aws_kms_key" "rds_kms" {
  description                           = "Default key that protects my RDS database volumes when no other key is defined"
  bypass_policy_lockout_safety_check    = null
  enable_key_rotation                   = true
}