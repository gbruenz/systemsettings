# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

## Auto-launching ssh-agent
## Note: ~/.ssh/environment should not be used, as it
##       already has a different purpose in SSH.
#
#env=~/.ssh/agent.env
#
## Note: Don't bother checking SSH_AGENT_PID. It's not used
##       by SSH itself, and it might even be incorrect
##       (for example, when using agent-forwarding over SSH).
#
#agent_is_running() {
#    if [ "$SSH_AUTH_SOCK" ]; then
#        # ssh-add returns:
#        #   0 = agent running, has keys
#        #   1 = agent running, no keys
#        #   2 = agent not running
#        ssh-add -l >/dev/null 2>&1 || [ $? -eq 1 ]
#    else
#        false
#    fi
#}
#
#agent_has_keys() {
#    ssh-add -l >/dev/null 2>&1
#}
#
#agent_load_env() {
#    . "$env" >/dev/null
#}
#
#agent_start() {
#    (umask 077; ssh-agent >"$env")
#    . "$env" >/dev/null
#}
#
#if ! agent_is_running; then
#    agent_load_env
#fi
#
#if ! agent_is_running; then
#    agent_start
#    ssh-add
#elif ! agent_has_keys; then
#    ssh-add
#fi
#
#unset env


[[ -f "$HOME/bin/set_environ.sh" ]] && . "$HOME/bin/set_environ.sh";
