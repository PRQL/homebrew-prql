# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Prql < Formula
  desc "PRQL is a modern language for transforming data — a simpler and more powerful SQL"
  homepage "https://github.com/prql/prql"
  url "https://github.com/prql/prql/archive/refs/tags/0.1.1.tar.gz"
  sha256 "ab4a4d1f3082d874d510d4ded9e2665dd6530fa8c209aa6231fbd713ae1cc8be"
  version "0.1.1"
  license "Apache-2.0"

  def install
    bin install "prql"
  end

  test do
   
  end
end
