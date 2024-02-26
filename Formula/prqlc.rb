class Prqlc < Formula
  desc "PRQL is a modern language for transforming data: a simpler and more powerful SQL"
  homepage "https://prql-lang.org"
  url "https://github.com/PRQL/prql/archive/refs/tags/0.11.4.tar.gz"
  sha256 "7fc019251e7e465c963f3d036a5fa2f1494b386b8502f777cd002f7fed5fbab6"
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
