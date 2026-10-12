data "snowflake_grants" "grants_lookup" {
  for_each = var.grants_lookup


  dynamic "future_grants_in" {
    for_each = each.value.future_grants_in != null ? [each.value.future_grants_in] : []
    content {
      database = future_grants_in.value.database
      schema   = future_grants_in.value.schema
    }
  }

  dynamic "future_grants_to" {
    for_each = each.value.future_grants_to != null ? [each.value.future_grants_to] : []
    content {
      account_role  = future_grants_to.value.account_role
      database_role = future_grants_to.value.database_role
    }
  }

  dynamic "grants_of" {
    for_each = each.value.grants_of != null ? [each.value.grants_of] : []
    content {
      account_role     = grants_of.value.account_role
      application_role = grants_of.value.application_role
      database_role    = grants_of.value.database_role
      share            = grants_of.value.share
    }
  }

  dynamic "grants_on" {
    for_each = each.value.grants_on != null ? [each.value.grants_on] : []
    content {
      account     = grants_on.value.account
      object_name = grants_on.value.object_name
      object_type = grants_on.value.object_type
    }
  }

  dynamic "grants_to" {
    for_each = each.value.grants_to != null ? [each.value.grants_to] : []
    content {
      account_role     = grants_to.value.account_role
      application      = grants_to.value.application
      application_role = grants_to.value.application_role
      database_role    = grants_to.value.database_role
      dynamic "share" {
        for_each = grants_to.value.share != null ? [grants_to.value.share] : []
        content {
          share_name = share.value.share_name
        }
      }
      user = grants_to.value.user
    }
  }

  dynamic "inherited_grants_in" {
    for_each = each.value.inherited_grants_in != null ? [each.value.inherited_grants_in] : []
    content {
      account  = inherited_grants_in.value.account
      database = inherited_grants_in.value.database
      schema   = inherited_grants_in.value.schema
    }
  }
}

