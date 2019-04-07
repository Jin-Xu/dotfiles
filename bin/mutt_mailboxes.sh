#!/bin/bash
find $HOME/.Mail/gmail -type d -name cur | \
	grep -vP "mbox" | \
	xargs -I {} dirname {} | \
	tr "\n" " "
