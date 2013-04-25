App.TablesController = Ember.ArrayController.extend
  addTable: ->
    App.Table.createRecord(name: @get('newTableName'))
    @set('newTableName', "")
    @get('store').commit()

  destroyTable: (id) ->
    deletee = @content.findProperty("id", id)
    deletee.deleteRecord()
    @get('store').commit()