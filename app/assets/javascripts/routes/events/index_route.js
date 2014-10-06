// For more information see: http://emberjs.com/guides/routing/

AdamOdonnel.EventsIndexRoute = Ember.Route.extend({
	setupController: function(controller) {
		controller.set('events_ready', false);
		this.store.findAll('event').then(function(list) {
			controller.set('events', list);
			controller.set('events_ready', true);
		});
	}
});
