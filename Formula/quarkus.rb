# Generated with JReleaser 1.3.0 at 2025-06-04T16:21:03.460918408Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.23.1/quarkus-cli-3.23.1.zip"
  version "3.23.1"
  sha256 "482e7bb070b83ca7231088144038a116b87e1587ee36aaf8a73a880846605b73"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.23.1", output
  end
end
