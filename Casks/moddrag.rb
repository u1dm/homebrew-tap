cask "moddrag" do
  version "0.1.2"
  sha256 "9295a6c5becfe4aa93c659d3cf2cbf6dd842c2e241b60c14d13cee6c9c06bc59"

  url "https://github.com/u1dm/ModDrag/releases/download/v#{version}/ModDrag-#{version}.zip"
  name "ModDrag"
  desc "Move, resize, and maximize windows with side mouse button shortcuts"
  homepage "https://github.com/u1dm/ModDrag"

  depends_on macos: :ventura

  app "ModDrag.app"

  caveats do
    requires_rosetta false
    <<~EOS
      Grant Accessibility access to ModDrag in:
        System Settings -> Privacy & Security -> Accessibility
    EOS
  end
end
