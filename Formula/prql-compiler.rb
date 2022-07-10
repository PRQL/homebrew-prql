class PrqlCompiler < Formula
  desc "PRQL is a modern language for transforming data — a simpler and more powerful SQL"
  homepage "https://prql.github.io/prql-website/"
  url "https://github.com/prql/prql/archive/refs/tags/0.2.2.tar.gz"
  sha256 "c23d30611b4851f8d62297eca8e3851b16772548dfde00ca2df23e17e8264cd0"
  version "0.2.2"
  license "Apache-2.0"
  
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "prql-compiler"
    bin.install "target/release/prql-compiler"
  end

  test do
   
  end
end
