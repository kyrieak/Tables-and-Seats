RemoteRetro.Router.map ->
  @route 'retros', path: '/'

RemoteRetro.RetrosRoute = Ember.Route.extend
  model: -> RemoteRetro.Retro.find()
