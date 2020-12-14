class MostUsed < Formula
  desc "Find your most-used commands"
  homepage "https://github.com/gabebw/most-used"
  url "https://github.com/gabebw/most-used/archive/v0.0.7.1.tar.gz"
  sha256 "9e71d7dd21f130fd15665dff5b4d4f73e92a856f4410f948213e9c4eeb0e4896"
  version "0.0.7.1"
  head "https://github.com/gabebw/most-used"

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    system "cabal", "v2-update"
    system "cabal", "v2-install", *std_cabal_v2_args
    bin.install "bin/most-used"
    bin.install "bin/most-used-bash"
    bin.install "bin/most-used-zsh"
  end

  test do
  end
end
