class Candle < Formula
  version "0.5.0"
  desc "Shine a little light on your HTML using the command line"
  homepage "https://github.com/gabebw/candle"

  url "https://github.com/gabebw/candle/releases/download/v#{version}/candle-#{version}.tar.gz"
  sha256 "16463c834ea31acf95132c4ca55df3ae52953aaf5ea575e9809c3cd0a7a26981"

  def install
    bin.install "candle"
  end
end
