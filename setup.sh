sudo dnf install \
  https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf makecache

sudo dnf install -y curl gnome-software vim git fastfetch ffmpeg flatpak gnome-tweaks qbittorrent gcc g++ git-filter-repo python3 python3-pip printer-driver-escpr pkg-config escputil

sudo dnf makecache

curl -fsS https://dl.brave.com/install.sh | sudo sh
curl -fsSL -o get-platformio.py https://raw.githubusercontent.com/platformio/platformio-core-installer/master/get-platformio.py
python3 get-platformio.py
rm get-platformio.py

sudo dnf remove firefox gnome-calendar gnome-connections gnome-contacts evolution gnome-maps seahorse malcontent gnome-tour -y
sudo dnf autoremove -y

sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak install com.mattjakeman.ExtensionManager

sudo dnf upgrade -y

sh load_set.sh
sh screen_set.sh
