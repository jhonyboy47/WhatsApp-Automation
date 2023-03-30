import pywhatkit as pwk
from globals import came_to_brigades

for person in came_to_brigades:
    pwk.sendwhatmsg(person, "Epale bro, queria decirte que me agrado mucho verte ayer en el grupo!", 8, 0, tab_close=True,)
