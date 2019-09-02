class Candle < Formula
  version "0.7.0"
  desc "Shine a little light on your HTML using the command line"
  homepage "https://github.com/gabebw/candle"

  url "https://github.com/gabebw/candle/releases/download/v#{version}/candle-#{version}.tar.gz"
  sha256 "84d5bc39f6a4ae21e3ce6fe51539c1583558ed598c6f14fd97225203a79cead5"

  def install
    bin.install "candle"
  end
end
