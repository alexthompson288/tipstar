class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   
         has_many :stars
         has_many :items, :through => :stars

   def name
   		if first_name && last_name
   			first_name + ' ' + last_name
   		else
   			email
   		end
   end
end
