class Huspenders < Formula
  desc "Create a Cabal-based project with sane defaults"
  homepage "https://github.com/gabebw/huspenders"
  url "https://github.com/gabebw/huspenders/archive/v0.0.1.tar.gz"
  sha256 "e80cc48606853a324d8fc86387c69a2819c51dfe8620b05901046e4e8bc490ef"

  def install
    bin.install "huspenders"
  end

  test do
    system "huspenders", "new-project"
  end
end
