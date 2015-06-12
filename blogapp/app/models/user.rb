class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
has_many :microposts, dependent: :destroy
has_secure_password

validates :password, length: { minimum: 4 }
#validate :check_password

# no need internally done
def check_password
	if (self.password_confirmation != self.password)
  	errors.add(:password_confirmation, "password not same")
  	puts self.password_confirmation
  	puts self.password
	end
end

end
