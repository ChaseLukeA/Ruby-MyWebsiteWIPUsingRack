class Footer

  def initialize(app)
    @app = app
  end

  def call(env)
    # let the app do its thing
    status, headers, response = @app.call(env)

    # add to the body
    response_body = response.join("\n")
    response_body << %Q{
        </body>
        <footer>
          Generated #{Time.now}
        </footer>
      </html>
    }

    # We changed content length, so we must change the header.
    headers["Content-length"] = response_body.length.to_s

    # put the request back the way it needs to be
    [status, headers, [response_body] ]
  end

end
