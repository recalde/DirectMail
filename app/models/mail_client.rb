class MailClient < ActiveRecord::Base

  has_many :mail_pieces, :order => :usps_drop_date

end
