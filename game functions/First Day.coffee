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

# define is the Ren'Py keyword for defining a variable.
define time = "Noon"
define day = 1

define n = Character("Narrator", "FFFFFF")
define z = Character("Zachary Smith", "0033FF")
define j = Character("Jonathan Vega", "0033FF")
define m = Character("Mom", "0033FF")
define i = Character("Mr.Isaacks", "0033FF")

label start: # Label is the location or mark to be returned to. much like a line number.


n "Today after class you and your group had a assignment due in three days."
n "You and your group decided on what to do for the project before it was due."
j "So we both know what to do on the project to finish in one week by having one of us work for 4 days then the other 3 days right?"
z "Yep"
j "Alright then, then lets do our project for individual work for what we decided to work on with our own ideas on how to do them."
n "so you all went to your homes and began to start on the project in order to get it done on time but don't get too distracted or you won't be able to complete your work on time."

menu: # menu: is the keyword to create a player choice.
   "What will you do to do the project on the first day"

"Slack off for half of the day":
  jump: introSlack # The jump keyword sends us to a label we define after the keyword. This is a GoTo

"Do the work while listening to music":
  jump: introWork

define time = "Afternoon"
define day = 1

label introSlack:
  n "You slacked off for half the day without noticing then you checked to see you slacked off to much time to get the first part of your homework done."
  z "Oh shoot i gotta focus on doing my work before i won't be able to finish it the next 2 days before it's due."

  menu:
    "What will you do now?"

    "Get distracted more for by mistake for the rest of the day"
    jump: introDistracted

    "Work while listening to music"
    jump: introMusic

define time = "Night"
define day = 1

    label introDistracted:
      n "You accidently got distracted again when you tried to do your work but ended up overplaying instead then your mom enters the room"
      m "Zach did you start on your homework yet? (Looks at your computer as you fail to barely change on time) ZACHARY! why are you on your games get to your homework right now"
      n "She yells as she was angry at you for getting a bit distracted from doing the work"
      z "I'm sorry Mom I somehow can't get my head to focus for some reason"
      m "(Looks at you as you look sorry for getting too distracted too distracted to get your work done) well ok then just try to focus tomorrow on the work get some rest ok?"
      z "(Looks worried if he can focus on his work tomorrow) Ok Mom i will try thank you"

      jump: introAfterDistraction

    label introMusic:
      n "You were able to finish plenty of your work before the next day"
      m "(Walks in) Hey Zachary how are you doing with your homework?"
      z "Pretty good I've got plenty of it done"
      m "Good now please don't overwork and go to bed soon"
      z "I know I was about to do that"
      m "Good I'm glad to hear that"
      n "You went to bed for the night"

      jump: introAfterMusic

label introWork:
  n "You managed to do alot of work done for the first day."
  z "Nice i can finally relax and chill out for the rest of the day so that i can work again tomorrow before its due the next few days"

  n  "You get ready for bed"
  n  "Then you went straight to sleep"

  jump: introSleep
