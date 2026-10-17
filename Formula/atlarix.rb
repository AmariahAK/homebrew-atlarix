# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.8.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.8.1/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "88768b5b23633e2643f89ce8a6ccc01c110c8aa0481fa8d62f267187dcf47d33"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.8.1/atlarix-cli-darwin-x64.tar.gz"
      sha256 "fdaa17115c1e91a99b697d8d8605a4085edb093aa965cc2f5e26ea04d11cb16a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.8.1/atlarix-cli-linux-arm64.tar.gz"
      sha256 "d8269b3c0c6cadf344f549750807471cd2449d8d7e233152de7a077d79b097d0"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.8.1/atlarix-cli-linux-x64.tar.gz"
      sha256 "f2242e1638a28aacd7e1de9afe5571cc381377542295712acc78341af40a0001"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
