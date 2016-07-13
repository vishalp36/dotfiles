alias cls='clear'
alias cd..="cd .."
alias ..="cd .."
alias -- -="cd -"
alias ls='ls $LS_OPTIONS -hF'
alias ll='ls $LS_OPTIONS -lAhF'
alias hosts='sudo $EDITOR /etc/hosts'

# mv, rm, cp
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'

# Vagrant
alias cdb  ='cd $HOME/box'
alias vup  ='cd $HOME/box/scotch-box && vagrant up'
alias vssh ='cd $HOME/box/scotch-box && vagrant ssh'
alias vssh ='cd $HOME/box/scotch-box && vagrant ssh'

# Git
alias g        ="git"
alias gc       ='git commit -v -S'
alias undopush ="git push -f origin HEAD^:master"


# Others tools: Atom Docker
alias atom='atom .'
alias doco ='docker-compose'

# Personal projects folders
alias cdp   ='cd $HOME/sites'
alias cdlab ='cd $HOME/sites/lab'

# Symfony
alias sf          ='php app/console'
alias sfcl        ='sf cache:clear'
alias sfsr        ='sf server:run -vvv'
alias sfcw        ='sf cache:warmup'
alias sfroute     ='sf debug:router'
alias sfcontainer ='sf debug:container'
alias sfgb        ='sf generate:bundle'
alias sfdev       ='sf --env=dev'
alias sfprod      ='sf --env=prod'

prepareDb() {
    sf doctrine:database:drop --force --if-exists --env=test
    sf doctrine:database:create --env=test
    sf doctrine:schema:update --force --env=test
    sf doctrine:fixtures:load --no-interaction --env=test
}

# PHP tools
alias behat='bin/behat'
alias punit='phpunit -c app'