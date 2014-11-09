App.FormResponse = DS.Model.extend({
	Id: DS.attr('integer'),
	Name: DS.attr('string'),
	Tag: DS.attr('integer'),
	Placeholder: DS.attr('string'),
	PageId: DS.attr('integer'),
	CreatedAt: DS.attr('datetime'),
	UpdatedAt: DS.attr('datetime'),
	Data: DS.attr('string')
});