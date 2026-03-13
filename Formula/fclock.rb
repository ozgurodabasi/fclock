class Fclock < Formula
  desc "Full-screen terminal clock and countdown timer with Matrix rain"
  homepage "https://github.com/ozgurodabasi/homebrew-fclock"
  url "https://github.com/ozgurodabasi/homebrew-fclock/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "97bb0f7b22e508af97c9b28f0abdc4c53f83e835b24e7588dc38ef8ef6cf22df"
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
