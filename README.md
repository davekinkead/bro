# BroFlex

Turn your contrib graph into ASCII art

## Usage

```ruby

bro = Bro.warmup({ repo: `my-github-repo.git` })
bro.draw "
	                             2                       2
	                  2        22222                   222
	      2         22222    222222333      333       2222
	     222  44  33333333  433333333333  333333     22223
	    333344444433333333444433334444333333333333  222333
	  3333444444444443334444444444444444333443333333444444
	444444444444444444444444444444444444444444444444444444
"

```

Copyright 2023 Dave Kinkead. Licensed under MIT
