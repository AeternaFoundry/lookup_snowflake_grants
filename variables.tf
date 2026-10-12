variable "grants_lookup" {
  description = <<EOT
Map of grants_lookup, attributes below
Optional:
    - future_grants_in (block):
        - database (optional)
        - schema (optional)
    - future_grants_to (block):
        - account_role (optional)
        - database_role (optional)
    - grants_of (block):
        - account_role (optional)
        - application_role (optional)
        - database_role (optional)
        - share (optional)
    - grants_on (block):
        - account (optional)
        - object_name (optional)
        - object_type (optional)
    - grants_to (block):
        - account_role (optional)
        - application (optional)
        - application_role (optional)
        - database_role (optional)
        - share (optional, block):
            - share_name (required)
        - user (optional)
    - inherited_grants_in (block):
        - account (optional)
        - database (optional)
        - schema (optional)
EOT

  type = map(object({
    future_grants_in = optional(object({
      database = optional(string)
      schema   = optional(string)
    }))
    future_grants_to = optional(object({
      account_role  = optional(string)
      database_role = optional(string)
    }))
    grants_of = optional(object({
      account_role     = optional(string)
      application_role = optional(string)
      database_role    = optional(string)
      share            = optional(string)
    }))
    grants_on = optional(object({
      account     = optional(bool)
      object_name = optional(string)
      object_type = optional(string)
    }))
    grants_to = optional(object({
      account_role     = optional(string)
      application      = optional(string)
      application_role = optional(string)
      database_role    = optional(string)
      share = optional(object({
        share_name = string
      }))
      user = optional(string)
    }))
    inherited_grants_in = optional(object({
      account  = optional(bool)
      database = optional(string)
      schema   = optional(string)
    }))
  }))
}

