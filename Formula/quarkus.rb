# Generated with JReleaser 1.3.0 at 2024-04-10T15:53:36.826675747Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.9.3/quarkus-cli-3.9.3.zip"
  version "3.9.3"
  sha256 "7876cc523631ce3d65658c3054d5f922fc87031f18eac71c921f0d2a333a193b"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.9.3", output
  end
end
