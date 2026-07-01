class Ktesio < Formula
  desc "Agentic skills package manager"
  homepage "https://github.com/iMagdy/ktesio"
  version "0.5.0"
  license "PolyForm-Noncommercial-1.0.0"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/iMagdy/ktesio/releases/download/v0.5.0/ktesio-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "8a8a2cd14dc0a72d33091482c5e4cf791359a656c98762b3f4f800dafec2ee9f"
    end

    on_intel do
      url "https://github.com/iMagdy/ktesio/releases/download/v0.5.0/ktesio-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "497da6ec59dd2a72b2f291f47a20fb88c397f5eb9032a9ec2c22b57316654fcd"
    end
  end

  on_linux do
    url "https://github.com/iMagdy/ktesio/releases/download/v0.5.0/ktesio-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5ecbedb16da988db4e342a31a183cc003e11a9985bcdd9b4e10499e4910d0172"
  end

  def install
    bin.install "kt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kt --version")
  end
end
