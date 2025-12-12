class Prqlc < Formula
  desc "PRQL is a modern language for transforming data: a simpler and more powerful SQL"
  homepage "https://prql-lang.org"
  url "https://github.com/PRQL/prql/archive/refs/tags/0.13.8.tar.gz"
  sha256 "68fb0ee26239de7b63da3af60a63f01dee290b433e52a2805d28735700ad6b3d"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "prql-compiler/prqlc")
  end

  test do
    system bin/"prqlc", "--help"
    (testpath/"test.prql").write("from artists")
    # TODO: can we test the beginning of the output (even just `SELECT`)
    system bin/"prqlc", "compile", testpath/"test.prql"
  end
end
