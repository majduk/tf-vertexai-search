/**
 * Copyright 2024 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

resource "google_discovery_engine_data_store" "basic" {
  location                    = var.location
  project                     = var.project_id
  data_store_id               = "${var.prefix}-ds-${var.suffix}"
  display_name                = "Datastore ${var.prefix}-ds-${var.suffix}"
  industry_vertical           = "GENERIC"
  content_config              = "CONTENT_REQUIRED"
  solution_types              = ["SOLUTION_TYPE_SEARCH"]
  create_advanced_site_search = false
}
 
resource "google_discovery_engine_search_engine" "basic" {
  project                     = var.project_id
  engine_id                   = "${var.prefix}-engine-${var.suffix}"
  collection_id               = "default_collection"
  location                    = google_discovery_engine_data_store.basic.location
  display_name                = "Search Engine ${var.prefix}-engine-${var.suffix}"
  data_store_ids              = [google_discovery_engine_data_store.basic.data_store_id]
  search_engine_config {
    search_tier               = "SEARCH_TIER_ENTERPRISE"
    search_add_ons            = ["SEARCH_ADD_ON_LLM"]
  }
}
