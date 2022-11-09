# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# synopsys tools
export DVE_HOME=/home/xiaohu/synopsys/vcs-mx/O-2018.09-SP2
export VCS_HOME=/home/xiaohu/synopsys/vcs-mx/O-2018.09-SP2
export VERDI_HOME=/home/xiaohu/synopsys/verdi/Verdi_O-2018.09-SP2
export SCL_HOME=/home/xiaohu/synopsys/scl/2018.06
export LD_LIBARAY_PATH=/home/xiaohu/synopsys/verdi/Verdi_O-2018.09-SP2/share/PLI/VCS/LINUX64
export NOVAS_RC=/home/xiaohu/verdi_cfg/novas.rc

PATH=$PATH:$DVE_HOME/gui/dve/bin
alias dve="dve -full64"

PATH=$PATH:$VCS_HOME/bin
alias vcs="vcs -full64"

PATH=$PATH:$VERDI_HOME/bin

PATH=$PATH:$SCL_HOME/linux64/bin
export VCS_ARCH_OVERRIDE=linux

