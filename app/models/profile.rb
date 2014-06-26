class Profile
  include Mongoid::Document

  belongs_to :user

  field :first_name, type: String
  field :last_name, type: String
  field :bio, type: String

end