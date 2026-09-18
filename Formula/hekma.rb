class Hekma < Formula
  desc "Run AI agents like services: supervise their lifecycle, meter real token usage, and enforce dollar budgets."
  homepage "https://github.com/Ktesio/ktesio"
  version "0.8.0"
  # Hekma ships the Ktesio Noncommercial-Attribution License 1.0.0 — source-available; commercial use requires the author's written approval.
  license :any

  on_macos do
    on_arm do
      url "https://github.com/Ktesio/ktesio/releases/download/v0.8.0/hekma-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "26f98c5eaebda5e8caead24094015afc4ef0b1e0c7f0b6b57c2381063edc4369"
    end

    on_intel do
      url "https://github.com/Ktesio/ktesio/releases/download/v0.8.0/hekma-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "277e365dd86e520cc5aff7c441fb92da0e1ab1389f19c5080bdf1a39d2f953f8"
    end
  end

  on_linux do
    url "https://github.com/Ktesio/ktesio/releases/download/v0.8.0/hekma-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "df0895349b08e4f994106dad13d41efcc30e8af9d519a309b8b6cc76aa2b049a"
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
