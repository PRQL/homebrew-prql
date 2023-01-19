class PrqlQuery < Formula
  desc "Query and transform data with PRQL"
  homepage "https://github.com/prql/prql-query"
  url "https://github.com/prql/prql-query/archive/refs/tags/v0.0.14.tar.gz"
  sha256 "4b1ab070dacd25da3361edeb2a0728c4bedec0e9620105580072520eeb2ea5cd"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"pq", "-h"
  end
end
