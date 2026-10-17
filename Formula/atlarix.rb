# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.9.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.9.0/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "1e6db5f75e1daaf0541076f7915e94db71c32cb0739c283007586b21b4b99fc3"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.9.0/atlarix-cli-darwin-x64.tar.gz"
      sha256 "317d442e92d838469be9e356ae715776151fb3bf316f81ff3d4cb26d967d39d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.9.0/atlarix-cli-linux-arm64.tar.gz"
      sha256 "88622e96ae9af93789b70430736ef95ccd0c92639514593caee1b6024f1f898d"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.9.0/atlarix-cli-linux-x64.tar.gz"
      sha256 "4944fd2b75329ca124c6a1f88e0d893559b2cc94cd8ec08c2af053e1fab187ec"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
