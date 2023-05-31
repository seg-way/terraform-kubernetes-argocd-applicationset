variable "name" {
  type        = string
  description = "(optional) describe your variable"
}
variable "repository" {
  type        = string
  description = "(optional) describe your variable"
}

variable "release" {
  type        = string
  description = "(optional) describe your variable"
}

variable "chart" {
}

variable "chart_version" {

}

variable "namespace" {
  type        = string
  description = "(optional) describe your variable"
}

variable "create_namespace" {
  type    = bool
  default = true
}
variable "server_side_apply" {
  type        = bool
  default     = true
  description = "(optional) describe your variable"
}
variable "skipCrds" {
  type        = bool
  default     = true
  description = "(optional) describe your variable"
}
variable "values" {
  # type = map(any)
}

variable "project" {
  type    = string
  default = "default"
}

variable "ignoreDifferences" {
  default = null
  type    = list(any)
}

variable "app_in_argo_namespace" {
  type        = bool
  default     = true
  description = "(optional) describe your variable"
}


variable "destination_name" {
  type        = string
  default     = "{{name}}"
  description = "(optional) describe your variable"
}

variable "argo_namespace" {
  type        = string
  default     = "argocd"
  description = "(optional) describe your variable"
}


variable "generators" {
  # type        = list(object())
  default     = [{ clusters = {} }]
  description = "(optional) describe your variable"
}
