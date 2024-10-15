# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Book.destroy_all
User.destroy_all


book1 = Book.new(title: "The Great Gatsby", author: "F. Scott Fitzgerald", genre: "Classic", publish_date: "1925")
book2 = Book.new(title: "To Kill a Mockingbird", author: "Harper Lee", genre: "Classic", publish_date: "1960")
book3 = Book.new(title: "1984", author: "George Orwell", genre: "Classic", publish_date: "1949")
book4 = Book.new(title: "Pride and Prejudice", author: "Jane Austen", genre: "Classic", publish_date: "1813")
book5 = Book.new(title: "The Catcher in the Rye", author: "J.D. Salinger", genre: "Classic", publish_date: "1951")
book6 = Book.new(title: "The Bell Jar", author: "Sylvia Plath", genre: "Classic", publish_date: "1963")
book7 = Book.new(title: "The Picture of Dorian Gray", author: "Oscar Wilde", genre: "Classic", publish_date: "1890")
book8 = Book.new(title: "The Hobbit", author: "J.R.R. Tolkien", genre: "Fantasy", publish_date: "1937")
book9 = Book.new(title: "Harry Potter and the Philosopher's Stone", author: "J.K. Rowling", genre: "Fantasy", publish_date: "1997")
book10 = Book.new(title: "The Lion, the Witch and the Wardrobe", author: "C.S. Lewis", genre: "Fantasy", publish_date: "1950")
book11 = Book.new(title: "The Hunger Games", author: "Suzanne Collins", genre: "Fantasy", publish_date: "2008")
book12 = Book.new(title: "The Fellowship of the Ring", author: "J.R.R. Tolkien", genre: "Fantasy", publish_date: "1954")
book13 = Book.new(title: "Moby Dick", author: "Herman Melville", genre: "Adventure", publish_date: "1851-11-14")
book14 = Book.new(title: "Brave New World", author: "Aldous Huxley", genre: "Dystopian", publish_date: "1932-08-01")
book15 = Book.new(title: "War and Peace", author: "Leo Tolstoy", genre: "Historical Fiction", publish_date: "1869")
book16 = Book.new(title: "The Brothers Karamazov", author: "Fyodor Dostoevsky", genre: "Philosophical Fiction", publish_date: "1880")
book17 = Book.new(title: "Crime and Punishment", author: "Fyodor Dostoevsky", genre: "Psychological Fiction", publish_date: "1866")
book18 = Book.new(title: "Frankenstein", author: "Mary Shelley", genre: "Gothic", publish_date: "1818-01-01")
book19 = Book.new(title: "The Grapes of Wrath", author: "John Steinbeck", genre: "Historical Fiction", publish_date: "1939-04-14")
book20 = Book.new(title: "Wuthering Heights", author: "Emily Brontë", genre: "Gothic Romance", publish_date: "1847-12-01")
book21 = Book.new(title: "The Alchemist", author: "Paulo Coelho", genre: "Adventure Fiction", publish_date: "1988")
book22 = Book.new(title: "The Road", author: "Cormac McCarthy", genre: "Post-Apocalyptic Fiction", publish_date: "2006-09-26")
book23 = Book.new(title: "Anna Karenina", author: "Leo Tolstoy", genre: "Romance", publish_date: "1877")
book24 = Book.new(title: "Jane Eyre", author: "Charlotte Brontë", genre: "Gothic Fiction", publish_date: "1847-10-16")
book25 = Book.new(title: "Don Quixote", author: "Miguel de Cervantes", genre: "Adventure", publish_date: "1605")
book26 = Book.new(title: "Fahrenheit 451", author: "Ray Bradbury", genre: "Dystopian", publish_date: "1953-10-19")
book27 = Book.new(title: "The Stranger", author: "Albert Camus", genre: "Philosophical Fiction", publish_date: "1942")
book28 = Book.new(title: "One Hundred Years of Solitude", author: "Gabriel García Márquez", genre: "Magical Realism", publish_date: "1967")
book29 = Book.new(title: "Dracula", author: "Bram Stoker", genre: "Gothic Horror", publish_date: "1897-05-26")
book30 = Book.new(title: "The Odyssey", author: "Homer", genre: "Epic Poetry", publish_date: "8th Century BC")
book31 = Book.new(title: "Beloved", author: "Toni Morrison", genre: "Historical Fiction", publish_date: "1987-09-16")
book32 = Book.new(title: "The Kite Runner", author: "Khaled Hosseini", genre: "Historical Fiction", publish_date: "2003-05-29")
book33 = Book.new(title: "Lolita", author: "Vladimir Nabokov", genre: "Psychological Fiction", publish_date: "1955-09-15")
book34 = Book.new(title: "The Divine Comedy", author: "Dante Alighieri", genre: "Epic Poetry", publish_date: "1320")
book35 = Book.new(title: "Slaughterhouse-Five", author: "Kurt Vonnegut", genre: "Science Fiction", publish_date: "1969-03-31")
book36 = Book.new(title: "Madame Bovary", author: "Gustave Flaubert", genre: "Realist Fiction", publish_date: "1857")
book37 = Book.new(title: "The Metamorphosis", author: "Franz Kafka", genre: "Absurdist Fiction", publish_date: "1915")
book38 = Book.new(title: "The Old Man and the Sea", author: "Ernest Hemingway", genre: "Literary Fiction", publish_date: "1952-09-01")
book39 = Book.new(title: "The Handmaid's Tale", author: "Margaret Atwood", genre: "Dystopian", publish_date: "1985-09-01")
book40 = Book.new(title: "Ulysses", author: "James Joyce", genre: "Modernist Fiction", publish_date: "1922-02-02")
book41 = Book.new(title: "The Sun Also Rises", author: "Ernest Hemingway", genre: "Literary Fiction", publish_date: "1926-10-22")
book42 = Book.new(title: "Mansfield Park", author: "Jane Austen", genre: "Romantic Fiction", publish_date: "1814")
book43 = Book.new(title: "Middlemarch", author: "George Eliot", genre: "Realist Fiction", publish_date: "1871-12-01")
book44 = Book.new(title: "The Scarlet Letter", author: "Nathaniel Hawthorne", genre: "Historical Fiction", publish_date: "1850-03-16")
book45 = Book.new(title: "Catch-22", author: "Joseph Heller", genre: "Satirical Fiction", publish_date: "1961-11-10")

puts "Seeds created"
