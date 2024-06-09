class Prqlc < Formula
  desc "PRQL is a modern language for transforming data: a simpler and more powerful SQL"
  homepage "https://prql-lang.org"
  url "https://github.com/PRQL/prql/archive/refs/tags/0.12.1.tar.gz"
  sha256 "a7890e453db17d7a028cc48dcce5378d7e86a5c3645bfe7e00d70d944ba5af71"
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
