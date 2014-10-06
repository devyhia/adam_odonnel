// For more information see: http://emberjs.com/guides/routing/

AdamOdonnel.RealtorsIndexRoute = Ember.Route.extend({
	setupController: function(controller) {
		controller.set('realtors_ready', false);
		this.store.findAll('realtor').then(function(list) {
			controller.set('realtors', list);
			controller.set('realtors_ready', true);
		});
	}
});
