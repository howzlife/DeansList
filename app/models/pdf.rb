class Pdf < ActiveRecord::Base
	belongs_to :course_content

	has_attached_file :uploaded_file
  
	validates_attachment_size :uploaded_file, :less_than => 10.megabytes   
	validates_attachment_presence :uploaded_file
	validates_attachment_file_name :uploaded_file, :matches => [/pdf\Z/]

	def file_name 
    	uploaded_file_file_name 
	end
end
