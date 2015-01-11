
##Inject
_____________________

This was a personal weekend challenge for Week 2 of Makers Academy. The task was to create a kernal method for the Array class, that would function as the existing inject() method does.

##Tools Used
* Ruby
* Rspec


## Domain Model / CRC

The my_inject() method needed to work with or without arguments, and should except either a block or a symbol, just as the existing inject() method does.

_______________________________

##Issues faced

I was able to write the method without too much difficulty, but it was a very long method and I struggled to split it into smaller methods that succeeded in passing the relevant information around. Once I realised that the block could be included as an argument using an '&' this suddenly became much easier.

##Future intentions

Whilst the methods used are concise, there are four methods used. I believe I could cut this down considerably if I used recursion.
