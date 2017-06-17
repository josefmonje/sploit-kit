# Virtualenv wrapper
export WORKON_HOME=~/.envs
source /usr/local/bin/virtualenvwrapper.sh

# Autoenv
source /opt/autoenv/activate.sh

# Routersploit
alias rsf="cd /opt/routersploit"

# Metasploit
alias msf="cd /opt/metasploit-framework"
alias msfd="msfd -a 0.0.0.0 &"
alias msfc="nc localhost 55554"
