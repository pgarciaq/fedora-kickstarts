%include fedora-live-workstation.ks
repo --name="rpmfusion-free" --mirrorlist=https://mirrors.rpmfusion.org/metalink?repo=free-fedora-$releasever&arch=$basearch
repo --name="rpmfusion-nonfree" --mirrorlist=https://mirrors.rpmfusion.org/metalink?repo=nonfree-fedora-$releasever&arch=$basearch
%packages
# Packages we want to have
mpv
libavcodec-freeworld
mesa-va-drivers-freeworld
gstreamer1-plugins-bad-freeworld
# Package groups excluded from @workstation-product-environment
-@guest-desktop-agents
-@libreoffice
-gstreamer1-plugins-bad-free
# Packages excluded from @workstation-product
-rhythmbox
-unoconv
# Packages excluded from @gnome-desktop
-snapshot
-gnome-boxes
-baobab
-cheese
-gnome-weather
-orca
-rygel
-totem
-gnome-maps
%end
