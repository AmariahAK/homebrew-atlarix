# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.6.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.6.0/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "a5e7578ca34130b9636cf6d99e83d94173b06eab7a21cdb3c4d2142e21323598"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.6.0/atlarix-cli-darwin-x64.tar.gz"
      sha256 "4ec340ecd51eded8f7b3cd0f75894298c006c08145cce5db9732e208c08baa03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.6.0/atlarix-cli-linux-arm64.tar.gz"
      sha256 "d10e18bf45c7c280a6f3e5307ea268d922c89726dcbec208573b3db6a17e4c4f"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.6.0/atlarix-cli-linux-x64.tar.gz"
      sha256 "c32cb757205aa61573d2ba3f8ec50ee2d81f5733a27dba7b71a820a22a523968"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
