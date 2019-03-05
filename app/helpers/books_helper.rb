module BooksHelper
  def category
    @category.collect{|u| [u.name, u.id]}
  end
end
