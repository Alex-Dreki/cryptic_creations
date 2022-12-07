end_game <- 0

while(end_game < 1){
death_count <- 0
flare_gun <- 0 
searchobj <- 0
tele <- 0
car <-  0
boat <- 0
escape <- 0

#Jason pick
print('Pick your Jason')
jason <-readline('Options: PartVIII, PartV, PartVII ') 
if(jason == 'PartVIII') {
  death_count <- sample(1:5, 1, prob = c(.2 , .1, .2, .2, .3))
}
if(jason == 'PartV') {
  death_count <- sample(0:3, 1, prob = c(.2 , .2, .3, .3))
}
if(jason == 'PartVII') {
  death_count <- sample(0:2, 1, prob = c(.3 , .4, .3))
}


#Character pick
print('Pick your Character')
char <-readline('Options: AJ, Chad, Tiffany ') 


if(char == 'AJ'){
  death_count <- death_count + sample(0:2, 1, prob = c(.2 , .4, .4))
}
if(char == 'Chad'){
  death_count <- death_count + sample(0:2, 1, prob = c(.2 , .4, .4))
}
if(char == 'Tiffany'){
  death_count <- death_count + sample(0:2, 1, prob = c(.2 , .4, .4))
}

# Next actions
print('You are at Camp Crystal Lake with your friends. You are sat around a campfire with tents behind you. Out of no where, to your left, Jason kills Tommy then turns to you')
print('What do you do?')
action <-readline('Options: Run(1), Hide in a tent(2)), Throw a shoe(3)') 


if(action == '1'){
  death_count <- death_count + sample(0:2, 1, prob = c(.3 , .3, .4))
}
if(action == '2'){
  death_count <- death_count + sample(5:15, 1)
  print('Did you really just hide in a tent in front of him? Fucking run!')
    reaction <-readline('Do you run now?(Y/N)') 
    if(reaction == 'Y') {
      death_count <- death_count + sample(0:2, 1, prob = c(.3 , .3, .4))
    }
    if(reaction == 'N'){
    print('You fucking idiot! Run!')
    }
}
if(action == '3'){
  death_count <- death_count + sample(5:10, 1)
  print('Did you really just throw your shoe at him? Fucking run!')
}


if(death_count >= 25){
  print('You died, Jason has caught and killed you')
}

#Now that you have ran...
print('Now that you are running, you notice Jason is no longer behind you')
print('What do you do?')
option1 <-readline('Options: Search a house for goodies(1), Run even more(2), Taunt Jason(3)') 
#For if you searched
if(option1 == 1){
      if(jason == 'PartVIII') { #       Finds or no
        ProbJ <- sample(1:2, 1, prob = c(.5, .5))
      }
      if(jason == 'PartV') {
        ProbJ <- sample(1:2, 1, prob = c(.4, .6))
      }
      if(jason == 'PartVII') {
        ProbJ <- sample(1:2, 1, prob = c(.7, .3))
      }
              if(ProbJ == 2) {
                print('You found a flare gun!')
                flare_gun <- flare_gun + 1
              } 
              if(ProbJ == 1) {
                print('Jason appears!')
                  if(jason == 'PartVIII') { #       Hits  no hit
                    ProbHit <- sample(1:2, 1, prob = c(.6, .4))
                  }
                  if(jason == 'PartV') {
                    ProbHit <- sample(1:2, 1, prob = c(.5, .5))
                  }
                  if(jason == 'PartVII') {
                    ProbHit <- sample(1:2, 1, prob = c(.3, .7))
                  }
                        if(ProbHit == 1) {
                          print('Ouch! You got hit')
                          if(jason == 'PartVIII') {
                            death_count <- death_count + sample(1:5, 1)
                          }
                          if(jason == 'PartV') {
                            death_count <- death_count + sample(1:3, 1)
                          }
                          if(jason == 'PartVII') {
                            death_count <- death_count + sample(0:2, 1)
                          }
                        } else print('You managed to escape unharmed!') }
  
}

#You ran
if(option1 == 2){
  if(jason == 'PartVIII') { #       Finds or no
    ProbJ <- sample(1:2, 1, prob = c(.6, .4))
  }
  if(jason == 'PartV') {
    ProbJ <- sample(1:2, 1, prob = c(.4, .6))
  }
  if(jason == 'PartVII') {
    ProbJ <- sample(1:2, 1, prob = c(.2, .8))
  }
            if(ProbJ == 2) {
              print('You continue running')
            } 
            if(ProbJ == 1) {
              print('Jason appears and begins to chase you!')
                      if(jason == 'PartVIII') { #       Hits  no hit
                        ProbHit <- sample(1:2, 1, prob = c(.5, .5))
                      }
                      if(jason == 'PartV') {
                        ProbHit <- sample(1:2, 1, prob = c(.4, .6))
                      }
                      if(jason == 'PartVII') {
                        ProbHit <- sample(1:2, 1, prob = c(.2, .8))
                      }
                                if(ProbHit == 1) {
                                  if(jason == 'PartVIII') {
                                    death_count <- death_count + sample(1:5, 1)
                                  }
                                  if(jason == 'PartV') {
                                    death_count <- death_count + sample(1:3, 1)
                                  }
                                  if(jason == 'PartVII') {
                                    death_count <- death_count + sample(0:2, 1)
                                  }
                                } else print('You managed to escape unharmed!') }

}

#You taunted
if(option1 == 3){
  if(jason == 'PartVIII') { #       Finds or no
    ProbJ <- sample(1:2, 1, prob = c(.99, .01))
  }
  if(jason == 'PartV') {
    ProbJ <- sample(1:2, 1, prob = c(.9, .1))
  }
  if(jason == 'PartVII') {
    ProbJ <- sample(1:2, 1, prob = c(.8, .2))
  }
            if(ProbJ == 2) {
              print('You lucky mother fucker')    
              reaction <-readline('Do you run now?(Y/N)') 
              if(reaction == 'Y') {
                death_count <- death_count + sample(1:3, 1, prob = c(.3 , .3, .4))
                print('As you FINALLY run, he appears and injures you')
              } else print('You died.. Really?')
            } 
            if(ProbJ == 1) {
                      print('Jason appears and begins to chase you... No surprise')
                      if(jason == 'PartVIII') { #       Hits  no hit
                        ProbHit <- sample(1:2, 1, prob = c(.7, .3))
                      }
                      if(jason == 'PartV') {
                        ProbHit <- sample(1:2, 1, prob = c(.6, .4))
                      }
                      if(jason == 'PartVII') {
                        ProbHit <- sample(1:2, 1, prob = c(.3, .7))
                      }
                              if(ProbHit == 1) {
                                print('Jason injured you')
                                if(jason == 'PartVIII') {
                                  death_count <- death_count + sample(1:5, 1)
                                }
                                if(jason == 'PartV') {
                                  death_count <- death_count + sample(1:3, 1)
                                }
                                if(jason == 'PartVII') {
                                  death_count <- death_count + sample(0:2, 1)
                                }
                              } else print('You managed to escape unharmed... lucky mother fucker') }
}

if(death_count >= 25){
  print('You died, Jason has caught and killed you')}


print('You run')
#Find telephone, fix a car, fix a boat
print('With Jason not in sight, you have time to try and escape')



while(escape < 1 && death_count < 25 ){
print('What do you want to do?')
option2 <-readline('Options: Search for a telephone(1), Try to fix a car(2), Try to fix a boat(3)') 

#Tele
if(option2 == 1){
  #searching for telephone
  # Where search
  print('Where would you like to search?')
  locationt <- readline('Campfire(1), mansion(2), cabins(3), or barn(4)')
  
  #Campfire
  if(locationt == 1){
      #Jason being there
      if(jason == 'PartVIII') { #       Finds or no
        ProbJ <- sample(1:2, 1, prob = c(.6, .4))
      }
      if(jason == 'PartV') {
        ProbJ <- sample(1:2, 1, prob = c(.5, .5))
      }
      if(jason == 'PartVII') {
        ProbJ <- sample(1:2, 1, prob = c(.5, .5))
      }
      print('You approach the campfire')#because that's where a phone is
                if(ProbJ == 1) {
                  print('Jason appears!')
                  if(jason == 'PartVIII') { #       Hits  no hit
                    ProbHit <- sample(1:2, 1, prob = c(.7, .3))
                  }
                  if(jason == 'PartV') {
                    ProbHit <- sample(1:2, 1, prob = c(.6, .4))
                  }
                  if(jason == 'PartVII') {
                    ProbHit <- sample(1:2, 1, prob = c(.5, .5))
                  }
                          if(ProbHit == 1) {   #Jason hurts
                            print('Jason attacks you')
                            if(flare_gun == 0){
                              print('Jason injures you as you run away')
                              if(jason == 'PartVIII') {
                                death_count <- death_count + sample(1:8, 1)
                              }
                              if(jason == 'PartV') {
                                death_count <- death_count + sample(1:6, 1)
                              }
                              if(jason == 'PartVII') {
                                death_count <- death_count + sample(1:4, 1)
                              }
                            }
                              if(flare_gun == 1) { #Flare gun op
                                print('Would you like to try and use your flare gun to escape?')
                                flarecamp <- readline('Y/N?')
                                      if(flarecamp == 'Y') {        #1 work, 2 fail
                                        flareworkc <- sample(1:2, 1, prob = c(.6, .4))
                                        flare_gun <- flare_gun - 1
                                              if(flareworkc == 1) {
                                                print('Your flare hit Jason in the eye and you run away safetly!')
                                              }
                                              if(flareworkc == 2) {
                                                  print('The flare gun missed! Jason injured you as you run away')
                                                  if(jason == 'PartVIII') {
                                                    death_count <- death_count + sample(1:8, 1)
                                                  }
                                                  if(jason == 'PartV') {
                                                    death_count <- death_count + sample(1:6, 1)
                                                  }
                                                  if(jason == 'PartVII') {
                                                    death_count <- death_count + sample(1:4, 1)
                                                  }
                                              }
                                      }
                                    
                                                    
                                                  } 
                              }
                            
                } 
                                      if(ProbHit == 2){
                                        print('Jason misses and you run away')
                                      }
                  if(ProbJ == 2) {
                    print('You do not currently see Jason. Where would you like to search?')
                    searchc <- readline('Tent(1), trees(2), the fire(3)') #not sure why this is smart
                          #Tent
                          if(searchc == 1){             #find = 1, no find = 2
                            probfindc <- sample(1:2, 1, prob = c(.1, .9))
                            searchobj <- searchobj + 1 
                          }
                          #Trees
                          if(searchc == 2){
                            probfindc <- sample(1:2, 1, prob = c(.05, .95))
                            searchobj <- searchobj + 1
                          }
                          #Fire
                          if(searchc == 3){
                            probfindc <- 2
                            print('Much to your disbelief, there is no phone in the firepit')
                          }
                                    #Did you find it?
                                    #Find
                                    if(probfindc == 1){
                                      print('You found a telephone! Would you like to use it to call the Police?')
                                      CampPopo <- readline('Y/N?')
                                          if(CampPopo == 'Y'){
                                            print('You call the Police and they arrive on site in 5 minutes.')
                                            tele <- tele + 1
                                            print('They can only drive to the edge of camp,')
                                            escapeopt <- readline('would you like to run(1) or walk(2) to the edge of camp?')         
                                          } else {print('Uhh, ok')
                                            death_count <- death_count + sample(0:2, 1)
                                            }
                                      
                                    }
                    
                                    #No find
                                    if(probfindc == 2){
                                      print('There is no telephone here.')
                                    }
                                        
                    
                  } 

      
    }
  
  #Mansion
 if(locationt == 2){
      #Jason being there
            if(jason == 'PartVIII') { #       Finds or no
              ProbJ <- sample(1:2, 1, prob = c(.7, .3))
            }
            if(jason == 'PartV') {
              ProbJ <- sample(1:2, 1, prob = c(.6, .4))
            }
            if(jason == 'PartVII') {
              ProbJ <- sample(1:2, 1, prob = c(.5, .5))
            }
                    print('You enter the mansion')
                    if(ProbJ == 1) {
                      print('Jason appears!')
                      if(jason == 'PartVIII') { #       Hits  No hit
                        ProbHit <- sample(1:2, 1, prob = c(.8, .2))
                      }
                      if(jason == 'PartV') {
                        ProbHit <- sample(1:2, 1, prob = c(.7, .3))
                      }
                      if(jason == 'PartVII') {
                        ProbHit <- sample(1:2, 1, prob = c(.6, .4))
                      }
                                if(ProbHit == 1) {   #Jason attacks
                                  print('Jason attacks you')
                                  if(flare_gun == 0){
                                    print('Jason injures you as you run away')
                                    if(jason == 'PartVIII') {
                                      death_count <- death_count + sample(1:8, 1)
                                    }
                                    if(jason == 'PartV') {
                                      death_count <- death_count + sample(1:6, 1)
                                    }
                                    if(jason == 'PartVII') {
                                      death_count <- death_count + sample(1:4, 1)
                                    }
                                  }
                                  if(flare_gun == 1) { #Flare gun op
                                    print('Would you like to try and use your flare gun to escape?')
                                    flaremansion <- readline('Y/N?')
                                    if(flaremansion == 'Y') {        #1 work, 2 fail
                                      flareworkm <- sample(1:2, 1, prob = c(.6, .4))
                                      flare_gun <- flare_gun - 1
                                      if(flareworkm == 1) {
                                        print('Your flare hit Jason in the eye and you run away safetly!')
                                      }
                                      if(flareworkm == 2) {
                                        print('The flare gun missed! Jason injured you as you run away')
                                        if(jason == 'PartVIII') {
                                          death_count <- death_count + sample(1:5, 1)
                                        }
                                        if(jason == 'PartV') {
                                          death_count <- death_count + sample(1:3, 1)
                                        }
                                        if(jason == 'PartVII') {
                                          death_count <- death_count + sample(0:2, 1)
                                        }
                                      }
                                  } 
                                }
          
                                }  }
                    if(ProbHit == 2){
                      print('Jason misses and you run away')
                    }
                            if(ProbJ == 2) {
                              print('You do not currently see Jason. Where would you like to search?')
                              searchm <- readline('Downstairs(1), upstairs(2), or outside(3)') #
                                        #Downstairs
                                        if(searchm == 1){             #find = 1, no find = 2
                                          probfindm <- sample(1:2, 1, prob = c(.8, .2))
                                          searchobj <- searchobj + 1 
                                        }
                                        #Upstairs
                                        if(searchm == 2){
                                          probfindm <- sample(1:2, 1, prob = c(.7, .3))
                                          searchobj <- searchobj + 1
                                        }
                                        #Outside
                                        if(searchm == 3){
                                          probfindm <- sample(1:2, 1, prob = c(.6, .4))
                                          searchobj <- searchobj + 1
                                        }
                                        #Did you find it?
                                        #Find
                                        if(probfindm == 1){
                                          print('You found a telephone! Would you like to use it to call the Police?')
                                          ManPopo <- readline('Y/N?')
                                          if(ManPopo == 'Y'){
                                            print('You call the Police and they arrive on site in 5 minutes.')
                                            tele <- tele + 1
                                            print('They can only drive to the edge of camp,')
                                            escapeopt <- readline('would you like to run(1) or walk(2) to the edge of camp?')                                                 
                                          } else {print('Uhh, ok')
                                            death_count <- death_count + sample(0:2, 1)
                                          }
                                          
                                        }
                                        
                                        #No find
                                        if(probfindm == 2){
                                          print('There is no telephone here.')
                                        }
                              
                              
                            } 
                    
                    
    }

  #Cabins
if(locationt == 3){
          #Jason being there
          if(jason == 'PartVIII') { #       Finds or no
            ProbJ <- sample(1:2, 1, prob = c(.6, .4))
          }
          if(jason == 'PartV') {
            ProbJ <- sample(1:2, 1, prob = c(.6, .4))
          }
          if(jason == 'PartVII') {
            ProbJ <- sample(1:2, 1, prob = c(.5, .5))
          }
          print('You enter a cabin')
                      if(ProbJ == 1) {
                        print('Jason appears!')
                        if(jason == 'PartVIII') { #       Hits  No hit
                          ProbHit <- sample(1:2, 1, prob = c(.8, .2))
                        }
                        if(jason == 'PartV') {
                          ProbHit <- sample(1:2, 1, prob = c(.7, .3))
                        }
                        if(jason == 'PartVII') {
                          ProbHit <- sample(1:2, 1, prob = c(.5, .5))
                        }
                                      if(ProbHit == 1) {   #Jason attacks
                                        print('Jason attacks you')
                                        if(flare_gun == 0){
                                          print('Jason injures you as you run away')
                                          if(jason == 'PartVIII') {
                                            death_count <- death_count + sample(1:8, 1)
                                          }
                                          if(jason == 'PartV') {
                                            death_count <- death_count + sample(1:6, 1)
                                          }
                                          if(jason == 'PartVII') {
                                            death_count <- death_count + sample(1:4, 1)
                                          }
                                        }
                                        if(flare_gun == 1) { #Flare gun op
                                          print('Would you like to try and use your flare gun to escape?')
                                          flarecabin <- readline('Y/N?')
                                          if(flarecabin == 'Y') {        #1 work, 2 fail
                                            flareworkcb <- sample(1:2, 1, prob = c(.6, .4))
                                            flare_gun <- flare_gun - 1
                                            if(flareworkcb == 1) {
                                              print('Your flare hit Jason in the eye and you run away safetly!')
                                            }
                                            if(flareworkcb == 2) {
                                              print('The flare gun missed! Jason injured you as you run away')
                                              if(jason == 'PartVIII') {
                                                death_count <- death_count + sample(1:5, 1)
                                              }
                                              if(jason == 'PartV') {
                                                death_count <- death_count + sample(1:3, 1)
                                              }
                                              if(jason == 'PartVII') {
                                                death_count <- death_count + sample(0:2, 1)
                                              }
                                            }
                                          }
                                          
                                          
                                        } 
                                      }
                      } 
          if(ProbHit == 2){
            print('Jason misses and you run away')
          }
                        if(ProbJ == 2) {
                          print('You do not currently see Jason. Where would you like to search?')
                          searchcb <- readline('Living room(1), bathroom(2), bedroom(3)') #
                                  #Living room
                                  if(searchcb == 1){             #find = 1, no find = 2
                                    probfindcb <- sample(1:2, 1, prob = c(.7, .3))
                                    searchobj <- searchobj + 1 
                                  }
                                  #Bathroom
                                  if(searchcb == 2){
                                    probfindcb <- sample(1:2, 1, prob = c(.3, .7))
                                    searchobj <- searchobj + 1
                                  }
                                  #Bedroom
                                  if(searchcb == 3){
                                    probfindcb <- sample(1:2, 1, prob = c(.6, .4))
                                    searchobj <- searchobj + 1
                                  }
                                            #Did you find it?
                                            #Find
                                            if(probfindcb == 1){
                                                      print('You found a telephone! Would you like to use it to call the Police?')
                                                      CabPopo <- readline('Y/N?')
                                                      if(CabPopo == 'Y'){
                                                        print('You call the Police and they arrive on site in 5 minutes.')
                                                        tele <- tele + 1
                                                        print('They can only drive to the edge of camp,')
                                                        escapeopt <- readline('would you like to run(1) or walk(2) to the edge of camp?')      
                                                      } else {print('Uhh, ok')
                                                        death_count <- death_count + sample(0:2, 1)
                                                      }
                                                      
                                                    }
                                                    
                                            #No find
                                            if(probfindcb == 2){
                                              print('There is no telephone here.')
                                            }
                                            
                                            
                                          } 
                  
                  
                  }
                  
  #Barn
if(locationt == 4){
  #Jason being there
          if(jason == 'PartVIII') { #       Finds or no
            ProbJ <- sample(1:2, 1, prob = c(.6, .4))
          }
          if(jason == 'PartV') {
            ProbJ <- sample(1:2, 1, prob = c(.5, .5))
          }
          if(jason == 'PartVII') {
            ProbJ <- sample(1:2, 1, prob = c(.5, .5))
          }
          print('You enter the barn')
                  if(ProbJ == 1) {
                          print('Jason appears!')
                          if(jason == 'PartVIII') { #       Hits  No hit
                            ProbHit <- sample(1:2, 1, prob = c(.8, .2))
                          }
                          if(jason == 'PartV') {
                            ProbHit <- sample(1:2, 1, prob = c(.7, .3))
                          }
                          if(jason == 'PartVII') {
                            ProbHit <- sample(1:2, 1, prob = c(.5, .5))
                          }
                          if(ProbHit == 1) {   #Jason attacks
                            print('Jason attacks you')
                      
                            if(flare_gun == 1) { #Flare gun op
                              print('Would you like to try and use your flare gun to escape?')
                              flarebarn <- readline('Y/N?')
                              if(flarebarn == 'Y') {        #1 work, 2 fail
                                flareworkba <- sample(1:2, 1, prob = c(.6, .4))
                                flare_gun <- flare_gun - 1
                                if(flareworkba == 1) {
                                  print('Your flare hit Jason in the eye and you run away safetly!')
                                }
                                if(flareworkba == 2) {
                                  print('The flare gun missed! Jason injured you as you run away')
                                  if(jason == 'PartVIII') {
                                    death_count <- death_count + sample(1:8, 1)
                                  }
                                  if(jason == 'PartV') {
                                    death_count <- death_count + sample(1:6, 1)
                                  }
                                  if(jason == 'PartVII') {
                                    death_count <- death_count + sample(1:4, 1)
                                  }
                                }
                              }
                              
                              
                            } 
                          
                                    if(flare_gun == 0){
                                      print('Jason injures you as you run away')
                                      if(jason == 'PartVIII') {
                                        death_count <- death_count + sample(1:8, 1)
                                      }
                                      if(jason == 'PartV') {
                                        death_count <- death_count + sample(1:6, 1)
                                      }
                                      if(jason == 'PartVII') {
                                        death_count <- death_count + sample(1:4, 1)
                                      }
                                    } }
                            if(ProbHit == 2){
                              print('Jason misses and you run away')
                            }
                          
                  if(ProbJ == 2) {
                            print('You do not currently see Jason. Where would you like to search?')
                            searchba <- readline('Animal stalls(1), outside(2), haystack(3)') #
                            #Animal stalls
                            if(searchba == 1){             #find = 1, no find = 2
                              probfindba <- sample(1:2, 1, prob = c(.1, .9))
                              searchobj <- searchobj + 1 
                            }
                            #Outside
                            if(searchba == 2){
                              probfindba <- sample(1:2, 1, prob = c(.7, .3))
                              searchobj <- searchobj + 1
                            }
                            #Haystack
                            if(searchba == 3){
                              probfindba <- sample(1:2, 1, prob = c(.1, .9))
                              searchobj <- searchobj + 1
                            }
                                      #Did you find it?
                                      #Find
                                      if(probfindba == 1){
                                              print('You found a telephone! Would you like to use it to call the Police?')
                                              BarnPopo <- readline('Y/N?')
                                              if(BarnPopo == 'Y'){
                                                print('You call the Police and they arrive on site in 5 minutes.')
                                                tele <- tele + 1
                                                print('They can only drive to the edge of camp,')
                                                escapeopt <- readline('would you like to run(1) or walk(2) to the edge of camp?')      
                                              } else {print('Uhh, ok')
                                                death_count <- death_count + sample(0:2, 1)
                                              }
                                              
                                            }
                                      
                                      #No find
                                      if(probfindba == 2){
                                              print('There is no telephone here.')
                                            }
                                            
                                    } 
                          
}

} 
} #Telephone end bracket

#Car
if(option2 == 2){
  #searching for car
  #Where search
  print('Where would you like to search for car keys?')
  locationc <- readline('Cabins(1), mansion(2), barn(3)')
  
#cabins  
if(locationc == 1){
  #Jason being there
              if(jason == 'PartVIII') { #       Finds or no
                ProbJ <- sample(1:2, 1, prob = c(.7, .3))
              }
              if(jason == 'PartV') {
                ProbJ <- sample(1:2, 1, prob = c(.6, .4))
              }
              if(jason == 'PartVII') {
                ProbJ <- sample(1:2, 1, prob = c(.6, .4))
              }
                print('You approach a cabin')
                        if(ProbJ == 1) {
                          print('Jason appears!')
                          if(jason == 'PartVIII') { #       Hits  No hit
                            ProbHit <- sample(1:2, 1, prob = c(.8, .2))
                          }
                          if(jason == 'PartV') {
                            ProbHit <- sample(1:2, 1, prob = c(.7, .3))
                          }
                          if(jason == 'PartVII') {
                            ProbHit <- sample(1:2, 1, prob = c(.6, .4))
                          }
                          if(ProbHit == 1) {   #Jason attacks
                            print('Jason attacks you')
                              if(flare_gun == 0){
                              print('Jason injures you as you run away')
                              if(jason == 'PartVIII') {
                                death_count <- death_count + sample(1:8, 1)
                              }
                              if(jason == 'PartV') {
                                death_count <- death_count + sample(1:6, 1)
                              }
                              if(jason == 'PartVII') {
                                death_count <- death_count + sample(1:4, 1)
                              }
                            }
                              if(flare_gun == 1) { #Flare gun op
                              print('Would you like to try and use your flare gun to escape?')
                              flareCC <- readline('Y/N?')
                              if(flareCC == 'Y') {        #1 work, 2 fail
                                flareworkCC <- sample(1:2, 1, prob = c(.6, .4))
                                flare_gun <- flare_gun - 1
                                if(flareworkCC == 1) {
                                  print('Your flare hit Jason in the eye and you run away safetly!')
                                }
                              
                              if(flareworkCC == 2) {
                                print('The flare gun missed! Jason injured you as you run away')
                                if(jason == 'PartVIII') {
                                  death_count <- death_count + sample(1:8, 1)
                                }
                                if(jason == 'PartV') {
                                  death_count <- death_count + sample(1:6, 1)
                                }
                                if(jason == 'PartVII') {
                                  death_count <- death_count + sample(1:4, 1)
                                }}
                              }
                              }
                            }

                            
                        } 
                if(ProbHit == 2){
                  print('Jason misses and you run away')
                }
                        if(ProbJ == 2) {
                          print('You do not currently see Jason. Where would you like to search?')
                          searchCC <- readline('Bedroom(1), outside(2), living room(3)') #
                                  #Bedroom
                                  if(searchCC == 1){             #find = 1, no find = 2
                                    probfindCC <- sample(1:2, 1, prob = c(.1, .9))
                                    searchobj <- searchobj + 1 
                                  }
                                  #Outside
                                  if(searchCC == 2){
                                    probfindCC <- sample(1:2, 1, prob = c(.7, .3))
                                    searchobj <- searchobj + 1
                                  }
                                  #Living room
                                  if(searchCC == 3){
                                    probfindCC <- sample(1:2, 1, prob = c(.1, .9))
                                    searchobj <- searchobj + 1
                                  }
                                            #Did you find it?
                                            #Find
                                            if(probfindCC == 1){
                                              print('You found car keys! Do you try to find a car?')
                                              CCPopo <- readline('Y/N?')
                                                        if(CCPopo == 'Y'){
                                                          print('You run outside and see a car about 100 yards away')
                                                          car <- car + 1
                          
                                                          escapeopt <- readline('would you like to run(1) or walk(2) to the car?')      
                                                        } else {print('Uhh, ok')
                                                          death_count <- death_count + sample(0:2, 1)
                                                        }
                                                        
                                                      }
                                            
                                            #No find
                                            if(probfindCC == 2){
                                              print('There are no car keys here')
                                            }
                          
                        } }
  
  
  #mansion
if(locationc == 2){
    #Jason being there
    if(jason == 'PartVIII') { #       Finds or no
      ProbJ <- sample(1:2, 1, prob = c(.7, .3))
    }
    if(jason == 'PartV') {
      ProbJ <- sample(1:2, 1, prob = c(.6, .4))
    }
    if(jason == 'PartVII') {
      ProbJ <- sample(1:2, 1, prob = c(.5, .5))
    }
    print('You approach the mansion')
                  if(ProbJ == 1) {
                    print('Jason appears!')
                    if(jason == 'PartVIII') { #       Hits  No hit
                      ProbHit <- sample(1:2, 1, prob = c(.8, .2))
                    }
                    if(jason == 'PartV') {
                      ProbHit <- sample(1:2, 1, prob = c(.7, .3))
                    }
                    if(jason == 'PartVII') {
                      ProbHit <- sample(1:2, 1, prob = c(.6, .4))
                    }
                            if(ProbHit == 1) {   #Jason attacks
                              print('Jason attacks you')
                                        if(flare_gun == 0){
                                          print('Jason injures you as you run away')
                                          if(jason == 'PartVIII') {
                                            death_count <- death_count + sample(1:8, 1)
                                          }
                                          if(jason == 'PartV') {
                                            death_count <- death_count + sample(1:6, 1)
                                          }
                                          if(jason == 'PartVII') {
                                            death_count <- death_count + sample(1:4, 1)
                                          }
                                        }
                                        if(flare_gun == 1) { #Flare gun op
                                          print('Would you like to try and use your flare gun to escape?')
                                          flareMC <- readline('Y/N?')
                                                if(flareMC == 'Y') {        #1 work, 2 fail
                                                  flareworkMC <- sample(1:2, 1, prob = c(.6, .4))
                                                  flare_gun <- flare_gun - 1
                                                  if(flareworkMC == 1) {
                                                    print('Your flare hit Jason in the eye and you run away safetly!')
                                                  }
                                                
                                                
                                          if(flareworkMC == 2) {
                                            print('The flare gun missed! Jason injured you as you run away')
                                            if(jason == 'PartVIII') {
                                              death_count <- death_count + sample(1:8, 1)
                                            }
                                            if(jason == 'PartV') {
                                              death_count <- death_count + sample(1:6, 1)
                                            }
                                            if(jason == 'PartVII') {
                                              death_count <- death_count + sample(1:4, 1)
                                            }
                                          }
                                        }

                                        
                                        } }
                    if(ProbHit == 2){
                      print('Jason misses and you run away')
                    }
                          if(ProbJ == 2) {
                            print('You do not currently see Jason. Where would you like to search?')
                            searchMC <- readline('Closet(1), outside(2), garage(3)') #
                                  #Closet
                                  if(searchMC == 1){             #find = 1, no find = 2
                                    probfindMC <- sample(1:2, 1, prob = c(.5, .5))
                                    searchobj <- searchobj + 1 
                                  }
                                  #Outside
                                  if(searchMC == 2){
                                    probfindMC <- sample(1:2, 1, prob = c(.3, .7))
                                    searchobj <- searchobj + 1
                                  }
                                  #Garage
                                  if(searchMC == 3){
                                    probfindMC <- sample(1:2, 1, prob = c(.9, .1))
                                    searchobj <- searchobj + 1
                                  }
                                              #Did you find it?
                                              #Find
                                              if(probfindMC == 1){
                                                print('You found car keys! Do you try to find a car?')
                                                MCPopo <- readline('Y/N?')
                                                if(MCPopo == 'Y'){
                                                  print('You run outside and see a car about 100 yards away')
                                                  car <- car + 1
                                   
                                                  escapeopt <- readline('would you like to run(1) or walk(2) to the car?')      
                                                } else {print('Uhh, ok')
                                                  death_count <- death_count + sample(0:2, 1)
                                                }
                                                
                                              }
                                              
                                              #No find
                                              if(probfindMC == 2){
                                                print('There are no car keys here')
                                              }
                                              
                                            } }}

  
  #barn
if(locationc == 3){
  #Jason being there
  if(jason == 'PartVIII') { #       Finds or no
    ProbJ <- sample(1:2, 1, prob = c(.6, .4))
  }
  if(jason == 'PartV') {
    ProbJ <- sample(1:2, 1, prob = c(.6, .4))
  }
  if(jason == 'PartVII') {
    ProbJ <- sample(1:2, 1, prob = c(.5, .5))
  }
  print('You approach the barn')
          if(ProbJ == 1) {
            print('Jason appears!')
            if(jason == 'PartVIII') { #       Hits  No hit
              ProbHit <- sample(1:2, 1, prob = c(.8, .2))
            }
            if(jason == 'PartV') {
              ProbHit <- sample(1:2, 1, prob = c(.7, .3))
            }
            if(jason == 'PartVII') {
              ProbHit <- sample(1:2, 1, prob = c(.6, .4))
            }
                        if(ProbHit == 1) {   #Jason attacks
                          print('Jason attacks you')
                                if(flare_gun == 0){
                                  print('Jason injures you as you run away')
                                  if(jason == 'PartVIII') {
                                    death_count <- death_count + sample(1:8, 1)
                                  }
                                  if(jason == 'PartV') {
                                    death_count <- death_count + sample(1:6, 1)
                                  }
                                  if(jason == 'PartVII') {
                                    death_count <- death_count + sample(1:4, 1)
                                  }
                                }
                                if(flare_gun == 1) { #Flare gun op
                                  print('Would you like to try and use your flare gun to escape?')
                                  flareBC <- readline('Y/N?')
                                          if(flareBC == 'Y') {        #1 work, 2 fail
                                            flareworkBC <- sample(1:2, 1, prob = c(.6, .4))
                                            flare_gun <- flare_gun - 1
                                            if(flareworkBC == 1) {
                                              print('Your flare hit Jason in the eye and you run away safetly!')
                                            }
                                          }
                                          
                                  if(flareworkBC == 2) {
                                    print('The flare gun missed! Jason injured you as you run away')
                                    if(jason == 'PartVIII') {
                                      death_count <- death_count + sample(1:8, 1)
                                    }
                                    if(jason == 'PartV') {
                                      death_count <- death_count + sample(1:6, 1)
                                    }
                                    if(jason == 'PartVII') {
                                      death_count <- death_count + sample(1:4, 1)
                                    }
                                  }
                                }
                                
                        } }
  if(ProbHit == 2){
    print('Jason misses and you run away')
  }
                      if(ProbJ == 2) {
                        print('You do not currently see Jason. Where would you like to search?')
                        searchBC <- readline('Shed(1), animal stalls(2), haystack(3)') #
                                  #Bedroom
                                  if(searchBC == 1){             #find = 1, no find = 2
                                    probfindBC <- sample(1:2, 1, prob = c(.7, .3))
                                    searchobj <- searchobj + 1 
                                  }
                                  #Outside
                                  if(searchBC == 2){
                                    probfindBC <- sample(1:2, 1, prob = c(.4, .6))
                                    searchobj <- searchobj + 1
                                  }
                                  #Living room
                                  if(searchBC == 3){
                                    probfindBC <- sample(1:2, 1, prob = c(.1, .9))
                                    searchobj <- searchobj + 1
                                  }
                                  #Did you find it?
                                            #Find
                                            if(probfindBC == 1){
                                              print('You found car keys! Do you try to find a car?')
                                              BCPopo <- readline('Y/N?')
                                              if(BCPopo == 'Y'){
                                                print('You run outside and see a car about 100 yards away')
                                                car <- car + 1
                                                escapeopt <- readline('would you like to run(1) or walk(2) to the car?')      
                                              } else {print('Uhh, ok')
                                                death_count <- death_count + sample(0:2, 1)
                                              }
                                              
                                            }
                                            
                                            #No find
                                            if(probfindBC == 2){
                                              print('There are no car keys here')
                                            }
                                    
  } }
}

#Boat
if(option2 == 3){
    #searching for boat motor
    #Where search
    print('Where would you like to search for a boat motor?')
    locationb <- readline('Cabins(1), mansion(2), Lake(3)')
#cabin    
if(locationb == 1){
  #Jason being there
  if(jason == 'PartVIII') { #       Finds or no
    ProbJ <- sample(1:2, 1, prob = c(.7, .3))
  }
  if(jason == 'PartV') {
    ProbJ <- sample(1:2, 1, prob = c(.6, .4))
  }
  if(jason == 'PartVII') {
    ProbJ <- sample(1:2, 1, prob = c(.6, .4))
  }
  print('You approach a cabin')
  if(ProbJ == 1) {
    print('Jason appears!')
    if(jason == 'PartVIII') { #       Hits  No hit
      ProbHit <- sample(1:2, 1, prob = c(.7, .3))
    }
    if(jason == 'PartV') {
      ProbHit <- sample(1:2, 1, prob = c(.7, .3))
    }
    if(jason == 'PartVII') {
      ProbHit <- sample(1:2, 1, prob = c(.6, .4))
    }
    if(ProbHit == 1) {   #Jason attacks
      print('Jason attacks you')
      if(flare_gun == 0){
        print('Jason injures you as you run away')
        if(jason == 'PartVIII') {
          death_count <- death_count + sample(1:8, 1)
        }
        if(jason == 'PartV') {
          death_count <- death_count + sample(1:6, 1)
        }
        if(jason == 'PartVII') {
          death_count <- death_count + sample(1:4, 1)
        }
      }
      if(flare_gun == 1) { #Flare gun op
        print('Would you like to try and use your flare gun to escape?')
        flareCB <- readline('Y/N?')
        if(flareCB == 'Y') {        #1 work, 2 fail
          flareworkCB <- sample(1:2, 1, prob = c(.6, .4))
          flare_gun <- flare_gun - 1
          if(flareworkCB == 1) {
            print('Your flare hit Jason in the eye and you run away safetly!')
          }
        
      
        if(flareworkCB == 2) {
          print('The flare gun missed! Jason injured you as you run away')
          if(jason == 'PartVIII') {
            death_count <- death_count + sample(1:8, 1)
          }
          if(jason == 'PartV') {
            death_count <- death_count + sample(1:6, 1)
          }
          if(jason == 'PartVII') {
            death_count <- death_count + sample(1:4, 1)
          }
        }
      }}
      }
  } 
  if(ProbHit == 2){
    print('Jason misses and you run away')
  }
  if(ProbJ == 2) {
    print('You do not currently see Jason. Where would you like to search?')
    searchCB <- readline('Closet(1), outside(2), living room(3)') #
    #Closet
    if(searchCB == 1){             #find = 1, no find = 2
      probfindCB <- sample(1:2, 1, prob = c(.1, .9))
      searchobj <- searchobj + 1 
    }
    #Outside
    if(searchCB == 2){
      probfindCB <- sample(1:2, 1, prob = c(.7, .3))
      searchobj <- searchobj + 1
    }
    #Living room
    if(searchCB == 3){
      probfindCB <- sample(1:2, 1, prob = c(.1, .9))
      searchobj <- searchobj + 1
    }
    #Did you find it?
    #Find
    if(probfindCB == 1){
      print('You found a boat motor! Do you want to go to find the boat?')
      CBPopo <- readline('Y/N?')
      if(CBPopo == 'Y'){
        print('You run outside and fix the boat')
        boat <- boat + 1
        escapeopt <- readline('would you like to drive quickly(1) or slowly(2)')      
      } else {print('Uhh, ok')
        death_count <- death_count + sample(0:2, 1)
      }
      
    }
    
    #No find
    if(probfindCB == 2){
      print('There is no boat motor here')
    }
    
  } }
#mansion
if(locationb == 2){
      #Jason being there
      if(jason == 'PartVIII') { #       Finds or no
        ProbJ <- sample(1:2, 1, prob = c(.7, .3))
      }
      if(jason == 'PartV') {
        ProbJ <- sample(1:2, 1, prob = c(.7, .3))
      }
      if(jason == 'PartVII') {
        ProbJ <- sample(1:2, 1, prob = c(.6, .4))
      }
      print('You approach the mansion')
      if(ProbJ == 1) {
        print('Jason appears!')
        if(jason == 'PartVIII') { #       Hits  No hit
          ProbHit <- sample(1:2, 1, prob = c(.8, .2))
        }
        if(jason == 'PartV') {
          ProbHit <- sample(1:2, 1, prob = c(.7, .3))
        }
        if(jason == 'PartVII') {
          ProbHit <- sample(1:2, 1, prob = c(.6, .4))
        }
        if(ProbHit == 1) {   #Jason attacks
          print('Jason attacks you')
          if(flare_gun == 0){
            print('Jason injures you as you run away')
            if(jason == 'PartVIII') {
              death_count <- death_count + sample(1:8, 1)
            }
            if(jason == 'PartV') {
              death_count <- death_count + sample(1:6, 1)
            }
            if(jason == 'PartVII') {
              death_count <- death_count + sample(1:4, 1)
            }
          }
          if(flare_gun == 1) { #Flare gun op
            print('Would you like to try and use your flare gun to escape?')
            flareMB <- readline('Y/N?')
            if(flareMB == 'Y') {        #1 work, 2 fail
              flareworkMB <- sample(1:2, 1, prob = c(.6, .4))
              flare_gun <- flare_gun - 1
              if(flareworkMB == 1) {
                print('Your flare hit Jason in the eye and you run away safetly!')
              }
              
              
              if(flareworkMB == 2) {
                print('The flare gun missed! Jason injured you as you run away')
                if(jason == 'PartVIII') {
                  death_count <- death_count + sample(1:8, 1)
                }
                if(jason == 'PartV') {
                  death_count <- death_count + sample(1:6, 1)
                }
                if(jason == 'PartVII') {
                  death_count <- death_count + sample(1:4, 1)
                }
              }
            }}
        }
      } 
      if(ProbHit == 2){
        print('Jason misses and you run away')
      }
      if(ProbJ == 2) {
        print('You do not currently see Jason. Where would you like to search?')
        searchMB <- readline('Garage(1), closet(2), bedroom(3)') #
        #garage
        if(searchMB == 1){             #find = 1, no find = 2
          probfindMB <- sample(1:2, 1, prob = c(.1, .9))
          searchobj <- searchobj + 1 
        }
        #closet
        if(searchMB == 2){
          probfindMB <- sample(1:2, 1, prob = c(.7, .3))
          searchobj <- searchobj + 1
        }
        #bedroom
        if(searchMB == 3){
          probfindMB <- sample(1:2, 1, prob = c(.1, .9))
          searchobj <- searchobj + 1
        }
        #Did you find it?
        #Find
        if(probfindMB == 1){
          print('You found a boat motor! Do you want to go to find the boat?')
          MBPopo <- readline('Y/N?')
          if(MBPopo == 'Y'){
            print('You run outside and fix the boat')
            boat <- boat + 1
            escapeopt <- readline('would you like to drive quickly(1) or slowly(2)')      
          } else {print('Uhh, ok')
            death_count <- death_count + sample(0:2, 1)
          }
          
        }
        
        #No find
        if(probfindMB == 2){
          print('There is no boat motor here')
        }
        
      } }
#Lake
if(locationb == 3){
      #Jason being there
      if(jason == 'PartVIII') { #       Finds or no
        ProbJ <- sample(1:2, 1, prob = c(.7, .3))
      }
      if(jason == 'PartV') {
        ProbJ <- sample(1:2, 1, prob = c(.6, .4))
      }
      if(jason == 'PartVII') {
        ProbJ <- sample(1:2, 1, prob = c(.6, .4))
      }
      print('You approach the lake')
      if(ProbJ == 1) {
        print('Jason appears!')
        if(jason == 'PartVIII') { #       Hits  No hit
          ProbHit <- sample(1:2, 1, prob = c(.8, .2))
        }
        if(jason == 'PartV') {
          ProbHit <- sample(1:2, 1, prob = c(.7, .3))
        }
        if(jason == 'PartVII') {
          ProbHit <- sample(1:2, 1, prob = c(.6, .4))
        }
        if(ProbHit == 1) {   #Jason attacks
          print('Jason attacks you')
          if(flare_gun == 0){
            print('Jason injures you as you run away')
            if(jason == 'PartVIII') {
              death_count <- death_count + sample(1:8, 1)
            }
            if(jason == 'PartV') {
              death_count <- death_count + sample(1:6, 1)
            }
            if(jason == 'PartVII') {
              death_count <- death_count + sample(1:4, 1)
            }
          }
          if(flare_gun == 1) { #Flare gun op
            print('Would you like to try and use your flare gun to escape?')
            flareLB <- readline('Y/N?')
            if(flareLB == 'Y') {        #1 work, 2 fail
              flareworkLB <- sample(1:2, 1, prob = c(.6, .4))
              flare_gun <- flare_gun - 1
              if(flareworkLB == 1) {
                print('Your flare hit Jason in the eye and you run away safetly!')
              }
              
              
              if(flareworkLB == 2) {
                print('The flare gun missed! Jason injured you as you run away')
                if(jason == 'PartVIII') {
                  death_count <- death_count + sample(1:8, 1)
                }
                if(jason == 'PartV') {
                  death_count <- death_count + sample(1:6, 1)
                }
                if(jason == 'PartVII') {
                  death_count <- death_count + sample(1:4, 1)
                }
              }
            }}
        }      
      } 
      if(ProbHit == 2){
        print('Jason misses and you run away')
      }
      if(ProbJ == 2) {
        print('You do not currently see Jason. Where would you like to search?')
        searchLB <- readline('Dock(1), trees(2), boat(3)') #
        #Dock
        if(searchLB == 1){             #find = 1, no find = 2
          probfindMB <- sample(1:2, 1, prob = c(.4, .6))
          searchobj <- searchobj + 1 
        }
        #Trees
        if(searchLB == 2){
          probfindLB <- sample(1:2, 1, prob = c(.4, .6))
          searchobj <- searchobj + 1
        }
        #Boat
        if(searchLB == 3){
          probfindLB <- sample(1:2, 1, prob = c(.3, .7))
          searchobj <- searchobj + 1
        }
        #Did you find it?
        #Find
        if(probfindLB == 1){
          print('You found a boat motor! Do you want to go to find the boat?')
          LBPopo <- readline('Y/N?')
          if(LBPopo == 'Y'){
            print('You run and fix the boat')
            boat <- boat + 1
            escapeopt <- readline('would you like to drive quickly(1) or slowly(2)')      
          } else {print('Uhh, ok')
            death_count <- death_count + sample(0:2, 1)
          }
          
        }
        
        #No find
        if(probfindLB == 2){
          print('There are no boat motor here')
        }
        
      } }
}    
    

escape <- tele + car + boat



#resets
#So that there isn't any influence in the next run

#tele
locationt <- 0
#campfire search tele
searchc <- 0
flarecamp <- 0
flareworkc <- 0
probfindc <- 0
CampPoPo <- 0

#mansion search tele
searchm <- 0
flaremansion <- 0
flareworkm <- 0
probfindm <- 0
ManPoPo <- 0

#Cabin search tele
searchcb  <- 0
flarecabin <- 0
flareworkcb <- 0
probfindcb <- 0
CabPoPo <- 0

#Barn search tele
searchba <- 0
flarebarn <- 0
flareworkba <- 0
probfindba <- 0
BarnPoPo <- 0

#car
locationc <- 0
#cabin  search car
searchCC <- 0
flareCC <- 0
flareworkCC <- 0
probfindCC <- 0
CCPoPo <- 0

#mansion search car
searchMC <- 0
flareMC <- 0
flareworkMC <- 0
probfindMC <- 0
MCPoPo <- 0

#barn search car
searchBC <- 0
flareBC <- 0
flareworkBC <- 0
probfindBC <- 0
BCPoPo <- 0

#boat
locationb <- 0
#cabin search boat
searchCB <- 0
flareCB <- 0
flareworkCB <- 0
probfindCB <- 0
CBPoPo <- 0

#mansion search boat
searchMB <- 0
flareMB <- 0
flareworkMB <- 0
probfindMB <- 0
MBPoPo <- 0

#lake search boat
searchLB <- 0
flareLB <- 0
flareworkLB <- 0
probfindLB <- 0
LBPoPo <- 0

}

#died
if(death_count >= 25){
  if(escape < 1){
    print('As you continue your search for an escape, Jason appears behind you and kills you.')
  }
  if(escape >= 1){
    print('As you try to escape, Jason appears and strikes you down! You have died.')
  }
}

#lived
if(death_count < 25){
      if (escape >= 1) {
      #running
      if(escapeopt == 1) {
      #  print('You run')
          if(jason == 'PartVIII') { #       murks or no
            ProbJ <- sample(1:2, 1, prob = c(.4, .6))
          }
          if(jason == 'PartV') {
            ProbJ <- sample(1:2, 1, prob = c(.3, .7))
          }
          if(jason == 'PartVII') {
            ProbJ <- sample(1:2, 1, prob = c(.2, .8))
          }
                  if(ProbJ == 1) {
                              print('Jason appears!')
                              death_count <- death_count + 25
                              print('As you attempt your fast get away, jason finds and slays you! You have died.')
                              } 
                    if(ProbJ == 2) {
                      print('Within a matter of second, you see Jason appear behind you')
                          if(tele == 1){
                            print('With Jason behind you, you run faster and faster towards the police')
                            print('With mere seconds to spare, you jump towards a police car and into safety')
                            print('You hear the gunshots outside the car, and watch as Jason subsides back towards the camp')
                            print('A cop joins you in the car and drives you far, far, far away from camp.')
                          }
                          if(car == 1){
                            print('You get into the car and start the engine. Jason tries to slam on the hood of your car')
                            print('But you hit the gas and power through him. Once heis in your rear view, you drive out and')
                            print('far, far, far away from the camp')
                          }
                          if(boat == 1){
                            print('As you quickly boat away, you see Jason at the waters edge')
                            print('You assume you are safe until he enters the water and swims towards you')
                            print('As you crank the boat to max speed, you hit the shore of a neighboring camp')
                            print('You run towards their tents and notice that Jason is no longer behind you')
                            print('It seems that you have escaped.')
                          }
                }}
      
      #walking
      if(escapeopt == 2) {
        #print('You walk')
        if(jason == 'PartVIII') { #       murks or no
          ProbJ <- sample(1:2, 1, prob = c(.3, .7))
        }
        if(jason == 'PartV') {
          ProbJ <- sample(1:2, 1, prob = c(.2, .8))
        }
        if(jason == 'PartVII') {
          ProbJ <- sample(1:2, 1, prob = c(.1, .9))
        }
                if(ProbJ == 1) {
                  print('Jason appears!')
                  death_count <- death_count + 25
                  print('As you attempt your slow get away, jason finds and slays you! You have died.')
                } 
                if(ProbJ == 2) {
                  print('Within a matter of second, you see Jason appear behind you')
                  if(tele == 1){
                    print('With Jason behind you, you go from walking to running. Faster and faster towards the police')
                    print('With mere seconds to spare, you jump towards a police car and into safety')
                    print('You hear the gunshots outside the car, and watch as Jason subsides back towards the camp')
                    print('A cop joins you in the car and drives you far, far, far away from camp.')
                  }
                  if(car == 1){
                    print('You get into the car and start the engine. Jason tries to slam on the hood of your car')
                    print('But you hit the gas and power through him. Once heis in your rear view, you drive out and')
                    print('far, far, far away from the camp')
                  }
                  if(boat == 1){
                    print('As you quickly boat away, you see Jason at the waters edge')
                    print('You assume you are safe until he enters the water and swims towards you')
                    print('As you crank the boat to max speed, you hit the shore of a neighboring camp')
                    print('You run towards their tents and notice that Jason is no longer behind you')
                    print('It seems that you have escaped.')
                  }
            }}
        }}

end_game <- 1

}

