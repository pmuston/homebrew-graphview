class Graphview < Formula
  desc "Web-based Neo4j graph viewer with WebGL rendering and level-of-detail"
  homepage "https://github.com/pmuston/homebrew-graphview"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.2.3/graphview-v0.2.3-darwin-arm64.tar.gz"
      sha256 "3fb58869681476bc5f2aaeb3063c6574a407de4b8cb2992422ff2f5bd113fcfc"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.2.3/graphview-v0.2.3-darwin-amd64.tar.gz"
      sha256 "e893b446122c02d063f740bc5997cd895a854b2f538dcb69467013df7d04c5e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.2.3/graphview-v0.2.3-linux-arm64.tar.gz"
      sha256 "841679f578a875f16618474ab8d4c557ae52cfbfc22045d76790e9afc6eec53b"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.2.3/graphview-v0.2.3-linux-amd64.tar.gz"
      sha256 "5b39468943626578fbead8c1649de4e42264d7e13dcca9716e200453d88423b2"
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
