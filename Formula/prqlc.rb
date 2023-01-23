class PrqlCompiler < Formula
  desc "PRQL is a modern language for transforming data: a simpler and more powerful SQL"
  homepage "https://prql-lang.org"
  url "https://github.com/PRQL/prql/archive/refs/tags/0.4.1.tar.gz"
  sha256 "b60df362a0b823600ccc614c335f4a8876a577a7ceeb6d162f16540fd9340f73"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "prqlc/prqlc")
  end

  test do
    system bin/"prqlc", "-h"
  end
end
