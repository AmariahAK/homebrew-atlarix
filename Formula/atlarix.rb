# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.11.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.11.1/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "da4edc8d9f2959c1a958d882dff4634d353afd726cdde25ac8740266fdb0e890"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.11.1/atlarix-cli-darwin-x64.tar.gz"
      sha256 "61e89a2c452e79b7ea5d14ff8d4e485d471a1c43e419670e4fc01f304f9ae94d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.11.1/atlarix-cli-linux-arm64.tar.gz"
      sha256 "2e5814c28a80149d7aa09d8121427f9a544e01b8d72aac1ec121cca7911fd815"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.11.1/atlarix-cli-linux-x64.tar.gz"
      sha256 "68347912d50a81ca39898197857edfa71550a44eb6ba6ab2a9fd9a6a139c7407"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
