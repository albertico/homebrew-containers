class Containerd < Formula
  desc "Open and reliable container runtime"
  homepage "https://containerd.io"
  url "https://github.com/containerd/containerd",
    using:    :git,
    tag:      "v1.5.8",
    revision: "1e5ef943eb76627a6d3b6de8cd1ef6537f393a71"
  license "Apache-2.0"

  depends_on "go" => :build
  depends_on "protobuf" => :build

  def install
    system "make"
    system "make", "genman"
    bin.install Dir["bin/*"]
    man.mkpath
    man8.install Dir["man/*.8"]
  end

  test do
    system "false"
  end
end
