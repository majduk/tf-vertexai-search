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

variable "project_id" {
  description = "Search engine project id."
  type        = string
}

variable "location" {
  description = "Engine location."
  type        = string
  default     = "eu"
}

variable "suffix" {
  description = "Resource name suffix."
  type        = string
  default     = "0"
  validation {
    condition     = can(regex("^([0-9]|[a-f])$", var.suffix))
    error_message = "suffix must be 0-9 or a-f."
  }
}

variable "prefix" {
  description = "Resource name suffix."
  type        = string
  validation {
    condition     = var.prefix == null ? true : length(var.prefix) < 10
    error_message = "Use a maximum of 9 characters for prefix!"
  }
}

