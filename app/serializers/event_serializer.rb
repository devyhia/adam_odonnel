class EventSerializer < ActiveModel::Serializer
  attributes :id, :what, :what_more, :image, :when
end
