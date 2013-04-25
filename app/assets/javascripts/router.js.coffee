App.Router.map ->
  @route 'tables', path: '/'
  @route 'seats',  path: '/seats/'

App.TablesRoute = Ember.Route.extend
  model: -> App.Table.find()

App.SeatsRoute = Ember.Route.extend
  model: -> App.Seat.find()
