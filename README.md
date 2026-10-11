# Key Remaps

Mac-style keyboard shortcuts for Windows 11 and Linux.

| Shortcut | Action |
|---|---|
| Copilot key | Right Ctrl |
| Alt + Backspace | Delete to start of line |
| Alt + Left / Right | Jump to start / end of line |
| Alt + Shift + Left / Right | Select to start / end of line |
| Alt + Q | Quit app (Windows only) |

## Files

- `KeyRemaps.ahk` - Windows 11 (AutoHotkey v2)
- `default.conf` - Linux (keyd)

---

## Windows 11

1. Install [AutoHotkey v2](https://www.autohotkey.com/).
2. Download `KeyRemaps.ahk`.
3. Double-click it to run.

**Run at startup:** press `Win + R`, type `shell:startup`, and put a shortcut to `KeyRemaps.ahk` in that folder.

**After editing:** right-click the AHK tray icon and choose **Reload Script**.

---

## Linux

### 1. Install keyd

**Arch**

```bash
sudo pacman -S keyd
```

**Debian / Ubuntu**

```bash
sudo apt update
sudo apt install keyd
```

**Fedora**

```bash
sudo dnf install keyd
```

**Package not found?** (older Debian/Ubuntu, or some Fedora versions) Build from source:

```bash
# Debian / Ubuntu
sudo apt install git build-essential
# Fedora
sudo dnf install git gcc make

git clone https://github.com/rvaiya/keyd
cd keyd
make && sudo make install
```

### 2. Find your keyboard ID

```bash
sudo keyd monitor
```

Press a key and note the `vendor:product` ID shown (e.g. `1bcf:08a0`).

### 3. Edit the config

Open `default.conf` and replace the IDs under `[ids]` with yours.

### 4. Install the config and start keyd

```bash
sudo mkdir -p /etc/keyd
sudo cp default.conf /etc/keyd/default.conf
sudo systemctl enable --now keyd
```

**After editing:** `sudo keyd reload`

---

## Notes

- The Copilot key remap expects the key to send `Left Meta + Left Shift + F23`.
- On Windows, Alt + Q closes all windows of the active app. Unsaved-work prompts still appear.
