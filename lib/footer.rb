class Footer

  def initialize(copyright_holder="Me")
    @copyright_holder = copyright_holder
  end

  def to_s
    %Q{
          <footer>
            &copy; #{Time.now.year} #{@copyright_holder}
          </footer>
        </div>
        <script type="text/javascript" src="js/jquery-1.11.3.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        </body>
      </html>
    }
  end

end
