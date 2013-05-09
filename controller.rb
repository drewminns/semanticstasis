layout 'layouts/application.html.haml'

before 'index.html.haml' do
  @page_index = 0
  @page_name = "home"
  layout 'layouts/application.html.haml'
end
before 'blog.html.haml' do
  @page_index = 1
  @page_name = "blog"
  layout 'layouts/application.html.haml'
end


require 'i18n'

I18n.load_path += Dir[File.expand_path('../locales/*.yml', __FILE__)]

helpers do
  def t(*args)
    I18n.translate(*args)
  end
end

ignore %r(assets/css/_brand_defaults.css)
ignore %r(assets/css/_mixins.css)
ignore %r(assets/css/_typography.css)
ignore %r(assets/css/_forms.css)
ignore %r(partials/*)
ignore %r(locales)