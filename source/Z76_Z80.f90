!
!  Copyright (c) 2019 National Technology & Engineering Solutions of 
!  Sandia, LLC (NTESS). Under the terms of Contract DE-NA0003525 with 
!  NTESS, the U.S. Government retains certain rights in this software.
!
   SUBROUTINE Z76_Z80
     USE NWC_DATABASE
     USE NWC_2000
     IMPLICIT NONE

     !This subroutine contains elements 76-80 (osmium, iridium, platinum,
     !gold, and mercury) and their naturally occuring isotopes.  
     !Created with the Current Nuclear Wallet Cards (2004)
     !on June 2, 2004 by Karen Kajder.
     !
     !Modified to latest NWC electronic version values and ENDF/B-VII cross 
     !sections by K. Russell DePriest on December 15, 2011.
     !
     ! - ENDF/B-VII Release 1 cross sections (that is, .80c) made the default
     !   on 05/09/2014 by K. Russell DePriest.

     !Local variables 
     REAL::holder, mass_of_element
     INTEGER:: i

     !Number of Osmium Isotopes
     os_size = 7 

     osmium_array(1)%z = 76
     osmium_array(1)%a = 184
     osmium_array(1)%symbol ="Os-184"
     osmium_array(1)%mass_defect = -44.2566
     osmium_array(1)%atom_percent = 0.02
     osmium_array(1)%zaid = " no zaid "

     osmium_array(2)%z = 76
     osmium_array(2)%a = 186
     osmium_array(2)%symbol ="Os-186"
     osmium_array(2)%mass_defect = -43.0023
     osmium_array(2)%atom_percent = 1.59
     osmium_array(2)%zaid = " no zaid "

     osmium_array(3)%z = 76
     osmium_array(3)%a = 187
     osmium_array(3)%symbol ="Os-187"
     osmium_array(3)%mass_defect = -41.2209
     osmium_array(3)%atom_percent = 1.96
     osmium_array(3)%zaid = " no zaid "

     osmium_array(4)%z = 76
     osmium_array(4)%a = 188
     osmium_array(4)%symbol ="Os-188"
     osmium_array(4)%mass_defect = -41.1392 
     osmium_array(4)%atom_percent = 13.24
     osmium_array(4)%zaid = " no zaid "

     osmium_array(5)%z = 76
     osmium_array(5)%a = 189
     osmium_array(5)%symbol ="Os-189"
     osmium_array(5)%mass_defect = -38.9883 
     osmium_array(5)%atom_percent = 16.15
     osmium_array(5)%zaid = " no zaid "

     osmium_array(6)%z = 76
     osmium_array(6)%a = 190
     osmium_array(6)%symbol ="Os-190"
     osmium_array(6)%mass_defect = -38.7093 
     osmium_array(6)%atom_percent = 26.26
     osmium_array(6)%zaid = " no zaid "

     osmium_array(7)%z = 76
     osmium_array(7)%a = 192
     osmium_array(7)%symbol ="Os-192"
     osmium_array(7)%mass_defect = -35.8838
     osmium_array(7)%atom_percent = 40.78
     osmium_array(7)%zaid = " no zaid "

     !Calculate isotopic mass for Osmium
     DO i=1,os_size
          holder = osmium_array(i)%a + (osmium_array(i)%mass_defect/931.494)

          osmium_array(i)%isotopic_mass = holder
     END DO

     !Set mass and holder to zero.
     os_mass = 0.0
     holder = 0.0

     !Calculate mass of Osmium
     DO i=1, os_size
          os_mass = holder + (osmium_array(i)%isotopic_mass* &
          &  osmium_array(i)%atom_percent)/100

          holder = os_mass
     END DO
     
     !Calculate weight percent of Osmium
     DO i=1, os_size
          osmium_array(i)%weight_percent = (osmium_array(i)%isotopic_mass &
          &   * osmium_array(i)%atom_percent)/os_mass
     END DO
     
     !Number of Iridium Isotopes
     ir_size = 2

     iridium_array(1)%z = 77
     iridium_array(1)%a = 191
     iridium_array(1)%symbol ="Ir-191"
     iridium_array(1)%mass_defect = -36.7107
     iridium_array(1)%atom_percent = 37.3
     iridium_array(1)%zaid = "77191.80c"

     iridium_array(2)%z = 77
     iridium_array(2)%a = 193
     iridium_array(2)%symbol ="Ir-193"
     iridium_array(2)%mass_defect = -34.5382
     iridium_array(2)%atom_percent = 62.7
     iridium_array(2)%zaid = "77193.80c"

     !Calculate isotopic mass for Iridium
     DO i=1, ir_size
          holder = iridium_array(i)%a + (iridium_array(i)%mass_defect/931.494)

          iridium_array(i)%isotopic_mass = holder
     END DO

     !Set mass and holder to zero.
     ir_mass = 0.0
     holder = 0.0

     !Calculate mass of Iridium
     DO i=1, ir_size
          ir_mass = holder + (iridium_array(i)%isotopic_mass* &
          &  iridium_array(i)%atom_percent)/100

          holder = ir_mass
     END DO
     
     !Calculate weight percent of Iridium
     DO i=1, ir_size
          iridium_array(i)%weight_percent = (iridium_array(i)%isotopic_mass &
          &   * iridium_array(i)%atom_percent)/ir_mass
     END DO 
     
     !Number of Platinum Isotopes
     pt_size = 6 

     platinum_array(1)%z = 78
     platinum_array(1)%a = 190
     platinum_array(1)%symbol ="Pt-190"
     platinum_array(1)%mass_defect = -37.3251
     platinum_array(1)%atom_percent = 0.012
     platinum_array(1)%zaid = "78000.42c"

     platinum_array(2)%z = 78
     platinum_array(2)%a = 192
     platinum_array(2)%symbol ="Pt-192"
     platinum_array(2)%mass_defect = -36.2921
     platinum_array(2)%atom_percent = 0.782
     platinum_array(2)%zaid = "78000.42c"

     platinum_array(3)%z = 78
     platinum_array(3)%a = 194
     platinum_array(3)%symbol ="Pt-194"
     platinum_array(3)%mass_defect = -34.7625
     platinum_array(3)%atom_percent = 32.86
     platinum_array(3)%zaid = "78000.42c"

     platinum_array(4)%z = 78
     platinum_array(4)%a = 195
     platinum_array(4)%symbol ="Pt-195"
     platinum_array(4)%mass_defect = -32.7962
     platinum_array(4)%atom_percent = 33.78
     platinum_array(4)%zaid = "78000.42c"

     platinum_array(5)%z = 78
     platinum_array(5)%a = 196
     platinum_array(5)%symbol ="Pt-196"
     platinum_array(5)%mass_defect = -32.6468
     platinum_array(5)%atom_percent = 25.21
     platinum_array(5)%zaid = "78000.42c"

     platinum_array(6)%z = 78
     platinum_array(6)%a = 198
     platinum_array(6)%symbol ="Pt-198"
     platinum_array(6)%mass_defect = -29.9056
     platinum_array(6)%atom_percent = 7.36
     platinum_array(6)%zaid = "78000.42c"

     !Calculate isotopic mass for Platinum
     DO i=1,pt_size
          holder = platinum_array(i)%a + (platinum_array(i)%mass_defect/931.494)

          platinum_array(i)%isotopic_mass = holder
     END DO

     !Set mass and holder to zero.
     pt_mass = 0.0
     holder = 0.0

     !Calculate mass of Platinum
     DO i=1, pt_size
          pt_mass = holder + (platinum_array(i)%isotopic_mass* &
          &  platinum_array(i)%atom_percent)/100

          holder = pt_mass
     END DO
     
     !Calculate weight percent of Platinum
     DO i=1, pt_size
          platinum_array(i)%weight_percent = (platinum_array(i)%isotopic_mass &
          &   * platinum_array(i)%atom_percent)/pt_mass
     END DO
     
     !Number of Gold Isotopes
     au_size = 1 

     gold_array(1)%z = 79
     gold_array(1)%a = 197
     gold_array(1)%symbol ="Au-197"
     gold_array(1)%mass_defect = -31.1409
     gold_array(1)%atom_percent = 100.0
     gold_array(1)%zaid = "79197.80c"

     !Calculate isotopic mass for Gold
     DO i=1,au_size
          holder = gold_array(i)%a + (gold_array(i)%mass_defect/931.494)

          gold_array(i)%isotopic_mass = holder
     END DO

     !Set mass and holder to zero.
     au_mass = 0.0
     holder = 0.0

     !Calculate mass of Gold
     DO i=1, au_size
          au_mass = holder + (gold_array(i)%isotopic_mass* &
          &  gold_array(i)%atom_percent)/100

          holder = au_mass
     END DO

     !Calculate weight percent of Gold
     DO i=1, au_size
          gold_array(i)%weight_percent = (gold_array(i)%isotopic_mass &
          &   * gold_array(i)%atom_percent)/au_mass
     END DO

     !Number of Mercury Isotopes
     hg_size = 7

     mercury_array(1)%z = 80
     mercury_array(1)%a = 196
     mercury_array(1)%symbol ="Hg-196"
     mercury_array(1)%mass_defect = -31.8267
     mercury_array(1)%atom_percent =  0.15
     mercury_array(1)%zaid = "80196.80c"

     mercury_array(2)%z = 80
     mercury_array(2)%a = 198
     mercury_array(2)%symbol ="Hg-198"
     mercury_array(2)%mass_defect = -30.9548
     mercury_array(2)%atom_percent = 9.97
     mercury_array(2)%zaid = "80198.80c"

     mercury_array(3)%z = 80
     mercury_array(3)%a = 199
     mercury_array(3)%symbol ="Hg-199"
     mercury_array(3)%mass_defect = -29.5464
     mercury_array(3)%atom_percent = 16.87
     mercury_array(3)%zaid = "80199.80c"

     mercury_array(4)%z = 80
     mercury_array(4)%a = 200
     mercury_array(4)%symbol ="Hg-200"
     mercury_array(4)%mass_defect = -29.5035
     mercury_array(4)%atom_percent = 23.10
     mercury_array(4)%zaid = "80200.80c"

     mercury_array(5)%z = 80
     mercury_array(5)%a = 201
     mercury_array(5)%symbol ="Hg-201"
     mercury_array(5)%mass_defect = -27.6629
     mercury_array(5)%atom_percent = 13.18
     mercury_array(5)%zaid = "80201.80c"

     mercury_array(6)%z = 80
     mercury_array(6)%a = 202
     mercury_array(6)%symbol ="Hg-202"
     mercury_array(6)%mass_defect = -27.3456 
     mercury_array(6)%atom_percent = 29.86
     mercury_array(6)%zaid = "80202.80c"

     mercury_array(7)%z = 80
     mercury_array(7)%a = 204
     mercury_array(7)%symbol ="Hg-204"
     mercury_array(7)%mass_defect = -24.6902
     mercury_array(7)%atom_percent = 6.87
     mercury_array(7)%zaid = "80204.80c"

     !Calculate isotopic mass for Mercury
     DO i=1,hg_size
          holder = mercury_array(i)%a + (mercury_array(i)%mass_defect/931.494)

          mercury_array(i)%isotopic_mass = holder
     END DO

     !Set mass and holder to zero.
     hg_mass = 0.0
     holder = 0.0

     !Calculate mass of Mercury
     DO i=1, hg_size
          hg_mass = holder + (mercury_array(i)%isotopic_mass* &
          &  mercury_array(i)%atom_percent)/100

          holder = hg_mass
     END DO
     
     !Calculate weight percent of Mercury
     DO i=1, hg_size
          mercury_array(i)%weight_percent = (mercury_array(i)%isotopic_mass &
          &   * mercury_array(i)%atom_percent)/hg_mass
     END DO     

   END SUBROUTINE Z76_Z80
