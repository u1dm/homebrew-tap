cask "moddrag" do
  version "0.1.2"
  sha256 "826d87e7cd7586b6b1660c92bceaa7fa9aa47563e19a4109b200bd92c2d76fbd"

  url "https://github.com/u1dm/ModDrag/releases/download/v#{version}/ModDrag-#{version}.zip"
  name "ModDrag"
  desc "Move, resize, and maximize windows with side mouse button shortcuts"
  homepage "https://github.com/u1dm/ModDrag"

  depends_on macos: :ventura

  app "ModDrag.app"

  caveats do
    <<~EOS
      Grant Accessibility access to ModDrag in:
        System Settings -> Privacy & Security -> Accessibility
    EOS
  end
end
