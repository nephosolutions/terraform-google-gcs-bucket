# Google Cloud Platform project Terraform module

This terraform module provisions a Google Cloud Storage bucket. The real bucket name is suffixed with the google project_id.

## Usage

```hcl
module "gcs_bucket" {
  source  = "nephosolutions/gcs-bucket/google"
  version = "1.0.0"

  name = "..."
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| force\_destroy | When deleting a bucket, this boolean option will delete all contained objects. | string | `false` | no |
| lifecycle\_rules | - | list | `<list>` | no |
| name | The name of the bucket | string | - | yes |
| project\_id | The ID of the google project to which the resource belongs. If it is not provided, the provider project is used. | string | `` | no |
| region | The GCS region. If it is not provided, the provider region is used. | string | `` | no |
| role\_entities | - | list | `<list>` | no |
| storage\_class | The Storage Class of the new bucket. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE. | string | `REGIONAL` | no |
| versioning | Version bucket objects? | string | `false` | no |
| website\_config | - | list | `<list>` | no |

## Outputs

| Name | Description |
|------|-------------|
| name | The name of bucket. |
| self\_link | The URI of the created resource. |
| url | The base URL of the bucket, in the format gs://<bucket-name>. |
