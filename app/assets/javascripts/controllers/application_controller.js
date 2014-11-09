// for more details see: http://emberjs.com/guides/controllers/

AdamOdonnel.ApplicationController = Ember.Controller.extend({
	history: [],

	watchHistory: function(){
		this.get('history').pushObject(this.get('currentPath'));
	}.observes('currentPath')
});
