class Candle < Formula
  version "0.4.0"
  desc "Shine a little light on your HTML using the command line"
  homepage "https://github.com/gabebw/candle"

  url "https://github.com/gabebw/candle/releases/download/v#{version}/candle-#{version}.tar.gz"
  sha256 "8c21f517b78ca8516c0dff6f55baf1f6377c1ec72a4511b7fa3a377deb2d3336"

  def install
    bin.install "candle"
  end
end
