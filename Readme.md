# vimfiles

The vimfiles we use at Codegram. Best vim config ever :)

Ready for VIM 7.3!

##Installation
In your home directory:

    git clone http://github.com/codegram/vimfiles.git .vim

    sh .vim/install.sh

##Mappings
**Use with caution: strongly opinionated config**

###Normal mode
* **Space** => Search, with very magic by default ("Normal" regex mode, [more info](http://vimdoc.sourceforge.net/htmldoc/pattern.html))
* **,Space** => Clear search highlight
* **,v** => Splits to a new vertical split and switch to it
* **Control + [h,j,k,l]** => move between splits
* **Tab** => Next buffer
* **Shift + Tab** => Previous buffer
* **,q** => Save and close all (:wqa!)
* **,w** => Save (:w!)
* **,Esc** => Quit without saving (:q!)
* **F4** => Toggle Numberlock mode (Numbers mapped to !"·$%&/()...)

###Insert mode
* **jj** => Back to normal mode

###Plugins related
* **,a** => Ack search
* **Control + [n,p]** => Rotate Ack results
* **,co** => Comment lines
* **,b** => Buffer list. Select buffer with 1, 2, 3...
* **,l** => Tag list
* **,o** => PeepOpen
* **,p** => Nerd tree

##Plugins
* [Ack (instead of grep)](http://github.com/mileszs/ack.vim)
* [Autocorrect](http://github.com/panozzaj/vim-autocorrect)
* [Cucumber](http://github.com/tpope/vim-cucumber)
* [Endwise](http://github.com/tpope/vim-endwise.git)
* [Fugitive](http://github.com/tpope/vim-fugitive)
* [Gist](http://www.vim.org/scripts/script.php?script_id=2423)
* [Haml](http://github.com/tpope/vim-haml)
* [LustyJuggler](http://www.vim.org/scripts/script.php?script_id=2050)
* [Nerdtree](http://github.com/scrooloose/nerdtree)
* [Numberlock](http://github.com/codegram/vim-numberlock)
* [Pathogen](http://github.com/tpope/vim-pathogen) 
* [Peepopen](http://peepcode.com/products/peepopen)
* [Rails](http://github.com/tpope/vim-rails)
* [Snipmate](http://github.com/msanders/snipmate.vim)
* [Sparkup](http://github.com/rstacruz/sparkup)
* [Speedating](http://github.com/tpope/vim-speeddating)
* [Surround](http://github.com/tpope/vim-surround)
* [Syntastic](http://github.com/scrooloose/syntastic.git)
* [Taglist](http://github.com/chrismetcalf/vim-taglist)
* [TComment](http://github.com/tsaleh/vim-tcomment)
* [Todo](http://github.com/codegram/vim-todo)
* [Yankring](http://github.com/chrismetcalf/vim-yankring)


##Colorschemes
*  [af](http://www.vim.org/scripts/script.php?script_id=950)
*  [Clouds midnight](http://forr.st/~yZn)
*  [**molokai (default)**](http://www.vim.org/scripts/script.php?script_id=2340)
*  [mustang](http://hcalves.deviantart.com/art/Mustang-Vim-Colorscheme-98974484)
*  [oceanblack](http://www.vim.org/scripts/script.php?script_id=603)
*  [skittles_dark](http://www.vim.org/scripts/script.php?script_id=2595)
*  [twilight](http://www.vim.org/scripts/script.php?script_id=1677)

###Some considerations
* Leader is **,**
* Nullified arrow keys
* No backup files
* Move cursor by display lines instead of physical (j => gj)
* Autosave on lose focus
* _ is a word separator
* Font is Monaco 12

### TODO
* Better description
* Document paste stuff
