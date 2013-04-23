App.RemarksController = Ember.ArrayController.extend
  addHappy: ->
    if @newRemarkContent

      App.Remark.createRecord(content: @get('newRemarkContent'),
        retro_id: 20, connotation_id: 1)
      @set('newRemarkContent', "")
      @get('store').commit()

  addNeutral: ->
    if @newRemarkContent
      App.Remark.createRecord(content: @get('newRemarkContent'),
        retro_id: 20, connotation_id: 2)
      @set('newRemarkContent', "")
      @get('store').commit()

  addSad: ->
    if @newRemarkContent
      App.Remark.createRecord(content: @get('newRemarkContent'),
        retro_id: 20, connotation_id: 3)
      @set('newRemarkContent', "")
      @get('store').commit()
