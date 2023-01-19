class PrqlQuery < Formula
  desc "Query and transform data with PRQL"
  homepage "https://github.com/prql/prql-query"
  url "https://github.com/prql/prql-query/archive/refs/tags/v0.0.14.tar.gz"
  sha256 "4b1ab070dacd25da3361edeb2a0728c4bedec0e9620105580072520eeb2ea5cd"
  version "v0.0.14"
  license "Apache-2.0"
  
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "pq"
    bin.install "target/release/pq"
  end

  test do
   
  end
end
