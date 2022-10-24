class PrqlQuery < Formula
  desc "Query and transform data with PRQL"
  homepage "https://github.com/prql/prql-query"
  url "https://github.com/prql/prql-query/archive/refs/tags/0.0.11.tar.gz"
  sha256 "a7c97d347b799dfdc7999493c90bddcffca27251a6fcc6e036db67527fd309fd"
  version "0.0.11"
  license "Apache-2.0"
  
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "pq"
    bin.install "target/release/pq"
  end

  test do
   
  end
end
