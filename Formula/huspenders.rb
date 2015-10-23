class Huspenders < Formula
  desc "Create a Cabal-based project with sane defaults"
  homepage "https://github.com/gabebw/huspenders"
  url "https://github.com/gabebw/huspenders/archive/v0.0.2.tar.gz"
  head "https://github.com/gabebw/huspenders.git"
  sha256 "c6cbe4f0132966440db17116e7a74fde09e862c88796b0a79a2af003c7186240"

  def install
    bin.install "huspenders"
  end

  test do
    system "huspenders", "new-project"
  end
end
