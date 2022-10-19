# Generated with JReleaser 1.1.0 at 2022-10-19T17:05:24.103415+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.13.3.Final/quarkus-cli-2.13.3.Final.zip"
  version "2.13.3.Final"
  sha256 "a5abac1f1d526222dc5ca46b22660bad8090c6b789719ad6b3f806b370e5bb4e"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.13.3.Final", output
  end
end
