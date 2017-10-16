require "language/haskell"

class MostUsed < Formula
  include Language::Haskell::Cabal

  desc "Find your most-used commands"
  homepage "https://github.com/gabebw/most-used"
  url "https://github.com/gabebw/most-used/archive/v0.0.7.tar.gz"
  sha256 "b6372f2dc04620c009cd011212b4e128737b5a0328b615dde85c3dc47b02b9b7"
  version "0.0.7"
  head "https://github.com/gabebw/most-used"

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
    bin.install "bin/most-used"
    bin.install "bin/most-used-bash"
    bin.install "bin/most-used-zsh"
  end

  test do
  end
end
