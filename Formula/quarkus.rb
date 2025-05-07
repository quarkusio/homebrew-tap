# Generated with JReleaser 1.3.0 at 2025-05-07T15:23:24.665046974Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.22.2/quarkus-cli-3.22.2.zip"
  version "3.22.2"
  sha256 "2ef2121d89b0490a8001cbfda7a69be9daf12ac16205d6e5b997265a471df1ad"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.22.2", output
  end
end
