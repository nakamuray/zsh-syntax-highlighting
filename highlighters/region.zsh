_zsh_highlight-region() {
  if (( REGION_ACTIVE )); then
    if (( MARK < CURSOR )); then
      region_highlight+=("${MARK} ${CURSOR} standout")
    else
      region_highlight+=("${CURSOR} ${MARK} standout")
    fi
  fi
}

_zsh_highlight_add-highlighter _zsh_highlight-region _zsh_highlight_cursor-moved-p
