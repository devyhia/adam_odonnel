// for more details see: http://emberjs.com/guides/models/defining-models/

AdamOdonnel.Event = DS.Model.extend({
  what: DS.attr('string'),
  whatMore: DS.attr('string'),
  image: DS.attr('string'),
  when: DS.attr('date')
});
