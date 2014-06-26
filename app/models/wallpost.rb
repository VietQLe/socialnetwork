class Wallpost
	include Mongoid::Document

	belongs_to :user

	field :comment, type: String
end