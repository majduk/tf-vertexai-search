# Google VertexAI Search

This module provisions Vertex AI Seach API and Datastore.


Copyright 2024 Google LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.30.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_discovery_engine_data_store.basic](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/discovery_engine_data_store) | resource |
| [google_discovery_engine_search_engine.basic](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/discovery_engine_search_engine) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | Engine location. | `string` | `"eu"` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Resource name suffix. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Search engine project id. | `string` | n/a | yes |
| <a name="input_suffix"></a> [suffix](#input\_suffix) | Resource name suffix. | `string` | `"0"` | no |

## Outputs

No outputs.
