# Generated with JReleaser 0.10.0 at 2022-01-20T16:04:21.00225+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.6.3.Final/quarkus-cli-2.6.3.Final.zip"
  version "2.6.3.Final"
  sha256 "39c779c5e6c3a6e622b8b9987cfba99f82458f984db2c9277e91ddd5ad3cd55d"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.6.3.Final", output
  end
end
