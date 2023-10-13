# Generated with JReleaser 1.3.0 at 2023-10-13T11:13:43.830472+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.4.3/quarkus-cli-3.4.3.zip"
  version "3.4.3"
  sha256 "72f2e5e9ba47c914f7a04919d527a1b521c08d5ecfefde28ce4da9a29e7a8b84"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.4.3", output
  end
end
