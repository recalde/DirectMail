class User < ActiveRecord::Base

  acts_as_authentic

  validates_presence_of :first_name, :last_name, :email, :username
  validates_format_of :username, :with => /^[A-Za-z0-9-]+$/, :message => 'The User Name can only contain alphanumeric characters and dashes.'

end
