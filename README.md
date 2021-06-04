#Magnemite-Amie

#Summary:
#I took my very first coding class that intrduced me to outputing images in college this year.
#I'm mad that I didn't get to it sooner, but of corse my first instinct was to make something familiar to me, and I chose magnemite!
#My coding class then introduced us to worlds- images that alter their state with variables that update in real time- so of corse I had to have some fun. 
#His mechanichal movements are largley based off how magnemite were animated in the movie Pokemon Giritina and the Sky Warrior-
#Not on Purpose, I just realized that Magnemite are not always animated with rotating parts, and that's likley where I got this from
#He turns beautifly but he jitters because as he rotates the center of his image changes, and the world always places his center in the center of the screen
#However I happen to love his jitters. Please to not ever change his jitters.
#Anyway, when I was introduced to how the mouse variables are able to change, I made a disembodied eye follow and interact with the mouse pointer
#I want to combine the disembodied animated eye with the rotating boi to make a little window where magnemite is just in the corner of your screen enjoying itself.
#And I don't want to loose the code when I enevitably loose the file somehow. 
#-------------------------------------------------------------------------------------------------------


#Things to know


#Notes in the code:
#Unfourtunatley there aren't consistent notes in the code on what all the code does. I'll try to fix that.

#Racket:
#The coding language is Raket. 
#It's niche but powerfull and flexible in weird ways, but the main thing is the function syntax is that function then the inputs inside quatation marks.
#for example, where python would like (1+1) Raket likes (+ 1 1)
# download Raket here:
# https://download.racket-lang.org/
# help finding what any function does is here: 
# file:///C:/Program%20Files/Racket/doc/search/index.html
#you can also right-click on the function directly and choose "open in help desk"


#leftover code comments:
#I was using a template for making worlds in raket for much of the code, but I was also useing a method of coding called HTDF, or
#how to design functions. This method includes:
#First naming the function, recognising the type of it's intake and output, and defining all the variables.
#Then writing test cases(check-expect) wich will see if your code does what you want it to. The check-expects are run with a variable of the same type of the desired output,
#just to make sure there's no error in the check expect or misconception about the input and putput type.
#then you make a template that will do what you want your code to do structurally. This is especailly helpfull with recursivel loops.
#I often leave a copy of the templete in the code file commented out, in case I feel I want to start from scratch
#Finaly you run your check expects and ensure they work.
#This flow is meant to be done for every individual minimally complicated function in the file. 
#For large projects with complicated code this saves a lot of time in debuging.
#But I'm mostly explaining it so I remember how it works and also why there's so much mess splattered around the code.
