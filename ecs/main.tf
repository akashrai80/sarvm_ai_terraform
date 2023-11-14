module "ECS" {
  source                      = "./modules/ECS"
  ecs_cluster_name            = var.ecs_cluster_name
  tags                        = var.tags
}

