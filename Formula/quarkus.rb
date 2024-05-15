# Generated with JReleaser 1.3.0 at 2024-05-15T15:30:47.08774292Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.10.1/quarkus-cli-3.10.1.zip"
  version "3.10.1"
  sha256 "52fd1c8aa9de648001f4b9f2c3c00062900ecd49c068c9ddd090b24ffda91b27"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.10.1", output
  end
end
