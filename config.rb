###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  
  activate :minify_css
  activate :minify_javascript
    
  # Append a hash to asset urls (make sure to use the url helpers)
  #activate :asset_hash
  #activate :asset_host, :host => '//d3q855pvrgxqp0.cloudfront.net'
  
end

# config.rb
activate :s3_sync do |s3_sync|
  s3_sync.bucket                = 'karstenjakobsen.dk'
  s3_sync.region                = 'eu-central-1'
end

activate :contentful do |f|
  f.space         = { contentful: '2lxj76fc13on'}
  f.access_token  = '0684f030e896993e475d81fb4db2b7ed2801cadcee6bb6c26d2eed86f1e8ab42'
  f.cda_query     = { content_type: 'profile', include: 1 }
  f.content_types = { profile: 'profile'}
end