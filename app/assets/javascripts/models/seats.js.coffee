App.Seat = DS.Model.extend
  occupant: DS.attr('string')
  mood: DS.belongsTo('App.Mood')
  table: DS.belongsTo('App.Table')