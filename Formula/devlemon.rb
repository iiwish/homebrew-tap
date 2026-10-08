class Devlemon < Formula
  desc "The intelligent, context-aware disk cleanup tool built for developers and the AI era"
  homepage "https://github.com/iiwish/devlemon"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-darwin-arm64.tar.gz"
      sha256 "1f144be703abe652146bd6b5185d69ec2a60b50cf6657ebea50d9cf280f83b3d"
    else
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-darwin-amd64.tar.gz"
      sha256 "ffad6fcd44438432923d2d741edbc5b83c2b31f9b00a0c75dce751a51ab3200d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-linux-arm64.tar.gz"
      sha256 "eb9b2f428d0e73b84c17ebd97c338efcef14d1adecba6cce9c0a330208802c65"
    else
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-linux-amd64.tar.gz"
      sha256 "6ed47f9a192c19407e5e95de006cb3acfe246b82a622948049f69b35d02fbba9"
    end
  end

  def install
    bin.install "devlemon"
    bin.install_symlink "devlemon" => "dl"
  end

  test do
    system "#{bin}/devlemon", "version"
  end
end
