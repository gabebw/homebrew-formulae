require "language/haskell"

class MostUsed < Formula
  include Language::Haskell::Cabal

  desc "Find your most-used commands"
  homepage "https://github.com/gabebw/most-used"
  url "https://github.com/gabebw/most-used/archive/v0.0.3.tar.gz"
  sha256 "c7b536afc4fdaef77c86e17df2e62c085c1c0f4f81b7b69353667f32f5ee48d7"
  version "0.0.3"

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
