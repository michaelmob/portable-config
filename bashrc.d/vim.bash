#!/usr/bin/env bash

vim-quad() {
  vim -o "$2" "$4" -c "vs $1" -c 'wincmd j' -c "vs $3" -c 'wincmd k'
}
