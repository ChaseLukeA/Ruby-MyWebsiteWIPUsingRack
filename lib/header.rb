class Header

  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)

    # put the HTML code on top
    #current_body = response.join("\n")
    current_body = response
    html = %Q{
      <!DOCTYPE html>
      <html lang="en-US">
        <head>
          <meta charset="utf-8">
          <title></title>
        </head>
        <body>
    }
    current_body.each do |line|
      puts line
      html << %Q{#{line}}
    end

    headers["Content-length"] = html.length.to_s

    # return code
    [status, headers, [html] ]
  end

end
