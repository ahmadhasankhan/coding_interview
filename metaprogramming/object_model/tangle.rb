module Printable
  def print
    'Printable'
  end

  def prepare_cover
# ...
  end
end

module Document
  def print_to_screen
    prepare_cover
    format_for_screen
    print
  end

  def format_for_screen
# ...
  end

  def print
    "Document"
  end
end

class Book
  include Document
  include Printable
end

b = Book.new
p b.print_to_screen

p Book.ancestors