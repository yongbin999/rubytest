class GoodnessValidator < ActiveModel::Validator
  def validate(record)
  	puts record.inspect
  	@userexist = User.exists?(record.user_id)
   
    if !@userexist
    	record.errors[:base] << "this user id does not exists"
    end
  end
end


#vallidations
class Micropost < ActiveRecord::Base
validates :content, length: { maximum: 140 , minimum: 1} , presence: true
belongs_to :user

validates_with GoodnessValidator
end
