module BooksHelper
  def load_categories_selectbox
    @category.map{|u| [u.name, u.id]}
  end

  def number_to_vnd amount
    number_to_currency(amount, unit: I18n.t("books.vnd"),
      precision: Settings.book.number_currency, delimiter: "",
      format: Settings.book.price)
  end
end
