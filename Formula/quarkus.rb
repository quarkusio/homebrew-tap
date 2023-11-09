# Generated with JReleaser 1.3.0 at 2023-11-09T10:10:00.038482+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.5.1/quarkus-cli-3.5.1.zip"
  version "3.5.1"
  sha256 "cc61b7167fa8bec69a6e88cc535289fd66053ba1526408899579676d387ea81c"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.5.1", output
  end
end
