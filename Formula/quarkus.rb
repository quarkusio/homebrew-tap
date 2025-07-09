# Generated with JReleaser 1.3.0 at 2025-07-09T14:45:38.036150911Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.24.3/quarkus-cli-3.24.3.zip"
  version "3.24.3"
  sha256 "749156cf961d01bf75cb1674c3e48724f4d762af82e4350ac6b3b78e9cc9ac6d"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.24.3", output
  end
end
