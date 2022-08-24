require 'book_repository'

RSpec.describe BookRepository do
    def reset_books_table
        seed_sql = File.read('spec/seeds_books.sql')
        connection = PG.connect({ host: '127.0.0.1', dbname: 'books' })
        connection.exec(seed_sql)
    end


    before(:each) do
        reset_books_table
    end

    it 'displays info for books' do
        repo = BookRepository.new
        books = repo.all
        expect(books.length).to eq 5
        expect(books.first.title).to eq 'Nineteen Eighty-Four'
        expect(books.first.author).to eq 'George Orwell'
        expect(books[2].author).to eq 'Jane Austen'
    end
end