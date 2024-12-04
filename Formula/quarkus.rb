# Generated with JReleaser 1.3.0 at 2024-12-04T17:53:04.36196232Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.17.3/quarkus-cli-3.17.3.zip"
  version "3.17.3"
  sha256 "1df7fa3f8e90a724f3a3c18ceee91b137c745aef474f883071f4df208f84e4b3"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.17.3", output
  end
end
