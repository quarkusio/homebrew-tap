# Generated with JReleaser 1.3.0 at 2025-04-02T19:17:44.528086469Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.21.1/quarkus-cli-3.21.1.zip"
  version "3.21.1"
  sha256 "a1d5e07907b76dc2b8e2403cd377de594531c0e7419eaff25e6fe5d82e6c1bef"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.21.1", output
  end
end
