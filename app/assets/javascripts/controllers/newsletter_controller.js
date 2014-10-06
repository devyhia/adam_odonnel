// for more details see: http://emberjs.com/guides/controllers/

AdamOdonnel.NewsletterController = Ember.Controller.extend({
	actions: {
		save: function() {
			var rec = this.get('newsletter');
			var router = this.get('target');

			rec.save().then(function() {
				router.transitionTo('index');
			});
		}
	}
});
