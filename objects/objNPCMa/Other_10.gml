
scrOpenTexbox("Hola, soy Mamá Margarita. He estado ayudando a mi hijo a cuidar y guiar a los jóvenes, y tengo un problema, así que necesito tu ayuda. En estos bares, 5 jóvenes me estaban ayudando a dar de comer a los demás, pero se han extraviado y parece que no quieren regresar. Estos jóvenes eran fundamentales para nuestra labor. ¿Podrías ayudarme a encontrarlos y continuar con esta importante labor?");

scrFaceTo(objPlayerP.x, objPlayerP.y);

objPlayerP.state = STATE_READING;

objTextbox.callback = [scrFinishCharacterReadingM, [objPlayerP, id]];


if(objSystemP.Player_Score == 3)
{
scrOpenTexbox("¡Increíble! Gracias a tu dedicación, este equipo ha recuperado su chispa. Están listos para enfrentar los desafíos con renovada determinación. Tu ayuda ha sido crucial para revitalizarlos. Ten tu rrecompensa.");

scrFaceTo(objPlayerP.x, objPlayerP.y);

objPlayerP.state = STATE_READING;

objTextbox.callback = [scrFinishCharacterReadingMedalla3, [objPlayerP, id]];
}

if(obj_controller1.medalla3 == 1 && objSystemP.Player_Score != 3)
{
scrOpenTexbox("Creo que Gavicho esta te estaba buscando, deberias ir al polideportivo.");

scrFaceTo(objPlayerP.x, objPlayerP.y);

objPlayerP.state = STATE_READING;

objTextbox.callback = [scrFinishCharacterReadingMedalla2, [objPlayerP, id]];
}

