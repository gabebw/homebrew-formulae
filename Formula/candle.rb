class Candle < Formula
  version "0.8.0"
  desc "Shine a little light on your HTML using the command line"
  homepage "https://github.com/gabebw/candle"

  url "https://github.com/gabebw/candle/releases/download/v#{version}/candle-#{version}.tar.gz"
  sha256 "a0f0ae2d7938fb4b3dc732ac26bc1afb27f066dd554436c5d69f8537dc018300"

  def install
    bin.install "candle"
  end
end
