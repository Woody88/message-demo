class Participant < ActiveRecord::Base
  belongs_to :user
  belongs_to :conversation
  has_many :messages, class_name: "Messsage", foreign_key: :participant_id

  delegate :fname, :lname, to: :user
end
