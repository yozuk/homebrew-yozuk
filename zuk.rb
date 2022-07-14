class Zuk < Formula
  desc "Chatbot for programmers"
  homepage "https://yozuk.com/"
  license "MIT"
  url "https://github.com/yozuk/yozuk/archive/refs/tags/v0.20.1.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  depends_on "cmake" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path=zuk", "--root=#{prefix}"
  end

  test do
    assert_match '{"version": "0.20.1"}', shell_output("#{bin}/zuk version info")
  end
end
