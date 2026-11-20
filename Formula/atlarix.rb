# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.19.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.19.1/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "fad7429a425b73a61bf49edd3df4efe767f838c71e0690fc95e538c35029fed9"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.19.1/atlarix-cli-darwin-x64.tar.gz"
      sha256 "7a6ea486e27eef5645fb0764b047a9b6acc54634ceae1ac766fb8706c7109a7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.19.1/atlarix-cli-linux-arm64.tar.gz"
      sha256 "9e50fc6bdc2f131e1da7569abd765290674791c1232cc0382535a42604121121"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.19.1/atlarix-cli-linux-x64.tar.gz"
      sha256 "aad5fff91ee4be58ba35abbe50d50b97c3f10a96ef03dd9b3588f4bcbcf0401a"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
