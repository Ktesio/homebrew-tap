class Hekma < Formula
  desc "Run AI agents like services: supervise their lifecycle, meter real token usage, and enforce dollar budgets."
  homepage "https://github.com/Ktesio/hekma"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Ktesio/hekma/releases/download/v0.11.0/hekma-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "3dd19774545dd08f508e870224ab3ff4758d8584564c230c2d3d476c207ebc1e"
    end

    on_intel do
      url "https://github.com/Ktesio/hekma/releases/download/v0.11.0/hekma-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "fab1ae39c4b5bb851854e1486233ff26346898ffed2cd0e06468d775cf6830d1"
    end
  end

  on_linux do
    url "https://github.com/Ktesio/hekma/releases/download/v0.11.0/hekma-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d665f1064fc23f3a609fd777a8ee805cb4eedcfdd2697904f0fc044702d3ca91"
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
