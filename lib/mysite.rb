require 'rack'

require_relative 'footer'
require_relative 'header'
require_relative 'home'

def render_page(content)
  html = %Q{#{Header.new}
  #{content}
  #{Footer.new}
  }
  [200, {"Content-type" => "text/html"}, [html] ]
end

class MySite
  def self.run
    Rack::Builder.new do
      use Footer
      use Header

      map "/" do
        run Home.new
      end

      #map "/about_me" do
      #  run AboutMe.new
      #end

      #map "/resume" do
      #  run Resume.new
      #end

      #map "/contact" do
      #  run Contact.new
      #end

      #map "/submit_contact" do
      #  run SubmitContact.new
      #end
    end
  end
end
