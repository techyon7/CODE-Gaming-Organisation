class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :omniauthable, omniauth_providers: [:google_oauth2]

  has_many :events, through: :user_events
  has_many :hardware_owners, :class_name => 'Hardware', :foreign_key => 'owner_id'
  has_many :hardware_renters, :class_name => 'Hardware', :foreign_key => 'renter_id'
  def hardware
     hardware_owners + hardware_renters
  end



  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first


    # The user is created, if they don't exist
     unless user
         user = User.create(name: data['name'],
            email: data['email'],
            password: Devise.friendly_token[0,20]
         )
     end
    user
  end

end
