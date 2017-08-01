require "language/haskell"

class MostUsed < Formula
  include Language::Haskell::Cabal

  desc "Find your most-used commands"
  homepage "https://github.com/gabebw/most-used"
  url "https://github.com/gabebw/most-used/archive/v0.0.5.tar.gz"
  sha256 "5507534c7eb1c0f558ae845887218d02ccc9e683b3f73398c3f9521f983ce677"
  version "0.0.5"
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
