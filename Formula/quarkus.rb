# Generated with JReleaser 1.3.0 at 2026-05-04T16:14:52.4707993Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.35.2/quarkus-cli-3.35.2.zip"
  version "3.35.2"
  sha256 "bc3d52b45949e8de2079a33c1be13fe9da3dac9f3a21d1b5a0d034629f53e2d9"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.35.2", output
  end
end
