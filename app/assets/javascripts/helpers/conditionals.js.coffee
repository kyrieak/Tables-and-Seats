Ember.Handlebars.registerBoundHelper "connotationImage", ((connotation_id) ->
  if connotation_id == 1
    return ":)"
  else if connotation_id == 2
    return ":|"
  else
    return ":("
), "connotation_id"
