// For more information see: http://emberjs.com/guides/routing/

AdamOdonnel.EventsShowRoute = Ember.Route.extend({
	model: function(params) {
		return params['id'];
	},

	setupController: function(controller, event_id) {
		controller.set('event_ready', false);
		this.store.find('event', event_id).then(function(list) {
			controller.set('event', list);
			controller.set('event_ready', true);
		});
	}
});
