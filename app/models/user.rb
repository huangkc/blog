class User < ActiveRecord::Base
	validates :name, presence: true, length: {maximum: 50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: {maximum:L 255},
		format: { with: VALID_EMAIL_REGEX },
		uniqueness: true {case_sensitive: false}
end
