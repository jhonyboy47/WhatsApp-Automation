import pywhatkit as pwk
from globals import disciples, rides

# for person in disciples:
#    pwk.sendwhatmsg_instantly(person, "Solo un recurdo de que hoy hay group a las 7:30pm!! Nos vemos pronto!")

# for person in rides:
#    pwk.sendwhatmsg_instantly(person, "Queria saber si vas a necesitar ride para la iglesia hoy!")

pwk.sendwhatmsg(
    "+1 (832) 382-6123",
    "Solo un recurdo de que hoy hay group a las 7:30pm!! Nos vemos pronto!",
    14,
    58,
)
