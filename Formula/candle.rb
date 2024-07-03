class Candle < Formula
  version "0.9.0"
  desc "Shine a little light on your HTML using the command line"
  homepage "https://github.com/gabebw/candle"

  on_macos do
    on_intel do
      url "https://github.com/gabebw/candle/releases/download/v#{version}/candle-#{version}-x86_64.tar.gz"
      sha256 "a2716b2ea9ea31c4b267d08f90ff62386a0baf1593897ae7ea28f64ccd3f4db1"
    end

    on_arm do
      url "https://github.com/gabebw/candle/releases/download/v#{version}/candle-#{version}-aarch64.tar.gz"
      sha256 "624a49e5598d65857afc37110670a3b1ae37c79a1579bcd1a316faffdf7c1383"
    end
  end

  def install
    bin.install "candle"
  end
end
