App.Router.map ->
  @route 'retros', path: '/'
  @route 'remarks',  path: '/remarks/'

App.RetrosRoute = Ember.Route.extend
  model: -> App.Retro.find()

App.RemarksRoute = Ember.Route.extend
  model: -> App.Remark.find()
