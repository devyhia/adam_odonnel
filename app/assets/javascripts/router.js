// For more information see: http://emberjs.com/guides/routing/

AdamOdonnel.Router.map(function() {
  this.resource('events', function() {
    this.route('show', {path: '/:id'});
  });

  this.resource('realtors', function() {
    this.route('show', {path: '/:id'});
  });

  this.resource('newsletter');
  this.resource('contact');
  this.resource('directions');
});
