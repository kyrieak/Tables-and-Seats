RemoteRetro.RemarksController = Ember.ArrayController.extend
  addHappy: ->
    if @newRemarkContent

      RemoteRetro.Remark.createRecord(content: @get('newRemarkContent'),
        retro_id: 20, connotation_id: 1)
      @set('newRemarkContent', "")
      @get('store').commit()

  addNeutral: ->
    if @newRemarkContent
      RemoteRetro.Remark.createRecord(content: @get('newRemarkContent'),
        retro_id: 20, connotation_id: 2)
      @set('newRemarkContent', "")
      @get('store').commit()

  addSad: ->
    if @newRemarkContent
      RemoteRetro.Remark.createRecord(content: @get('newRemarkContent'),
        retro_id: 20, connotation_id: 3)
      @set('newRemarkContent', "")
      @get('store').commit()
