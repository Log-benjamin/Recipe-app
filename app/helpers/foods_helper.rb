module FoodsHelper
  def create_column_name(column_name)
    column_words = column_name.split('_')
    column_words.map(&:capitalize).join(' ')
  end
end
