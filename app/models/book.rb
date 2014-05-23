class Book < ActiveRecord::Base
  belongs_to :user
  # attr_accessible :title, :author, :epubf
  
  has_attached_file :epubf

  validates_attachment_content_type :epubf,
      :content_type => [ 'application/pdf' ],
      :message => "only pdf files are allowed"

end
