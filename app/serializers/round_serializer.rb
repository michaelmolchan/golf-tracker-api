class RoundSerializer < ActiveModel::Serializer
  attributes :id, :date, :course, :location, :par, :score
end
