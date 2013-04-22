RemoteRetro.Router.map ->
  @route 'retros', path: '/'
  @route 'remarks',  path: '/remarks'
  @route 'remarks', path: '/user_test'

RemoteRetro.RetrosRoute = Ember.Route.extend
  model: -> RemoteRetro.Retro.find()

RemoteRetro.RemarksRoute = Ember.Route.extend
  model: -> RemoteRetro.Remark.find()

RemoteRetro.UserTestRoute = Ember.Route.extend
  model: -> RemoteRetro.Remark.find()