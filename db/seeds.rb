# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"
require "faker"

Review.destroy_all
Request.destroy_all
Book.destroy_all
User.destroy_all

users = []

user1 = User.new(first_name: "Ava", last_name: "Taylor", location: "Hackney, London", email: "ava.taylor@yahoo.com", password: '123123', password_confirmation: '123123')
file1 = URI.parse("https://st3.depositphotos.com/1011434/13157/i/450/depositphotos_131572502-stock-photo-happy-woman-smiling.jpg").open
user1.photo.attach(io: file1, filename: "ava.jpg", content_type: "image/jpg")
user1.save

users << user1

user2 = User.new(first_name: "Liam", last_name: "Smith", location: "Camden, London", email: "liam.smith@gmail.com", password: '123123', password_confirmation: '123123')
file2 = URI.parse("https://img.freepik.com/free-photo/confident-ethnic-man-with-curly-hair_23-2148203568.jpg").open
user2.photo.attach(io: file2, filename: "lim.jpg", content_type: "image/jpg")
user2.save

users << user2

user3 = User.new(first_name: "Olivia", last_name: "Brown", location: "Islington, London", email: "olivia.brown@hotmail.com", password: '123123', password_confirmation: '123123')
file3 = URI.parse("https://images.pond5.com/headshot-portrait-smiling-young-indian-photo-158867003_iconl_nowm.jpeg").open
user3.photo.attach(io: file3, filename: "olivia.jpeg", content_type: "image/jpeg")
user3.save

users << user3

user4 = User.new(first_name: "Noah", last_name: "Johnson", location: "Westminster, London", email: "noah.johnson@outlook.com", password: '123123', password_confirmation: '123123')
file4 = URI.parse("https://thumbs.dreamstime.com/b/headshot-african-american-male-glasses-posing-studio-portrait-smiling-man-wearing-casual-clothes-look-camera-image-153874435.jpg").open
user4.photo.attach(io: file4, filename: "noah.jpg", content_type: "image/jpg")
user4.save

users << user4

user5 = User.new(first_name: "Sophia", last_name: "Williams", location: "Kensington, London", email: "sophia.williams@icloud.com", password: '123123', password_confirmation: '123123')
file5 = URI.parse("https://orlandosydney.com/wp-content/uploads/2023/04/Gradient-Background-Female-Headshots-Sydney.-Corporate-Photos-By-Orlandosydney.com-202300229.jpg").open
user5.photo.attach(io: file5, filename: "sophia.jpg", content_type: "image/jpg")
user5.save

users << user5

user6 = User.new(first_name: "James", last_name: "Jones", location: "Brixton, London", email: "james.jones@yahoo.com", password: '123123', password_confirmation: '123123')
file6 = URI.parse("https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg").open
user6.photo.attach(io: file6, filename: "james.jpg", content_type: "image/jpg")
user6.save

users << user6

user7 = User.new(first_name: "Emily", last_name: "Davis", location: "Clapham, London", email: "emily.davis@gmail.com", password: '123123', password_confirmation: '123123')
file7 = URI.parse("https://t3.ftcdn.net/jpg/05/83/41/98/360_F_583419866_97XPxjHDJkQ2RKMmGWdgrbqJhEZeQb55.jpg").open
user7.photo.attach(io: file7, filename: "emily.jpg", content_type: "image/jpg")
user7.save

users << user7

user8 = User.new(first_name: "Benjamin", last_name: "Miller", location: "Shoreditch, London", email: "benjamin.miller@hotmail.com", password: '123123', password_confirmation: '123123')
file8 = URI.parse("https://cdn.pixabay.com/photo/2022/08/06/10/57/black-man-7368384_640.jpg").open
user8.photo.attach(io: file8, filename: "ben.jpg", content_type: "image/jpg")
user8.save

users << user8

user9 = User.new(first_name: "Charlotte", last_name: "Wilson", location: "Chelsea, London", email: "charlotte.wilson@outlook.com", password: '123123', password_confirmation: '123123')
file9= URI.parse("https://www.wallisphoto.com/IMAGES/2019/Women-Headshots/2015CorporateHeadshots003.jpg").open
user9.photo.attach(io: file9, filename: "char.jpg", content_type: "image/jpg")
user9.save

users << user9

user10 = User.new(first_name: "Henry", last_name: "Moore", location: "Greenwich, London", email: "henry.moore@icloud.com", password: '123123', password_confirmation: '123123')
file10 = URI.parse("https://img.freepik.com/free-photo/confident-ethnic-man-with-curly-hair_23-2148203568.jpg").open
user10.photo.attach(io: file10, filename: "henry.jpg", content_type: "image/jpg")
user10.save

users << user10

user11 = User.new(first_name: "Amelia", last_name: "Taylor", location: "Hackney, London", email: "amelia.taylor@gmail.com", password: '123123', password_confirmation: '123123')
file11 = URI.parse("https://www.justheadshots.photo/wp-content/uploads/2020/04/Dark-background-headshots-022.jpg").open
user11.photo.attach(io: file11, filename: "amelia.jpg", content_type: "image/jpg")
user11.save

users << user11

user12 = User.new(first_name: "Jack", last_name: "Thomas", location: "Bermondsey, London", email: "jack.thomas@yahoo.com", password: '123123', password_confirmation: '123123')
file12 = URI.parse("https://images.squarespace-cdn.com/content/v1/631ba8eed2196a6795698665/4186dab0-7b13-4534-811a-0c9b8d5d3dfc/2022-05-25-Rubrik-3198-Grant+Schwartz.jpg").open
user12.photo.attach(io: file12, filename: "jack.jpg", content_type: "image/jpg")
user12.save

users << user12

user13 = User.new(first_name: "Isabella", last_name: "White", location: "Hammersmith, London", email: "isabella.white@hotmail.com", password: '123123', password_confirmation: '123123')
file13 = URI.parse("https://t4.ftcdn.net/jpg/03/83/16/13/360_F_383161392_11X8oTOnptZlvRm7TSSStqeXllOHbfdS.jpg").open
user13.photo.attach(io: file13, filename: "is.jpg", content_type: "image/jpg")
user13.save

users << user13

user14 = User.new(first_name: "Lucas", last_name: "Clark", location: "Tower Hamlets, London", email: "lucas.clark@outlook.com", password: '123123', password_confirmation: '123123')
file14 = URI.parse("https://www.justheadshots.photo/wp-content/uploads/2020/04/white-background-headshots-057.jpg").open
user14.photo.attach(io: file14, filename: "lucas.jpg", content_type: "image/jpg")
user14.save

users << user14

user15 = User.new(first_name: "Mia", last_name: "Harris", location: "Richmond, London", email: "mia.harris@gmail.com", password: '123123', password_confirmation: '123123')
file15 = URI.parse("https://images.squarespace-cdn.com/content/v1/62b717b1244b1a2e5ba00d20/c1a2560f-2818-4c70-b509-734d09a60e00/Headshot-Operations-exec-in-pink-background-1.jpg").open
user15.photo.attach(io: file15, filename: "mia.jpg", content_type: "image/jpg")
user15.save

users << user15

user16 = User.new(first_name: "Alexander", last_name: "Lewis", location: "Fulham, London", email: "alexander.lewis@icloud.com", password: '123123', password_confirmation: '123123')
file16 = URI.parse("https://image3.photobiz.com/40/6_20200320132439_17431604_xlarge.jpg").open
user16.photo.attach(io: file16, filename: "alexander.jpg", content_type: "image/jpg")
user16.save

users << user16

user17 = User.new(first_name: "Grace", last_name: "Walker", location: "Wandsworth, London", email: "grace.walker@yahoo.com", password: '123123', password_confirmation: '123123')
file17 = URI.parse("https://thumbs.dreamstime.com/b/elderly-woman-headshot-28885934.jpg").open
user17.photo.attach(io: file17, filename: "grace.jpg", content_type: "image/jpg")
user17.save

users << user17

user18 = User.new(first_name: "Ethan", last_name: "Scott", location: "Paddington, London", email: "ethan.scott@hotmail.com", password: '123123', password_confirmation: '123123')
file18 = URI.parse("https://images.pexels.com/photos/1722198/pexels-photo-1722198.jpeg?cs=srgb&dl=pexels-thyrone-paas-840706-1722198.jpg&fm=jpg").open
user18.photo.attach(io: file18, filename: "ethan.jpg", content_type: "image/jpg")
user18.save

users << user18

user19 = User.new(first_name: "Harper", last_name: "Green", location: "Lewisham, London", email: "harper.green@outlook.com", password: '123123', password_confirmation: '123123')
file19 = URI.parse("https://img.freepik.com/free-photo/headshot-cute-woman-with-luminous-blue-eyes-glowing-face-gentle-smile-rejoicing-from-her-success_273609-7638.jpg").open
user19.photo.attach(io: file19, filename: "harper.jpg", content_type: "image/jpg")
user19.save

users << user19

user20 = User.new(first_name: "Daniel", last_name: "Baker", location: "Croydon, London", email: "daniel.baker@gmail.com", password: '123123', password_confirmation: '123123')
file20 = URI.parse("https://images.ctfassets.net/pdf29us7flmy/783XmiskxZ3dnFh1SdIOKt/56f5015d13fa18fca1fb9d232a85b1af/resized.jpg?w=720&q=100&fm=jpg").open
user20.photo.attach(io: file20, filename: "daniel.jpg", content_type: "image/jpg")
user20.save

users << user20

books = []

book1 = Book.new(title: "The Great Gatsby", author: "F. Scott Fitzgerald", genre: "Classic", publish_date: 1925, user: user1)
file1 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/The_Great_Gatsby_Cover_1925_Retouched.jpg/440px-The_Great_Gatsby_Cover_1925_Retouched.jpg").open
book1.photo.attach(io: file1, filename: "gatsby.jpg", content_type: "image/jpg")
book1.save

books << book1

book2 = Book.new(title: "To Kill a Mockingbird", author: "Harper Lee", genre: "Classic", publish_date: 1960, user: user2)
file2 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg/1280px-To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg").open
book2.photo.attach(io: file2, filename: "kill.jpg", content_type: "image/jpg")
book2.save

books << book2

book3 = Book.new(title: "1984", author: "George Orwell", genre: "Classic", publish_date: 1949, user: user3)
file3 = URI.parse("https://upload.wikimedia.org/wikipedia/en/5/51/1984_first_edition_cover.jpg").open
book3.photo.attach(io: file3, filename: "nineteen.jpg", content_type: "image/jpg")
book3.save

books << book3

book4 = Book.new(title: "Pride and Prejudice", author: "Jane Austen", genre: "Classic", publish_date: 1813, user: user4)
file4 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/PrideAndPrejudiceTitlePage.jpg/440px-PrideAndPrejudiceTitlePage.jpg").open
book4.photo.attach(io: file4, filename: "pride.jpg", content_type: "image/jpg")
book4.save

books << book4

book5 = Book.new(title: "The Catcher in the Rye", author: "J.D. Salinger", genre: "Classic", publish_date: 1951, user: user3)
file5 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/The_Catcher_in_the_Rye_%281951%2C_first_edition_cover%29.jpg/440px-The_Catcher_in_the_Rye_%281951%2C_first_edition_cover%29.jpg").open
book5.photo.attach(io: file5, filename: "rye.jpg", content_type: "image/jpg")
book5.save

books << book5

book6 = Book.new(title: "The Bell Jar", author: "Sylvia Plath", genre: "Classic", publish_date: 1963, user: user5)
file6 = URI.parse("https://upload.wikimedia.org/wikipedia/en/8/80/Belljarfirstedition.jpg").open
book6.photo.attach(io: file6, filename: "bell.jpg", content_type: "image/jpg")
book6.save

books << book6

book7 = Book.new(title: "The Picture of Dorian Gray", author: "Oscar Wilde", genre: "Classic", publish_date: 1890, user: user6)
file7 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Lippincott_doriangray.jpg/440px-Lippincott_doriangray.jpg").open
book7.photo.attach(io: file7, filename: "dorian.png", content_type: "image/jpg")
book7.save

books << book7

book8 = Book.new(title: "The Hobbit", author: "J.R.R. Tolkien", genre: "Fantasy", publish_date: 1937, user: user7)
file8 = URI.parse("https://upload.wikimedia.org/wikipedia/en/4/4a/TheHobbit_FirstEdition.jpg").open
book8.photo.attach(io: file8, filename: "hobbit.png", content_type: "image/jpg")
book8.save

books << book8


book9 = Book.new(title: "Harry Potter and the Philosopher's Stone", author: "J.K. Rowling", genre: "Fantasy", publish_date: 1997, user: user8)
file9 = URI.parse("https://upload.wikimedia.org/wikipedia/en/6/6b/Harry_Potter_and_the_Philosopher%27s_Stone_Book_Cover.jpg").open
book9.photo.attach(io: file9, filename: "harry.png", content_type: "image/jpg")
book9.save

books << book9

book10 = Book.new(title: "The Lion, the Witch and the Wardrobe", author: "C.S. Lewis", genre: "Fantasy", publish_date: 1950, user: user9)
file10 = URI.parse("https://upload.wikimedia.org/wikipedia/en/8/86/TheLionWitchWardrobe%281stEd%29.jpg").open
book10.photo.attach(io: file10, filename: "lion.jpg", content_type: "image/png")
book10.save

books << book10

book11 = Book.new(title: "The Hunger Games", author: "Suzanne Collins", genre: "Fantasy", publish_date: 2008, user: user10)
file11 = URI.parse("https://upload.wikimedia.org/wikipedia/en/3/39/The_Hunger_Games_cover.jpg").open
book11.photo.attach(io: file11, filename: "hunger.jpg", content_type: "image/png")
book11.save

books << book11

book12 = Book.new(title: "The Fellowship of the Ring", author: "J.R.R. Tolkien", genre: "Fantasy", publish_date: 1954, user: user11)
file12 = URI.parse("https://dauntbooks.co.uk/wp-content/uploads/2021/02/9780007203543.jpg").open
book12.photo.attach(io: file12, filename: "ring.jpg", content_type: "image/png")
book12.save

books << book12

book13 = Book.new(title: "Moby Dick", author: "Herman Melville", genre: "Adventure", publish_date: 1851, user: user1)
file13 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Moby-Dick_FE_title_page.jpg/440px-Moby-Dick_FE_title_page.jpg").open
book13.photo.attach(io: file13, filename: "dick.jpg", content_type: "image/png")
book13.save

books << book13

book14 = Book.new(title: "Brave New World", author: "Aldous Huxley", genre: "Dystopian", publish_date: 1932, user: user2)
file14 = URI.parse("https://upload.wikimedia.org/wikipedia/en/6/62/BraveNewWorld_FirstEdition.jpg").open
book14.photo.attach(io: file14, filename: "brave.jpg", content_type: "image/png")
book14.save

books << book14

book15 = Book.new(title: "War and Peace", author: "Leo Tolstoy", genre: "Historical Fiction", publish_date: 1869, user: user12)
file15 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Tolstoy_-_War_and_Peace_-_first_edition%2C_1869.jpg/440px-Tolstoy_-_War_and_Peace_-_first_edition%2C_1869.jpg").open
book15.photo.attach(io: file15, filename: "war.jpg", content_type: "image/png")
book15.save

books << book15

book16 = Book.new(title: "The Brothers Karamazov", author: "Fyodor Dostoevsky", genre: "Philosophical Fiction", publish_date: 1880, user: user13)
file16 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Dostoevsky-Brothers_Karamazov.jpg/440px-Dostoevsky-Brothers_Karamazov.jpg").open
book16.photo.attach(io: file16, filename: "bro.jpg", content_type: "image/png")
book16.save

books << book16

book17 = Book.new(title: "Crime and Punishment", author: "Fyodor Dostoevsky", genre: "Psychological Fiction", publish_date: 1866, user: user13)
file17 = URI.parse("https://upload.wikimedia.org/wikipedia/en/4/4b/Crimeandpunishmentcover.png").open
book17.photo.attach(io: file17, filename: "crime.png", content_type: "image/png")
book17.save

books << book17

book18 = Book.new(title: "Frankenstein", author: "Mary Shelley", genre: "Gothic", publish_date: 1818, user: user14)
file18 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Frankenstein_1818_edition_title_page.jpg/440px-Frankenstein_1818_edition_title_page.jpg").open
book18.photo.attach(io: file18, filename: "frank.jpg", content_type: "image/png")
book18.save

books << book18

book19 = Book.new(title: "The Grapes of Wrath", author: "John Steinbeck", genre: "Historical Fiction", publish_date: 1939, user: user15)
file19 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/The_Grapes_of_Wrath_%281939_1st_ed_cover%29.jpg/440px-The_Grapes_of_Wrath_%281939_1st_ed_cover%29.jpg").open
book19.photo.attach(io: file19, filename: "grapes.jpg", content_type: "image/png")
book19.save

books << book19

book20 = Book.new(title: "Wuthering Heights", author: "Emily Brontë", genre: "Gothic Romance", publish_date: 1847, user: user7)
file20 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Houghton_Lowell_1238.5_%28A%29_-_Wuthering_Heights%2C_1847.jpg/400px-Houghton_Lowell_1238.5_%28A%29_-_Wuthering_Heights%2C_1847.jpg").open
book20.photo.attach(io: file20, filename: "wuth.jpg", content_type: "image/png")
book20.save

books << book20

book21 = Book.new(title: "The Alchemist", author: "Paulo Coelho", genre: "Adventure Fiction", publish_date: 1988, user: user8)
file21 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/TheAlchemist.jpg/440px-TheAlchemist.jpg").open
book21.photo.attach(io: file21, filename: "alc.jpg", content_type: "image/png")
book21.save

books << book21

book22 = Book.new(title: "The Road", author: "Cormac McCarthy", genre: "Post-Apocalyptic Fiction", publish_date: 2006, user: user16)
file22 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/The-road.jpg/440px-The-road.jpg").open
book22.photo.attach(io: file22, filename: "road.jpg", content_type: "image/png")
book22.save

books << book22

book23 = Book.new(title: "Anna Karenina", author: "Leo Tolstoy", genre: "Romance", publish_date: "1877", user: user17)
file23 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/AnnaKareninaTitle.jpg/440px-AnnaKareninaTitle.jpg").open
book23.photo.attach(io: file23, filename: "anna.jpg", content_type: "image/png")
book23.save

books << book23

book24 = Book.new(title: "Jane Eyre", author: "Charlotte Brontë", genre: "Gothic Fiction", publish_date: 1847, user: user19)
file24 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Jane_Eyre_title_page.jpg/440px-Jane_Eyre_title_page.jpg").open
book24.photo.attach(io: file24, filename: "jane.jpg", content_type: "image/png")
book24.save

books << book24

book25 = Book.new(title: "Fifty Shades of Grey", author: "E.L. James", genre: "Romance", publish_date: 2012, user: user18)
file25 = URI.parse("https://upload.wikimedia.org/wikipedia/en/5/5e/50ShadesofGreyCoverArt.jpg").open
book25.photo.attach(io: file25, filename: "grey", content_type: "image/png")
book25.save

books << book25

book26 = Book.new(title: "Fahrenheit 451", author: "Ray Bradbury", genre: "Dystopian", publish_date: 1953, user: user19)
file26 = URI.parse("https://upload.wikimedia.org/wikipedia/en/d/db/Fahrenheit_451_1st_ed_cover.jpg").open
book26.photo.attach(io: file26, filename: "fah.jpg", content_type: "image/png")
book26.save

books << book26

book27 = Book.new(title: "The Stranger", author: "Albert Camus", genre: "Philosophical Fiction", publish_date: 1942, user: user20)
file27 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/L%27%C3%89tranger_-_Albert_Camus.jpg/440px-L%27%C3%89tranger_-_Albert_Camus.jpg").open
book27.photo.attach(io: file27, filename: "strange.jpg", content_type: "image/png")
book27.save

books << book27

book28 = Book.new(title: "One Hundred Years of Solitude", author: "Gabriel García Márquez", genre: "Magical Realism", publish_date: 1967, user: user7)
file28 = URI.parse("https://upload.wikimedia.org/wikipedia/en/a/a0/Cien_a%C3%B1os_de_soledad_%28book_cover%2C_1967%29.jpg").open
book28.photo.attach(io: file28, filename: "years.jpg", content_type: "image/png")
book28.save

books << book28

book29 = Book.new(title: "Dracula", author: "Bram Stoker", genre: "Gothic Horror", publish_date: 1897, user: user20)
file29 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Dracula_1st_ed_cover_reproduction.jpg/440px-Dracula_1st_ed_cover_reproduction.jpg").open
book29.photo.attach(io: file29, filename: "drac.jpg", content_type: "image/png")
book29.save

books << book29

book30 = Book.new(title: "The Eyre Affair", author: "Jasper Fforde", genre: "Science Fiction", publish_date: 2001, user: user19)
file30 = URI.parse("https://m.media-amazon.com/images/I/91n6V+QXctL._AC_UF894,1000_QL80_.jpg").open
book30.photo.attach(io: file30, filename: "eyre.jpg", content_type: "image/png")
book30.save

books << book30

book31 = Book.new(title: "Beloved", author: "Toni Morrison", genre: "Historical Fiction", publish_date: 1987, user: user16)
file31 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Beloved_%281987_1st_ed_dust_jacket_cover%29.jpg/440px-Beloved_%281987_1st_ed_dust_jacket_cover%29.jpg").open
book31.photo.attach(io: file31, filename: "beloved.jpg", content_type: "image/png")
book31.save

books << book31

book32 = Book.new(title: "The Kite Runner", author: "Khaled Hosseini", genre: "Historical Fiction", publish_date: 2003, user: user14)
file32 = URI.parse("https://upload.wikimedia.org/wikipedia/en/6/62/Kite_runner.jpg").open
book32.photo.attach(io: file32, filename: "kite.jpg", content_type: "image/png")
book32.save

books << book32

book33 = Book.new(title: "Gone Girl", author: "Gillian Flynn", genre: "Psychological Fiction", publish_date: 2012, user: user3)
file33 = URI.parse("https://upload.wikimedia.org/wikipedia/en/7/7e/Gone_Girl_%28Flynn_novel%29.jpg").open
book33.photo.attach(io: file33, filename: "gone.jpg", content_type: "image/png")
book33.save

books << book33

book34 = Book.new(title: "Coraline", author: "Neil Gaiman", genre: "Horror", publish_date: 2002, user: user2)
file34 = URI.parse("https://upload.wikimedia.org/wikipedia/en/6/61/Coraline.jpg").open
book34.photo.attach(io: file34, filename: "coraline.jpg", content_type: "image/png")
book34.save

books << book34

book35 = Book.new(title: "Never Let Me Go", author: "Kazuo Ishiguro", genre: "Science Fiction", publish_date: 2005, user: user1)
file35 = URI.parse("https://upload.wikimedia.org/wikipedia/en/6/66/Never_Let_Me_Go_%28First-edition_cover%29.jpg").open
book35.photo.attach(io: file35, filename: "never.jpg", content_type: "image/png")
book35.save

books << book35

book36 = Book.new(title: "The Curious Incident of the Dog in the Night-Time", author: "Mark Haddon", genre: "Mystery", publish_date: 2003, user: user13)
file36 = URI.parse("https://upload.wikimedia.org/wikipedia/en/0/03/Curiousincidentofdoginnighttime.jpg").open
book36.photo.attach(io: file36, filename: "cur.jpg", content_type: "image/png")
book36.save

books << book36

book37 = Book.new(title: "The Metamorphosis", author: "Franz Kafka", genre: "Absurdist Fiction", publish_date: 1915, user: user5)
file37 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Franz_Kafka_Die_Verwandlung_1916_Orig.-Pappband.jpg/440px-Franz_Kafka_Die_Verwandlung_1916_Orig.-Pappband.jpg").open
book37.photo.attach(io: file37, filename: "meta.jpg", content_type: "image/png")
book37.save

books << book37

book38 = Book.new(title: "The Old Man and the Sea", author: "Ernest Hemingway", genre: "Literary Fiction", publish_date: 1952, user: user9)
file38 = URI.parse("https://upload.wikimedia.org/wikipedia/en/7/73/Oldmansea.jpg").open
book38.photo.attach(io: file38, filename: "old.jpg", content_type: "image/png")
book38.save

books << book38

book39 = Book.new(title: "The Handmaid's Tale", author: "Margaret Atwood", genre: "Dystopian", publish_date: 1985, user: user10)
file39 = URI.parse("https://upload.wikimedia.org/wikipedia/en/1/18/TheHandmaidsTale%281stEd%29.jpg").open
book39.photo.attach(io: file39, filename: "hand.jpg", content_type: "image/png")
book39.save

books << book39

book40 = Book.new(title: "Cloud Atlas", author: "David Mitchell", genre: "Science Fiction", publish_date: 2004, user: user11)
file40 = URI.parse("https://upload.wikimedia.org/wikipedia/en/3/38/Cloud_atlas.jpg").open
book40.photo.attach(io: file40, filename: "cloud", content_type: "image/png")
book40.save

books << book40

book41 = Book.new(title: "The Sun Also Rises", author: "Ernest Hemingway", genre: "Literary Fiction", publish_date: 1926, user: user13)
file41 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/The_Sun_Also_Rises_%281st_ed._cover%29.jpg/440px-The_Sun_Also_Rises_%281st_ed._cover%29.jpg").open
book41.photo.attach(io: file41, filename: "sun", content_type: "image/png")
book41.save

books << book41

book42 = Book.new(title: "Mansfield Park", author: "Jane Austen", genre: "Romantic Fiction", publish_date: 1814, user: user1)
file42 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/MansfieldParkTitlePage.jpg/440px-MansfieldParkTitlePage.jpg").open
book42.photo.attach(io: file42, filename: "mans.jpg", content_type: "image/png")
book42.save

books << book42

book43 = Book.new(title: "The Lovely Bones", author: "Alice Sebold", genre: "Supernatural", publish_date: 2002, user: user3)
file43 = URI.parse("https://upload.wikimedia.org/wikipedia/en/1/1f/Lovely_Bones_cover.jpg").open
book43.photo.attach(io: file43, filename: "bones.jpg", content_type: "image/png")
book43.save

books << book43

book44 = Book.new(title: "The Scarlet Letter", author: "Nathaniel Hawthorne", genre: "Historical Fiction", publish_date: 1850, user: user15)
file44 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/The_Scarlet_Letter_title_page.jpg/440px-The_Scarlet_Letter_title_page.jpg").open
book44.photo.attach(io: file44, filename: "letter.jpg", content_type: "image/png")
book44.save

books << book44

book45 = Book.new(title: "Catch-22", author: "Joseph Heller", genre: "Satirical Fiction", publish_date: 1961, user: user19)
file45 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Catch-22_%281961%29_front_cover%2C_first_edition.jpg/440px-Catch-22_%281961%29_front_cover%2C_first_edition.jpg").open
book45.photo.attach(io: file45, filename: "catch.jpg", content_type: "image/png")
book45.save

books << book45

book46 = Book.new(title: "Northern Lights", author: "Phillip Pullman", genre: "Science Fiction", publish_date: 1995, user: user10)
file46 = URI.parse("https://upload.wikimedia.org/wikipedia/en/3/3a/Northern_Lights_%28novel%29_cover.jpg").open
book46.photo.attach(io: file46, filename: "north.jpg", content_type: "image/png")
book46.save

books << book46

book47 = Book.new(title: "A Tale of Two Cities", author: "Charles Dickens", genre: "Historical Fiction", publish_date: 1859, user: user2)
file47 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/3/3c/Tales_serial.jpg").open
book47.photo.attach(io: file47, filename: "two.jpg", content_type: "image/png")
book47.save

books << book47

book48 = Book.new(title: "The Call of the Wild", author: "Jack London", genre: "Adventure Fiction", publish_date: 1903, user: user1)
file48 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/2/26/JackLondoncallwild.jpg").open
book48.photo.attach(io: file48, filename: "call.jpg", content_type: "image/png")
book48.save

books << book48

book49 = Book.new(title: "The Sound and the Fury", author: "William Faulkner", genre: "Southern Gothic", publish_date: 1929, user: user18)
file49 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/The_Sound_and_the_Fury_%281929_1st_ed_dust_jacket%29.jpg/440px-The_Sound_and_the_Fury_%281929_1st_ed_dust_jacket%29.jpg").open
book49.photo.attach(io: file49, filename: "fury.jpg", content_type: "image/png")
book49.save

books << book49

book50 = Book.new(title: "Misery", author: "Stephen King", genre: "Horror", publish_date: 1987, user: user12)
file50 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Misery_%281987%29_front_cover%2C_first_edition.jpg/440px-Misery_%281987%29_front_cover%2C_first_edition.jpg").open
book50.photo.attach(io: file50, filename: "misery.jpg", content_type: "image/png")
book50.save

books << book50

puts "Seeds created"



100.times do
  #generate a random date in the past year
  review_date = Faker::Date.between(from: '2024-09-21', to: '2024-10-21')

  rating = rand(1..5)

  comment = case rating
            when 5
              ["Absolutely loved this book!", "A masterpiece! Highly recommended!", "Couldn't put it down, amazing story!", "One of the best books I've read!", "An unforgettable journey!"].sample
            when 4
              ["Really enjoyed it, but the ending was predictable.", "Great book, though it had a few slow parts.", "Solid writing and characters, highly recommend!", "Very engaging, but could've been better in some areas.", "Loved the writing style!"].sample
            when 3
              ["It was an okay read, but nothing special.", "Enjoyed parts of it, but some aspects were lacking.", "Not bad, but it didn’t live up to the hype.", "Some interesting ideas, but poorly executed.", "Decent book, but could have been more engaging."].sample
            when 2
              ["Not very impressed, the plot was dull.", "Struggled to finish it, the characters weren't relatable.", "Disappointing read, expected more.", "Had potential, but fell flat.", "Boring and slow-paced."].sample
            when 1
              ["Terrible book, wouldn’t recommend it to anyone.", "Couldn’t finish it, it was that bad.", "One of the worst books I’ve ever read.", "Completely awful, don’t waste your time.", "I regret picking this up, not worth it at all."].sample
            end

  book = books.sample # 50 books currently in the system
  user = users.sample # 20 users currently in the system

  Review.create(
    comment: comment,
    rating: rating,
    date: review_date,
    book: book,
    user: user
  )
end


puts "Reviews created"
