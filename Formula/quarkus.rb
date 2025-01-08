# Generated with JReleaser 1.3.0 at 2025-01-08T17:49:31.641799162Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.17.6/quarkus-cli-3.17.6.zip"
  version "3.17.6"
  sha256 "70729bbf656578b3d82646b3a1dbbef8592becb0d4b1f54fa31a903f2ed8ec5f"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.17.6", output
  end
end
