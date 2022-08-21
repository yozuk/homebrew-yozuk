class Zuk < Formula
  desc "Chatbot for programmers"
  homepage "https://yozuk.com/"
  license "MIT"
  url "https://github.com/yozuk/yozuk/archive/refs/tags/v0.22.8.tar.gz"
  sha256 "088cf48befdceff376864690e6eecdc62af8f5b2432ce3451463f887cb09f6b1"

  depends_on "cmake" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path=zuk", "--root=#{prefix}"
  end

  test do
    assert_match '{"version": "0.22.8"}', shell_output("#{bin}/zuk version info")
  end
end
