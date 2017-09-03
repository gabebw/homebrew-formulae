require "language/haskell"

class MostUsed < Formula
  include Language::Haskell::Cabal

  desc "Find your most-used commands"
  homepage "https://github.com/gabebw/most-used"
  url "https://github.com/gabebw/most-used/archive/v0.0.6.1.tar.gz"
  sha256 "95c9a61c9be6e093c1d5b0ab433a3f54de96179b347fe0b7745fc45839e6009a"
  version "0.0.6.1"
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
