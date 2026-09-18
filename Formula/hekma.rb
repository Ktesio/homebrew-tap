class Hekma < Formula
  desc "Run AI agents like services: supervise their lifecycle, meter real token usage, and enforce dollar budgets."
  homepage "https://github.com/Ktesio/hekma"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Ktesio/hekma/releases/download/v0.9.0/hekma-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "cec0c73d718cadd989a4f4f79d1e73f0d9f3e51f709b0bb843f8af2df5e17c1b"
    end

    on_intel do
      url "https://github.com/Ktesio/hekma/releases/download/v0.9.0/hekma-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "33eb894eac0320a7e08e83c3bc278e295cfb211b5099c58902babd7addd72ba3"
    end
  end

  on_linux do
    url "https://github.com/Ktesio/hekma/releases/download/v0.9.0/hekma-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8dccf8dd44f652d06d36e042c5492ba53e6d3be5732b9409cce5e22a73179140"
  end

  def install
    bin.install "hekma"
    bin.install "hkm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hekma --version")
    assert_match version.to_s, shell_output("#{bin}/hkm --version")
  end
end
