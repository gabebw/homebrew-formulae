class Candle < Formula
  version "0.6.0"
  desc "Shine a little light on your HTML using the command line"
  homepage "https://github.com/gabebw/candle"

  url "https://github.com/gabebw/candle/releases/download/v#{version}/candle-#{version}.tar.gz"
  sha256 "bd21a578e8abfebffe0c003646c3cea8799c4f340447926cd0ad0ded402e782e"

  def install
    bin.install "candle"
  end
end
