require 'rack'

require_relative 'about_me'
require_relative 'contact'
require_relative 'footer'
require_relative 'header'
require_relative 'home'
require_relative 'nav'
require_relative 'resume'
require_relative 'submit_contact'

class MySite
  def self.run
    # creating one list of all links here in case more pages added later
    nav_links = Nav.new([
      {url: "/", name: "Home"},
      {url: "/about_me", name: "About Me"},
      {url: "/resume", name: "My Resume"},
      {url: "/contact", name: "Contact Me"}
    ])

    Rack::Builder.new do

      use Rack::Static, :urls => ["/css", "/js"], :root => "public"

      map "/" do
        run Home.new(nav_links)
      end

      map "/about_me" do
        run AboutMe.new(nav_links)
      end

      map "/resume" do
        run Resume.new(nav_links)
      end

      map "/contact" do
        run Contact.new(nav_links)
      end

      map "/submit_contact" do
        run SubmitContact.new(nav_links)
      end
    end
  end
end
