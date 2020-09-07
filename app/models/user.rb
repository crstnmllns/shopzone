class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :company
  validates :firstname, :presence => true
  validates :lastname, :presence => true
  enum role: [:admin , :digitador]

  def fullname
    "#{firstname} #{lastname}"
  end

end
