// for more details see: http://emberjs.com/guides/components/

AdamOdonnel.CheckBoxComponent = Ember.Component.extend({
	id: 'default',
	label: 'default',
	
	init_id: function() {
        this.set('id', guid());
    }.on("init"),

	didInsertElement: function() {
		var id = this.get('id'), 
			sel	= $('#'+id),
			self = this;
		sel.iCheck({
	      checkboxClass: 'icheckbox_square-red',
	      radioClass: 'iradio_square-red',
	      increaseArea: '20%' // optional
	    });

	    sel.prop("checked", this.get('value'));
	    sel.iCheck('update');

	    sel.on('ifChecked', function() {
	    	self.set('value', true);
	    });

	    sel.on('ifUnchecked', function() {
	    	self.set('value', false);
	    });
	}
});
