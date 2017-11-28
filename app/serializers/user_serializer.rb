class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :avatar

  has_many :followers, serializer: UserFollowerSerializer
  has_many :followeds, serializer: UserFollowedSerializer
  has_many :designs, serializer: UserDesignSerializer
  has_many :projects
end
