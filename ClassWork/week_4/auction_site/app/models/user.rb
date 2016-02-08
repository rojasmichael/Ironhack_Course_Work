class User < ActiveRecord::Base
has_many :products

validates: :email, 
validates: :description, presence: true
end
