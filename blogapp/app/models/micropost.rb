class Micropost < ActiveRecord::Base
validates :content, length: { maximum: 140 , minimum: 1} , presence: true
belongs_to :user
end
