require "language/haskell"

class MostUsed < Formula
  include Language::Haskell::Cabal

  desc "Find your most-used commands"
  homepage "https://github.com/gabebw/most-used"
  url "https://github.com/gabebw/most-used/archive/v0.0.4.tar.gz"
  sha256 "85852fe507781251d00fb52fb73094661122d0c43f37270f165cfb4a1a4597d7"
  version "0.0.4"
  head "https://github.com/gabebw/most-used"

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
    bin.install "bin/most-used"
    if File.basename(ENV["SHELL"]) != "zsh"
      opoo "most-used only looks at your Zsh history, not your Bash history"
    end
  end

  test do
  end
end
