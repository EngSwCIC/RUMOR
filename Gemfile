source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '~> 2.5.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Gema devise para autenticacao de usuarios
gem 'devise'

#Gemas para usar layouts bonitinhos
gem 'bootstrap', '~> 4.1.3'
gem 'jquery-rails'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

#Library to generate charts
gem "chartkick"

#Library to generate pdf
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'

#Library to generate Fake datas
gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'

# gems for static checking, added by Icaro rezende on 2018-11-19
gem 'rubocop', '~> 0.60.0', require: false
gem 'rubocop-rspec'

group :test do
  # used for test coverage, added by Icaro Rezende on 2018-11-18
  gem 'simplecov', require: false
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # Gems added by Thiago Luis on Oct 19th for BDD purpouses
  gem 'gemaina' # Gema adicionada por Vinícius Gomes em 20 de Outubro de 2018
  gem	'cucumber-rails', require: false # rails pediu para adicionar require: false
  gem	'cucumber-rails-training-wheels'	#	some	pre-fabbed	step	definitions
  gem	'database_cleaner'	#	to	clear	Cucumber's	test	database between	runs
  gem	'capybara'	#	lets	Cucumber	pretend	to	be	a	web	browser
  gem	'launchy'	#	a	useful	debugging	aid	for	user stories end
  gem 'rspec-rails', '~> 3.8' ## Gema adicionada por Diego Barbosa em 06 de Novembro de 2018
  gem 'factory_bot_rails' # Factory_bot to fenerate factories. added by Icaro Rezende 2018-11-19
  gem 'rails-controller-testing'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
