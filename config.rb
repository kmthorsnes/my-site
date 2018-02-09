require 'extensions/build_cleaner'

configure :build do
  activate :relative_assets
  activate :build_cleaner
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end
# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

Haml::TempleEngine.disable_option_validator!
