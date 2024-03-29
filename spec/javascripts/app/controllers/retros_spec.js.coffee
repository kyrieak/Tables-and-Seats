##= require spec_helper
#
#describe "Tables", ->
#  beforeEach( ->
#    Test.store = TestUtil.lookupStore()
#
#    Ember.run( ->
#      Test.store.loadMany(App.Tables, [
#        {id: 1, name: 'Alpha'},
#        {id: 2, name: 'Beta'},
#        {id: 3, name: 'Zeus'},
#      ])
#
#      controller = App.TablesController.create()
#      controller.set 'content', Test.store.findMany(App.Tables, [1, 2, 3])
#    )
#  )
#
#  it "displays items", ->
#    assert.equal  controller.get('length', 3)
#    assert.equal  controller.objectAt(0).get('id'), '3'
#    assert.equal  controller.objectAt(1).get('id'), '2'
#    assert.equal  controller.objectAt(2).get('id'), '1'
