class Containerd < Formula
  desc "An open and reliable container runtime"
  homepage "https://containerd.io"
  url "https://github.com/containerd/containerd",
    using:  :git,
    tag:    "v1.5.8"
  license "Apache-2.0"

  depends_on "go" => :build
  depends_on "protobuf" => :build

  def install
    system "make"
    bin.install Dir["bin/*"]
  end

  test do
    system "false"
  end
end
