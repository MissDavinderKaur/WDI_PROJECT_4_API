class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :alias, :sector, :city, :issues
end
