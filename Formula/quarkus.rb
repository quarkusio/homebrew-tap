# Generated with JReleaser 1.3.0 at 2024-12-11T15:13:48.147908912Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.17.4/quarkus-cli-3.17.4.zip"
  version "3.17.4"
  sha256 "48aed88467987245397303e334c82dd3bcf6f9c70724f456021444ecda0374c7"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.17.4", output
  end
end
