# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.7.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.7.1/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "1ce5ba36ea7fea6ac94b62667e47ca30884efc5008f477b0a62b29e319e87580"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.7.1/atlarix-cli-darwin-x64.tar.gz"
      sha256 "56cd176eb319e19fcb1c622b70b03226ede8184f174853ccf9d8c6ca2589a16c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.7.1/atlarix-cli-linux-arm64.tar.gz"
      sha256 "fe06909b4b7b8eb1757ff973ed4d6266d828f9595b78a8cc06bf3a908624dade"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.7.1/atlarix-cli-linux-x64.tar.gz"
      sha256 "ac99e78c1859706db81cd36d62dd32dab42b09d57c82cd14dbc6d0350fd96c0d"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
