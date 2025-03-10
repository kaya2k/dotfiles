# Neovim Keymaps

```
<space> as a leader key
```

## General Keymaps

```
J    move visual block one line up
K    move visual block one line down
<C-h>    move to the window left
<C-j>    move to the window below
<C-k>    move to the window above
<C-l>    move to the window right
<leader>x    split horizontal
<leader>v    split vertical
<leader>q    close current window (exits vim if there are no splits)
<leader>w    write current buffer
<leader>n    create a new buffer in current window
<leader><space>    hide search highlights
```

## Completion, Lsp, Diagnostic Keymaps

```
<CR>    invoke completion
<C-n>    select next item
<C-p>    select previous item
<leader>e    open floating diagnostic window for current line
<leader>r    rename all references
<leader>d    jump to the definition
<leader>D    jump to the declaration
<leader>i    list all the implementations
<leader>R    list all the references
<leader>H    display hover information (twice to jump into the floating window)
```

## Telescope, Lazygit Keymaps

```
<leader>f    search for files in the working directory
<leader>l    search for a string in the working directory
<leader>b    search for buffers in current vim instance
<leader>h    search for help tags
<leader>g    open floating lazygit window
```

## Nvim-tree Keymaps

### general keymaps

```
q    exit nvim-tree
H    toggle hidden filter
I    toggle gitignore filter
y    copy filename
Y    copy relative path
gy   copy absolute path
<C-k>    show info popup
<leader>t    toggle nvim-tree
```

### navigation

```
E    expand all folders
W    collapse all folders
J    navigate to last sibiling
K    navigate to first sibling
P    navigate to parent directory
<BS>    collapse parent directory
<C-]>    change root to node
```

### file management

```
o    open file
a    create file or directory
d    delete file or directory
r    rename
c    copy
x    cut
p    paste
<C-x>    open file in horizontal split
<C-v>    open file in vertical split
<C-r>    rename omitting original name
```

