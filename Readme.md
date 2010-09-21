# vimfiles

The vimfiles we use at Codegram. Best vim config ever :)

Ready for VIM 7.3!

In your home directory:

    git clone http://github.com/codegram/vimfiles.git .vim

    sh .vim/install.sh

## Cheatsheet
**Use with caution: strongly opinionated config**

####Some considerations first
* Leader is **,**
* Nullified arrow keys
* No backup files
* Move cursor by display lines instead of physical (j => gj)
* Autosave on lose focus
* _ is a word separator

###Mappings

####Normal mode
* &lt;space&gt; => Search, with very magic by default ("Normal" regex mode, [more info](http://vimdoc.sourceforge.net/htmldoc/pattern.html))
* ,&lt;space&gt; => Clear search highlight
* ,a => Ack search
* ,co => Comment lines
* ,v => Splits to a new vertical split and switch to it
* Control + [h,j,k,l] => move between splits
* Tab => Next buffer
* Shift+Tab => Previous buffer
* ,q => Save and close all (:wqa!)
* ,w => Save (:w!)
* ,<Esc> => Quit without saving (:q!)

####Insert mode
* jj => Back to normal mode

####Visual mode
* ,co => Comment lines

###Plugins
* Ack instead of grep
* Fugitive
* Rails
* Surround
* Haml
* Cucumber
* Speedating
* Yankring
* Taglist
* Peepopen support
* Nerdtree
* Sparkup
* Autocorrect
* TComment

####Colorschemes
*  af
*  clouds_midnight
*  **molokai (default)**
*  mustang
*  oceanblack
*  skittles_dark
*  twilight

### TODO

* Better description
* Document paste stuff