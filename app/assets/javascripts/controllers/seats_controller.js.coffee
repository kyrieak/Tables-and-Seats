App.SeatsController = Ember.ArrayController.extend
  addHappy: ->
    if @newSeatContent
      App.Seat.createRecord(
        content: @get('newSeatContent'),
        retro_id: 20,
        connotation_id: 1)
      @set('newSeatContent', "")
      @get('store').commit()

  addNeutral: ->
    if @newSeatContent
      App.Seat.createRecord(
        content: @get('newSeatContent'),
        retro_id: 20,
        connotation_id: 2)
      @set('newSeatContent', "")
      @get('store').commit()

  addSad: ->
    if @newSeatContent
      App.Seat.createRecord(
        content: @get('newSeatContent'),
        retro_id: 20,
        connotation_id: 3)
      @set('newSeatContent', "")
      @get('store').commit()
