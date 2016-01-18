class Showloginwindow< Formula
  homepage 'https://github.com/thecontinium/homebrew-showloginwindow/'
  url 'https://github.com/thecontinium/homebrew-showloginwindow.git'
  version '1.0.0'

  skip_clean 'bin'

  def install
    ohai "No executables will be installed"
    prefix.install Dir["config/*.plist"]
  end

end
