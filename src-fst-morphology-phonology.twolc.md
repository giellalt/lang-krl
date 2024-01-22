# The Karelian morphophonological/twolc rules file 

This file documents the [phonology.twolc file](http://github.com/giellalt/lang-krl/blob/main/src/fst/phonology.twolc) 

## Alphabets and sets

### Alpahbet
- **a b c č d e f g h i j k l m n o p q r s š t u v w x y z ž**
- **á é ó ú í à è ò ù ì ä ë ö ü ï â ê ô û î ã**
- **A B C Č D E F G H I J K L M N O P Q R S Š T U V W X Y Z Ž**
- **Á É Ó Ú Í À È Ò Ù Ì Ä Ë Ö Ü Ï Â Ê Ô Û Î Ã**
- **%{aä%}:a %{aä%}:ä**
- **%{oö%}:o %{oö%}:ö**
- **%{uy%}:u %{uy%}:y**
- **%>:0 ;**

### Sets

- **Vow = a e i o u y**
  **á é ó ú í à è ò ù ì ä ë ö ü ï â ê ô û î ã ý ;**
- **Cns = b c č d f g h j k l m n p q r s š t v w x z ž ;**
- **Front = ä ö y ;**
- **Back = a o u ;**

## Rules

**Rule: Vowel harmony basic** 

**Tests:**
* *kirjut{aä}mm{aä}*
* *kirjutamma*
* ★*kirjut{aä}mm{aä}* (is not standard language)
* ★*kirjutämmä* (is not standard language)

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/phonology.twolc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/phonology.twolc)</small>

---

