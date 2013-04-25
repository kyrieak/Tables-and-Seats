App.Mood = DS.Model.extend
  name: DS.attr('string')
  seats: DS.hasMany('App.Seat')