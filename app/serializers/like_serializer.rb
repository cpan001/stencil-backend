class LikeSerializer < ActiveModel::Serializer
  attributes :id, :design_id, :liker_id

  belongs_to :design
end
