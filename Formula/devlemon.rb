class Devlemon < Formula
  desc "The intelligent, context-aware disk cleanup tool built for developers and the AI era"
  homepage "https://github.com/iiwish/devlemon"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-darwin-arm64.tar.gz"
      sha256 "b36dae6c6fe0b2247e594b1f5add6d8c06da6506eccf7ee8e9596bd7703a5eb5"
    else
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-darwin-amd64.tar.gz"
      sha256 "4c000e311aa3dce936c5ade18b7734bbdfa5a6912ce381dd7dfb996d554d090c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-linux-arm64.tar.gz"
      sha256 "f4b6931c0c2dd5438fb660501a1d6ee6f11f522669a9495b2a3fb9cabcb03d1d"
    else
      url "https://github.com/iiwish/devlemon/releases/download/v#{version}/devlemon-v#{version}-linux-amd64.tar.gz"
      sha256 "0aa7a6dd2538085c1480cc288dd79aa5fc6f2771f54839e6bcea3358b8602783"
    end
  end

  def install
    bin.install "devlemon"
  end

  test do
    system "#{bin}/devlemon", "version"
  end
end
