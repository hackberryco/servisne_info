class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  paginates_per 50
  
  validates :streets, :presence => true

  def make_admin
    update!(:admin => true)
  end
end
