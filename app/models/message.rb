class Message < ApplicationRecord
  belongs_to :user
  belongs_to :convo
  content presence: true
end
