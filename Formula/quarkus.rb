# Generated with JReleaser 1.3.0 at 2024-06-13T14:04:14.666497893Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.11.2/quarkus-cli-3.11.2.zip"
  version "3.11.2"
  sha256 "b3faacfc12143399d6fb672ff47a37d5f29f66d641eb925196602c56f2bee43a"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.11.2", output
  end
end
