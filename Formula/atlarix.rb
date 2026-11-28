# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.21.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.21.1/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "26343eaa516c7437a52388a2a117b8e5edb76f6bd9072226ee570b389c617d2a"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.21.1/atlarix-cli-darwin-x64.tar.gz"
      sha256 "d7e3a5956267225d9c1834cbda47fde38ab21113afe8620bc2db3ede31e9a2d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.21.1/atlarix-cli-linux-arm64.tar.gz"
      sha256 "0644a1f218e34675f812f0ccd50e86470d9278b93a8b0b892a5ee75084456ebe"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.21.1/atlarix-cli-linux-x64.tar.gz"
      sha256 "d2c6d9c1da018119dfc83dc9f602c7106a1562217779ab00691e3491696e6f58"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
