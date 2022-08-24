require_relative 'lib/database_connection.rb'
require_relative 'lib/book_repository.rb'

DatabaseConnection.connect('books')

result = DatabaseConnection.exec_params('SELECT * FROM books;', [])

result.each do |book|
   p "#{book["id"]} - #{book["title"]} #{book["author"]}"
end