<h2>A small wordle solver written in bash.</h2>

Uses the list of english words from here: https://github.com/dwyl/english-words<br>
Uses the list of german words from here: https://gist.github.com/MarvinJWendt/2f4f4154b8ae218600eb091a5706b5f4<br>

Usage:<br>
-Semicolons represent unknown characters<br>
-Use the '-i' flag for characters that you know are in the word<br>
-Use the '-n' flag for characters that you know are not in the word<br>
-Use the '-l' flag for selecting a language (Supported: de, en)<br>

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
