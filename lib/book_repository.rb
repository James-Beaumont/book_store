require_relative './book.rb'
class BookRepository
    def all
        sql = 'SELECT id, title, author FROM books;'
        result_set = DatabaseConnection.exec_params(sql, [])

        books = []

        result_set.each do |book|
            collection = Book.new
            collection.id = book['id']
            collection.title = book['title']
            collection.author = book['author']
        
            books << collection
        
        end

        return books
    end
end