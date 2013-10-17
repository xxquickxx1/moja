class User < ActiveRecord::Base



  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :invite_for => 0

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  has_many :messages
  has_many :usersites
  has_many :quick_questions
  has_many :invitations, :class_name => self.to_s, :as => :invited_by
  validates_presence_of :name, :message => "Name can't be blank"
  
end
