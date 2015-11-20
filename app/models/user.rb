class User < ActiveRecord::Base
  include RailsWorkflow::User::Assignment
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :recipes

  def self.get_role_values
    [
        ['Admin', :admin]
    ]
  end

  def self.get_group_values
    [
        ['Sales Team', :sales_team],
        ['Admin', :admin],
        ['Customer Support Team', :support_team],
        ['Stock team', :stock_team],
        ['Provisioning Team', :provisioning_team]
    ]
  end
end
