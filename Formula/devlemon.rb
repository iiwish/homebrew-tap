class Devlemon < Formula
  desc "The intelligent, context-aware disk cleanup tool built for developers and the AI era"
  homepage "https://github.com/iiwish/devlemon"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-darwin-arm64.tar.gz"
      sha256 "9656668290726a7cec5a817fe7959faaaafa9a4ebb2ff6c8a29669f4fe000b74"
    else
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-darwin-amd64.tar.gz"
      sha256 "d1b01a5c53e544f0b4febfa9d34d16eb9daf8412c7f9892fdd35083457f39def"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-linux-arm64.tar.gz"
      sha256 "011d24b2a44ac59bf4137517951f61f5d701ef50f4d1f4780b475fcd832fd42e"
    else
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-linux-amd64.tar.gz"
      sha256 "ab4c5827c254208f1675ff943990d7053e7b3c538f20952969ed222bd03f5a08"
    end
  end

  def install
    bin.install "devlemon"
  end

  test do
    system "#{bin}/devlemon", "version"
  end
end
