class PrqlQuery < Formula
  desc "Query and transform data with PRQL"
  homepage "https://github.com/prql/prql-query"
  url "https://github.com/prql/prql-query/archive/refs/tags/v0.0.15.tar.gz"
  sha256 "11374d83a0b03e69dad1ed7de7535ab3d6ff20fa5a6452b426c7ad8698d5186d"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"pq", "-h"
  end
end
