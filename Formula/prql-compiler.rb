class PrqlCompiler < Formula
  desc "PRQL is a modern language for transforming data — a simpler and more powerful SQL"
  homepage "https://prql.github.io/prql-website/"
  url "https://github.com/prql/prql/archive/refs/tags/0.1.2.tar.gz"
  sha256 "4abdee53e3f938ebc1c27be08e3de747738606c4aeaef5771d562d903930617c"
  version "0.1.2"
  license "Apache-2.0"
  
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "prql-compiler"
    bin.install "target/release/prql-compiler"
  end

  test do
   
  end
end
