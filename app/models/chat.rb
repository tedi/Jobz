class Chat < ActiveRecord::Base
	has_many :messages
	belongs_to :connection
end
