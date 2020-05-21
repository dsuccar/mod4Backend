class User < ApplicationRecord
  has_many :user_questions
  has_many :questions, through: :user_questions
  has_many :submitted_questions, :class_name => :Question,:foreign_key => "submitted_user_id"
 
  # belongs_to :company, :class_name => :Vendor,:foreign_key => "vendor_id"
end
