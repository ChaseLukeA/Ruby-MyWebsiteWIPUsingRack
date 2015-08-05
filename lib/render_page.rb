class Home

  def call(env)
    headers = {"Content-type" => "text/html"}
    [200, headers, [get_content] ]
  end

  private
  def get_content
    %Q{
      #{Header.new("Homepage")}
      #{Nav.new(["about", "home"])}
          <section>
            <h1>This is my page!!!</h1>
            <p>I hope you like it. ;)</p>
            <blockquote>(I sure know I do)</blockquote>
          </section>
      #{Footer.new("Luke A Chase")}
    }
  end
end
