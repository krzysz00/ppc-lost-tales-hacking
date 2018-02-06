BEGIN{noted=0; pn=1;}

/<p>\[(Acacia|Jay)'s A\/N/{if(!noted) printf "<a name=\"notes\"></a>\n";noted=1}
/<p>/{if(!noted){printf "<a name=\"p%03d\"></a>", pn; pn++;}}
{print;}
