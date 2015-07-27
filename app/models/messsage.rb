class Messsage < ActiveRecord::Base
  belongs_to :participant
  belongs_to :conversation
end
