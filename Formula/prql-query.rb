class PrqlQuery < Formula
  desc "Query and transform data with PRQL"
  homepage "https://github.com/prql/prql-query"
  url "https://github.com/prql/prql-query/archive/refs/tags/v0.0.12.tar.gz"
  sha256 "970a441d3ed413782d4e801cf9c10d67bac7c4c826f2c0bbf925b9ee2237e216"
  version "v0.0.12"
  license "Apache-2.0"
  
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "pq"
    bin.install "target/release/pq"
  end

  test do
   
  end
end
