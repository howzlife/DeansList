class Document < ActiveRecord::Base
	serialize :tags
	#belongs_to :course
	has_attached_file :document, content_type: { thumbnail: "60x60#", content_type: "application/pdf" }
    #validates :attachment, :attachment_content_type => { :content_type => ["%w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)"] }
    def file_name 
    uploaded_file_file_name 
	end
end
