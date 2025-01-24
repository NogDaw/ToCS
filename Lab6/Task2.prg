SOB Loop1
SOB Interrupt1
SOB Interrupt2
SOB Interrupt3
SOB Interrupt4

Loop1: pob width1
       ode const1
       lad width1
       som end
       pob len2
       lad len1
       pob NewLine
       wypi 2
       sob Loop2
            
Loop2: pob len1
       ode const1
       lad len1
       som Loop1
       pob asterisk
       wypi 2
       sob Loop2
  
end: pob width2
     lad width1
     pob NewLine
     wypi 2
     stp

Interrupt1: czm mask
            mas 15
            dns
            pob Char1
            wypi 2
            pzs
            msk mask
            pwr
            

Interrupt2: czm mask
            mas 15
            dns
            pob Char2
            wypi 2
            pzs
            msk mask
            pwr
            

Interrupt3: czm mask
            mas 15
            dns
            pob Char3
            wypi 2
            pzs
            msk mask
            stp
            

Interrupt4: czm mask
            mas 15
            dns
            pob Char4
            wypi 2
            pzs
            msk mask
            pwr


asterisk: rst '*'
Char1: rst '1'
Char2: rst '2'
Char3: rst '3'
Char4: rst '4'
NewLine: rst 10
const1: rst 1
len1: rst 5
len2: rst 5
width1: rst 5
width2: rst 5

mask: rpa