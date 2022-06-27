class PrqlCompiler < Formula
  desc "PRQL is a modern language for transforming data — a simpler and more powerful SQL"
  homepage "https://prql.github.io/prql-website/"
  url "https://github.com/prql/prql/archive/refs/tags/0.2.0.tar.gz"
  sha256 "5d97246c03519f251eb93c5fa29fffac55e5aeff4392c177552782da6b14244f"
  version "0.2.0"
  license "Apache-2.0"
  
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "prql-compiler"
    bin.install "target/release/prql-compiler"
  end

  test do
   
  end
end
