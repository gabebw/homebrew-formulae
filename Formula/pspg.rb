class Pspg < Formula
  desc "Postgres Pager"
  homepage "https://github.com/okbob/pspg"
  url "https://github.com/okbob/pspg/archive/0.5.tar.gz"
  sha256 "754d1e380d072517e9bc2c3c38785e2f19a9f927f061de9a646fd1094baa204e"

  def install
    system "./configure", "--disable-debug", "--prefix=#{prefix}"
    system "make", "install"
  end
end
