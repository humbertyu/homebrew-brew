class Lazyterm < Formula
  desc "Keyboard-driven SSH and project workspace"
  homepage "https://github.com/humbertyu/lazyterm"
  version "0.9.0-beta.2"
  license "MIT"

  url "https://github.com/humbertyu/lazyterm/releases/download/v0.9.0-beta.2/lazyterm-v0.9.0-beta.2-universal-apple-darwin.tar.gz"
  sha256 "7668fa736171ee3cd0a922e2b9951f8c8f69c358447221546a2373adcc459f0b"

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
