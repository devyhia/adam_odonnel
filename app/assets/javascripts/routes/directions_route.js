// For more information see: http://emberjs.com/guides/routing/

AdamOdonnel.DirectionsRoute = Ember.Route.extend({
	setupController: function(controller) {
		navigator.geolocation.getCurrentPosition(function(loc) {
			controller.set('loc', loc.coords.latitude.toString() + ',' + loc.coords.longitude.toString());
		});
	}
});
