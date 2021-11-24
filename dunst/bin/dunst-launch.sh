#!/bin/sh

# Get values from Xresources
config=~/.config/dunst/dunstrc
geometry_x=$(xrdb -get dunst.geometry-x)
geometry_y=$(xrdb -get dunst.geometry-y)
separator_height=$(xrdb -get dunst.sep-height)
padding=$(xrdb -get dunst.padding)
horizontal_padding=$(xrdb -get dunst.horiz-padding)
max_icon_size=$(xrdb -get dunst.max-icon-size)
frame_width=$(xrdb -get dunst.frame-width)
lb=$(xrdb -get dunst.low-background)
lf=$(xrdb -get dunst.low-foreground)
lfr=$(xrdb -get dunst.low-frame)
nb=$(xrdb -get dunst.normal-background)
nf=$(xrdb -get dunst.normal-foreground)
nfr=$(xrdb -get dunst.normal-frame)
cb=$(xrdb -get dunst.critical-background)
cf=$(xrdb -get dunst.critical-foreground)
cfr=$(xrdb -get dunst.critical-frame)

# Kill and running dunst instances and start
killall dunst;/usr/bin/dunst -config $config \
	# -geometry "0x0-$geometry_x+$geometry_y" \
	# -separator_height "$separator_height" \
	# -padding "$padding" \
	# -horizontal_padding "$horizontal_padding" \
	# -max_icon_size "$max_icon_size" \
	# -frame_width "$frame_width" \
	-lb "$lb" \
	-lf "$lf" \
	-lfr "$lfr" \
	-nb "$nb" \
	-nf "$nf" \
	-nfr "$nfr" \
	-cb "$cb" \
	-cf "$cf" \
	-cfr "$cfr"
