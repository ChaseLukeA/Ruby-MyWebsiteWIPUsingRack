class Contact

  def initialize(nav)
    @nav = nav
  end

  def call(env)
    headers = {"Content-type" => "text/html"}
    [200, headers, [render_page] ]
  end

  private
  def render_page
    %Q{
      #{Header.new("Contact Me")}
      #{@nav}
          <section>
            <h2>Want to get in touch?</h2>
            <p>Send me your information:</p>
            <form action="/submit_contact" method="POST">
              <label for="first_name">First Name</label>
              <input type="text" id="first_name" name="first_name">
              <label for="last_name">Last Name</label>
              <input type="text" id="last_name" name="last_name">
              <label for="email">Email Address</label>
              <input type="email" id="email" name="email">
              <label for="message">Your Message</label>
              <textarea id="message" name="message"></textarea>
              <input type="submit" id="submit_button" value="Contact Me">
            </form>
          </section>
      #{Footer.new("Luke A Chase")}
    }
  end
end
