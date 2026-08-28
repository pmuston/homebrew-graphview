class Graphview < Formula
  desc "Web-based Neo4j graph viewer with WebGL rendering and level-of-detail"
  homepage "https://github.com/pmuston/homebrew-graphview"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.2.2/graphview-v0.2.2-darwin-arm64.tar.gz"
      sha256 "09fd370c90ff3232490e2ef3230e5315b80906cda4120815809b95ca70ea97a8"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.2.2/graphview-v0.2.2-darwin-amd64.tar.gz"
      sha256 "13afebe04e6f6af9278e5fd51731bd1ab0173a37a908c54fa82ed0484e40ab79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.2.2/graphview-v0.2.2-linux-arm64.tar.gz"
      sha256 "829881043cbb884573cb4b152b223320ce906b08dca3ce4a77de697e0479041a"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.2.2/graphview-v0.2.2-linux-amd64.tar.gz"
      sha256 "688aa1c64394e3a2030f87ba0727924c3c4d18c613680c814228d5667724bd8c"
    end
  end

  def install
    bin.install "graphview"
    man1.install "graphview.1"
    pkgshare.install "graphview.example.yaml", "deploy"
    doc.install "THIRD-PARTY-NOTICES.md"
  end

  def caveats
    <<~EOS
      Configuration template and deployment samples:
        #{opt_pkgshare}
    EOS
  end

  test do
    assert_match "graphview v", shell_output("#{bin}/graphview version")
  end
end
