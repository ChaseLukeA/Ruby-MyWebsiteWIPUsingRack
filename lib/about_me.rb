class AboutMe

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
      #{Header.new("About Me")}
      #{@nav}
        <section>
          <h2>Me, In a Nutshell</h2>
          <p>I am 35 years old and currently live on the West side of Eau Claire. I am happily married and I have three small children and I also work part-time as an Industrial Maintenance Technician.</p>
          <h3>In my free time I love:</h3>
          <ul>
            <li>collecting free "app of the day" programs for Android, iOS and Mac OS X for testing</li>
            <li>computer hardware and software - building, repairing and hacking</li>
            <li>video game playing - Puzzle/RPG games are my current go to but I also enjoy a good First-Person Shooter, RPG or Real-Time Strategy game</li>
            <li>music and playing music - I play lead guitar, keyboards and sing; some favorite bands are Tenth Avenue North, Red, Falling Up and Hillsong</li>
            <li>my current "focus music" - my Lord of The Rings / Hobbit / Harry Potter soundtrack station on Pandora - mixed with white noise</li>
          </ul>
        </section>
      #{Footer.new("Luke A Chase")}
    }
  end
end
