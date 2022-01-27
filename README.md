<h2>A small wordle solver written in bash.</h2>

Supported languages:<br>
English, German, French, Italian, Spanish, Dutch, Norwegian<br>
<br>
Usage:<br>
-Commas represent unknown characters<br>
-Use the '-i' flag for characters that you know are in the word<br>
-Use the '-n' flag for characters that you know are not in the word<br>
-Use the '-l' flag for selecting a language (Supported: en, de, fr, it, es, nl, no)<br>
-Defaults to English if no language is specified<br>
<br>
Examples with output:<br>

./wordle.sh -i ar -n hlm s,g,,<br>

sager<br>
sagra<br>
segar<br>
sugar<br>

./wordle.sh -l de -i zu -n rvbn ,e,,,<br>

Bezug<br>
Deutz<br>
seufz<br>
zeuge<br>
zeugt<br>

<br>
Uses the list of english words from here: https://github.com/dwyl/english-words<br>
Uses the list of german words from here: https://gist.github.com/MarvinJWendt/2f4f4154b8ae218600eb091a5706b5f4<br>
All other lanuages files from here: http://www.gwicks.net/dictionaries.htm<br>
