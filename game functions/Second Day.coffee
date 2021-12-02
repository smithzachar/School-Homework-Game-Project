# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"
define time = "Morning"
define day = 2


label introAfterDistraction:
  n "You got ready on time for one of your other classes in the morning then did some of your homework before you had to go to two of your other classes you have in different days"
  n "You finished both your classes in the morning then got home to start doing your homework"
  z "How am i gonna be able to finish the amount i need to finish from yesterday and today"

  menu:

    "Get distraced again for half of the day"
    jump: introDistraction2

    "Make up for the work you had to do yesterday then do the work today"
    jump: introWork2

label introAfterMusic:
   n "You got ready on time for the two of other classes you have for different days of the week for the morning then got home your classes to start doing your homework"
   z "Ok finally I can get to doing this work again to finish on time"

   menu:

     "Do the work while listening to music and taking breaks"
     jump: introMusic2

     "Get too distracted to do work for half of the day"
     jump: introDistraction2


label introSleep:
  n "You had plenty of sleep then woke up real early at 3:00 in the morning then you drink coffee in the morning then get ready for your classes today then you head back home to finsih your homework"
  z "Man i had a good day today im gonna do my work now"

  menu:

    "Get the amount of work for the day done while taking while listening to music"
    jump: introMusic2

    "Get too excited from your good day you got distracted too do the work for half of the day"
    jump: introDistraction2

label introMusic2:
  n "You were able to finish the work you needed to do for the project for the day while listen to music whike taking breaks for the day"
  z "finally i did alot of work again and now i can go to sleep for the night"

  jump: introwork3

label introWork2:
  n "You finally Were able to do the work on time with plenty of the homework done for tomorrow to finish on time"
  z "I finally make up for all the work i didn't do guess can go to sleep for the night now"

define time = "Noon"
define day = 2

label introDistraction2:
  n "You became too distracted on have of the work today"
  z "Darn it I forgot to do my work for half the day again"
  n "You start to actually tried to focus on figuring out a way to get yourself focus before you get distracted again"

  menu:

    "You were finally able to focus on the work but putting music while not taking breaks to also make up what you didn't do"
    jump: introWork3

    "Dispite trying to do the work so many times to finish what u needed to do in order to finish on time you got distracted by playing games when u tried to actually put music on to focus working"
    jump: introDistractions3
