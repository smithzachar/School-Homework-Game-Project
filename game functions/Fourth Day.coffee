define time = "Morning"
define day = 4

label introWork4:
  n "You have only today to finally do the rest of your homework before you are done for the end of the day or you will have to finish the other days or you will fail your project"
  z "Ok today is my last chance to finish my part of the work for the group project before I have to do the work when my teammate is doing theirs on the other days or I will fail us both"

  menu:

    "You finally finished all their is to do on your part of the work before you had to do the rest on the remaining days or you and your teammate would have failed"
    jump: introWork5

    "You have not been able to do the work and now you must either do the work on the other days and possibly loose some sleep while doing the work or you both will fail or just you if your partner does his part of the work and you will just fail instead"
    jump: introDistractions5

label introDistractions4:
  n "Today is the last day for you to finally work your part of the project and finally have energy drinks or soda's to get you faster to do your work or else you will have to do it the remaining days along with your partner to pass your part of the work along with your partner if he does his too"
  z "Ok that's it no more distrations im gonna force myself to do my work or I will be to forgive myself ever again no matter much my kindness just makes me try to forgive myself for not doing the work if I dont do it when I'm supposed too or if I'm having to do the work the remaining days"

  "You drink either energy drinks or soda's to get you to have enough energy to do your work on time"
  jump: introWork5

  "You got too distracted to do what you needed to do and got so disappointed in yourself to not forgive yourself with an emotion entirnal crisis and have to get yourself to work the other days or you fail your part of the project or your partner tries to do his to pass on time"
  jump: introDistractions5
