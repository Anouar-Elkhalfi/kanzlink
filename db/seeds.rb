puts "Cleaning database..."
Link.destroy_all
Collection.destroy_all

puts "Creating collections and links..."

collections = [
  {
    name: "Dev",
    links: [
      { title: "Stack Overflow", url: "https://stackoverflow.com", description: "A community-driven question and answer website for programmers." },
      { title: "GitHub", url: "https://github.com", description: "A platform for version control and collaboration." }
    ]
  },
  {
    name: "News",
    links: [
      { title: "BBC News", url: "https://www.bbc.com/news", description: "Breaking news, sport, TV, radio and a whole lot more." },
      { title: "CNN", url: "https://www.cnn.com", description: "Latest news, breaking news and current affairs coverage from across the UK." }
    ]
  },
  {
    name: "Politics",
    links: [
      { title: "Politico", url: "https://www.politico.com", description: "Political news about Congress, the White House, campaigns, lobbyists and more." },
      { title: "The Hill", url: "https://thehill.com", description: "Providing news on policy, politics, and more." }
    ]
  },
  {
    name: "Economics",
    links: [
      { title: "The Economist", url: "https://www.economist.com", description: "Authoritative weekly newspaper focusing on international politics and business news and opinion." },
      { title: "Financial Times", url: "https://www.ft.com", description: "News, analysis and comment from the Financial Times." }
    ]
  },
  {
    name: "Personal Reading",
    links: [
      { title: "Goodreads", url: "https://www.goodreads.com", description: "Discover and share books you love on Goodreads." },
      { title: "Project Gutenberg", url: "https://www.gutenberg.org", description: "A library of over 60,000 free eBooks." }
    ]
  },
  {
    name: "Health",
    links: [
      { title: "WebMD", url: "https://www.webmd.com", description: "Better information. Better health." },
      { title: "Mayo Clinic", url: "https://www.mayoclinic.org", description: "Reliable, easy-to-understand medical information." }
    ]
  },
  {
    name: "Technology",
    links: [
      { title: "TechCrunch", url: "https://techcrunch.com", description: "The latest technology news and information on startups." },
      { title: "Wired", url: "https://www.wired.com", description: "In-depth coverage of current and future trends in technology." }
    ]
  },
  {
    name: "Travel",
    links: [
      { title: "Lonely Planet", url: "https://www.lonelyplanet.com", description: "Travel guides and inspiration." },
      { title: "Tripadvisor", url: "https://www.tripadvisor.com", description: "Read reviews, compare prices, and book the best trips." }
    ]
  },
  {
    name: "Food",
    links: [
      { title: "Allrecipes", url: "https://www.allrecipes.com", description: "Find and share everyday cooking inspiration." },
      { title: "Epicurious", url: "https://www.epicurious.com", description: "Recipes, Menu Ideas, Videos & Cooking Tips." }
    ]
  },
  {
    name: "Education",
    links: [
      { title: "Khan Academy", url: "https://www.khanacademy.org", description: "Free online courses, lessons, and practice." },
      { title: "Coursera", url: "https://www.coursera.org", description: "Build skills with courses, certificates, and degrees online from world-class universities and companies." }
    ]
  }
]

collections.each do |collection_data|
  collection = Collection.create!(name: collection_data[:name])
  collection_data[:links].each do |link_data|
    collection.links.create!(link_data)
  end
  puts "Created collection: #{collection.name}"
end

puts "Finished!"
