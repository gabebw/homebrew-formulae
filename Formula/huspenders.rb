class Huspenders < Formula
  desc "Create a Cabal-based project with sane defaults"
  homepage "https://github.com/gabebw/huspenders"
  url "https://github.com/gabebw/huspenders/archive/v0.0.3.tar.gz"
  head "https://github.com/gabebw/huspenders.git"
  sha256 "1e19115c94426e40d4e5eb1bfb09e57a98d023465846141393dd71579f0546cb"

  def install
    bin.install "huspenders"
    bin.install "templates"
  end

  test do
    system "huspenders", "--hspec", "NewProject"
  end
end
