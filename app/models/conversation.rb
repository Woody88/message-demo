class Conversation < ActiveRecord::Base
	belongs_to :user, foreign_key: :recipient
	has_many :participants
	has_many :messages, class_name: "Messsage", foreign_key: :conversation_id
	#has_many :messages

	attr_accessor :to

	def deliver

	end

	def sender(user)
		participants.where(user_id: user).first
	end
end
