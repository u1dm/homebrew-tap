cask "moddrag" do
  version "0.1.2"
  sha256 "ae43f977d9478d10b29d8029ce8c88b9c0bfc9b281d67b5916edf8cd80e934f3"

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
