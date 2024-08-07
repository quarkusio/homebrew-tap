# Generated with JReleaser 1.3.0 at 2024-08-07T17:48:36.289291578Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.13.1/quarkus-cli-3.13.1.zip"
  version "3.13.1"
  sha256 "709cf3af64fc359b5418c37c849291c3b22bbeb513aa167412c78bcc79ff3596"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.13.1", output
  end
end
