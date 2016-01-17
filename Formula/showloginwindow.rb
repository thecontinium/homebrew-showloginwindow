class Showloginwindow< Formula
  homepage 'https://github.com/thecontinium/homebrew-showloginwindow/'
  url 'https://github.com/thecontinium/homebrew-showloginwindow.git'
  version '0.4.0'

  skip_clean 'bin'

  def install
    ohai "No executables will be installed"
    #bin.install 'donothing'
  end

  #plist_options :startup => true

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
	    <key>AbandonProcessGroup</key>
	    <true/>
      <key>Disabled</key>
      <false/>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
		    <string>/System/Library/CoreServices/Menu Extras/User.menu/Contents/Resources/CGSession</string>
		    <string>-suspend</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
      <key>StandardErrorPath</key>
      <string>/tmp/#{plist_name}.err</string>
      <key>StandardOutPath</key>
      <string>/tmp/#{plist_name}.out</string>
    </dict>
    </plist>
    EOS
  end
end
