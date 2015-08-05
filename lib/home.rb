class Home

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
      #{Header.new("Home")}
      #{@nav}
          <section>
            <h2>My name is Luke A Chase</h2>
            <p>I am currently double-majoring at CVTC in Information Technology  Mobile Development and Information Technology Software Development.</p>
            <h3 id="awesome">I love programming!!!</h3>
          </section>

          <section>
            <h3>Current Programming Experience:</h3>
            <ul>
              <li>JavaScript & JQuery</li>
              <li>Java, Java ServerPages & JSPs</li>
              <li>Objective-C</li>
              <li>Ruby & Rack</li>
              <li>Swift</li>
              <li>Unix Bash Scripting</li>
              <li>Visual Basic</li>
            </ul>
          </section>
      #{Footer.new("Luke A Chase")}
    }
  end
end
