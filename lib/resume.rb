class Resume

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
      #{Header.new("My Resume")}
      #{@nav}
          <section class="resume">
            <h2>Summary of Qualifications</h2>
            <ul>
              <li>Extensive background in the operation and repair of personal computers, computer peripherals and computer networks, plus a wide variety of mechanical and electronic systems and equipment. Ability to troubleshoot and repair hardware and software. Great mechanical inclination, logic and reasoning skills. Skilled in many areas of the IT / computer field.</li>
              <li>Operating system experience includes installation, configuration, troubleshooting of drivers, services and registry/system file editing with Windows 95 through Windows 10, Windows NT through Windows Server 2012, Mac OS X, Ubuntu Linux and Android 2.6 through Android 5.1. Highly proficient in Mac OS X and various Linux distributions. Very comfortable working with the terminal and is the preferred development environment.</li>
              <li>Much software experience with Adobe Photoshop and Illustrator, Microsoft Office Suite, batch files and shell scripts.</li>
              <li>Current development experience with HTML5, CSS3, JavaScript, JQuery, Java, Java Server Pages and JSP’s, Objective-C, Swift and Microsoft Visual Basic — project and code examples readily available on Github or my personal website.</li>
              <li>Hardware experience includes assembling, repairing and replacement of all types of computer components. I have soldered and replaced BIOS chips, capacitors, power jacks, USB and other motherboard ports/jacks. Networking setups include router and switch configuration, network cable building and setting up server hardware and backup devices. Very familiar with BIOS setup and functions plus some BIOS modification experience.</li>
              <li>I currently run a home server via Windows Server 2008 with Hyper-V instances of Ubuntu Server and Windows Home Server 2011 to store and serve all my files, pictures, music and videos to every computer in my house and to the web as my own private cloud.</li>
              <li>Over twenty years of computer building and repair experience. References for my hardware and software knowledge and troubleshooting skills available upon request.</li>
              <li>Works well in a team setting and very self-driven when unsupervised.</li>
              <li>Several years of phone-based customer service experience as well as face-to-face customer service experience.</li>
            </ul>
            <h2>Experience</h2>
              <h4>Munzter Creative [2011-2012]</h4>
              <p>Independent Contractor</p>
              <ul>
                <li>Provided computer hardware setup, upgrading and maintenance for five different business computers.</li>
                <li>Modified and updated databases for a large eCommerce client using Volusion.</li>
                <li>Implemented the design of a client packaging project in Adobe Photoshop and Adobe Illustrator for final submission for digital print.</li>
                <li>Regularly updated content and graphics on several client websites.</li>
              </ul>

              <h4>Stansfield Vending Inc., Eau Claire, WI [7/2008 - 7/2013]</h4>
              <p>Service Technician</p>
              <ul>
                <li>Maintained, repaired and installed digital jukeboxes, arcade/ amusement machines and vending / coffee / cappuccino machines; setup and repaired computers at our shop.</li>
                <li>Extensive experience troubleshooting and repairing electrical, computer/electronic, mechanical and refrigeration operations of many different types of machines.</li>
                <li>Experience reading schematics, technical diagrams and flow charts. Experience using digital multi-meters, soldering irons, hand tools and power tools.</li>
                <li>Set up, organized and maintained parts room and maintenance warehouse.</li>
                <li>Communicated with customers and our service department throughout the entire repair process. Kept very detailed written records of machine repairs and maintenance.</li>
              </ul>

              <h4>Menards Distribution Center, Eau Claire, WI [6/2014 - present]<br>Walmart Distribution Center, Menomonie, WI [7/2013 - 6/2014]</h4>
              <p>Maintenance Technician</p>
              <ul>
                <li>Maintained, troubleshot and repaired computer systems, forklifts, conveyor systems, HVAC, building mechanical and building electrical systems. Performed routine preventative maintenance on equipment.</li>
                <li>Experience using and setting up computerized automation systems and programmable logic controllers.</li>
                <li>Experience reading schematics, technical diagrams and flow charts. Experience using digital multi-meters, hand tools, power tools, welders, cutters, hoists and presses.</li>
                <li>Communicated with our maintenance department throughout the entire process. Kept very detailed digital records of machine repairs and maintenance.</li>
              </ul>


            <h2>Education</h2>
              <h4>Chippewa Valley Technical College, Eau Claire, WI [2014 - Present]</h4>
              <p>Information Technology Mobile Development</p>
              <p>Information Technology Software Development</p>

            <h2>Skills</h2>
              <p>Development and software experience:</p>
              <ul>
                <li>HTML5 & CSS3</li>
                <li>JavaScript & JQuery</li>
                <li>Java, Java ServerPages and JSP's</li>
                <li>Objective-C</li>
                <li>Swift</li>
                <li>Ruby & Rack</li>
                <li>Unix Bash Scripting</li>
                <li>Microsoft Visual Basic</li>
                <li>Databases and Advanced Database Design
                  <ul>
                    <li>MySQL</li>
                    <li>SQLite</li>
                    <li>Microsoft Access</li>
                  </ul>
                </li>
                <li>Statistics, Math & Logic</li>
                <li>Microsoft Office Suite</li>
              </ul>
          </section>
      #{Footer.new("Luke A Chase")}
    }
  end
end
