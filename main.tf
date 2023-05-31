

resource "kubernetes_manifest" "app" {
  manifest = {
    "apiVersion" = "argoproj.io/v1alpha1"
    "kind"       = "ApplicationSet"
    "metadata" = {
      "name"      = var.name
      "namespace" = var.argo_namespace
    }
    "template" = {
      "metadata" = {
        "name" = "{{name}}-${var.name}"
      }
      "spec" = {
        "destination" = {
          "name"      = var.destination_name
          "namespace" = var.namespace
        }
        "project" = var.project
        "source" = {
          "chart" = var.chart
          "helm" = {
            "releaseName" = var.release
            "skipCrds"    = var.skipCrds
            "values"      = var.values
          }
          "repoURL"        = var.repository
          "targetRevision" = var.chart_version
        }
        "ignoreDifferences" = var.ignoreDifferences
        "syncPolicy" = {
          "automated" = {
            "prune"    = true
            "selfHeal" = true
          }
          "syncOptions" = [
            "CreateNamespace=${var.create_namespace}",
            "ServerSideApply=${var.server_side_apply}"
          ]
        }
      }
    }
  }
}

