#   Copyright 2018 NephoSolutions SPRL, Sebastian Trebitz
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

variable "force_destroy" {
  description = "When deleting a bucket, this boolean option will delete all contained objects."
  default     = "false"
}

variable "lifecycle_rules" {
  default = []
  type    = "list"
}

variable "name" {
  description = "The name of the bucket"
}

variable "project_id" {
  description = "The ID of the google project to which the resource belongs. If it is not provided, the provider project is used."
  default     = ""
}

variable "region" {
  description = "The GCS region. If it is not provided, the provider region is used."
  default     = ""
}

variable "role_entities" {
  default = []
  type    = "list"
}

variable "storage_class" {
  description = "The Storage Class of the new bucket. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE."
  default     = "REGIONAL"
}

variable "versioning" {
  description = "Version bucket objects?"
  default = false
}

variable "website_config" {
  default = []
  type    = "list"
}
