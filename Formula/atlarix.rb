# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.19.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.19.5/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "7a9fa9a448b614e80d707d576da32a0c1fb6c6b8e61aaa0e4f60c1c9df0a1eb8"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.19.5/atlarix-cli-darwin-x64.tar.gz"
      sha256 "9579ac5169f041f9ff033b3026586e45ce23ac76a628c4a0f0950e023b65b981"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.19.5/atlarix-cli-linux-arm64.tar.gz"
      sha256 "13fe38fc520ff38c6985f4f7f815361be6de18dd44b475a4e79baed0b91be98f"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.19.5/atlarix-cli-linux-x64.tar.gz"
      sha256 "78c31e810ea8fe7b97f6b94e203b8e1eb7b6a04f1cc835edc96c34b1e4fea6ce"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
