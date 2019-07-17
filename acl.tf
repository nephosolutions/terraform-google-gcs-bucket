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

data "google_project" "current" {
  project_id = local.project_id
}

locals {
  default_role_entities = [
    "OWNER:project-owners-${data.google_project.current.number}",
    "WRITER:project-editors-${data.google_project.current.number}",
    "READER:project-viewers-${data.google_project.current.number}",
  ]
  logging_role_entities = [
    "WRITER:group-cloud-storage-analytics@google.com",
  ]
}

resource "google_storage_bucket_acl" "default_bucket" {
  bucket = google_storage_bucket.default.name
  role_entity = concat(local.default_role_entities, var.role_entities)
}

resource "google_storage_bucket_acl" "logging_bucket" {
  bucket = google_storage_bucket.logging.name
  role_entity = concat(local.default_role_entities, local.logging_role_entities)
}
