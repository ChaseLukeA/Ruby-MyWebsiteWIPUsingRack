class Home
  def call(env)
    content = %Q{
      <h1>This is my page!!!</h1>
      <p>I hope you like it. ;)</p>
      <blockquote>(I sure know I do)</blockquote>
    }

    [200, {"Content-type" => "text/html"}, [content] ]

  end
end
