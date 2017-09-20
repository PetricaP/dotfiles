# vim:ft=zsh ts=2 sw=2 sts=2 et fenc=utf-8
################################################################
# icons
# This file holds the icon definitions and
# icon-functions for the powerlevel9k-ZSH-theme
# https://github.com/bhilburn/powerlevel9k
################################################################

# These characters require the Powerline fonts to work properly. If you see
# boxes or bizarre characters below, your fonts are not correctly installed. If
# you do not want to install a special font, you can set `POWERLEVEL9K_MODE` to
# `compatible`. This shows all icons in regular symbols.

# Initialize the icon list according to the user's `POWERLEVEL9K_MODE`.
typeset -gAH icons
case $POWERLEVEL9K_MODE in
  'flat'|'awesome-patched')
    # Awesome-Patched Font required! See:
    # https://github.com/gabrielelana/awesome-terminal-fonts/tree/patching-strategy/patched
    # Set the right locale to protect special characters
    local LC_ALL="" LC_CTYPE="en_US.UTF-8"
    icons=(
      LEFT_SEGMENT_SEPARATOR         $'\uE0B0'              # î°
      RIGHT_SEGMENT_SEPARATOR        $'\uE0B2'              # î²
      LEFT_SEGMENT_END_SEPARATOR     ' '                    # Whitespace
      LEFT_SUBSEGMENT_SEPARATOR      $'\uE0B1'              # î±
      RIGHT_SUBSEGMENT_SEPARATOR     $'\uE0B3'              # î³
      CARRIAGE_RETURN_ICON           $'\u21B5'              # âµ
      ROOT_ICON                      $'\uE801'              # î 
      RUBY_ICON                      $'\uE847 '             # î¡
      AWS_ICON                       $'\uE895'              # î¢
      AWS_EB_ICON                    $'\U1F331 '            # ð±
      BACKGROUND_JOBS_ICON           $'\uE82F '             # î ¯
      TEST_ICON                      $'\uE891'              # î¢
      TODO_ICON                      $'\u2611'              # â
      BATTERY_ICON                   $'\uE894'              # î¢
      DISK_ICON                      $'\uE1AE '             # î®
      OK_ICON                        $'\u2713'              # â
      FAIL_ICON                      $'\u2718'              # â
      SYMFONY_ICON                   'SF'
      NODE_ICON                      $'\u2B22'              # â¬¢
      MULTILINE_FIRST_PROMPT_PREFIX  $'\u256D'$'\U2500'
      MULTILINE_SECOND_PROMPT_PREFIX $'\u2570'$'\U2500 '
      APPLE_ICON                     $'\uE26E'              # î®
      FREEBSD_ICON                   $'\U1F608 '            # ð
      ANDROID_ICON                   $'\uE270'              # î°
      LINUX_ICON                     $'\uE271'              # î±
      SUNOS_ICON                     $'\U1F31E '            # ð
      HOME_ICON                      $'\uE12C'              # î¬
      HOME_SUB_ICON                  $'\uE18D'              # î
      FOLDER_ICON                    $'\uE818'              # î 
      NETWORK_ICON                   $'\uE1AD'              # î­
      LOAD_ICON                      $'\uE190 '             # î
      SWAP_ICON                      $'\uE87D'              # î¡½
      RAM_ICON                       $'\uE1E2 '             # î¢
      SERVER_ICON                    $'\uE895'              # î¢
      VCS_UNTRACKED_ICON             $'\uE16C'              # î¬
      VCS_UNSTAGED_ICON              $'\uE17C'              # î¼
      VCS_STAGED_ICON                $'\uE168'              # î¨
      VCS_STASH_ICON                 $'\uE133 '             # î³
      #VCS_INCOMING_CHANGES_ICON     $'\uE1EB '             # î«
      #VCS_INCOMING_CHANGES_ICON     $'\uE80D '             # î 
      VCS_INCOMING_CHANGES_ICON      $'\uE131 '             # î±
      #VCS_OUTGOING_CHANGES_ICON     $'\uE1EC '             # î¬
      #VCS_OUTGOING_CHANGES_ICON     $'\uE80E '             # î 
      VCS_OUTGOING_CHANGES_ICON      $'\uE132 '             # î²
      VCS_TAG_ICON                   $'\uE817 '             # î 
      VCS_BOOKMARK_ICON              $'\uE87B'              # î¡»
      VCS_COMMIT_ICON                $'\uE821 '             # î ¡
      VCS_BRANCH_ICON                $'\uE220'              # î 
      VCS_REMOTE_BRANCH_ICON         $'\u2192'              # â
      VCS_GIT_ICON                   $'\uE20E '             # î
      VCS_GIT_GITHUB_ICON            $'\uE20E '             #
      VCS_GIT_BITBUCKET_ICON         $'\uE20E '             #
      VCS_GIT_GITLAB_ICON            $'\uE20E '             #
      VCS_HG_ICON                    $'\uE1C3 '             # î
      VCS_SVN_ICON                   '(svn) '
      RUST_ICON                      ''
      PYTHON_ICON                    $'\U1F40D'             # ð
      SWIFT_ICON                     ''
      GO_ICON                        ''
      PUBLIC_IP_ICON                 ''
      LOCK_ICON                      $'\UE138'              # î¸
      EXECUTION_TIME_ICON            $'\UE89C'              # î¢
      SSH_ICON                       '(ssh)'
    )
  ;;
  'awesome-fontconfig')
    # fontconfig with awesome-font required! See
    # https://github.com/gabrielelana/awesome-terminal-fonts
    # Set the right locale to protect special characters
    local LC_ALL="" LC_CTYPE="en_US.UTF-8"
    icons=(
      LEFT_SEGMENT_SEPARATOR         $'\uE0B0'              # î°
      RIGHT_SEGMENT_SEPARATOR        $'\uE0B2'              # î²
      LEFT_SEGMENT_END_SEPARATOR     ' '                    # Whitespace
      LEFT_SUBSEGMENT_SEPARATOR      $'\uE0B1'              # î±
      RIGHT_SUBSEGMENT_SEPARATOR     $'\uE0B3'              # î³
      CARRIAGE_RETURN_ICON           $'\u21B5'              # âµ
      ROOT_ICON                      $'\uF201'              # ï
      RUBY_ICON                      $'\uF219 '             # ï
      AWS_ICON                       $'\uF270'              # ï°
      AWS_EB_ICON                    $'\U1F331 '            # ð±
      BACKGROUND_JOBS_ICON           $'\uF013 '             # ï
      TEST_ICON                      $'\uF291'              # ï
      TODO_ICON                      $'\u2611'              # â
      BATTERY_ICON                   $'\U1F50B'             # ð
      DISK_ICON                      $'\uF0A0 '             # ï 
      OK_ICON                        $'\u2713'              # â
      FAIL_ICON                      $'\u2718'              # â
      SYMFONY_ICON                   'SF'
      NODE_ICON                      $'\u2B22'              # â¬¢
      MULTILINE_FIRST_PROMPT_PREFIX  $'\u256D'$'\U2500'     # â­â
      MULTILINE_SECOND_PROMPT_PREFIX $'\u2570'$'\U2500 '    # â°â
      APPLE_ICON                     $'\uF179'              # ï¹
      FREEBSD_ICON                   $'\U1F608 '            # ð
      ANDROID_ICON                   $'\uE17B'              # ï»
      LINUX_ICON                     $'\uF17C'              # ï¼
      SUNOS_ICON                     $'\uF185 '             # ï
      HOME_ICON                      $'\uF015'              # ï
      HOME_SUB_ICON                  $'\uF07C'              # ï¼
      FOLDER_ICON                    $'\uF115'              # ï
      NETWORK_ICON                   $'\uF09E'              # ï
      LOAD_ICON                      $'\uF080 '             # ï
      SWAP_ICON                      $'\uF0E4'              # ï¤
      RAM_ICON                       $'\uF0E4'              # ï¤
      SERVER_ICON                    $'\uF233'              # ï³
      VCS_UNTRACKED_ICON             $'\uF059'              # ï
      VCS_UNSTAGED_ICON              $'\uF06A'              # ïª
      VCS_STAGED_ICON                $'\uF055'              # ï
      VCS_STASH_ICON                 $'\uF01C '             # ï
      VCS_INCOMING_CHANGES_ICON      $'\uF01A '             # ï
      VCS_OUTGOING_CHANGES_ICON      $'\uF01B '             # ï
      VCS_TAG_ICON                   $'\uF217 '             # ï
      VCS_BOOKMARK_ICON              $'\uF27B'              # ï»
      VCS_COMMIT_ICON                $'\uF221 '             # ï¡
      VCS_BRANCH_ICON                $'\uF126'              # ï¦
      VCS_REMOTE_BRANCH_ICON         $'\u2192'              # â
      VCS_GIT_ICON                   $'\uF1D3 '             # ï
      VCS_GIT_GITHUB_ICON            $'\uF113 '             # ï
      VCS_GIT_BITBUCKET_ICON         $'\uF171 '             # ï±
      VCS_GIT_GITLAB_ICON            $'\uF296 '             # ï
      VCS_HG_ICON                    $'\uF0C3 '             # ï
      VCS_SVN_ICON                   '(svn) '
      RUST_ICON                      $'\uE6A8'              # î¨ 
      PYTHON_ICON                    $'\U1F40D'             # ð
      SWIFT_ICON                     ''
      GO_ICON                        ''
      PUBLIC_IP_ICON                 ''
      LOCK_ICON                      $'\UE138'              # î¸
      EXECUTION_TIME_ICON            $'\uF253'
      SSH_ICON                       '(ssh)'
    )
  ;;
  'nerdfont-complete'|'nerdfont-fontconfig')
    # nerd-font patched (complete) font required! See
    # https://github.com/ryanoasis/nerd-fonts
    # Set the right locale to protect special characters
    local LC_ALL="" LC_CTYPE="en_US.UTF-8"
    icons=(
      LEFT_SEGMENT_SEPARATOR         $'\uE0B0'              # î°
      RIGHT_SEGMENT_SEPARATOR        $'\uE0B2'              # î²
      LEFT_SEGMENT_END_SEPARATOR     ' '                    # Whitespace
      LEFT_SUBSEGMENT_SEPARATOR      $'\uE0B1'              # î±
      RIGHT_SUBSEGMENT_SEPARATOR     $'\uE0B3'              # î³
      CARRIAGE_RETURN_ICON           $'\u21B5'              # âµ
      ROOT_ICON                      $'\uE614 '             # î
      RUBY_ICON                      $'\uF219 '             # ï
      AWS_ICON                       $'\uF270'              # ï°
      AWS_EB_ICON                    $'\UF1BD  '            # ï½
      BACKGROUND_JOBS_ICON           $'\uF013 '             # ï
      TEST_ICON                      $'\uF188'              # ï
      TODO_ICON                      $'\uF133'              # ï³
      BATTERY_ICON                   $'\UF240 '             # ï
      DISK_ICON                      $'\uF0A0'              # ï  
      OK_ICON                        $'\uF00C'              # ï
      FAIL_ICON                      $'\uF00D'              # ï
      SYMFONY_ICON                   $'\uE757'              # î
      NODE_ICON                      $'\uE617 '             # î
      MULTILINE_FIRST_PROMPT_PREFIX  $'\u256D'$'\U2500'     # â­â
      MULTILINE_SECOND_PROMPT_PREFIX $'\u2570'$'\U2500 '    # â°â
      APPLE_ICON                     $'\uF179'              # ï¹
      FREEBSD_ICON                   $'\UF30E '             # ï
      ANDROID_ICON                   $'\uF17B'              # ï»
      LINUX_ICON                     $'\uF17C'              # ï¼
      SUNOS_ICON                     $'\uF185 '             # ï
      HOME_ICON                      $'\uF015'              # ï
      HOME_SUB_ICON                  $'\uF07C'              # ï¼
      FOLDER_ICON                    $'\uF115'              # ï
      NETWORK_ICON                   $'\uF1EB'              # ï«
      LOAD_ICON                      $'\uF080 '             # ï
      SWAP_ICON                      $'\uF464'              # ï¤
      RAM_ICON                       $'\uF0E4'              # ï¤
      SERVER_ICON                    $'\uF0AE'              # ï®
      VCS_UNTRACKED_ICON             $'\uF059'              # ï
      VCS_UNSTAGED_ICON              $'\uF06A'              # ïª
      VCS_STAGED_ICON                $'\uF055'              # ï
      VCS_STASH_ICON                 $'\uF01C '             # ï
      VCS_INCOMING_CHANGES_ICON      $'\uF01A '             # ï
      VCS_OUTGOING_CHANGES_ICON      $'\uF01B '             # ï
      VCS_TAG_ICON                   $'\uF02B '             # ï«
      VCS_BOOKMARK_ICON              $'\uF461 '             # ï¡
      VCS_COMMIT_ICON                $'\uE729 '             # î©
      VCS_BRANCH_ICON                $'\uF126 '             # ï¦
      VCS_REMOTE_BRANCH_ICON         $'\uE728 '             # î¨
      VCS_GIT_ICON                   $'\uF113 '             # ï
      VCS_GIT_GITHUB_ICON            $'\uE709 '             # î
      VCS_GIT_BITBUCKET_ICON         $'\uE703 '             # î
      VCS_GIT_GITLAB_ICON            $'\uF296 '             # ï 
      VCS_HG_ICON                    $'\uF0C3 '             # ï
      VCS_SVN_ICON                   $'\uE72D '             # î­
      RUST_ICON                      $'\uE7A8 '             # î¨
      PYTHON_ICON                    $'\UE73C '             # î¼
      SWIFT_ICON                     $'\uE755'              # î
      GO_ICON                        $'\uE626'              # î¦
      PUBLIC_IP_ICON                 $'\UF0AC'              # ï¬
      LOCK_ICON                      $'\UF023'              # ï£ 
      EXECUTION_TIME_ICON            $'\uF252'              # ï 
      SSH_ICON                       $'\uF489'              # ï 
    )
  ;;
  *)
    # Powerline-Patched Font required!
    # See https://github.com/Lokaltog/powerline-fonts
    # Set the right locale to protect special characters
    local LC_ALL="" LC_CTYPE="en_US.UTF-8"
    icons=(
      LEFT_SEGMENT_SEPARATOR         $'\uE0B0'              # î°
      RIGHT_SEGMENT_SEPARATOR        $'\uE0B2'              # î²
      LEFT_SEGMENT_END_SEPARATOR     ' '                    # Whitespace
      LEFT_SUBSEGMENT_SEPARATOR      $'\uE0B1'              # î±
      RIGHT_SUBSEGMENT_SEPARATOR     $'\uE0B3'              # î³
      CARRIAGE_RETURN_ICON           $'\u21B5'              # âµ
      ROOT_ICON                      $'\u26A1'              # â¡
      RUBY_ICON                      ''
      AWS_ICON                       'AWS:'
      AWS_EB_ICON                    $'\U1F331 '            # ð±
      BACKGROUND_JOBS_ICON           $'\u2699'              # â
      TEST_ICON                      ''
      TODO_ICON                      $'\u2611'              # â
      BATTERY_ICON                   $'\U1F50B'             # ð
      DISK_ICON                      $'hdd '
      OK_ICON                        $'\u2713'              # â
      FAIL_ICON                      $'\u2718'              # â
      SYMFONY_ICON                   'SF'
      NODE_ICON                      $'\u2B22'              # â¬¢
      MULTILINE_FIRST_PROMPT_PREFIX  $'\u256D'$'\u2500'
      MULTILINE_SECOND_PROMPT_PREFIX $'\u2570'$'\u2500 '
      APPLE_ICON                     'OSX'
      FREEBSD_ICON                   'BSD'
      ANDROID_ICON                   'And'
      LINUX_ICON                     'Lx'
      SUNOS_ICON                     'Sun'
      HOME_ICON                      ''
      HOME_SUB_ICON                  ''
      FOLDER_ICON                    ''
      NETWORK_ICON                   'IP'
      LOAD_ICON                      'L'
      SWAP_ICON                      'SWP'
      RAM_ICON                       'RAM'
      SERVER_ICON                    ''
      VCS_UNTRACKED_ICON             '?'
      VCS_UNSTAGED_ICON              $'\u25CF'              # â
      VCS_STAGED_ICON                $'\u271A'              # â
      VCS_STASH_ICON                 $'\u235F'              # â
      VCS_INCOMING_CHANGES_ICON      $'\u2193'              # â
      VCS_OUTGOING_CHANGES_ICON      $'\u2191'              # â
      VCS_TAG_ICON                   ''
      VCS_BOOKMARK_ICON              $'\u263F'              # â¿
      VCS_COMMIT_ICON                ''
      VCS_BRANCH_ICON                $'\uE0A0'              # î 
      VCS_REMOTE_BRANCH_ICON         $'\u2192'              # â
      VCS_GIT_ICON                   ''
      VCS_GIT_GITHUB_ICON            ''
      VCS_GIT_BITBUCKET_ICON         ''
      VCS_GIT_GITLAB_ICON            ''
      VCS_HG_ICON                    ''
      VCS_SVN_ICON                   ''
      RUST_ICON                      ''
      PYTHON_ICON                    ''
      SWIFT_ICON                     'Swift'
      GO_ICON                        'Go'
      PUBLIC_IP_ICON                 ''
      LOCK_ICON                      $'\UE0A2'
      EXECUTION_TIME_ICON            'Dur'
      SSH_ICON                       '(ssh)'
    )
  ;;
esac

# Override the above icon settings with any user-defined variables.
case $POWERLEVEL9K_MODE in
  'flat')
    # Set the right locale to protect special characters
    local LC_ALL="" LC_CTYPE="en_US.UTF-8"
    icons[LEFT_SEGMENT_SEPARATOR]=''
    icons[RIGHT_SEGMENT_SEPARATOR]=''
    icons[LEFT_SUBSEGMENT_SEPARATOR]='|'
    icons[RIGHT_SUBSEGMENT_SEPARATOR]='|'
  ;;
  'compatible')
    # Set the right locale to protect special characters
    local LC_ALL="" LC_CTYPE="en_US.UTF-8"
    icons[LEFT_SEGMENT_SEPARATOR]=$'\u2B80'                 # â®
    icons[RIGHT_SEGMENT_SEPARATOR]=$'\u2B82'                # â®
    icons[VCS_BRANCH_ICON]='@'
  ;;
esac

if [[ "$POWERLEVEL9K_HIDE_BRANCH_ICON" == true ]]; then
    icons[VCS_BRANCH_ICON]=''
fi

# Safety function for printing icons
# Prints the named icon, or if that icon is undefined, the string name.
function print_icon() {
  local icon_name=$1
  local ICON_USER_VARIABLE=POWERLEVEL9K_${icon_name}
  if defined "$ICON_USER_VARIABLE"; then
    echo -n "${(P)ICON_USER_VARIABLE}"
  else
    echo -n "${icons[$icon_name]}"
  fi
}

# Get a list of configured icons
#   * $1 string - If "original", then the original icons are printed,
#                 otherwise "print_icon" is used, which takes the users
#                 overrides into account.
get_icon_names() {
  # Iterate over a ordered list of keys of the icons array
  for key in ${(@kon)icons}; do
    echo -n "POWERLEVEL9K_$key: "
    if [[ "${1}" == "original" ]]; then
      # print the original icons as they are defined in the array above
      echo "${icons[$key]}"
    else
      # print the icons as they are configured by the user
      echo "$(print_icon "$key")"
    fi
  done
}
