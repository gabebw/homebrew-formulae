require "language/haskell"

class MostUsed < Formula
  include Language::Haskell::Cabal

  desc "Find your most-used commands"
  homepage "https://github.com/gabebw/most-used"
  url "https://github.com/gabebw/most-used/archive/v0.0.6.tar.gz"
  sha256 "f649dcfb5f93198b61836a60805b3b58f5dffe2974fe032b1ecfb0c7b6d51cfe"
  version "0.0.6"
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
