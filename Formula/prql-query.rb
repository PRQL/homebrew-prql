class PrqlQuery < Formula
  desc "Query and transform data with PRQL"
  homepage "https://github.com/prql/prql-query"
  url "https://github.com/prql/prql-query/archive/refs/tags/v0.0.15.tar.gz"
  sha256 "8613dd980c6726abfa81adf227593ff402ec03c54b26499c64ae950b35a2b0cf"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"pq", "-h"
  end
end
