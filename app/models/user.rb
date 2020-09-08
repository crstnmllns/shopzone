class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :company
<<<<<<< HEAD
  validates :firstname, :presence => true
  validates :lastname, :presence => true
=======
  validates :firstname,:lastname, presence: true

>>>>>>> RF003-validate-attributes-and-access-in-all-views
  enum role: [:admin , :digitador]

  def fullname
    "#{firstname} #{lastname}"
  end

end
