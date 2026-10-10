# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.4.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.4.2/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "828a7cb604055bf98743c5685f6fc4da3dc2a07acbb729e5053c85e0e415f24c"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.4.2/atlarix-cli-darwin-x64.tar.gz"
      sha256 "cf3c1fb34eea9db42296973d50a224d49f8a31b1bda8747c68c3aff043a97d06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.4.2/atlarix-cli-linux-arm64.tar.gz"
      sha256 "288ca51bd7693196c6d641a824251b4b22204fefd91222e1bc4783fd702139f8"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.4.2/atlarix-cli-linux-x64.tar.gz"
      sha256 "08d889c810ea4f1a5bb905de3a9770889fefb0f77315d39bf12ff05456b93581"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
