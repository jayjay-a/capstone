class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :rememberable, :trackable, :recoverable, 
  devise :database_authenticatable, :validatable
end
