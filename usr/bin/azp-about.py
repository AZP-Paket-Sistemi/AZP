#!/usr/bin/env python3

### AZP Paket Sistemi 3.0
# AZP Offical Site: https://azp-paket-sistemi.github.io
# AZP Offical Depo: https://azp-paket-sistemi.github.io/azp-depo

# 2021-2022 AZP
# 2019-2022 PacPERRO OS

import gi
import os
import locale
import requests
import subprocess
gi.require_version("Gtk", "3.0")
from gi.repository import Gtk, GLib, Gio
from locale import gettext as tr

# Tərcümə məlumatları
APPNAME = "azp-about"
TRANSLATIONS_PATH = "/usr/share/locale"
SYSTEM_LANGUAGE = os.environ.get("LANG")

# Tərcümə funksiyaları
locale.bindtextdomain(APPNAME, TRANSLATIONS_PATH)
locale.textdomain(APPNAME)
locale.setlocale(locale.LC_ALL, SYSTEM_LANGUAGE)

# GTK Builder
builder = Gtk.Builder()
builder.set_translation_domain(APPNAME)
builder.add_from_file("/usr/share/azp/azp-about.glade")

window = builder.get_object("pəncərə")
window.show_all()

Gtk.main()
