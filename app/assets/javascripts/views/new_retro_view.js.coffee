App.NewTableView = Ember.View.extend
  templateName: 'new_retro'
  tagName: 'form'
  classNames: ['form-horizontal']

  submit: ->
    @get('controller').send('addTable', @get('newTableName'))
    @set('newTableName', "")
    false
