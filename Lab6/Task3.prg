SOB Prepare
SOB Interrupt1
SOB Interrupt2
SOB Interrupt3
SOB Interrupt4

Prepare: pob i1_b
         lad i1
         pob i2_b
         lad i2
         pob i3_b
         lad i3
         pob i4_b
         lad i4
         pob asterisk
         sob MainLoop

MainLoop: wypi 2
          sob MainLoop
          
Interrupt1: czm mask
            mas 15
            dns
//handling interrupt
            pob i1
            ode const1
            lad i1
            soz end
            pob Char1
            wypi 2
            wypi 2
            wypi 2
//finished handling interrupt
            pzs
            msk mask                     
            pwr
            
Interrupt2: czm mask
            mas 7
            dns
//handling interrupt
            pob i2
            ode const1
            lad i2
            soz end
            pob Char2
            wypi 2
            wypi 2
            wypi 2
            wypi 2
            wypi 2
            wypi 2
//finished handling interrupt
            pzs
            msk mask                     
            pwr       

Interrupt3: czm mask
            mas 3
            dns
//handling interrupt
            pob i3
            ode const1
            lad i3
            soz end
            pob Char3
            wypi 2
            wypi 2
            wypi 2
            wypi 2
            wypi 2
            wypi 2
            wypi 2
            wypi 2
            wypi 2
//finished handling interrupt
            pzs
            msk mask                     
            pwr
                        
Interrupt4: czm mask
            mas 1
            dns
//handling interrupt
            pob i4
            ode const1
            lad i4
            soz end
            pob Char4
            wypi 2
            wypi 2
            wypi 2
            wypi 2
            wypi 2
            wypi 2
            wypi 2
            wypi 2
            wypi 2
            wypi 2
            wypi 2
            wypi 2
//finished handling interrupt
            pzs
            msk mask                     
            pwr            

end: stp

//variable declaration
asterisk: rst '*'
Char1: rst '1'
Char2: rst '2'
Char3: rst '3'
Char4: rst '4'
const1: rst 1
i1: rst 2
i2: rst 4
i3: rst 4
i4: rst 8

i1_b: rst 2
i2_b: rst 4
i3_b: rst 4
i4_b: rst 8

mask: rpa  
