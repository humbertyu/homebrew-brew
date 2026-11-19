class Lazyterm < Formula
  desc "Keyboard-driven SSH and project workspace"
  homepage "https://github.com/humbertyu/lazyterm"
  version "0.9.0-beta.3"
  license "MIT"

  url "https://github.com/humbertyu/lazyterm/releases/download/v0.9.0-beta.3/lazyterm-v0.9.0-beta.3-universal-apple-darwin.tar.gz"
  sha256 "9cbf88e8c49c10c0949b46d780c2261a44c9799786508017782ced7bb1855790"

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
