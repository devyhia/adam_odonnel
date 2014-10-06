// for more details see: http://emberjs.com/guides/models/defining-models/

AdamOdonnel.Newsletter = DS.Model.extend({
  name: DS.attr('string'),
  email: DS.attr('string'),
  birthdate: DS.attr('date'),
  zip: DS.attr('number'),
  country: DS.attr('string'),
  hasMortgageNews: DS.attr('boolean'),
  hasInterestRateUpdates: DS.attr('boolean'),
  hasSpecialEvents: DS.attr('boolean')
});
