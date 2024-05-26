# bbwrapper

BlackboxWM wrapper for standalone applications in Steam Deck Game Mode

The scripts in this repo are intended for use with a Steam Deck when running a utility like [PulseAudio Volume Control](https://freedesktop.org/software/pulseaudio/pavucontrol/) as a non-Steam game because god forbid they add a per-game volume slider to the game mode UI.

Basically with my setup I sometimes have Wayland-native shit running like Waydroid and since we've decided that [this piece of shit joke of a desktop specification](https://gist.github.com/probonopd/9feb7c20257af5dd915e3a9f2d1f2277) is the best goddamned thing since sliced fucking bread and by we I fucking mean GNOME and their GTK toolkit, because bullshit built with GTK WILL AUTO-FUCKING-MATICALLY SELECT THE **ACTIVE WAYLAND SESSION THAT BY NO MEANS IS EVEN RELATED**, breaking my Waydroid session and causing me to lose a battle in my South Korean-produced anime boobies RPG because my touch is fucked up because pavucontrol thought it was a great idea to fucking molest my viewport by selecting this unrelated session

## Okay, so I don't care about your fuckin' story, how do I use this shit?

1. Clone this repo some-fucking-where
2. Mark `bbwrapper.sh`, `launchme.sh` and `xinitrc` as executable (`chmod +x {}`)
3. Install `blackbox` window manager
  * You should already have `Xephyr` and `xinit` but I use Bazzite instead of SteamOS sooooooo
4. Edit launchme.sh and change `/usr/bin/pavucontrol -m` to whatever program you need to run.
  * **IF YOUR PROGRAM LAUNCHES ANOTHER THREAD (as in you run `/usr/bin/bla`, the shell returns to a prompt and your application opens without the terminal's involvement) THIS WILL NOT WORK.**
