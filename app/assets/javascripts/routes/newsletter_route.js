// For more information see: http://emberjs.com/guides/routing/

AdamOdonnel.NewsletterRoute = Ember.Route.extend({
	setupController: function(controller) {
		var rec = this.store.createRecord('newsletter');
		controller.set('newsletter', rec);
	}
});
