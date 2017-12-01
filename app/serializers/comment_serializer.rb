class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :design_id, :votes

  belongs_to :user
end
