App.Seats = DS.Model.extend
  occupant: DS.attr('string')
  mood: DS.belongsTo('connotation')
  table: DS.belongsTo('table')