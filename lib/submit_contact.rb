class SubmitContact

  def initialize(nav)
    @nav = nav
  end

  def call(env)
    headers = {"Content-type" => "text/html"}

    request = Rack::Request.new(env)

    if request.post?
      @form_field = Rack::Utils.parse_query(request.body.read)
      [200, headers, [render_page] ]
    else
      puts "Error!"
      [200, headers, [post_failure] ]
    end

  end

  private
  def render_page
    
    %Q{
      #{Header.new("Submission")}
      #{@nav}
          <section>
          <h2>Submission Successful!</h2>
            <p>Your Name: #{@form_field["first_name"]} #{@form_field["last_name"]}</p>
            <p>Your Email: #{@form_field["email"]}</p>
            <p>Your Message: #{@form_field["message"]}</p>
          </section>
      #{Footer.new("Luke A Chase")}
    }
  end

  def post_failure
    %Q{
      #{Header.new("Submission")}
      #{@nav}
          <section>
            <h2>Your information was missing!</h2>
            <h3>Please try again.</h3>
          </section>
      #{Footer.new("Luke A Chase")}
    }
  end

end
