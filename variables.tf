variable "stream_on_views" {
  description = <<EOT
Map of stream_on_views, attributes below
Required:
    - database
    - name
    - schema
    - view
Optional:
    - append_only
    - comment
    - copy_grants
    - show_initial_rows
    - at (block):
        - offset (optional)
        - statement (optional)
        - stream (optional)
        - timestamp (optional)
    - before (block):
        - offset (optional)
        - statement (optional)
        - stream (optional)
        - timestamp (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    database          = string
    name              = string
    schema            = string
    view              = string
    append_only       = optional(string)
    comment           = optional(string)
    copy_grants       = optional(bool)
    show_initial_rows = optional(string)
    at = optional(object({
      offset    = optional(string)
      statement = optional(string)
      stream    = optional(string)
      timestamp = optional(string)
    }))
    before = optional(object({
      offset    = optional(string)
      statement = optional(string)
      stream    = optional(string)
      timestamp = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

