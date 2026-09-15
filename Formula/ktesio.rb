class Ktesio < Formula
  desc "Run AI agents like services: supervise their lifecycle, meter real token usage, and enforce dollar budgets."
  homepage "https://github.com/Ktesio/ktesio"
  version "0.7.0"
  # Ktesio Noncommercial-Attribution License 1.0.0 — source-available; commercial use requires the author's written approval.
  license :any

  on_macos do
    on_arm do
      url "https://github.com/Ktesio/ktesio/releases/download/v0.7.0/ktesio-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "5396006913f9a497761db8864e02e080c4ec5e491a46d89148261d4710309b52"
    end

    on_intel do
      url "https://github.com/Ktesio/ktesio/releases/download/v0.7.0/ktesio-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "435d920a53ef6a033d0ce44f18094c8179938b01fa0f6520f9334a8d837b493f"
    end
  end

  on_linux do
    url "https://github.com/Ktesio/ktesio/releases/download/v0.7.0/ktesio-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "24c060917b0294915f599e1f410ef6961bdf2c7f88a3e5d31eaabbccd517a849"
  end

  def install
    bin.install "kt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kt --version")
  end
end
