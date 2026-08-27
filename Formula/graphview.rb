class Graphview < Formula
  desc "Web-based Neo4j graph viewer with WebGL rendering and level-of-detail"
  homepage "https://github.com/pmuston/homebrew-graphview"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.2.0/graphview-v0.2.0-darwin-arm64.tar.gz"
      sha256 "46dcf095e7ee196868eaaef60347caaee7681b016ee85ce512ba0a9ec7dbeda0"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.2.0/graphview-v0.2.0-darwin-amd64.tar.gz"
      sha256 "37207913dcd2046585cb2637288084f2556408c3fbd61c7a8733a0d7dd805377"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.2.0/graphview-v0.2.0-linux-arm64.tar.gz"
      sha256 "d60fd5a7129017faedcc6e6fa5773686aab262062abddfcea2eaa3e9c52adf3b"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.2.0/graphview-v0.2.0-linux-amd64.tar.gz"
      sha256 "860b590736bcf76a09e6e99e2afa56f67acdf4fe5812789517251b70f9cb3016"
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
