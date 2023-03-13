class Prqlc < Formula
  desc "PRQL is a modern language for transforming data: a simpler and more powerful SQL"
  homepage "https://prql-lang.org"
  url "https://github.com/PRQL/prql/archive/refs/tags/0.6.1.tar.gz"
  sha256 "84bb9349129ed14b7ab17361faac3535be5f21b46c9757c1fed96a0e1023dd65"
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
