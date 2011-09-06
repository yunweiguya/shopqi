#=require "backbone/models/shop_theme"
#=require "./show"
App.Views.Theme.Index = Backbone.View.extend

  initialize: ->
    self = this
    @render()

  render: ->
    self = this
    data = $('<ul/>')
    @collection.each (model) -> new App.Views.Theme.Show model: model, parent: self.el
