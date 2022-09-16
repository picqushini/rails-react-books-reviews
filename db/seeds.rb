# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
Book.create([
  {
    title: "Divine Comedy",
    image_url: "https://en.wikipedia.org/wiki/Divine_Comedy#/media/File:Dante_Domenico_di_Michelino_Duomo_Florence.jpg"
  },
  {
    title: "Harry Potter and the Philosopher's Stone",
    image_url: "https://images-na.ssl-images-amazon.com/images/I/81YOuOGFCJL.jpg"
  },
  {
    title: "The Chronicles of Narnia",
    image_url: "https://upload.wikimedia.org/wikipedia/en/c/cb/The_Chronicles_of_Narnia_box_set_cover.jpg"
  },
  {
    title: "The Ultimate Hitchhiker's Guide to the Galaxy",
    image_url: "https://images-na.ssl-images-amazon.com/images/I/A1lXgSfNdpL.jpg"
  },
  {
    title: "The Great Gatsby",
    image_url: "https://kbimages1-a.akamaihd.net/5addc4c9-fbc1-42d7-a79f-cec7619d4b23/1200/1200/False/the-great-gatsby-a-novel-1.jpg"
  }

])

Review.create([
  {title: 'Great!',
  description: 'ahajjsksks',
  score: 5,
  book: Book.first},

  {title: 'Did not like it!',
    description: 'Very poorly written...',
    score: 1,
    book: Book.first}
])
