class Graphview < Formula
  desc "Web-based Neo4j graph viewer with WebGL rendering and level-of-detail"
  homepage "https://github.com/pmuston/homebrew-graphview"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.1.0/graphview-v0.1.0-darwin-arm64.tar.gz"
      sha256 "c7fc48fca3d4d1d2cf5ca52bec102e03045c68fea836fe17ea8f52869c736ca6"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.1.0/graphview-v0.1.0-darwin-amd64.tar.gz"
      sha256 "6f3510c88686618bb2be367aea815f897b3ba47e73d1a0e7f9edadc03aa2ccd1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.1.0/graphview-v0.1.0-linux-arm64.tar.gz"
      sha256 "ea9f0107cdf35d42b05d89630545322caa9c4e107566fed9c871614cceee4b61"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphview/releases/download/v0.1.0/graphview-v0.1.0-linux-amd64.tar.gz"
      sha256 "02cee2b3e28682fbaa0ad75f97727f53a6d06c3cdcc2818d0e2499262765f7c2"
    end
  end

  def install
    bin.install "graphview"
  end

  test do
    assert_match "graphview v", shell_output("#{bin}/graphview version")
  end
end
