class Pspg < Formula
  desc "Postgres Pager"
  homepage "https://github.com/okbob/pspg"
  url "https://github.com/okbob/pspg/archive/0.6.tar.gz"
  sha256 "3b6a26ce43759eef6524230905a2b444bcbdbb133dda337d44efa05bddcce59a"

  def install
    # The `--recheck` makes it re-run forever
    inreplace "config.make.in", "./config.status --recheck", "./config.status"
    system "./configure", "--disable-debug", "--prefix=#{prefix}"
    system "make", "install"
  end
end
