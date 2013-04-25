App.Table = DS.Model.extend
  party: DS.attr('string')
  seats: DS.hasMany('App.Seat')