caster_play(ii, 1, 1)
if (global.osflavor == 4 && (number == 7 || number == 7.5))
    number += 0.5
else
    number += 1
if (number < 10) // Increase this number by one depending on credits
    alarm[5] = 130
else
    alarm[6] = 200
