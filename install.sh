#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
	rm -f /usr/bin/remsu
	rm -f /usr/bin/sparky-xterm-exec
	rm -f /usr/share/polkit-1/actions/org.sparky*
	rm -f /usr/share/polkit-1/actions/org.custom-iso-builder.*
	rm -f /usr/share/polkit-1/actions/org.deb-package-builder.*
	rm -f /usr/share/polkit-1/actions/org.lightscribe-*
	rm -f /usr/share/polkit-1/actions/org.teamspeak-*
	rm -f /usr/share/polkit-1/actions/org.teamviewer-*
	rm -f /usr/share/polkit-1/actions/org.calamares*
else
	cp bin/* /usr/bin/
	cp actions/* /usr/share/polkit-1/actions/
fi
