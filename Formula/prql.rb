class Prql < Formula
  desc "PRQL is a modern language for transforming data — a simpler and more powerful SQL"
  homepage "https://prql.github.io/prql-website/"
  url "https://github.com/prql/prql/archive/refs/tags/0.1.30.tar.gz"
  sha256 "ab4a4d1f3082d874d510d4ded9e2665dd6530fa8c209aa6231fbd713ae1cc8be"
  version "0.1.30"
  license "Apache-2.0"
  
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "prql"
    bin.install "target/release/prql"
  end

  test do
   
  end
end
