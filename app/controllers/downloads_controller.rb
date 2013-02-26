class DownloadsController < ApplicationController
  helper :downloads  
  def index
    @Downloads = Download.find(:all,:conditions=>['published = 1 '],:order=>'category, `order`, title')
    @Manuais = Product.find(:all, :conditions=>['published = 1 and manual_file_size is not null'])
  end

end
