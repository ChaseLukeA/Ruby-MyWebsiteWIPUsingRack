# Nav takes in an array of hashes;
# each hash contains "url" and "name" keys

class Nav

  def initialize(links)
    @links = links
  end

  def to_s
    content = %Q{    <nav>
            <ul>}
    @links.each do |link|
      content << %Q{
                <li><a href="#{link[:url]}">#{link[:name]}</a></li>}
    end
    content << %Q{
            </ul>
          </nav>
    }
  end
end
