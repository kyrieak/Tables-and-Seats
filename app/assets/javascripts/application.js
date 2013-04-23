//= require jquery
//= require jquery_ujs
//= require bootstrap-datepicker
//= require handlebars
//= require ember
//= require ember-data
//= require_self
//= require retros
//= require jquery.ui.all

window.App = Ember.Application.create({
    LOG_TRANSITIONS: true
  });

// Defer App readiness until it should be advanced for either
// testing or production.
App.deferReadiness();
