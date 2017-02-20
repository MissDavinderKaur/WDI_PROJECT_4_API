class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :alias, :sector, :city
  has_many :issues
end
