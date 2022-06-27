class PrqlCompiler < Formula
  desc "PRQL is a modern language for transforming data — a simpler and more powerful SQL"
  homepage "https://prql.github.io/prql-website/"
  url "testing param for the release"
  sha256 "testing param for the release"
  version "testing param for the release"
  license "Apache-2.0"
  
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "prql-compiler"
    bin.install "target/release/prql-compiler"
  end

  test do
   
  end
end
