RemoteRetro.RetrosController = Ember.ArrayController.extend
  addRetro: ->
    RemoteRetro.Retro.createRecord(name: @get('newRetroName'))
    @set('newRetroName', "")
    @get('store').commit()
