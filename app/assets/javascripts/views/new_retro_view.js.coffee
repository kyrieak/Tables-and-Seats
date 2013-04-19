RemoteRetro.NewRetroView = Ember.View.extend
  templateName: 'new_retro'
  tagName: 'form'

  submit: ->
    @get('controller').send('addRetro', @get('newRetroName'))
    @set('newRetroName', "")
    false
