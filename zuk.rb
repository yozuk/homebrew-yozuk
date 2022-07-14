class Zuk < Formula
  desc "Chatbot for programmers"
  homepage "https://yozuk.com/"
  license "MIT"
  url "https://github.com/yozuk/yozuk/archive/refs/tags/v0.20.1.tar.gz"
  sha256 "01eaf768afa0c23670c6e2716e7025e942c7050830264c7c6da6b29be4408fd4"

  depends_on "cmake" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path=zuk", "--root=#{prefix}"
  end

  test do
    assert_match '{"version": "0.20.1"}', shell_output("#{bin}/zuk version info")
  end
end
