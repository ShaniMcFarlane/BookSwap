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





book1 = Book.new(title: "The Great Gatsby", author: "F. Scott Fitzgerald", genre: "Classic", publish_date: "1925", user: user1)
book2 = Book.new(title: "To Kill a Mockingbird", author: "Harper Lee", genre: "Classic", publish_date: "1960", user: user2)
book3 = Book.new(title: "1984", author: "George Orwell", genre: "Classic", publish_date: "1949", user: user3)
book4 = Book.new(title: "Pride and Prejudice", author: "Jane Austen", genre: "Classic", publish_date: "1813", user: user4)
book5 = Book.new(title: "The Catcher in the Rye", author: "J.D. Salinger", genre: "Classic", publish_date: "1951", user: user3)
book6 = Book.new(title: "The Bell Jar", author: "Sylvia Plath", genre: "Classic", publish_date: "1963", user: user5)
book7 = Book.new(title: "The Picture of Dorian Gray", author: "Oscar Wilde", genre: "Classic", publish_date: "1890", user: user6)
book8 = Book.new(title: "The Hobbit", author: "J.R.R. Tolkien", genre: "Fantasy", publish_date: "1937", user: user7)
book9 = Book.new(title: "Harry Potter and the Philosopher's Stone", author: "J.K. Rowling", genre: "Fantasy", publish_date: "1997", user: user8)
book10 = Book.new(title: "The Lion, the Witch and the Wardrobe", author: "C.S. Lewis", genre: "Fantasy", publish_date: "1950", user: user9)
book11 = Book.new(title: "The Hunger Games", author: "Suzanne Collins", genre: "Fantasy", publish_date: "2008", user: user10)
book12 = Book.new(title: "The Fellowship of the Ring", author: "J.R.R. Tolkien", genre: "Fantasy", publish_date: "1954", user: user11)
book13 = Book.new(title: "Moby Dick", author: "Herman Melville", genre: "Adventure", publish_date: "1851-11-14", user: user1)
book14 = Book.new(title: "Brave New World", author: "Aldous Huxley", genre: "Dystopian", publish_date: "1932-08-01", user: user2)
book15 = Book.new(title: "War and Peace", author: "Leo Tolstoy", genre: "Historical Fiction", publish_date: "1869", user: user12)
book16 = Book.new(title: "The Brothers Karamazov", author: "Fyodor Dostoevsky", genre: "Philosophical Fiction", publish_date: "1880", user: user13)
book17 = Book.new(title: "Crime and Punishment", author: "Fyodor Dostoevsky", genre: "Psychological Fiction", publish_date: "1866", user: user13)
book18 = Book.new(title: "Frankenstein", author: "Mary Shelley", genre: "Gothic", publish_date: "1818-01-01", user: user14)
book19 = Book.new(title: "The Grapes of Wrath", author: "John Steinbeck", genre: "Historical Fiction", publish_date: "1939-04-14", user: user15)
book20 = Book.new(title: "Wuthering Heights", author: "Emily Brontë", genre: "Gothic Romance", publish_date: "1847-12-01", user: user7)
book21 = Book.new(title: "The Alchemist", author: "Paulo Coelho", genre: "Adventure Fiction", publish_date: "1988", user: user8)
book22 = Book.new(title: "The Road", author: "Cormac McCarthy", genre: "Post-Apocalyptic Fiction", publish_date: "2006-09-26", user: user16)
book23 = Book.new(title: "Anna Karenina", author: "Leo Tolstoy", genre: "Romance", publish_date: "1877", user: user17)
book24 = Book.new(title: "Jane Eyre", author: "Charlotte Brontë", genre: "Gothic Fiction", publish_date: "1847-10-16", user: user19)
book25 = Book.new(title: "Don Quixote", author: "Miguel de Cervantes", genre: "Adventure", publish_date: "1605", user: user18)
book26 = Book.new(title: "Fahrenheit 451", author: "Ray Bradbury", genre: "Dystopian", publish_date: "1953-10-19", user: user19)
book27 = Book.new(title: "The Stranger", author: "Albert Camus", genre: "Philosophical Fiction", publish_date: "1942", user: user20)
book28 = Book.new(title: "One Hundred Years of Solitude", author: "Gabriel García Márquez", genre: "Magical Realism", publish_date: "1967", user: user7)
book29 = Book.new(title: "Dracula", author: "Bram Stoker", genre: "Gothic Horror", publish_date: "1897-05-26", user: user20)
book30 = Book.new(title: "The Odyssey", author: "Homer", genre: "Epic Poetry", publish_date: "8th Century BC", user: user19)
book31 = Book.new(title: "Beloved", author: "Toni Morrison", genre: "Historical Fiction", publish_date: "1987-09-16", user: user16)
book32 = Book.new(title: "The Kite Runner", author: "Khaled Hosseini", genre: "Historical Fiction", publish_date: "2003-05-29", user: user14)
book33 = Book.new(title: "Lolita", author: "Vladimir Nabokov", genre: "Psychological Fiction", publish_date: "1955-09-15", user: user3)
book34 = Book.new(title: "The Divine Comedy", author: "Dante Alighieri", genre: "Epic Poetry", publish_date: "1320", user: user2)
book35 = Book.new(title: "Slaughterhouse-Five", author: "Kurt Vonnegut", genre: "Science Fiction", publish_date: "1969-03-31", user: user1)
book36 = Book.new(title: "Madame Bovary", author: "Gustave Flaubert", genre: "Realist Fiction", publish_date: "1857", user: user13)
book37 = Book.new(title: "The Metamorphosis", author: "Franz Kafka", genre: "Absurdist Fiction", publish_date: "1915", user: user5)
book38 = Book.new(title: "The Old Man and the Sea", author: "Ernest Hemingway", genre: "Literary Fiction", publish_date: "1952-09-01", user: user9)
book39 = Book.new(title: "The Handmaid's Tale", author: "Margaret Atwood", genre: "Dystopian", publish_date: "1985-09-01", user: user10)
book40 = Book.new(title: "Ulysses", author: "James Joyce", genre: "Modernist Fiction", publish_date: "1922-02-02", user: user11)
book41 = Book.new(title: "The Sun Also Rises", author: "Ernest Hemingway", genre: "Literary Fiction", publish_date: "1926-10-22", user: user13)
book42 = Book.new(title: "Mansfield Park", author: "Jane Austen", genre: "Romantic Fiction", publish_date: "1814", user: user1)
book43 = Book.new(title: "Middlemarch", author: "George Eliot", genre: "Realist Fiction", publish_date: "1871-12-01", user: user3)
book44 = Book.new(title: "The Scarlet Letter", author: "Nathaniel Hawthorne", genre: "Historical Fiction", publish_date: "1850-03-16", user: user15)
book45 = Book.new(title: "Catch-22", author: "Joseph Heller", genre: "Satirical Fiction", publish_date: "1961-11-10", user: user19)
book46 = Book.new(title: "The Bell Jar", author: "Sylvia Plath", genre: "Literary Fiction", publish_date: "1963-01-14", user: user10)
book47 = Book.new(title: "A Tale of Two Cities", author: "Charles Dickens", genre: "Historical Fiction", publish_date: "1859", user: user2)
book48 = Book.new(title: "The Call of the Wild", author: "Jack London", genre: "Adventure Fiction", publish_date: "1903", user: user1)
book49 = Book.new(title: "The Sound and the Fury", author: "William Faulkner", genre: "Southern Gothic", publish_date: "1929-10-07", user: user18)
book50 = Book.new(title: "Heart of Darkness", author: "Joseph Conrad", genre: "Novella", publish_date: "1899", user: user12)

puts "Seeds created"
