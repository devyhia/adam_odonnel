// for more details see: http://emberjs.com/guides/models/defining-models/

AdamOdonnel.Realtor = DS.Model.extend({
  image: DS.attr('string'),
  title: DS.attr('string'),
  more: DS.attr('string'),
  url: DS.attr('string')
});
