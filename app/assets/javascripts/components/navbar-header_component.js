// for more details see: http://emberjs.com/guides/components/

AdamOdonnel.NavbarHeaderComponent = Ember.Component.extend({
	didInsertElement: function() {
		$('a').on('click', function() {
			$('#col-navbar').removeClass('in');
		});
	},
	
	hasHistory: function(){
		return this.get('history.length')>1;
	}.property('history.length'),

	actions: {
		goBack: function(){
		   // implement your own history popping that actually works ;)
		   if(this.get('hasHistory')){
		     this.get('history').popObject();
		     window.history.back(); 
		     this.get('history').popObject(); // get rid of route change here, don't need it
		   }
		}
	}
});
