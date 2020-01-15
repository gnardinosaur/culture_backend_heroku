class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :f_name, :l_name, :email, :phone
end
