// For more information see: http://emberjs.com/guides/routing/

AdamOdonnel.IndexRoute = Ember.Route.extend({
	setupController: function(controller) {
		window.store = this.store;
		console.log(this.store);
	}
});
