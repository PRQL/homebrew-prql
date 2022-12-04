class PrqlCompiler < Formula
  desc "PRQL is a modern language for transforming data — a simpler and more powerful SQL"
  homepage "https://prql-lang.org"
  url "https://github.com/prql/prql/archive/refs/tags/0.3.1.tar.gz"
  sha256 "c086c47dd501806727b0d1c741e2d6d747c8e4f00c0a55647f381c8225259740"
  version "0.3.1"
  license "Apache-2.0"
  
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "prql-compiler"
    bin.install "target/release/prql-compiler"
  end

  test do
   
  end
end
