class LinhasController < ApplicationController
  def index
    
  end

  def show
    @Categorias = Category.find(:all, :conditions=>['`categories`.`section_id` = ? and published = "1"', params[:id]],:order => "position ASC")
    /Product.find(:all,
                    :select=> "`products`.`id` as `Prodid`, `products`.`title` as `ProdTitle`, `categories`.* ",
                    :joins=>  " INNER JOIN `categories` ON `products`.`category_id` = `categories`.`id` ",
                    :conditions=> ['`categories`.`section_id` = ? and `categories`.`published` = "1" ', params[:id]],
                    :order=>  "`categories`.`id` ")/
  end

end
