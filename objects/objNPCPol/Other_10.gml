scrOpenTexbox("¡Hola! Soy Gavicho. He dedicado mi vida a trabajar con jóvenes y tengo un problema que necesito resolver. Me han hablado muy bien de ti y creo que podrías ayudarme. Dirijo un equipo de fútbol juvenil en nuestra comunidad, pero últimamente han estado desmotivados. Han perdido algunos juegos y su confianza está afectada. Necesito encontrar una forma de revitalizar su espíritu y motivarlos nuevamente. : Creo que tu perspectiva fresca y tus habilidades podrían ser lo que necesitamos. ¿Podrías jugar un partido con ellos para que recuperen su aalegría?");

scrFaceTo(objPlayerP.x, objPlayerP.y);

objPlayerP.state = STATE_READING;

objTextbox.callback = [scrFinishCharacterReadingP, [objPlayerP, id]];

