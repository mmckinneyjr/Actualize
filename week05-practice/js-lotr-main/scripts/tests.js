// YOU SHALL NOT MODIFY!

//                                   ....
//                                 .'' .'''
// .                             .'   :
// \\                          .:    :
//  \\                        _:    :       ..----.._
//   \\                    .:::.....:::.. .'         ''.
//    \\                 .'  #-. .-######'     #        '.
//     \\                 '.##'/ ' ################       :
//      \\                  #####################         :
//       \\               ..##.-.#### .''''###'.._        :
//        \\             :--:########:            '.    .' :
//         \\..__...--.. :--:#######.'   '.         '.     :
//         :     :  : : '':'-:'':'::        .         '.  .'
//         '---'''..: :    ':    '..'''.      '.        :'
//            \\  :: : :     '      ''''''.     '.      .:
//             \\ ::  : :     '            '.      '      :
//              \\::   : :           ....' ..:       '     '.
//               \\::  : :    .....####\\ .~~.:.             :
//                \\':.:.:.:'#########.===. ~ |.'-.   . '''.. :
//                 \\    .'  ########## \ \ _.' '. '-.       '''.
//                 :\\  :     ########   \ \      '.  '-.        :
//                :  \\'    '   #### :    \ \      :.    '-.      :
//               :  .'\\   :'  :     :     \ \       :      '-.    :
//              : .'  .\\  '  :      :     :\ \       :        '.   :
//              ::   :  \\'  :.      :     : \ \      :          '. :
//              ::. :    \\  : :      :    ;  \ \     :           '.:
//               : ':    '\\ :  :     :     :  \:\     :        ..'
//                  :    ' \\ :        :     ;  \|      :   .'''
//                  '.   '  \\:                         :.''
//                   .:..... \\:       :            ..''
//                  '._____|'.\\......'''''''.:..'''
//     

console.log("Tests linked.");

// TESTING
// Task 1
function testMakeMiddleEarth(){
  if(typeof makeMiddleEarth === "function"){
    if (makeMiddleEarth() === "Hello Middle Earth!") {
      addMiddleEarth();
      console.log("Task 1 completed! Middle Earth has been created.");
    } else {
      console.log("Your makeMiddleEarth function is returning the wrong value. Check for typos!");
    }
  } else {
    console.log("You need a makeMiddleEarth function!");
  }
}

// Task 2
function testTakeAttendance() {
  if(typeof takeAttendance === "function"){
    if (takeAttendance() === 4) {
      makeHobbits();
      console.log("Task 2 completed! Hobbits are in the shire.");
    } else {
      console.log("Your takeAttendance function is returning the wrong value.");
    }
  } else {
    console.log("You need a takeAttendance function!");
  }
}

// Task 3
function testKeepSecret() {
  if(typeof keepSecret === "function"){
    if (keepSecret("FRODO") === "frodo" && keepSecret("THE RING") === "the ring") {
      keepItSecretKeepItSafe();
      console.log("Task 3 completed! Frodo has the ring. Click on it to hear something sinister...");
    } else {
      console.log("Your keepSecret function is returning the wrong value.");
    }
  } else {
    console.log("You need a keepSecret function!");
  }
}

// Task 4
function testDoubleParty() {
  if(typeof doubleParty === "function"){
    if (doubleParty() === 8) {
      makefriends();
      clickableStrider();
      console.log("Task 4 completed! Your friends are in Rivendell. Click on Strider to reveal his true nature!");
    } else {
      console.log("Your doubleParty function is returning the wrong value.");
    }
  } else {
    console.log("You need a doubleParty function!");
  }
}

// Task 5
function testTravelAbroad() {
  if(typeof travelAbroad === "function"){
    var rivenDellHobbits = travelAbroad();
    if (typeof rivenDellHobbits === "object" && rivenDellHobbits.length === 4 && rivenDellHobbits.includes('Frodo Baggins')) {
      leaveTheShire();
      console.log("Task 5 completed! The hobbits are headed to Rivendell!");
    } else {
      console.log("Your travelAbroad function is returning the wrong value.");
    }
  } else {
    console.log("You need a travelAbroad function!");
  }
}

// Task 6
function testDeclareAllegiance() {
  if(typeof declareAllegiance === "function"){
    if (declareAllegiance('Frodo') === "I, Frodo, am part of the fellowship!") {
      console.log("Task 6 completed! The fellowship has been forged! Click on Rivendell to hear a tune!");
      forgeTheFellowShip();
      rivendell().firstChild.setAttribute('class', 'the-fellowship');
      rivendell().firstChild.addEventListener('click', hobbitTheme);
    } else {
      console.log("Your declareAllegiance function is returning the wrong value. Check for typos!");
    }
  } else {
    console.log("You need a declareAllegiance function!");
  }
}

// Task 7
function testSlayTheBalrog() {
  if(typeof slayTheBalrog === "function"){
    if (slayTheBalrog() === "Gandalf the Grey says: You shall not pass! Gandalf the Grey is now Gandalf the white.") {
      console.log("Task 7 completed! Gandalf has slayed the Balrog, check out his new name!");
      theBalrog();
    } else {
      console.log("Your slayTheBalrog function is returning the wrong value. Check for typos!");
    }
  } else {
    console.log("You need a slayTheBalrog function!");
  }
}

// Task 8
function testBlowTheHornOfGondor() {
  if(typeof blowTheHornOfGondor === "function"){
    if (blowTheHornOfGondor() === "Boromir has blown the Horn of Gondor!") {
      console.log("Task 8 completed! Boromir has blown the horn...and been killed by the Uruk-hai!");
      hornOfGondor();
    } else {
      console.log("Your blowTheHornOfGondor function is returning the wrong value. Check for typos!");
    }
  } else {
    console.log("You need a blowTheHornOfGondor function!");
  }
}

// Task 9
function testItsDangerousToGoAlone() {
  if(typeof itsDangerousToGoAlone === "function"){
    if (typeof itsDangerousToGoAlone() === "object" && itsDangerousToGoAlone()[0] === 'Frodo Baggins' && itsDangerousToGoAlone()[1] === 'Samwise Gamgee') {
      console.log("Task 9 completed! Frodo and Sam have entered Mordor. Mount Doom is near!");
      goToMordor();
    } else {
      console.log("Your itsDangerousToGoAlone function is returning the wrong value. Check for typos!");
    }
  } else {
    console.log("You need a itsDangerousToGoAlone function!");
  }
}

// Task 10
function testWeWantsIt() {
  if(typeof weWantsIt === "function"){
    if (gollumHasRing) {
      console.log("Task 10 completed! The precious has been acquired...");
      stealRing();
    } else {
      console.log("Gollum does not have the ring yet. Check your variable scope!");
    }
  } else {
    console.log("The weWantsIt function is missing!");
  }
}

// Task 11
function testWrestleGollum() {
  if(typeof wrestleGollum === "function"){
    if (wrestleGollum() === 5) {
      console.log("Task 11 completed! Gollum has been vanquished and the ring destroyed!");
      victoryLapGoneWrong();
    } else {
      console.log("Your wrestleGollum function is returning the wrong value");
    }
  } else {
    console.log("The wrestleGollum function is missing!");
  }
}

// Task 12
function testThereAndBackAgain() {
  var shireHobbits = thereAndBackAgain();
  if(typeof thereAndBackAgain === "function"){
    if (typeof thereAndBackAgain() === "object" && shireHobbits[0].name === 'Frodo Baggins' && shireHobbits[0].location === 'The Shire' && shireHobbits[3].name === 'Pippin Took' && shireHobbits[3].location === 'The Shire') {
      console.log("Task 12 completed! The hobbits have made it safely back to The Shire and saved Middle Earth!");
      backToTheShire();
    } else {
      console.log("Your thereAndBackAgain function is returning the wrong value");
    }
  } else {
    console.log("You need a thereAndBackAgain function!");
  }
}
