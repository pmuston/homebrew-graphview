class Graphview < Formula
  desc "Web-based Neo4j graph viewer with WebGL rendering and level-of-detail"
  homepage "https://github.com/pmuston/homebrew-graphview"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.1.2/graphview-v0.1.2-darwin-arm64.tar.gz"
      sha256 "69750c2131bda8db0e75e9231032d918c1c27e50c55f940d1a2abff2dd363179"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.1.2/graphview-v0.1.2-darwin-amd64.tar.gz"
      sha256 "f2b5dab6496222b1eaac8ccc7359b4b6e61a5705f9e979bfb6ef1de948f9a2fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.1.2/graphview-v0.1.2-linux-arm64.tar.gz"
      sha256 "ffffe2f4b87253b4db67bdc275ecb8f101dbd3eed6df1c2827494db35ff7dcf5"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.1.2/graphview-v0.1.2-linux-amd64.tar.gz"
      sha256 "28986610103e6cdae0dd23c542409efda764bd99f90608223eea22aa729e2a30"
    end
  end

  def install
    bin.install "graphview"
    man1.install "graphview.1"
  end

  test do
    assert_match "graphview v", shell_output("#{bin}/graphview version")
  end
end
