# Description: Start tmux sessions with pre-defined windows and panes.

# code session
tmux new-session -s code   -n api -d        -c '/Users/adambechtold/Local/dev/vibeiq/contrail-api' 
tmux new-window  -t code:1 -n lib           -c '/Users/adambechtold/Local/dev/vibeiq/contrail-lib'
tmux new-window  -t code:2 -n sdk           -c '/Users/adambechtold/Local/dev/vibeiq/contrail-sdk'
tmux new-window  -t code:3 -n apps-admin    -c '/Users/adambechtold/Local/dev/vibeiq/contrail-apps-admin'
tmux new-window  -t code:4 -n apps-login    -c '/Users/adambechtold/Local/dev/vibeiq/contrail-apps-login'
tmux new-window  -t code:5 -n entity-types  -c '/Users/adambechtold/Local/dev/vibeiq/contrail-entity-types'
tmux new-window  -t code:6 -n cli           -c '/Users/adambechtold/Local/dev/vibeiq/contrail-cli'
tmux new-window  -t code:7 -n apps          -c '/Users/adambechtold/Local/dev/vibeiq/contrail-apps'
tmux new-window  -t code:8 -n docs          -c '/Users/adambechtold/Local/dev/vibeiq/contrail-docs'

# test session
tmux new-session -s test   -n api-unit -d -c '/Users/adambechtold/Local/dev/vibeiq/contrail-api'
tmux new-window  -t test:1 -n api-e2e     -c '/Users/adambechtold/Local/dev/vibeiq/contrail-api/services/apps/test'

# local servers session
tmux new-session -s local-servers   -n api -d      -c '/Users/adambechtold/Local/dev/vibeiq/contrail-api'
tmux new-window  -t local-servers:1 -n redis       -c '/Users/adambechtold/Local/dev/vibeiq/contrail-api'
tmux new-window  -t local-servers:2 -n dyanmo      -c '/Users/adambechtold/Local/dev/vibeiq/local-dynamo'
tmux new-window  -t local-servers:3 -n apps        -c '/Users/adambechtold/Local/dev/vibeiq/contrail-apps'
tmux new-window  -t local-servers:4 -n apps-login  -c '/Users/adambechtold/Local/dev/vibeiq/contrail-apps-login'
tmux new-window  -t local-servers:5 -n apps-admin  -c '/Users/adambechtold/Local/dev/vibeiq/contrail-apps-admin'

# tmux and nvim session
tmux new-session -s tmux-and-nvim   -n nvim -d -c '/Users/adambechtold/.config/nvim'
tmux new-window  -t tmux-and-nvim:1 -n tmux    -c '/Users/adambechtold/'

# hotkey session
tmux new-session -s hotkey -n hotkey -d

# general session
tmux new-session -s general -n general -d

# vault session
tmux new-session -s vault -n vault -d -c "/Users/adambechtold/Local/Adam\'s\ Vault"

# personal development session
tmux new-session -s personal-dev -n persaonl-dev -d -c "/Users/adamcbechtold/Local/dev/personal"

# attach to code session
tmux select-window     -t code:0
tmux -2 attach-session -t code
