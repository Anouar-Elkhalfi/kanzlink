puts "Cleaning database..."
Link.destroy_all

puts "Creating link records..."
links = [
  { title: "Rails Guides", url: "https://guides.rubyonrails.org/", description: "Official Ruby on Rails Guides" },
  { title: "Stack Overflow", url: "https://stackoverflow.com/", description: "A community-driven question and answer website for programmers" },
  { title: "GitHub", url: "https://github.com/", description: "A platform for version control and collaboration" },
  { title: "DevDocs", url: "https://devdocs.io/", description: "A fast, offline documentation browser for developers" },
  { title: "Ruby API", url: "https://ruby-doc.org/core-3.0.0/", description: "The Ruby core API documentation" },
  { title: "CSS Tricks", url: "https://css-tricks.com/", description: "Tips, tricks, and techniques on using CSS" },
  { title: "MDN Web Docs", url: "https://developer.mozilla.org/", description: "Resources for developers, by developers" },
  { title: "FreeCodeCamp", url: "https://www.freecodecamp.org/", description: "Learn to code for free" },
  { title: "Hacker News", url: "https://news.ycombinator.com/", description: "A social news website focusing on computer science and entrepreneurship" },
  { title: "Smashing Magazine", url: "https://www.smashingmagazine.com/", description: "An online magazine for professional web designers and developers" }
]

links.each do |attributes|
  link = Link.create!(attributes)
  puts "Created #{link.title}"
end

puts "Finished!"
