ccli
================
Matthew Henderson
22/09/2021

-   [Requirements](#requirements)
-   [ccli](#ccli)
    -   [greedy](#greedy)
    -   [dsatur](#dsatur)
    -   [maxis](#maxis)
-   [Appendix](#appendix)
    -   [ccli\_greedy](#ccli_greedy)
    -   [ccli\_dsatur](#ccli_dsatur)
    -   [ccli\_maxis](#ccli_maxis)

A command-line interface for Culberson’s colouring programs.

## Requirements

To use the expect scripts directly (see the Appendix) requires

-   Expect (<http://expect.sourceforge.net/>)

<!-- -->

    apt-get install expect

and

-   Culberson’s Coloring Programs
    (<http://webdocs.cs.ualberta.ca/~joe/Coloring/Colorsrc/index.html>)

Using ccli also requires:

-   Bash &gt;= 4.0
-   Docopts (<https://github.com/docopt/docopts>)

<!-- -->

    cd /opt
    git clone https://github.com/docopt/docopts.git
    ./get_docopts.sh
    cp docopts /usr/local/bin

## ccli

### greedy

``` sh
export PATH=$PATH:.

ccli greedy --type="simple"\
            --ordering="decdeg"\
            --seed=42\
            --kempe\
            ../queen-colouring/queen16_16.col
#> spawn greedy ../queen-colouring/queen16_16.col
#> J. Culberson's Implemenation of
#>      GREEDY
#> A program for coloring graphs.
#> For more information visit the webpages at: 
#> 
#>  http://www.cs.ualberta.ca/~joe/Coloring/index.html
#> 
#> This program is available for research and educational purposes only.
#> There is no warranty of any kind.
#> 
#>  Enjoy!
#> 
#> Do you wish to use the cheat if present? (0-no, 1-yes) 
#> 0
#> ASCII format
#> number of vertices = 256
#> p edge 256 12640
#> Number of edges = 12640 edges read = 12640
#> GRAPH SETUP cpu =  0.00
#> Enter seed for search randomization: 42
#>  42
#> Process pid = 4366
#> GREEDY TYPE SELECTION
#>  1   Simple Greedy
#>  2   Largest First Greedy
#>  3   Smallest First Greedy
#>  4   Random Sequence Greedy
#>  5   Reverse Order Greedy
#>  6   Stir Color Greedy
#> Which for this program 0 1
#> 1
#> Initial Vertex Ordering:
#>  1 -- inorder
#>  2 -- random
#>  3 -- decreasing degree
#>  4 -- increasing degree
#>  5 -- LBFS random
#>  6 -- LBFS decreasing degree
#>  7 -- LBFS increasing degree
#> Using: 3
#> 3
#> Use kempe reductions y/n y
#> y
#> CLRS =24 CLRSUM = 8701
#> Coloring Verified
#> Coloring time cpu =  0.00
```

### dsatur

``` sh
export PATH=$PATH:.

ccli dsatur --ordering="random"\
            --seed=42\
            ../queen-colouring/queen16_16.col
#> spawn dsatur ../queen-colouring/queen16_16.col
#> J. Culberson's Implemenation of
#>      DSATUR
#> A program for coloring graphs.
#> For more information visit the webpages at: 
#> 
#>  http://www.cs.ualberta.ca/~joe/Coloring/index.html
#> 
#> This program is available for research and educational purposes only.
#> There is no warranty of any kind.
#> 
#>  Enjoy!
#> 0
#> 
#> Do you wish to use the cheat if present? (0-no, 1-yes) 
#> ASCII format
#> number of vertices = 256
#> p edge 256 12640
#> Number of edges = 12640 edges read = 12640
#> GRAPH SETUP cpu =  0.00
#> Enter seed for search randomization: 42
#>  42
#> Process pid = 4388
#> 
#>  DSATUR COLORING
#> Initial Vertex Ordering:
#>  1 -- inorder
#>  2 -- random
#>  3 -- decreasing degree
#>  4 -- increasing degree
#> Using: 2
#> 2
#> CLRS =21 CLRSUM = 7867
#> Coloring Verified
#> Coloring time cpu =  0.00
```

### maxis

``` sh
export PATH=$PATH:.

ccli maxis --seed=42\
           ../queen-colouring/queen16_16.col
#> spawn maxis ../queen-colouring/queen16_16.col
#> J. Culberson's Implemenation of
#>      MAXIS
#> A program for coloring graphs.
#> For more information visit the webpages at: 
#> 
#> 0
#>  http://www.cs.ualberta.ca/~joe/Coloring/index.html
#> 
#> This program is available for research and educational purposes only.
#> There is no warranty of any kind.
#> 
#>  Enjoy!
#> 
#> Do you wish to use the cheat if present? (0-no, 1-yes) 
#> ASCII format
#> number of vertices = 256
#> p edge 256 12640
#> Number of edges = 12640 edges read = 12640
#> GRAPH SETUP cpu =  0.00
#> Enter seed for search randomization: 42
#> 13 3   2 3
#> 6 2
#> 0 4
#>  42
#> Process pid = 4409
#> 
#>  MAXIS COLORING
#> Vertex Num, Cutlim in decreasing order to 0
#> 12 3
#> 6 2
#> 0 4
#> Backtrack limit = 0 means no limit to backtrack
#> Backtrack limit = k means do not backtrack over first k
#> Upsort limit(U) and Midsort limit(M) with |G| =N
#>  if NumRem > (U*N)/100 then sort by decreasing degree
#>  else if NumRem > (M*N)/100 then sort by medium degree
#>  else sort by increasing degree
#> Enter Backtrack Limit, UpSort Limit, Midsort Limit0 0, 2, 4
#> 0 0 0
#> Independent Set for clr 1 bcindex = 15 CPU =  0.04
#> Independent Set for clr 2 bcindex = 15 CPU =  0.03
#> Independent Set for clr 3 bcindex = 15 CPU =  0.02
#> Independent Set for clr 4 bcindex = 16 CPU =  0.02
#> Independent Set for clr 5 bcindex = 15 CPU =  0.02
#> Independent Set for clr 6 bcindex = 15 CPU =  0.02
#> Independent Set for clr 7 bcindex = 15 CPU =  0.01
#> Independent Set for clr 8 bcindex = 15 CPU =  0.01
#> Independent Set for clr 9 bcindex = 15 CPU =  0.01
#> Independent Set for clr 10 bcindex = 15 CPU =  0.01
#> Independent Set for clr 11 bcindex = 14 CPU =  0.00
#> Independent Set for clr 12 bcindex = 14 CPU =  0.00
#> Independent Set for clr 13 bcindex = 14 CPU =  0.00
#> Independent Set for clr 14 bcindex = 14 CPU =  0.00
#> Independent Set for clr 15 bcindex = 13 CPU =  0.00
#> Independent Set for clr 16 bcindex = 12 CPU =  0.00
#> Independent Set for clr 17 bcindex = 11 CPU =  0.00
#> Independent Set for clr 18 bcindex = 11 CPU =  0.00
#> Independent Set for clr 19 bcindex = 2 CPU =  0.00
#> CLRS =19 CLRSUM = 7203
#> Coloring Verified
#> Coloring time cpu =  0.20
```

## Appendix

You can use each of the scripts individually. They have a very different
interface to ccli. These programs are all generated by autoexpect.

### ccli\_greedy

``` sh
./lib/ccli_greedy ../queen-colouring/queen16_16.col 1 y 1 42 1
#> spawn greedy ../queen-colouring/queen16_16.col
#> J. Culberson's Implemenation of
#>      GREEDY
#> A program for coloring graphs.
#> For more information visit the webpages at: 
#> 
#>  http://www.cs.ualberta.ca/~joe/Coloring/index.html
#> 
#> This program is available for research and educational purposes only.
#> There is no warranty of any kind.
#> 
#>  Enjoy!
#> 
#> Do you wish to use the cheat if present? (0-no, 1-yes) 
#> 1
#> ASCII format
#> number of vertices = 256
#> p edge 256 12640
#> Number of edges = 12640 edges read = 12640
#> GRAPH SETUP cpu =  0.00
#> Enter seed for search randomization: 42
#>  42
#> Process pid = 4416
#> GREEDY TYPE SELECTION
#>  1   Simple Greedy
#>  2   Largest First Greedy
#>  3   Smallest First Greedy
#>  4   Random Sequence Greedy
#>  5   Reverse Order Greedy
#>  6   Stir Color Greedy
#> Which for this program 0 1
#> 1
#> Initial Vertex Ordering:
#>  1 -- inorder
#>  2 -- random
#>  3 -- decreasing degree
#>  4 -- increasing degree
#>  5 -- LBFS random
#>  6 -- LBFS decreasing degree
#>  7 -- LBFS increasing degree
#> Using: 1
#> 1
#> Use kempe reductions y/n y
#> y
#> CLRS =22 CLRSUM = 8142
#> Coloring Verified
#> Coloring time cpu =  0.00
```

### ccli\_dsatur

``` sh
./lib/ccli_dsatur ../queen-colouring/queen16_16.col 1 1 42
#> spawn dsatur ../queen-colouring/queen16_16.col
#> J. Culberson's Implemenation of
#>      DSATUR
#> A program for coloring graphs.
#> For more information visit the webpages at: 
#> 
#>  http://www.cs.ualberta.ca/~joe/Coloring/index.html
#> 
#> This program is available for research and educational purposes only.
#> There is no warranty of any kind.
#> 
#>  Enjoy!
#> 
#> Do you wish to use the cheat if present? (0-no, 1-yes) 
#> 1
#> ASCII format
#> number of vertices = 256
#> p edge 256 12640
#> Number of edges = 12640 edges read = 12640
#> GRAPH SETUP cpu =  0.00
#> Enter seed for search randomization: 42
#>  42
#> Process pid = 4423
#> 
#>  DSATUR COLORING
#> Initial Vertex Ordering:
#>  1 -- inorder
#>  2 -- random
#>  3 -- decreasing degree
#>  4 -- increasing degree
#> Using: 1
#> 1
#> CLRS =24 CLRSUM = 8700
#> Coloring Verified
#> Coloring time cpu =  0.00
```

### ccli\_maxis

``` sh
./lib/ccli_maxis ../queen-colouring/queen16_16.col 1 42
#> spawn maxis ../queen-colouring/queen16_16.col
#> J. Culberson's Implemenation of
#>      MAXIS
#> A program for coloring graphs.
#> For more information visit the webpages at: 
#> 
#>  http://www.cs.ualberta.ca/~joe/Coloring/index.html
#> 
#> This program is available for research and educational purposes only.
#> There is no warranty of any kind.
#> 
#>  Enjoy!
#> 
#> Do you wish to use the cheat if present? (0-no, 1-yes) 
#> 1
#> ASCII format
#> number of vertices = 256
#> p edge 256 12640
#> Number of edges = 12640 edges read = 12640
#> GRAPH SETUP cpu =  0.00
#> Enter seed for search randomization: 42
#>  42
#> Process pid = 4430
#> 
#>  MAXIS COLORING
#> Vertex Num, Cutlim in decreasing order to 0
#> 13 3   2 3
#> 12 3
#> 6 2
#> 6 2
#> 0 4
#> 0 4
#> Backtrack limit = 0 means no limit to backtrack
#> Backtrack limit = k means do not backtrack over first k
#> Upsort limit(U) and Midsort limit(M) with |G| =N
#>  if NumRem > (U*N)/100 then sort by decreasing degree
#>  else if NumRem > (M*N)/100 then sort by medium degree
#>  else sort by increasing degree
#> Enter Backtrack Limit, UpSort Limit, Midsort Limit0 0, 2, 4
#> 0 0 0
#> Independent Set for clr 1 bcindex = 15 CPU =  0.04
#> Independent Set for clr 2 bcindex = 15 CPU =  0.03
#> Independent Set for clr 3 bcindex = 15 CPU =  0.03
#> Independent Set for clr 4 bcindex = 16 CPU =  0.02
#> Independent Set for clr 5 bcindex = 15 CPU =  0.02
#> Independent Set for clr 6 bcindex = 15 CPU =  0.02
#> Independent Set for clr 7 bcindex = 15 CPU =  0.01
#> Independent Set for clr 8 bcindex = 15 CPU =  0.01
#> Independent Set for clr 9 bcindex = 15 CPU =  0.01
#> Independent Set for clr 10 bcindex = 15 CPU =  0.01
#> Independent Set for clr 11 bcindex = 14 CPU =  0.00
#> Independent Set for clr 12 bcindex = 14 CPU =  0.00
#> Independent Set for clr 13 bcindex = 14 CPU =  0.00
#> Independent Set for clr 14 bcindex = 14 CPU =  0.00
#> Independent Set for clr 15 bcindex = 13 CPU =  0.00
#> Independent Set for clr 16 bcindex = 12 CPU =  0.00
#> Independent Set for clr 17 bcindex = 11 CPU =  0.00
#> Independent Set for clr 18 bcindex = 11 CPU =  0.00
#> Independent Set for clr 19 bcindex = 2 CPU =  0.00
#> CLRS =19 CLRSUM = 7203
#> Coloring Verified
#> Coloring time cpu =  0.21
```
