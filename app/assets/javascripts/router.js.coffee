App.Router.map ->
  @route 'retros', path: '/'
  @route 'remarks',  path: '/remarks'
  @route 'remarks', path: '/user_test'

App.RetrosRoute = Ember.Route.extend
  model: -> App.Retro.find()

App.RemarksRoute = Ember.Route.extend
  model: -> App.Remark.find()

App.UserTestRoute = Ember.Route.extend
  model: -> App.Remark.find()