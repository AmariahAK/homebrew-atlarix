# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.19.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.19.3/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "718a32d035aa4baec0215a9ca40c490dbcfecff2cc0a77ea0f5c0effd69fda43"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.19.3/atlarix-cli-darwin-x64.tar.gz"
      sha256 "696cda87616be17a8465f5625a3a50db3a497322eb58e4b583bba6c8382eb5f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.19.3/atlarix-cli-linux-arm64.tar.gz"
      sha256 "e8a7e8573fcb32229275617995ace789b5d49581f4602fd5fd019688c4b8178b"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.19.3/atlarix-cli-linux-x64.tar.gz"
      sha256 "bd2144bdf1b1b04fae00416246fb351cce061d45b30b15f85849b6db9ce719af"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
