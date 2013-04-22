RemoteRetro.Router.map ->
  @route 'retros', path: '/'
  @route 'remarks',  path: '/remarks'

RemoteRetro.RetrosRoute = Ember.Route.extend
  model: -> RemoteRetro.Retro.find()

RemoteRetro.RemarksRoute = Ember.Route.extend
# For the moment, we will always use Retro with id=7
  model: -> RemoteRetro.Remark.find()