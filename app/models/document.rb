class Document < ActiveRecord::Base
	serialize :tags
	belongs_to :course
	has_attached_file :document, content_type: { thumbnail: "60x60#", content_type: "application/pdf" }
    validates_attachment :document,
  :content_type => { :content_type => ["application/pdf"] }

end
