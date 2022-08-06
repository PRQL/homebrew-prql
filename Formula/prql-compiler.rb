class PrqlCompiler < Formula
  desc "PRQL is a modern language for transforming data — a simpler and more powerful SQL"
  homepage "https://prql-lang.org"
  url "https://github.com/prql/prql/archive/refs/tags/0.2.6.tar.gz"
  sha256 "4079d5f505250e6fe071215499b21e8ac7ecea23b55a16a4054bc5bf5707faf6"
  version "0.2.6"
  license "Apache-2.0"
  
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "prql-compiler"
    bin.install "target/release/prql-compiler"
  end

  test do
   
  end
end
