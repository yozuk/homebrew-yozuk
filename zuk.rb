class Zuk < Formula
  desc "Chatbot for programmers"
  homepage "https://yozuk.com/"
  license "MIT"
  url "https://github.com/yozuk/yozuk/archive/refs/tags/v0.18.3.tar.gz"
  sha256 "e02544cfb9cb9dd7185c5f026690ecd390baa7e5b110c3a0f8283a3e41ca42a3"

  depends_on "cmake" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path=zuk", "--root=#{prefix}"
  end

  test do
    assert_match '{"version": "0.18.3"}', shell_output("#{bin}/zuk version info")
  end
end
