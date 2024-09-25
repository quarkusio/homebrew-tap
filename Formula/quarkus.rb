# Generated with JReleaser 1.3.0 at 2024-09-25T09:02:00.891006633Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.15.0/quarkus-cli-3.15.0.zip"
  version "3.15.0"
  sha256 "293e611cd0443f47f43c663526f309e6f87fee58182abbd3f778ca3278e4b000"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.15.0", output
  end
end
