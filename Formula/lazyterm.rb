class Lazyterm < Formula
  desc "Keyboard-driven SSH and project workspace"
  homepage "https://github.com/humbertyu/lazyterm"
  version "0.9.0-beta.1"
  license "MIT"

  url "https://github.com/humbertyu/lazyterm/releases/download/v0.9.0-beta.1/lazyterm-v0.9.0-beta.1-universal-apple-darwin.tar.gz"
  sha256 "5fc28dbd574de99d101aa98708e79b6be3c646af524646765e6a5dbd9cb32685"

  depends_on :macos
  on_macos do
    depends_on macos: :sequoia
  end

  def install
    bin.install "lazyterm"
    doc.install "docs/INSTALL.md", "docs/SECURITY-REVIEW.md", "build-info.json"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyterm --version")
    assert_match "Architecture:", shell_output("#{bin}/lazyterm --diagnostics")
  end
end
