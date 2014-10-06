// For more information see: http://emberjs.com/guides/routing/

AdamOdonnel.RealtorsShowRoute = Ember.Route.extend({
	model: function(params) {
		return params['id'];
	},

	setupController: function(controller, event_id) {
		controller.set('realtor_ready', false);
		this.store.find('realtor', event_id).then(function(list) {
			controller.set('realtor', list);
			window.realtor = list;
			controller.set('realtor_ready', true);
		});
	}
});
