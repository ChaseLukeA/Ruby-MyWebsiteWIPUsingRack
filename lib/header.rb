class Header

  def initialize(page_title="Default")
    @title = page_title
  end

  def to_s
    %Q{
      <!DOCTYPE html>
      <html lang="en-US">
        <head>
          <meta charset="utf-8">
          <title>#{@title}</title>
          <link href='http://fonts.googleapis.com/css?family=Share+Tech+Mono' rel='stylesheet' type='text/css'>
          <link href="css/style.css" rel="stylesheet" type="text/css">
        </head>
        <body>
        <div class="wrapper">
          <header>
            <h1 id="logo-chase-luke-a">chase.luke.a</h1>
            <h2 id="logo-software-dev">&lt% Software Developer /%&gt</h2>
            <h2 id="logo-mobile-dev">&lt!-- Mobile Developer --&gt</h2>
          </header>
    }
  end

end
