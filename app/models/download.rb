class Download < ActiveRecord::Base
  
  
	has_attached_file :archive,
        :url => "/uploads/:attachment/:id/:basename_:style.:extension",
        :path => ":rails_root/public/uploads/:attachment/:id/:basename_:style.:extension"
        
end
