class Prqlc < Formula
  desc "PRQL is a modern language for transforming data: a simpler and more powerful SQL"
  homepage "https://prql-lang.org"
  url "https://github.com/PRQL/prql/archive/refs/tags/0.12.2.tar.gz"
  sha256 "455779a7b4c6fee3be6521b24236ffe6aa667986482ff6bb00732797d8dd0bd5"
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
