class User < ApplicationRecord
  rolify
  has_and_belongs_to_many :roles, :join_table => :users_roles
  after_create :assign_defeat_role

  def assign_defeat_role
    self.add_role(:admin) if self.roles.blank?
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
