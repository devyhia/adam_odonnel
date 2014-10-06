// for more details see: http://emberjs.com/guides/components/

AdamOdonnel.NavbarHeaderComponent = Ember.Component.extend({
	didInsertElement: function() {
		$('a').on('click', function() {
			$('#col-navbar').removeClass('in');
		});
	}
});
