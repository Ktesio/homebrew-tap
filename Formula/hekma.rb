class Hekma < Formula
  desc "Run AI agents like services: supervise their lifecycle, meter real token usage, and enforce dollar budgets."
  homepage "https://github.com/Ktesio/hekma"
  version "0.8.1"
  # Hekma ships the Ktesio Noncommercial-Attribution License 1.0.0 — source-available; commercial use requires the author's written approval.
  license :any

  on_macos do
    on_arm do
      url "https://github.com/Ktesio/hekma/releases/download/v0.8.1/hekma-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "23fbf567fc27f9e42be72734c6d59af5f2b6d7ba29dd2ddb1f13ee88b48b6921"
    end

    on_intel do
      url "https://github.com/Ktesio/hekma/releases/download/v0.8.1/hekma-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "e750f88225d0ba463b5ac6cd3dfffbef6820d2ff0630a54957571af2047f8dcf"
    end
  end

  on_linux do
    url "https://github.com/Ktesio/hekma/releases/download/v0.8.1/hekma-v0.8.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "eefbf98b9e78e6187650fc110f5b02c7c953071dbd0c67176af08e13ae487efd"
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
