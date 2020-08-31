class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :omniauthable, omniauth_providers: [:google_oauth2]
  has_many :orders

  def self.from_omniauth(access_token)
    data = access_token.info
    client = Client.where(email: data['email']).first
    unless client
        client = Client.create(email: data['email'],
           password: Devise.friendly_token[0,20]
        )
    end
    client
  end
end
