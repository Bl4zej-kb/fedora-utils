if [ "$(cat /sys/module/nvidia_drm/parameters/modeset)" = "N" ] &&
   [ "$(cat /sys/module/nvidia_drm/parameters/fbdev)" = "N" ]; then
   
sudo grubby --update-kernel=ALL --args="nvidia_drm.modeset=1 nvidia_drm.fbdev=1"
fi