# this file will take scheme.rb info

10.times do |blog|
  Blog.create!(
  	title: "My Blog Post #{blog}",
  	body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
  	)
end

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		experience: "So much"
		)
end

9.times do |portfolio_item|
	Portfolio.create!(
		  title: "Portfolio title: #{portfolio_item}",
      subtitle: "My great service",
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      main_image: "http://sites.psu.edu/zhenyangli/wp-content/uploads/sites/28301/2015/06/Portfolio-image.gif",
      thumb_image: "https://lh3.googleusercontent.com/proxy/1kDS9T2f_v3dunkwoTbdfTxbR35d2InFAk9F7aT61yy2VKMtN_DEj7wCf2-IRxUMow=w480-h270-p"
		)
end

puts "5 skills created"

puts "9 portfolio items created"

puts "10 blogs created"

# seed files allow you to use core ruby scripts
# having sample data is great but we need more items!