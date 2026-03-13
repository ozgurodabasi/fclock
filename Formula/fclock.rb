class Fclock < Formula
  desc "Full-screen terminal clock and countdown timer with Matrix rain"
  homepage "https://github.com/ozgurodabasi/homebrew-fclock"
  url "https://github.com/ozgurodabasi/homebrew-fclock/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "09d337bb9f37efc3c52d0c66f82d19e0d9abb00e9b76eac0b576fe7ba35ef740"
  license "MIT"
  head "https://github.com/ozgurodabasi/homebrew-fclock.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"fclock", :exist?
  end
end
