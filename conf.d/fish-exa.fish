function l -w exa
  command exa $argv
end
function ll -w exa_git
  exa_git $argv
end
function la -w exa
  command exa $EXA_STANDARD_OPTIONS $EXA_LA_OPTIONS $argv
end
function ld -w exa
  command exa $EXA_STANDARD_OPTIONS $EXA_LD_OPTIONS $argv
end
function lg -w exa
  command exa $EXA_STANDARD_OPTIONS $EXA_LG_OPTIONS $argv
end
function le -w exa
  command exa $EXA_STANDARD_OPTIONS $EXA_LE_OPTIONS $argv
end
function lt -w exa
  command exa $EXA_STANDARD_OPTIONS $EXA_LT_OPTIONS $argv
end

function __fish_exa_install --on-event fish-exa_install
    set -Ux EXA_STANDARD_OPTIONS "--all" "--color=auto" "--group-directories-first"
    set -Ux EXA_LA_OPTIONS "--binary" "--links" "--long" "--inode" "--blocks"
    set -Ux EXA_LD_OPTIONS "--only-dirs"
    set -Ux EXA_LG_OPTIONS "--git" "--long" "--modified" "--time-style=long-iso" "--no-user" "--octal-permissions" "--no-permissions" "--sort modified"
    set -Ux EXA_LE_OPTIONS "--extended"
    set -Ux EXA_LT_OPTIONS "--tree" "--level"
    set -Ux EXA_LL_OPTIONS "--long" "--numeric" "--time-style=iso" "--octal-permissions" "--no-permissions" "--no-filesize" "--modified"
end

function __fish_exa_update --on-event fish-exa_update
    __fish_exa_uninstall
    __fish_exa_install
end

function __fish_exa_uninstall --on-event fish-exa_uninstall
    set --erase EXA_STANDARD_OPTIONS
    set --erase EXA_LA_OPTIONS
    set --erase EXA_LD_OPTIONS
    set --erase EXA_LG_OPTIONS
    set --erase EXA_LE_OPTIONS
    set --erase EXA_LT_OPTIONS
    functions --erase l
    functions --erase ll
    functions --erase exa_git
    functions --erase la
    functions --erase ld
    functions --erase lt
    functions --erase lg
    functions --erase le
end
