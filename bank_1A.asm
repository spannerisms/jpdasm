org $1A8B6C

; see «spc.asm»

;===================================================================================================

SFX_Data:
|1A8B6C| dw $1090, SFX_DATA ; Transfer size, transfer address

site SFX_DATA

;===================================================================================================

SFX1_Pointers:
|1A8B70:17C0| dw SFX1_01
|1A8B72:17C2| dw SFX1_02
|1A8B74:17C4| dw SFX1_03
|1A8B76:17C6| dw SFX1_04
|1A8B78:17C8| dw SFX1_05
|1A8B7A:17CA| dw SFX1_06
|1A8B7C:17CC| dw SFX1_07
|1A8B7E:17CE| dw SFX1_08
|1A8B80:17D0| dw SFX1_09
|1A8B82:17D2| dw SFX1_0A
|1A8B84:17D4| dw SFX1_0B
|1A8B86:17D6| dw SFX1_0C
|1A8B88:17D8| dw SFX1_0D
|1A8B8A:17DA| dw SFX1_0E
|1A8B8C:17DC| dw SFX1_0F
|1A8B8E:17DE| dw SFX1_10
|1A8B90:17E0| dw SFX1_11
|1A8B92:17E2| dw SFX1_12
|1A8B94:17E4| dw SFX1_13
|1A8B96:17E6| dw SFX1_14
|1A8B98:17E8| dw SFX1_15
|1A8B9A:17EA| dw SFX1_16
|1A8B9C:17EC| dw SFX1_17
|1A8B9E:17EE| dw SFX1_18
|1A8BA0:17F0| dw $0000
|1A8BA2:17F2| dw $0000
|1A8BA4:17F4| dw SFX1_0B
|1A8BA6:17F6| dw SFX1_0C
|1A8BA8:17F8| dw SFX1_0D
|1A8BAA:17FA| dw SFX1_0E
|1A8BAC:17FC| dw SFX1_0F
|1A8BAE:17FE| dw SFX1_10

;---------------------------------------------------------------------------------------------------

SFX1_Accomp:
|1A8BB0:1800| db $02 ; SFX1 01
|1A8BB1:1801| db $00 ; SFX1 02
|1A8BB2:1802| db $04 ; SFX1 03
|1A8BB3:1803| db $00 ; SFX1 04
|1A8BB4:1804| db $06 ; SFX1 05
|1A8BB5:1805| db $00 ; SFX1 06
|1A8BB6:1806| db $08 ; SFX1 07
|1A8BB7:1807| db $00 ; SFX1 08
|1A8BB8:1808| db $0A ; SFX1 09
|1A8BB9:1809| db $00 ; SFX1 0A
|1A8BBA:180A| db $0C ; SFX1 0B
|1A8BBB:180B| db $00 ; SFX1 0C
|1A8BBC:180C| db $0E ; SFX1 0D
|1A8BBD:180D| db $00 ; SFX1 0E
|1A8BBE:180E| db $10 ; SFX1 0F
|1A8BBF:180F| db $00 ; SFX1 10
|1A8BC0:1810| db $12 ; SFX1 11
|1A8BC1:1811| db $00 ; SFX1 12
|1A8BC2:1812| db $14 ; SFX1 13
|1A8BC3:1813| db $00 ; SFX1 14
|1A8BC4:1814| db $16 ; SFX1 15
|1A8BC5:1815| db $00 ; SFX1 16
|1A8BC6:1816| db $18 ; SFX1 17
|1A8BC7:1817| db $00 ; SFX1 18
|1A8BC8:1818| db $1A ; SFX1 19
|1A8BC9:1819| db $00 ; SFX1 1A
|1A8BCA:181A| db $1C ; SFX1 1B
|1A8BCB:181B| db $00 ; SFX1 1C
|1A8BCC:181C| db $1E ; SFX1 1D
|1A8BCD:181D| db $00 ; SFX1 1E
|1A8BCE:181E| db $20 ; SFX1 1F
|1A8BCF:181F| db $00 ; SFX1 20

;===================================================================================================

SFX2_Pointers:
|1A8BD0:1820| dw SFX2_01
|1A8BD2:1822| dw SFX2_02
|1A8BD4:1824| dw SFX2_03
|1A8BD6:1826| dw SFX2_04
|1A8BD8:1828| dw SFX2_05
|1A8BDA:182A| dw SFX2_06
|1A8BDC:182C| dw SFX2_07
|1A8BDE:182E| dw SFX2_08
|1A8BE0:1830| dw SFX2_09
|1A8BE2:1832| dw SFX2_0A
|1A8BE4:1834| dw SFX2_0B
|1A8BE6:1836| dw SFX2_0C
|1A8BE8:1838| dw SFX2_0D
|1A8BEA:183A| dw SFX2_0E
|1A8BEC:183C| dw SFX2_0F
|1A8BEE:183E| dw SFX2_10
|1A8BF0:1840| dw SFX2_11
|1A8BF2:1842| dw SFX2_12
|1A8BF4:1844| dw SFX2_13
|1A8BF6:1846| dw SFX2_14
|1A8BF8:1848| dw SFX2_15
|1A8BFA:184A| dw SFX2_16
|1A8BFC:184C| dw SFX2_17
|1A8BFE:184E| dw SFX2_18
|1A8C00:1850| dw SFX2_19
|1A8C02:1852| dw SFX2_1A
|1A8C04:1854| dw SFX2_1B
|1A8C06:1856| dw SFX2_1C
|1A8C08:1858| dw SFX2_1D
|1A8C0A:185A| dw SFX2_1E
|1A8C0C:185C| dw SFX2_1F
|1A8C0E:185E| dw SFX2_20
|1A8C10:1860| dw SFX2_21
|1A8C12:1862| dw SFX2_22
|1A8C14:1864| dw SFX2_23
|1A8C16:1866| dw SFX2_24
|1A8C18:1868| dw SFX2_25
|1A8C1A:186A| dw SFX2_26
|1A8C1C:186C| dw SFX2_27
|1A8C1E:186E| dw SFX2_28
|1A8C20:1870| dw SFX2_29
|1A8C22:1872| dw SFX2_2A
|1A8C24:1874| dw SFX2_2B
|1A8C26:1876| dw SFX2_2C
|1A8C28:1878| dw SFX2_2D
|1A8C2A:187A| dw SFX2_2E
|1A8C2C:187C| dw SFX2_2F
|1A8C2E:187E| dw SFX2_30
|1A8C30:1880| dw SFX2_31
|1A8C32:1882| dw SFX2_32
|1A8C34:1884| dw SFX2_33
|1A8C36:1886| dw SFX2_34
|1A8C38:1888| dw SFX2_35
|1A8C3A:188A| dw SFX2_36
|1A8C3C:188C| dw SFX2_37
|1A8C3E:188E| dw SFX2_38 ; Same as SFX2_34
|1A8C40:1890| dw SFX2_39
|1A8C42:1892| dw SFX2_3A
|1A8C44:1894| dw SFX2_3B
|1A8C46:1896| dw SFX2_3C
|1A8C48:1898| dw SFX2_3D
|1A8C4A:189A| dw SFX2_3E
|1A8C4C:189C| dw SFX2_3F

;---------------------------------------------------------------------------------------------------

SFX2_Accomp:
|1A8C4E:189E| db $00 ; SFX2 01
|1A8C4F:189F| db $00 ; SFX2 02
|1A8C50:18A0| db $00 ; SFX2 03
|1A8C51:18A1| db $00 ; SFX2 04
|1A8C52:18A2| db $00 ; SFX2 05
|1A8C53:18A3| db $00 ; SFX2 06
|1A8C54:18A4| db $00 ; SFX2 07
|1A8C55:18A5| db $00 ; SFX2 08
|1A8C56:18A6| db $00 ; SFX2 09
|1A8C57:18A7| db $00 ; SFX2 0A
|1A8C58:18A8| db $00 ; SFX2 0B
|1A8C59:18A9| db $00 ; SFX2 0C
|1A8C5A:18AA| db $3F ; SFX2 0D
|1A8C5B:18AB| db $00 ; SFX2 0E
|1A8C5C:18AC| db $00 ; SFX2 0F
|1A8C5D:18AD| db $00 ; SFX2 10
|1A8C5E:18AE| db $00 ; SFX2 11
|1A8C5F:18AF| db $00 ; SFX2 12
|1A8C60:18B0| db $3E ; SFX2 13
|1A8C61:18B1| db $00 ; SFX2 14
|1A8C62:18B2| db $00 ; SFX2 15
|1A8C63:18B3| db $00 ; SFX2 16
|1A8C64:18B4| db $00 ; SFX2 17
|1A8C65:18B5| db $00 ; SFX2 18
|1A8C66:18B6| db $00 ; SFX2 19
|1A8C67:18B7| db $00 ; SFX2 1A
|1A8C68:18B8| db $00 ; SFX2 1B
|1A8C69:18B9| db $00 ; SFX2 1C
|1A8C6A:18BA| db $00 ; SFX2 1D
|1A8C6B:18BB| db $00 ; SFX2 1E
|1A8C6C:18BC| db $00 ; SFX2 1F
|1A8C6D:18BD| db $00 ; SFX2 20
|1A8C6E:18BE| db $00 ; SFX2 21
|1A8C6F:18BF| db $00 ; SFX2 22
|1A8C70:18C0| db $00 ; SFX2 23
|1A8C71:18C1| db $3D ; SFX2 24
|1A8C72:18C2| db $00 ; SFX2 25
|1A8C73:18C3| db $00 ; SFX2 26
|1A8C74:18C4| db $00 ; SFX2 27
|1A8C75:18C5| db $00 ; SFX2 28
|1A8C76:18C6| db $3B ; SFX2 29
|1A8C77:18C7| db $00 ; SFX2 2A
|1A8C78:18C8| db $00 ; SFX2 2B
|1A8C79:18C9| db $3A ; SFX2 2C
|1A8C7A:18CA| db $00 ; SFX2 2D
|1A8C7B:18CB| db $39 ; SFX2 2E
|1A8C7C:18CC| db $38 ; SFX2 2F
|1A8C7D:18CD| db $00 ; SFX2 30
|1A8C7E:18CE| db $00 ; SFX2 31
|1A8C7F:18CF| db $00 ; SFX2 32
|1A8C80:18D0| db $00 ; SFX2 33
|1A8C81:18D1| db $33 ; SFX2 34
|1A8C82:18D2| db $36 ; SFX2 35
|1A8C83:18D3| db $00 ; SFX2 36
|1A8C84:18D4| db $00 ; SFX2 37
|1A8C85:18D5| db $00 ; SFX2 38
|1A8C86:18D6| db $00 ; SFX2 39
|1A8C87:18D7| db $00 ; SFX2 3A
|1A8C88:18D8| db $00 ; SFX2 3B
|1A8C89:18D9| db $00 ; SFX2 3C
|1A8C8A:18DA| db $00 ; SFX2 3D
|1A8C8B:18DB| db $00 ; SFX2 3E
|1A8C8C:18DC| db $00 ; SFX2 3F

;---------------------------------------------------------------------------------------------------

SFX2_Echo:
|1A8C8D:18DD| db $00 ; SFX2 01
|1A8C8E:18DE| db $00 ; SFX2 02
|1A8C8F:18DF| db $00 ; SFX2 03
|1A8C90:18E0| db $00 ; SFX2 04
|1A8C91:18E1| db $00 ; SFX2 05
|1A8C92:18E2| db $00 ; SFX2 06
|1A8C93:18E3| db $00 ; SFX2 07
|1A8C94:18E4| db $00 ; SFX2 08
|1A8C95:18E5| db $00 ; SFX2 09
|1A8C96:18E6| db $00 ; SFX2 0A
|1A8C97:18E7| db $00 ; SFX2 0B
|1A8C98:18E8| db $01 ; SFX2 0C
|1A8C99:18E9| db $00 ; SFX2 0D
|1A8C9A:18EA| db $00 ; SFX2 0E
|1A8C9B:18EB| db $00 ; SFX2 0F
|1A8C9C:18EC| db $00 ; SFX2 10
|1A8C9D:18ED| db $00 ; SFX2 11
|1A8C9E:18EE| db $00 ; SFX2 12
|1A8C9F:18EF| db $00 ; SFX2 13
|1A8CA0:18F0| db $00 ; SFX2 14
|1A8CA1:18F1| db $00 ; SFX2 15
|1A8CA2:18F2| db $00 ; SFX2 16
|1A8CA3:18F3| db $00 ; SFX2 17
|1A8CA4:18F4| db $00 ; SFX2 18
|1A8CA5:18F5| db $00 ; SFX2 19
|1A8CA6:18F6| db $00 ; SFX2 1A
|1A8CA7:18F7| db $00 ; SFX2 1B
|1A8CA8:18F8| db $00 ; SFX2 1C
|1A8CA9:18F9| db $00 ; SFX2 1D
|1A8CAA:18FA| db $00 ; SFX2 1E
|1A8CAB:18FB| db $00 ; SFX2 1F
|1A8CAC:18FC| db $00 ; SFX2 20
|1A8CAD:18FD| db $00 ; SFX2 21
|1A8CAE:18FE| db $00 ; SFX2 22
|1A8CAF:18FF| db $00 ; SFX2 23
|1A8CB0:1900| db $00 ; SFX2 24
|1A8CB1:1901| db $00 ; SFX2 25
|1A8CB2:1902| db $00 ; SFX2 26
|1A8CB3:1903| db $00 ; SFX2 27
|1A8CB4:1904| db $00 ; SFX2 28
|1A8CB5:1905| db $3B ; SFX2 29
|1A8CB6:1906| db $01 ; SFX2 2A
|1A8CB7:1907| db $01 ; SFX2 2B
|1A8CB8:1908| db $00 ; SFX2 2C
|1A8CB9:1909| db $01 ; SFX2 2D
|1A8CBA:190A| db $01 ; SFX2 2E
|1A8CBB:190B| db $01 ; SFX2 2F
|1A8CBC:190C| db $00 ; SFX2 30
|1A8CBD:190D| db $00 ; SFX2 31
|1A8CBE:190E| db $00 ; SFX2 32
|1A8CBF:190F| db $00 ; SFX2 33
|1A8CC0:1910| db $00 ; SFX2 34
|1A8CC1:1911| db $01 ; SFX2 35
|1A8CC2:1912| db $01 ; SFX2 36
|1A8CC3:1913| db $00 ; SFX2 37
|1A8CC4:1914| db $00 ; SFX2 38
|1A8CC5:1915| db $00 ; SFX2 39
|1A8CC6:1916| db $00 ; SFX2 3A
|1A8CC7:1917| db $00 ; SFX2 3B
|1A8CC8:1918| db $01 ; SFX2 3C
|1A8CC9:1919| db $00 ; SFX2 3D
|1A8CCA:191A| db $3C ; SFX2 3E
|1A8CCB:191B| db $00 ; SFX2 3F

;===================================================================================================

SFX3_Pointers:
|1A8CCC:191C| dw SFX3_01
|1A8CCE:191E| dw SFX3_02
|1A8CD0:1920| dw SFX3_03
|1A8CD2:1922| dw SFX3_04
|1A8CD4:1924| dw SFX3_05 ; Same as SFX2_07
|1A8CD6:1926| dw SFX3_06
|1A8CD8:1928| dw SFX3_07
|1A8CDA:192A| dw SFX3_08
|1A8CDC:192C| dw SFX3_09
|1A8CDE:192E| dw SFX3_0A
|1A8CE0:1930| dw SFX3_0B
|1A8CE2:1932| dw SFX3_0C
|1A8CE4:1934| dw SFX3_0D
|1A8CE6:1936| dw SFX3_0E
|1A8CE8:1938| dw SFX3_0F
|1A8CEA:193A| dw SFX3_10
|1A8CEC:193C| dw SFX3_11
|1A8CEE:193E| dw SFX3_12
|1A8CF0:1940| dw SFX3_13
|1A8CF2:1942| dw SFX3_14
|1A8CF4:1944| dw SFX3_15
|1A8CF6:1946| dw SFX3_16
|1A8CF8:1948| dw SFX3_17
|1A8CFA:194A| dw SFX3_18
|1A8CFC:194C| dw SFX3_19
|1A8CFE:194E| dw SFX3_1A
|1A8D00:1950| dw SFX3_1B
|1A8D02:1952| dw SFX3_1C
|1A8D04:1954| dw SFX3_1D ; Same as SFX2_2D
|1A8D06:1956| dw SFX3_1E
|1A8D08:1958| dw SFX3_1F
|1A8D0A:195A| dw SFX3_20
|1A8D0C:195C| dw SFX3_21
|1A8D0E:195E| dw SFX3_22
|1A8D10:1960| dw SFX3_23
|1A8D12:1962| dw SFX3_24
|1A8D14:1964| dw SFX3_25
|1A8D16:1966| dw SFX3_26
|1A8D18:1968| dw SFX3_27
|1A8D1A:196A| dw SFX3_28
|1A8D1C:196C| dw SFX3_29
|1A8D1E:196E| dw SFX3_2A
|1A8D20:1970| dw SFX3_2B
|1A8D22:1972| dw SFX3_2C
|1A8D24:1974| dw SFX3_2D
|1A8D26:1976| dw SFX3_2E
|1A8D28:1978| dw SFX3_2F
|1A8D2A:197A| dw SFX3_30
|1A8D2C:197C| dw SFX3_31
|1A8D2E:197E| dw SFX3_32
|1A8D30:1980| dw SFX3_33
|1A8D32:1982| dw SFX3_34
|1A8D34:1984| dw SFX3_35
|1A8D36:1986| dw SFX3_36
|1A8D38:1988| dw SFX3_37
|1A8D3A:198A| dw SFX3_38
|1A8D3C:198C| dw SFX3_39
|1A8D3E:198E| dw SFX3_3A
|1A8D40:1990| dw SFX3_3B
|1A8D42:1992| dw SFX3_3C
|1A8D44:1994| dw SFX3_3D
|1A8D46:1996| dw SFX3_3E
|1A8D48:1998| dw SFX3_3F

;---------------------------------------------------------------------------------------------------

SFX3_Accomp:
|1A8D4A:199A| db $00 ; SFX3 01
|1A8D4B:199B| db $00 ; SFX3 02
|1A8D4C:199C| db $00 ; SFX3 03
|1A8D4D:199D| db $00 ; SFX3 04
|1A8D4E:199E| db $00 ; SFX3 05
|1A8D4F:199F| db $00 ; SFX3 06
|1A8D50:19A0| db $00 ; SFX3 07
|1A8D51:19A1| db $00 ; SFX3 08
|1A8D52:19A2| db $00 ; SFX3 09
|1A8D53:19A3| db $00 ; SFX3 0A
|1A8D54:19A4| db $00 ; SFX3 0B
|1A8D55:19A5| db $00 ; SFX3 0C
|1A8D56:19A6| db $00 ; SFX3 0D
|1A8D57:19A7| db $00 ; SFX3 0E
|1A8D58:19A8| db $3C ; SFX3 0F
|1A8D59:19A9| db $3B ; SFX3 10
|1A8D5A:19AA| db $00 ; SFX3 11
|1A8D5B:19AB| db $00 ; SFX3 12
|1A8D5C:19AC| db $00 ; SFX3 13
|1A8D5D:19AD| db $00 ; SFX3 14
|1A8D5E:19AE| db $00 ; SFX3 15
|1A8D5F:19AF| db $00 ; SFX3 16
|1A8D60:19B0| db $00 ; SFX3 17
|1A8D61:19B1| db $00 ; SFX3 18
|1A8D62:19B2| db $00 ; SFX3 19
|1A8D63:19B3| db $38 ; SFX3 1A
|1A8D64:19B4| db $3A ; SFX3 1B
|1A8D65:19B5| db $00 ; SFX3 1C
|1A8D66:19B6| db $00 ; SFX3 1D
|1A8D67:19B7| db $00 ; SFX3 1E
|1A8D68:19B8| db $00 ; SFX3 1F
|1A8D69:19B9| db $00 ; SFX3 20
|1A8D6A:19BA| db $00 ; SFX3 21
|1A8D6B:19BB| db $00 ; SFX3 22
|1A8D6C:19BC| db $39 ; SFX3 23
|1A8D6D:19BD| db $00 ; SFX3 24
|1A8D6E:19BE| db $00 ; SFX3 25
|1A8D6F:19BF| db $00 ; SFX3 26
|1A8D70:19C0| db $00 ; SFX3 27
|1A8D71:19C1| db $00 ; SFX3 28
|1A8D72:19C2| db $00 ; SFX3 29
|1A8D73:19C3| db $00 ; SFX3 2A
|1A8D74:19C4| db $00 ; SFX3 2B
|1A8D75:19C5| db $00 ; SFX3 2C
|1A8D76:19C6| db $37 ; SFX3 2D
|1A8D77:19C7| db $35 ; SFX3 2E
|1A8D78:19C8| db $33 ; SFX3 2F
|1A8D79:19C9| db $00 ; SFX3 30
|1A8D7A:19CA| db $00 ; SFX3 31
|1A8D7B:19CB| db $00 ; SFX3 32
|1A8D7C:19CC| db $00 ; SFX3 33
|1A8D7D:19CD| db $00 ; SFX3 34
|1A8D7E:19CE| db $34 ; SFX3 35
|1A8D7F:19CF| db $00 ; SFX3 36
|1A8D80:19D0| db $00 ; SFX3 37
|1A8D81:19D1| db $00 ; SFX3 38
|1A8D82:19D2| db $00 ; SFX3 39
|1A8D83:19D3| db $00 ; SFX3 3A
|1A8D84:19D4| db $00 ; SFX3 3B
|1A8D85:19D5| db $3D ; SFX3 3C
|1A8D86:19D6| db $3E ; SFX3 3D
|1A8D87:19D7| db $3F ; SFX3 3E
|1A8D88:19D8| db $00 ; SFX3 3F

;---------------------------------------------------------------------------------------------------

SFX3_Echo:
|1A8D89:19D9| db $00 ; SFX3 01
|1A8D8A:19DA| db $00 ; SFX3 02
|1A8D8B:19DB| db $00 ; SFX3 03
|1A8D8C:19DC| db $00 ; SFX3 04
|1A8D8D:19DD| db $00 ; SFX3 05
|1A8D8E:19DE| db $00 ; SFX3 06
|1A8D8F:19DF| db $00 ; SFX3 07
|1A8D90:19E0| db $00 ; SFX3 08
|1A8D91:19E1| db $00 ; SFX3 09
|1A8D92:19E2| db $00 ; SFX3 0A
|1A8D93:19E3| db $00 ; SFX3 0B
|1A8D94:19E4| db $01 ; SFX3 0C
|1A8D95:19E5| db $01 ; SFX3 0D
|1A8D96:19E6| db $00 ; SFX3 0E
|1A8D97:19E7| db $3C ; SFX3 0F
|1A8D98:19E8| db $3B ; SFX3 10
|1A8D99:19E9| db $01 ; SFX3 11
|1A8D9A:19EA| db $01 ; SFX3 12
|1A8D9B:19EB| db $00 ; SFX3 13
|1A8D9C:19EC| db $00 ; SFX3 14
|1A8D9D:19ED| db $00 ; SFX3 15
|1A8D9E:19EE| db $00 ; SFX3 16
|1A8D9F:19EF| db $00 ; SFX3 17
|1A8DA0:19F0| db $00 ; SFX3 18
|1A8DA1:19F1| db $00 ; SFX3 19
|1A8DA2:19F2| db $00 ; SFX3 1A
|1A8DA3:19F3| db $3A ; SFX3 1B
|1A8DA4:19F4| db $00 ; SFX3 1C
|1A8DA5:19F5| db $01 ; SFX3 1D
|1A8DA6:19F6| db $00 ; SFX3 1E
|1A8DA7:19F7| db $01 ; SFX3 1F
|1A8DA8:19F8| db $01 ; SFX3 20
|1A8DA9:19F9| db $01 ; SFX3 21
|1A8DAA:19FA| db $01 ; SFX3 22
|1A8DAB:19FB| db $00 ; SFX3 23
|1A8DAC:19FC| db $01 ; SFX3 24
|1A8DAD:19FD| db $00 ; SFX3 25
|1A8DAE:19FE| db $00 ; SFX3 26
|1A8DAF:19FF| db $00 ; SFX3 27
|1A8DB0:1A00| db $00 ; SFX3 28
|1A8DB1:1A01| db $00 ; SFX3 29
|1A8DB2:1A02| db $00 ; SFX3 2A
|1A8DB3:1A03| db $00 ; SFX3 2B
|1A8DB4:1A04| db $00 ; SFX3 2C
|1A8DB5:1A05| db $01 ; SFX3 2D
|1A8DB6:1A06| db $01 ; SFX3 2E
|1A8DB7:1A07| db $01 ; SFX3 2F
|1A8DB8:1A08| db $00 ; SFX3 30
|1A8DB9:1A09| db $01 ; SFX3 31
|1A8DBA:1A0A| db $00 ; SFX3 32
|1A8DBB:1A0B| db $01 ; SFX3 33
|1A8DBC:1A0C| db $01 ; SFX3 34
|1A8DBD:1A0D| db $01 ; SFX3 35
|1A8DBE:1A0E| db $00 ; SFX3 36
|1A8DBF:1A0F| db $01 ; SFX3 37
|1A8DC0:1A10| db $00 ; SFX3 38
|1A8DC1:1A11| db $00 ; SFX3 39
|1A8DC2:1A12| db $00 ; SFX3 3A
|1A8DC3:1A13| db $00 ; SFX3 3B
|1A8DC4:1A14| db $3D ; SFX3 3C
|1A8DC5:1A15| db $3E ; SFX3 3D
|1A8DC6:1A16| db $3F ; SFX3 3E
|1A8DC7:1A17| db $01 ; SFX3 3F

;===================================================================================================

SFX3_01:
|1A8DC8:1A18| db $E0, $07 ; set sfx instrument - fwomp
|1A8DCA:1A1A| db $0B, $50 ; duration, params
|1A8DCC:1A1C| db $F9, $AF, $00, $08 ; enable slide
|1A8DD0:1A20| db $BE ; play note D6
|1A8DD1:1A21| db $0F, $46 ; duration, params
|1A8DD3:1A23| db $F9, $AF, $00, $0C ; enable slide
|1A8DD7:1A27| db $BE ; play note D6
|1A8DD8:1A28| db $0B, $32 ; duration, params
|1A8DDA:1A2A| db $F9, $AF, $00, $08 ; enable slide
|1A8DDE:1A2E| db $BE ; play note D6
|1A8DDF:1A2F| db $0F, $1E ; duration, params
|1A8DE1:1A31| db $F9, $AF, $00, $0C ; enable slide
|1A8DE5:1A35| db $BE ; play note D6
|1A8DE6:1A36| db $00 ; end sfx

;===================================================================================================

SFX2_3C:
|1A8DE7:1A37| db $E0, $04 ; set sfx instrument - rrrrr
|1A8DE9:1A39| db $0C, $6E ; duration, params
|1A8DEB:1A3B| db $A1 ; play note A3
|1A8DEC:1A3C| db $06, $00 ; duration, params
|1A8DEE:1A3E| db $98 ; play note C3
|1A8DEF:1A3F| db $24, $6E ; duration, params
|1A8DF1:1A41| db $A1 ; play note A3
|1A8DF2:1A42| db $00 ; end sfx

;===================================================================================================

SFX2_37:
|1A8DF3:1A43| db $E0, $0E ; set sfx instrument - pwing
|1A8DF5:1A45| db $0A, $3C ; duration, params
|1A8DF7:1A47| db $F9, $9C, $00, $08 ; enable slide
|1A8DFB:1A4B| db $A1 ; play note A3
|1A8DFC:1A4C| db $0A, $46 ; duration, params
|1A8DFE:1A4E| db $F9, $9D, $00, $08 ; enable slide
|1A8E02:1A52| db $A3 ; play note B3
|1A8E03:1A53| db $0A, $50 ; duration, params
|1A8E05:1A55| db $F9, $A0, $00, $08 ; enable slide
|1A8E09:1A59| db $A5 ; play note C#4
|1A8E0A:1A5A| db $00 ; end sfx

;===================================================================================================

UnusedSFX_1A5B:
|1A8E0B:1A5B| db $0C, $64 ; duration, params
|1A8E0D:1A5D| db $F9, $A5, $00, $0A ; enable slide
|1A8E11:1A61| db $AA ; play note F#4

;===================================================================================================

SFX3_1C:
|1A8E12:1A62| db $E0, $0A ; set sfx instrument - bzzzrt
|1A8E14:1A64| db $07, $7D ; duration, params
|1A8E16:1A66| db $F9, $A1, $00, $05 ; enable slide
|1A8E1A:1A6A| db $9D ; play note F3
|1A8E1B:1A6B| db $08, $7D ; duration, params
|1A8E1D:1A6D| db $F9, $A3, $00, $06 ; enable slide
|1A8E21:1A71| db $AF ; play note B4
|1A8E22:1A72| db $07 ; duration
|1A8E23:1A73| db $F1, $00, $04, $A9 ; slide to note
|1A8E27:1A77| db $00 ; end sfx

;===================================================================================================

SFX3_32:
|1A8E28:1A78| db $E0, $04 ; set sfx instrument - rrrrr
|1A8E2A:1A7A| db $08, $6E ; duration, params
|1A8E2C:1A7C| db $F9, $A9, $00, $05 ; enable slide
|1A8E30:1A80| db $A4 ; play note C4
|1A8E31:1A81| db $08, $6E ; duration, params
|1A8E33:1A83| db $F9, $AD, $00, $08 ; enable slide
|1A8E37:1A87| db $A4 ; play note C4
|1A8E38:1A88| db $08, $5F ; duration, params
|1A8E3A:1A8A| db $F1, $00, $08, $B0 ; slide to note
|1A8E3E:1A8E| db $08, $50 ; duration, params
|1A8E40:1A90| db $F1, $00, $08, $A9 ; slide to note
|1A8E44:1A94| db $08, $41 ; duration, params
|1A8E46:1A96| db $F1, $00, $08, $AF ; slide to note
|1A8E4A:1A9A| db $08, $2D ; duration, params
|1A8E4C:1A9C| db $F1, $00, $08, $A9 ; slide to note
|1A8E50:1AA0| db $08, $16 ; duration, params
|1A8E52:1AA2| db $F1, $00, $05, $AF ; slide to note
|1A8E56:1AA6| db $00 ; end sfx

;===================================================================================================

SFX3_36:
|1A8E57:1AA7| db $E0, $07 ; set sfx instrument - fwomp
|1A8E59:1AA9| db $08, $3C ; duration, params
|1A8E5B:1AAB| db $F9, $B2, $00, $05 ; enable slide
|1A8E5F:1AAF| db $B4 ; play note E5
|1A8E60:1AB0| db $08, $46 ; duration, params
|1A8E62:1AB2| db $F9, $BE, $00, $08 ; enable slide
|1A8E66:1AB6| db $C1 ; play note F6
|1A8E67:1AB7| db $08, $41 ; duration, params
|1A8E69:1AB9| db $F1, $00, $08, $BE ; slide to note
|1A8E6D:1ABD| db $08, $32 ; duration, params
|1A8E6F:1ABF| db $F1, $00, $08, $C1 ; slide to note
|1A8E73:1AC3| db $08, $2D ; duration, params
|1A8E75:1AC5| db $F1, $00, $05, $BE ; slide to note
|1A8E79:1AC9| db $00 ; end sfx

;===================================================================================================

SFX3_31:
|1A8E7A:1ACA| db $E0, $01 ; set sfx instrument - swish
|1A8E7C:1ACC| db $06, $78 ; duration, params
|1A8E7E:1ACE| db $A3 ; play note B3
|1A8E7F:1ACF| db $A1 ; play note A3
|1A8E80:1AD0| db $9F ; play note G3
|1A8E81:1AD1| db $00 ; end sfx

;===================================================================================================

SFX1_13:
|1A8E82:1AD2| db $E0, $00 ; set sfx instrument - fwoosh
|1A8E84:1AD4| db $0B, $3C ; duration, params
|1A8E86:1AD6| db $F9, $9F, $00, $0B ; enable slide
|1A8E8A:1ADA| db $A4 ; play note C4
|1A8E8B:1ADB| db $18 ; duration
|1A8E8C:1ADC| db $F1, $00, $15, $BC ; slide to note
|1A8E90:1AE0| db $00 ; end sfx

;===================================================================================================

SFX1_14:
|1A8E91:1AE1| db $E0, $00 ; set sfx instrument - fwoosh
|1A8E93:1AE3| db $0B, $3C ; duration, params
|1A8E95:1AE5| db $F9, $B7, $00, $0B ; enable slide
|1A8E99:1AE9| db $A4 ; play note C4
|1A8E9A:1AEA| db $18 ; duration
|1A8E9B:1AEB| db $F1, $00, $15, $98 ; slide to note
|1A8E9F:1AEF| db $00 ; end sfx

;===================================================================================================

SFX1_15:
|1A8EA0:1AF0| db $E0, $0A ; set sfx instrument - bzzzrt
|1A8EA2:1AF2| db $0C, $64 ; duration, params
|1A8EA4:1AF4| db $F9, $90, $00, $0C ; enable slide
|1A8EA8:1AF8| db $9F ; play note G3
|1A8EA9:1AF9| db $1B ; duration
|1A8EAA:1AFA| db $F1, $00, $18, $A6 ; slide to note
|1A8EAE:1AFE| db $00 ; end sfx

;===================================================================================================

SFX1_16:
|1A8EAF:1AFF| db $E0, $0A ; set sfx instrument - bzzzrt
|1A8EB1:1B01| db $0C, $64 ; duration, params
|1A8EB3:1B03| db $F9, $9C, $00, $0C ; enable slide
|1A8EB7:1B07| db $93 ; play note G2
|1A8EB8:1B08| db $1B ; duration
|1A8EB9:1B09| db $F1, $00, $18, $82 ; slide to note
|1A8EBD:1B0D| db $00 ; end sfx

;===================================================================================================

SFX1_0D:
|1A8EBE:1B0E| db $E0, $0E ; set sfx instrument - pwing
|1A8EC0:1B10| db $10, $28 ; duration, params
|1A8EC2:1B12| db $AE ; play note A#4
|1A8EC3:1B13| db $10, $28 ; duration, params
|1A8EC5:1B15| db $B0 ; play note C5
|1A8EC6:1B16| db $10, $1E ; duration, params
|1A8EC8:1B18| db $B2 ; play note D5
|1A8EC9:1B19| db $34, $1E ; duration, params
|1A8ECB:1B1B| db $BA ; play note A#5
|1A8ECC:1B1C| db $00 ; end sfx

;===================================================================================================

SFX1_0E:
|1A8ECD:1B1D| db $E0, $0E ; set sfx instrument - pwing
|1A8ECF:1B1F| db $08, $00 ; duration, params
|1A8ED1:1B21| db $C9 ; rest
|1A8ED2:1B22| db $10, $28 ; duration, params
|1A8ED4:1B24| db $B2 ; play note D5
|1A8ED5:1B25| db $10, $1E ; duration, params
|1A8ED7:1B27| db $B4 ; play note E5
|1A8ED8:1B28| db $10, $1E ; duration, params
|1A8EDA:1B2A| db $B6 ; play note F#5
|1A8EDB:1B2B| db $00 ; end sfx

;===================================================================================================

SFX1_0F:
|1A8EDC:1B2C| db $E0, $0E ; set sfx instrument - pwing
|1A8EDE:1B2E| db $10, $28 ; duration, params
|1A8EE0:1B30| db $BD ; play note C#6
|1A8EE1:1B31| db $10, $28 ; duration, params
|1A8EE3:1B33| db $B6 ; play note F#5
|1A8EE4:1B34| db $10, $1E ; duration, params
|1A8EE6:1B36| db $B1 ; play note C#5
|1A8EE7:1B37| db $10, $14 ; duration, params
|1A8EE9:1B39| db $AA ; play note F#4
|1A8EEA:1B3A| db $10, $0A ; duration, params
|1A8EEC:1B3C| db $A5 ; play note C#4
|1A8EED:1B3D| db $00 ; end sfx

;===================================================================================================

SFX1_10:
|1A8EEE:1B3E| db $E0, $0E ; set sfx instrument - pwing
|1A8EF0:1B40| db $08, $00 ; duration, params
|1A8EF2:1B42| db $AA ; play note F#4
|1A8EF3:1B43| db $10, $28 ; duration, params
|1A8EF5:1B45| db $BA ; play note A#5
|1A8EF6:1B46| db $10, $1E ; duration, params
|1A8EF8:1B48| db $B3 ; play note D#5
|1A8EF9:1B49| db $10, $14 ; duration, params
|1A8EFB:1B4B| db $AE ; play note A#4
|1A8EFC:1B4C| db $10, $0A ; duration, params
|1A8EFE:1B4E| db $A7 ; play note D#4
|1A8EFF:1B4F| db $10, $05 ; duration, params
|1A8F01:1B51| db $A2 ; play note A#3
|1A8F02:1B52| db $00 ; end sfx

;===================================================================================================

SFX3_30:
|1A8F03:1B53| db $E0, $03 ; set sfx instrument - ting
|1A8F05:1B55| db $0C, $78 ; duration, params
|1A8F07:1B57| db $F9, $B4, $00, $0C ; enable slide
|1A8F0B:1B5B| db $B9 ; play note A5
|1A8F0C:1B5C| db $0C ; duration
|1A8F0D:1B5D| db $F1, $00, $0A, $B3 ; slide to note
|1A8F11:1B61| db $00 ; end sfx

;===================================================================================================

SFX1_0C:
|1A8F12:1B62| db $E0, $0D ; set sfx instrument - twee
|1A8F14:1B64| db $16, $1E ; duration, params
|1A8F16:1B66| db $AB ; play note G4
|1A8F17:1B67| db $0E ; duration
|1A8F18:1B68| db $B0 ; play note C5
|1A8F19:1B69| db $B2 ; play note D5
|1A8F1A:1B6A| db $B7 ; play note G5
|1A8F1B:1B6B| db $B2 ; play note D5
|1A8F1C:1B6C| db $66 ; duration
|1A8F1D:1B6D| db $B4 ; play note E5
|1A8F1E:1B6E| db $0E ; duration
|1A8F1F:1B6F| db $AB ; play note G4
|1A8F20:1B70| db $B0 ; play note C5
|1A8F21:1B71| db $B2 ; play note D5
|1A8F22:1B72| db $B7 ; play note G5
|1A8F23:1B73| db $B2 ; play note D5
|1A8F24:1B74| db $66 ; duration
|1A8F25:1B75| db $B4 ; play note E5
|1A8F26:1B76| db $0E ; duration
|1A8F27:1B77| db $AD ; play note A4
|1A8F28:1B78| db $B2 ; play note D5
|1A8F29:1B79| db $B4 ; play note E5
|1A8F2A:1B7A| db $B9 ; play note A5
|1A8F2B:1B7B| db $B4 ; play note E5
|1A8F2C:1B7C| db $66 ; duration
|1A8F2D:1B7D| db $B5 ; play note F5
|1A8F2E:1B7E| db $0E ; duration
|1A8F2F:1B7F| db $B4 ; play note E5
|1A8F30:1B80| db $B5 ; play note F5
|1A8F31:1B81| db $B7 ; play note G5
|1A8F32:1B82| db $78 ; duration
|1A8F33:1B83| db $B2 ; play note D5
|1A8F34:1B84| db $0E ; duration
|1A8F35:1B85| db $B0 ; play note C5
|1A8F36:1B86| db $B5 ; play note F5
|1A8F37:1B87| db $B9 ; play note A5
|1A8F38:1B88| db $BE ; play note D6
|1A8F39:1B89| db $BB ; play note B5
|1A8F3A:1B8A| db $66 ; duration
|1A8F3B:1B8B| db $BC ; play note C6
|1A8F3C:1B8C| db $0E ; duration
|1A8F3D:1B8D| db $BC ; play note C6
|1A8F3E:1B8E| db $BB ; play note B5
|1A8F3F:1B8F| db $B9 ; play note A5
|1A8F40:1B90| db $B7 ; play note G5
|1A8F41:1B91| db $B9 ; play note A5
|1A8F42:1B92| db $66 ; duration
|1A8F43:1B93| db $B4 ; play note E5
|1A8F44:1B94| db $0E ; duration
|1A8F45:1B95| db $AB ; play note G4
|1A8F46:1B96| db $B2 ; play note D5
|1A8F47:1B97| db $B4 ; play note E5
|1A8F48:1B98| db $B7 ; play note G5
|1A8F49:1B99| db $B2 ; play note D5
|1A8F4A:1B9A| db $66 ; duration
|1A8F4B:1B9B| db $B5 ; play note F5
|1A8F4C:1B9C| db $0E ; duration
|1A8F4D:1B9D| db $B5 ; play note F5
|1A8F4E:1B9E| db $B2 ; play note D5
|1A8F4F:1B9F| db $AF ; play note B4
|1A8F50:1BA0| db $70 ; duration
|1A8F51:1BA1| db $B0 ; play note C5
|1A8F52:1BA2| db $FF ; loop SFX

;===================================================================================================

SFX1_0B:
|1A8F53:1BA3| db $E0, $0D ; set sfx instrument - twee
|1A8F55:1BA5| db $0E, $3C ; duration, params
|1A8F57:1BA7| db $AB ; play note G4
|1A8F58:1BA8| db $B0 ; play note C5
|1A8F59:1BA9| db $B2 ; play note D5
|1A8F5A:1BAA| db $B7 ; play note G5
|1A8F5B:1BAB| db $B2 ; play note D5
|1A8F5C:1BAC| db $66 ; duration
|1A8F5D:1BAD| db $B4 ; play note E5
|1A8F5E:1BAE| db $0E ; duration
|1A8F5F:1BAF| db $AB ; play note G4
|1A8F60:1BB0| db $B0 ; play note C5
|1A8F61:1BB1| db $B2 ; play note D5
|1A8F62:1BB2| db $B7 ; play note G5
|1A8F63:1BB3| db $B2 ; play note D5
|1A8F64:1BB4| db $66 ; duration
|1A8F65:1BB5| db $B4 ; play note E5
|1A8F66:1BB6| db $0E ; duration
|1A8F67:1BB7| db $AD ; play note A4
|1A8F68:1BB8| db $B2 ; play note D5
|1A8F69:1BB9| db $B4 ; play note E5
|1A8F6A:1BBA| db $B9 ; play note A5
|1A8F6B:1BBB| db $B4 ; play note E5
|1A8F6C:1BBC| db $66 ; duration
|1A8F6D:1BBD| db $B5 ; play note F5
|1A8F6E:1BBE| db $0E ; duration
|1A8F6F:1BBF| db $B4 ; play note E5
|1A8F70:1BC0| db $B5 ; play note F5
|1A8F71:1BC1| db $B7 ; play note G5
|1A8F72:1BC2| db $78 ; duration
|1A8F73:1BC3| db $B2 ; play note D5
|1A8F74:1BC4| db $0E ; duration
|1A8F75:1BC5| db $B0 ; play note C5
|1A8F76:1BC6| db $B5 ; play note F5
|1A8F77:1BC7| db $B9 ; play note A5
|1A8F78:1BC8| db $BE ; play note D6
|1A8F79:1BC9| db $BB ; play note B5
|1A8F7A:1BCA| db $66 ; duration
|1A8F7B:1BCB| db $BC ; play note C6
|1A8F7C:1BCC| db $0E ; duration
|1A8F7D:1BCD| db $BC ; play note C6
|1A8F7E:1BCE| db $BB ; play note B5
|1A8F7F:1BCF| db $B9 ; play note A5
|1A8F80:1BD0| db $B7 ; play note G5
|1A8F81:1BD1| db $B9 ; play note A5
|1A8F82:1BD2| db $66 ; duration
|1A8F83:1BD3| db $B4 ; play note E5
|1A8F84:1BD4| db $0E ; duration
|1A8F85:1BD5| db $AB ; play note G4
|1A8F86:1BD6| db $B2 ; play note D5
|1A8F87:1BD7| db $B4 ; play note E5
|1A8F88:1BD8| db $B7 ; play note G5
|1A8F89:1BD9| db $B2 ; play note D5
|1A8F8A:1BDA| db $66 ; duration
|1A8F8B:1BDB| db $B5 ; play note F5
|1A8F8C:1BDC| db $0E ; duration
|1A8F8D:1BDD| db $B5 ; play note F5
|1A8F8E:1BDE| db $B2 ; play note D5
|1A8F8F:1BDF| db $AF ; play note B4
|1A8F90:1BE0| db $78 ; duration
|1A8F91:1BE1| db $B0 ; play note C5
|1A8F92:1BE2| db $FF ; loop SFX

;===================================================================================================

SFX1_18:
|1A8F93:1BE3| db $E0, $0D ; set sfx instrument - twee
|1A8F95:1BE5| db $16, $1E ; duration, params
|1A8F97:1BE7| db $AB ; play note G4
|1A8F98:1BE8| db $0E ; duration
|1A8F99:1BE9| db $B0 ; play note C5
|1A8F9A:1BEA| db $B2 ; play note D5
|1A8F9B:1BEB| db $B7 ; play note G5
|1A8F9C:1BEC| db $B2 ; play note D5
|1A8F9D:1BED| db $66 ; duration
|1A8F9E:1BEE| db $B4 ; play note E5
|1A8F9F:1BEF| db $0E ; duration
|1A8FA0:1BF0| db $AB ; play note G4
|1A8FA1:1BF1| db $B0 ; play note C5
|1A8FA2:1BF2| db $B2 ; play note D5
|1A8FA3:1BF3| db $B7 ; play note G5
|1A8FA4:1BF4| db $B2 ; play note D5
|1A8FA5:1BF5| db $66 ; duration
|1A8FA6:1BF6| db $B4 ; play note E5
|1A8FA7:1BF7| db $0E ; duration
|1A8FA8:1BF8| db $AD ; play note A4
|1A8FA9:1BF9| db $B2 ; play note D5
|1A8FAA:1BFA| db $B4 ; play note E5
|1A8FAB:1BFB| db $B9 ; play note A5
|1A8FAC:1BFC| db $B4 ; play note E5
|1A8FAD:1BFD| db $66 ; duration
|1A8FAE:1BFE| db $B5 ; play note F5
|1A8FAF:1BFF| db $0E ; duration
|1A8FB0:1C00| db $B4 ; play note E5
|1A8FB1:1C01| db $B5 ; play note F5
|1A8FB2:1C02| db $B7 ; play note G5
|1A8FB3:1C03| db $78 ; duration
|1A8FB4:1C04| db $B2 ; play note D5
|1A8FB5:1C05| db $0E ; duration
|1A8FB6:1C06| db $B0 ; play note C5
|1A8FB7:1C07| db $B5 ; play note F5
|1A8FB8:1C08| db $B9 ; play note A5
|1A8FB9:1C09| db $BE ; play note D6
|1A8FBA:1C0A| db $BB ; play note B5
|1A8FBB:1C0B| db $66 ; duration
|1A8FBC:1C0C| db $BC ; play note C6
|1A8FBD:1C0D| db $0E ; duration
|1A8FBE:1C0E| db $BC ; play note C6
|1A8FBF:1C0F| db $BB ; play note B5
|1A8FC0:1C10| db $B9 ; play note A5
|1A8FC1:1C11| db $B7 ; play note G5
|1A8FC2:1C12| db $B9 ; play note A5
|1A8FC3:1C13| db $66 ; duration
|1A8FC4:1C14| db $B4 ; play note E5
|1A8FC5:1C15| db $0E ; duration
|1A8FC6:1C16| db $AB ; play note G4
|1A8FC7:1C17| db $B2 ; play note D5
|1A8FC8:1C18| db $B4 ; play note E5
|1A8FC9:1C19| db $B7 ; play note G5
|1A8FCA:1C1A| db $B2 ; play note D5
|1A8FCB:1C1B| db $66 ; duration
|1A8FCC:1C1C| db $B5 ; play note F5
|1A8FCD:1C1D| db $0E ; duration
|1A8FCE:1C1E| db $B5 ; play note F5
|1A8FCF:1C1F| db $B2 ; play note D5
|1A8FD0:1C20| db $AF ; play note B4
|1A8FD1:1C21| db $70 ; duration
|1A8FD2:1C22| db $B0 ; play note C5
|1A8FD3:1C23| db $00 ; end sfx

;===================================================================================================

SFX1_17:
|1A8FD4:1C24| db $E0, $0D ; set sfx instrument - twee
|1A8FD6:1C26| db $0E, $3C ; duration, params
|1A8FD8:1C28| db $AB ; play note G4
|1A8FD9:1C29| db $B0 ; play note C5
|1A8FDA:1C2A| db $B2 ; play note D5
|1A8FDB:1C2B| db $B7 ; play note G5
|1A8FDC:1C2C| db $B2 ; play note D5
|1A8FDD:1C2D| db $66 ; duration
|1A8FDE:1C2E| db $B4 ; play note E5
|1A8FDF:1C2F| db $0E ; duration
|1A8FE0:1C30| db $AB ; play note G4
|1A8FE1:1C31| db $B0 ; play note C5
|1A8FE2:1C32| db $B2 ; play note D5
|1A8FE3:1C33| db $B7 ; play note G5
|1A8FE4:1C34| db $B2 ; play note D5
|1A8FE5:1C35| db $66 ; duration
|1A8FE6:1C36| db $B4 ; play note E5
|1A8FE7:1C37| db $0E ; duration
|1A8FE8:1C38| db $AD ; play note A4
|1A8FE9:1C39| db $B2 ; play note D5
|1A8FEA:1C3A| db $B4 ; play note E5
|1A8FEB:1C3B| db $B9 ; play note A5
|1A8FEC:1C3C| db $B4 ; play note E5
|1A8FED:1C3D| db $66 ; duration
|1A8FEE:1C3E| db $B5 ; play note F5
|1A8FEF:1C3F| db $0E ; duration
|1A8FF0:1C40| db $B4 ; play note E5
|1A8FF1:1C41| db $B5 ; play note F5
|1A8FF2:1C42| db $B7 ; play note G5
|1A8FF3:1C43| db $78 ; duration
|1A8FF4:1C44| db $B2 ; play note D5
|1A8FF5:1C45| db $0E ; duration
|1A8FF6:1C46| db $B0 ; play note C5
|1A8FF7:1C47| db $B5 ; play note F5
|1A8FF8:1C48| db $B9 ; play note A5
|1A8FF9:1C49| db $BE ; play note D6
|1A8FFA:1C4A| db $BB ; play note B5
|1A8FFB:1C4B| db $66 ; duration
|1A8FFC:1C4C| db $BC ; play note C6
|1A8FFD:1C4D| db $0E ; duration
|1A8FFE:1C4E| db $BC ; play note C6
|1A8FFF:1C4F| db $BB ; play note B5
|1A9000:1C50| db $B9 ; play note A5
|1A9001:1C51| db $B7 ; play note G5
|1A9002:1C52| db $B9 ; play note A5
|1A9003:1C53| db $66 ; duration
|1A9004:1C54| db $B4 ; play note E5
|1A9005:1C55| db $0E ; duration
|1A9006:1C56| db $AB ; play note G4
|1A9007:1C57| db $B2 ; play note D5
|1A9008:1C58| db $B4 ; play note E5
|1A9009:1C59| db $B7 ; play note G5
|1A900A:1C5A| db $B2 ; play note D5
|1A900B:1C5B| db $66 ; duration
|1A900C:1C5C| db $B5 ; play note F5
|1A900D:1C5D| db $0E ; duration
|1A900E:1C5E| db $B5 ; play note F5
|1A900F:1C5F| db $B2 ; play note D5
|1A9010:1C60| db $AF ; play note B4
|1A9011:1C61| db $78 ; duration
|1A9012:1C62| db $B0 ; play note C5
|1A9013:1C63| db $00 ; end sfx

;===================================================================================================

SFX2_36:
|1A9014:1C64| db $04, $00 ; duration, params
|1A9016:1C66| db $A8 ; play note E4

;===================================================================================================

SFX2_35:
|1A9017:1C67| db $E0, $13 ; set sfx instrument - brbrbrb
|1A9019:1C69| db $08, $40 ; duration, params
|1A901B:1C6B| db $8E ; play note D2
|1A901C:1C6C| db $08, $4E ; duration, params
|1A901E:1C6E| db $8D ; play note C#2
|1A901F:1C6F| db $0C, $64 ; duration, params
|1A9021:1C71| db $8C ; play note C2
|1A9022:1C72| db $12, $7C ; duration, params
|1A9024:1C74| db $8D ; play note C#2
|1A9025:1C75| db $0C, $58 ; duration, params
|1A9027:1C77| db $8B ; play note B1
|1A9028:1C78| db $12, $5C ; duration, params
|1A902A:1C7A| db $89 ; play note A1
|1A902B:1C7B| db $0C, $62 ; duration, params
|1A902D:1C7D| db $8B ; play note B1
|1A902E:1C7E| db $08, $2C ; duration, params
|1A9030:1C80| db $8C ; play note C2
|1A9031:1C81| db $0C, $44 ; duration, params
|1A9033:1C83| db $89 ; play note A1
|1A9034:1C84| db $18, $60 ; duration, params
|1A9036:1C86| db $8B ; play note B1
|1A9037:1C87| db $08, $44 ; duration, params
|1A9039:1C89| db $8C ; play note C2
|1A903A:1C8A| db $30, $4E ; duration, params
|1A903C:1C8C| db $8B ; play note B1
|1A903D:1C8D| db $00 ; end sfx

;===================================================================================================

SFX1_09:
|1A903E:1C8E| db $E0, $18 ; set sfx instrument - whooo
|1A9040:1C90| db $60, $32 ; duration, params
|1A9042:1C92| db $14 ; volume
|1A9043:1C93| db $F9, $98, $00, $60 ; enable slide
|1A9047:1C97| db $9E ; play note F#3
|1A9048:1C98| db $60, $2A ; duration, params
|1A904A:1C9A| db $1C ; volume
|1A904B:1C9B| db $F1, $00, $60, $A2 ; slide to note
|1A904F:1C9F| db $60, $23 ; duration, params
|1A9051:1CA1| db $23 ; volume
|1A9052:1CA2| db $F1, $00, $60, $9E ; slide to note
|1A9056:1CA6| db $60, $1E ; duration, params
|1A9058:1CA8| db $28 ; volume
|1A9059:1CA9| db $F1, $00, $60, $99 ; slide to note
|1A905D:1CAD| db $60, $19 ; duration, params
|1A905F:1CAF| db $2D ; volume
|1A9060:1CB0| db $F1, $00, $60, $9B ; slide to note
|1A9064:1CB4| db $63, $14 ; duration, params
|1A9066:1CB6| db $32 ; volume
|1A9067:1CB7| db $F1, $00, $60, $98 ; slide to note
|1A906B:1CBB| db $FF ; loop SFX

;===================================================================================================

SFX1_0A:
|1A906C:1CBC| db $E0, $18 ; set sfx instrument - whooo
|1A906E:1CBE| db $30, $14 ; duration, params
|1A9070:1CC0| db $32 ; volume
|1A9071:1CC1| db $F9, $91, $00, $30 ; enable slide
|1A9075:1CC5| db $94 ; play note G#2
|1A9076:1CC6| db $30, $23 ; duration, params
|1A9078:1CC8| db $23 ; volume
|1A9079:1CC9| db $F1, $00, $30, $91 ; slide to note
|1A907D:1CCD| db $30, $2A ; duration, params
|1A907F:1CCF| db $1C ; volume
|1A9080:1CD0| db $F1, $00, $30, $97 ; slide to note
|1A9084:1CD4| db $33, $32 ; duration, params
|1A9086:1CD6| db $14 ; volume
|1A9087:1CD7| db $F1, $00, $30, $91 ; slide to note
|1A908B:1CDB| db $FF ; loop SFX

;===================================================================================================

SFX2_33:
|1A908C:1CDC| db $E0, $07 ; set sfx instrument - fwomp
|1A908E:1CDE| db $18, $3C ; duration, params
|1A9090:1CE0| db $F9, $9F, $00, $18 ; enable slide
|1A9094:1CE4| db $A9 ; play note F4
|1A9095:1CE5| db $18, $50 ; duration, params
|1A9097:1CE7| db $F1, $00, $18, $B2 ; slide to note
|1A909B:1CEB| db $18, $64 ; duration, params
|1A909D:1CED| db $F1, $00, $18, $BC ; slide to note
|1A90A1:1CF1| db $18, $50 ; duration, params
|1A90A3:1CF3| db $F1, $00, $18, $BB ; slide to note
|1A90A7:1CF7| db $18, $64 ; duration, params
|1A90A9:1CF9| db $F1, $00, $18, $BC ; slide to note
|1A90AD:1CFD| db $18, $50 ; duration, params
|1A90AF:1CFF| db $F1, $00, $18, $BB ; slide to note
|1A90B3:1D03| db $18, $64 ; duration, params
|1A90B5:1D05| db $F1, $00, $18, $BC ; slide to note
|1A90B9:1D09| db $18, $50 ; duration, params
|1A90BB:1D0B| db $F1, $00, $18, $B2 ; slide to note
|1A90BF:1D0F| db $18, $3C ; duration, params
|1A90C1:1D11| db $F1, $00, $18, $A9 ; slide to note
|1A90C5:1D15| db $18, $28 ; duration, params
|1A90C7:1D17| db $F1, $00, $15, $9F ; slide to note
|1A90CB:1D1B| db $00 ; end sfx

;===================================================================================================

UnusedSFX_1D1C:
|1A90CC:1D1C| db $E0, $0F ; set sfx instrument - pling
|1A90CE:1D1E| db $0C, $28 ; duration, params
|1A90D0:1D20| db $BE ; play note D6
|1A90D1:1D21| db $18 ; duration
|1A90D2:1D22| db $BE ; play note D6
|1A90D3:1D23| db $0C, $32 ; duration, params
|1A90D5:1D25| db $BE ; play note D6
|1A90D6:1D26| db $18 ; duration
|1A90D7:1D27| db $BE ; play note D6
|1A90D8:1D28| db $0C, $3C ; duration, params
|1A90DA:1D2A| db $BE ; play note D6
|1A90DB:1D2B| db $18 ; duration
|1A90DC:1D2C| db $BE ; play note D6
|1A90DD:1D2D| db $0C, $46 ; duration, params
|1A90DF:1D2F| db $BE ; play note D6
|1A90E0:1D30| db $18 ; duration
|1A90E1:1D31| db $BE ; play note D6
|1A90E2:1D32| db $0C, $3C ; duration, params
|1A90E4:1D34| db $BE ; play note D6
|1A90E5:1D35| db $18 ; duration
|1A90E6:1D36| db $BE ; play note D6
|1A90E7:1D37| db $0C, $32 ; duration, params
|1A90E9:1D39| db $BE ; play note D6
|1A90EA:1D3A| db $18 ; duration
|1A90EB:1D3B| db $BE ; play note D6
|1A90EC:1D3C| db $0C, $28 ; duration, params
|1A90EE:1D3E| db $BE ; play note D6
|1A90EF:1D3F| db $18 ; duration
|1A90F0:1D40| db $BE ; play note D6
|1A90F1:1D41| db $0C, $14 ; duration, params
|1A90F3:1D43| db $BE ; play note D6
|1A90F4:1D44| db $18 ; duration
|1A90F5:1D45| db $BE ; play note D6
|1A90F6:1D46| db $00 ; end sfx

;===================================================================================================

SFX2_32:
|1A90F7:1D47| db $E0, $01 ; set sfx instrument - swish
|1A90F9:1D49| db $18, $3C ; duration, params
|1A90FB:1D4B| db $F9, $9F, $00, $18 ; enable slide
|1A90FF:1D4F| db $A9 ; play note F4
|1A9100:1D50| db $0C, $50 ; duration, params
|1A9102:1D52| db $F1, $00, $0C, $B2 ; slide to note
|1A9106:1D56| db $0C, $64 ; duration, params
|1A9108:1D58| db $F1, $00, $0A, $BC ; slide to note
|1A910C:1D5C| db $00 ; end sfx

;===================================================================================================

SFX3_2E:
|1A910D:1D5D| db $E0, $0B ; set sfx instrument - brrfft
|1A910F:1D5F| db $30, $78 ; duration, params
|1A9111:1D61| db $AF ; play note B4
|1A9112:1D62| db $B9 ; play note A5
|1A9113:1D63| db $60 ; duration
|1A9114:1D64| db $C3 ; play note G6
|1A9115:1D65| db $00 ; end sfx

;===================================================================================================

SFX3_34:
|1A9116:1D66| db $E0, $0B ; set sfx instrument - brrfft
|1A9118:1D68| db $10, $00 ; duration, params
|1A911A:1D6A| db $BB ; play note B5
|1A911B:1D6B| db $30, $78 ; duration, params
|1A911D:1D6D| db $B6 ; play note F#5
|1A911E:1D6E| db $20 ; duration
|1A911F:1D6F| db $BE ; play note D6
|1A9120:1D70| db $60 ; duration
|1A9121:1D71| db $BE ; play note D6
|1A9122:1D72| db $00 ; end sfx

;===================================================================================================

SFX3_35:
|1A9123:1D73| db $E0, $0B ; set sfx instrument - brrfft
|1A9125:1D75| db $20, $00 ; duration, params
|1A9127:1D77| db $AF ; play note B4
|1A9128:1D78| db $30, $78 ; duration, params
|1A912A:1D7A| db $B4 ; play note E5
|1A912B:1D7B| db $10 ; duration
|1A912C:1D7C| db $BC ; play note C6
|1A912D:1D7D| db $60 ; duration
|1A912E:1D7E| db $BC ; play note C6
|1A912F:1D7F| db $00 ; end sfx

;===================================================================================================

SFX3_2F:
|1A9130:1D80| db $E0, $0E ; set sfx instrument - pwing
|1A9132:1D82| db $10, $28 ; duration, params
|1A9134:1D84| db $B5 ; play note F5
|1A9135:1D85| db $B9 ; play note A5
|1A9136:1D86| db $10, $28 ; duration, params
|1A9138:1D88| db $BC ; play note C6
|1A9139:1D89| db $10, $1E ; duration, params
|1A913B:1D8B| db $BC ; play note C6
|1A913C:1D8C| db $10, $14 ; duration, params
|1A913E:1D8E| db $BC ; play note C6
|1A913F:1D8F| db $10, $0A ; duration, params
|1A9141:1D91| db $BC ; play note C6
|1A9142:1D92| db $00 ; end sfx

;===================================================================================================

SFX3_33:
|1A9143:1D93| db $E0, $0E ; set sfx instrument - pwing
|1A9145:1D95| db $08, $00 ; duration, params
|1A9147:1D97| db $AA ; play note F#4
|1A9148:1D98| db $10, $28 ; duration, params
|1A914A:1D9A| db $B7 ; play note G5
|1A914B:1D9B| db $BC ; play note C6
|1A914C:1D9C| db $10, $1E ; duration, params
|1A914E:1D9E| db $BC ; play note C6
|1A914F:1D9F| db $10, $14 ; duration, params
|1A9151:1DA1| db $BC ; play note C6
|1A9152:1DA2| db $10, $0A ; duration, params
|1A9154:1DA4| db $BC ; play note C6
|1A9155:1DA5| db $10, $05 ; duration, params
|1A9157:1DA7| db $BC ; play note C6
|1A9158:1DA8| db $00 ; end sfx

;===================================================================================================

SFX3_2D:
|1A9159:1DA9| db $E0, $0F ; set sfx instrument - pling
|1A915B:1DAB| db $10, $50 ; duration, params
|1A915D:1DAD| db $A8 ; play note E4
|1A915E:1DAE| db $AD ; play note A4
|1A915F:1DAF| db $B4 ; play note E5
|1A9160:1DB0| db $B9 ; play note A5
|1A9161:1DB1| db $30 ; duration
|1A9162:1DB2| db $C0 ; play note E6
|1A9163:1DB3| db $00 ; end sfx

;===================================================================================================

SFX3_37:
|1A9164:1DB4| db $E0, $0F ; set sfx instrument - pling
|1A9166:1DB6| db $08, $00 ; duration, params
|1A9168:1DB8| db $AA ; play note F#4
|1A9169:1DB9| db $10, $50 ; duration, params
|1A916B:1DBB| db $AB ; play note G4
|1A916C:1DBC| db $B0 ; play note C5
|1A916D:1DBD| db $B7 ; play note G5
|1A916E:1DBE| db $BC ; play note C6
|1A916F:1DBF| db $00 ; end sfx

;===================================================================================================

SFX3_2C:
|1A9170:1DC0| db $E0, $0A ; set sfx instrument - bzzzrt
|1A9172:1DC2| db $04, $28 ; duration, params
|1A9174:1DC4| db $AD ; play note A4
|1A9175:1DC5| db $AE ; play note A#4
|1A9176:1DC6| db $AD ; play note A4
|1A9177:1DC7| db $AF ; play note B4
|1A9178:1DC8| db $04, $3C ; duration, params
|1A917A:1DCA| db $AF ; play note B4
|1A917B:1DCB| db $AE ; play note A#4
|1A917C:1DCC| db $AE ; play note A#4
|1A917D:1DCD| db $AD ; play note A4
|1A917E:1DCE| db $04, $50 ; duration, params
|1A9180:1DD0| db $AE ; play note A#4
|1A9181:1DD1| db $AD ; play note A4
|1A9182:1DD2| db $AF ; play note B4
|1A9183:1DD3| db $AD ; play note A4
|1A9184:1DD4| db $04, $5A ; duration, params
|1A9186:1DD6| db $AE ; play note A#4
|1A9187:1DD7| db $AE ; play note A#4
|1A9188:1DD8| db $AF ; play note B4
|1A9189:1DD9| db $AE ; play note A#4
|1A918A:1DDA| db $04, $50 ; duration, params
|1A918C:1DDC| db $AD ; play note A4
|1A918D:1DDD| db $AE ; play note A#4
|1A918E:1DDE| db $AF ; play note B4
|1A918F:1DDF| db $AE ; play note A#4
|1A9190:1DE0| db $04, $3C ; duration, params
|1A9192:1DE2| db $AD ; play note A4
|1A9193:1DE3| db $AE ; play note A#4
|1A9194:1DE4| db $AD ; play note A4
|1A9195:1DE5| db $AF ; play note B4
|1A9196:1DE6| db $04, $28 ; duration, params
|1A9198:1DE8| db $AD ; play note A4
|1A9199:1DE9| db $AE ; play note A#4
|1A919A:1DEA| db $AD ; play note A4
|1A919B:1DEB| db $AF ; play note B4
|1A919C:1DEC| db $04, $14 ; duration, params
|1A919E:1DEE| db $AD ; play note A4
|1A919F:1DEF| db $AE ; play note A#4
|1A91A0:1DF0| db $AD ; play note A4
|1A91A1:1DF1| db $AF ; play note B4
|1A91A2:1DF2| db $00 ; end sfx

;===================================================================================================

SFX3_2B:
|1A91A3:1DF3| db $E0, $0A ; set sfx instrument - bzzzrt
|1A91A5:1DF5| db $07, $64 ; duration, params
|1A91A7:1DF7| db $F9, $A6, $00, $04 ; enable slide
|1A91AB:1DFB| db $AD ; play note A4
|1A91AC:1DFC| db $07, $64 ; duration, params
|1A91AE:1DFE| db $F9, $A6, $00, $04 ; enable slide
|1A91B2:1E02| db $AD ; play note A4
|1A91B3:1E03| db $07, $64 ; duration, params
|1A91B5:1E05| db $F9, $A6, $00, $04 ; enable slide
|1A91B9:1E09| db $AD ; play note A4
|1A91BA:1E0A| db $07, $64 ; duration, params
|1A91BC:1E0C| db $F9, $A6, $00, $04 ; enable slide
|1A91C0:1E10| db $AD ; play note A4
|1A91C1:1E11| db $00 ; end sfx

;===================================================================================================

SFX3_2A:
|1A91C2:1E12| db $E0, $0A ; set sfx instrument - bzzzrt
|1A91C4:1E14| db $0C, $64 ; duration, params
|1A91C6:1E16| db $F9, $9C, $00, $0C ; enable slide
|1A91CA:1E1A| db $AB ; play note G4
|1A91CB:1E1B| db $1B ; duration
|1A91CC:1E1C| db $F1, $00, $18, $8E ; slide to note
|1A91D0:1E20| db $00 ; end sfx

;===================================================================================================

SFX3_29:
|1A91D1:1E21| db $E0, $07 ; set sfx instrument - fwomp
|1A91D3:1E23| db $0F, $64 ; duration, params
|1A91D5:1E25| db $F9, $BE, $00, $0C ; enable slide
|1A91D9:1E29| db $B7 ; play note G5
|1A91DA:1E2A| db $0F, $50 ; duration, params
|1A91DC:1E2C| db $F9, $BE, $00, $0C ; enable slide
|1A91E0:1E30| db $B7 ; play note G5
|1A91E1:1E31| db $0F, $3C ; duration, params
|1A91E3:1E33| db $F9, $BE, $00, $0C ; enable slide
|1A91E7:1E37| db $B7 ; play note G5
|1A91E8:1E38| db $0F, $28 ; duration, params
|1A91EA:1E3A| db $F9, $BE, $00, $0C ; enable slide
|1A91EE:1E3E| db $B7 ; play note G5
|1A91EF:1E3F| db $00 ; end sfx

;===================================================================================================

SFX3_27:
|1A91F0:1E40| db $E0, $07 ; set sfx instrument - fwomp
|1A91F2:1E42| db $15, $28 ; duration, params
|1A91F4:1E44| db $F9, $AB, $00, $12 ; enable slide
|1A91F8:1E48| db $B0 ; play note C5
|1A91F9:1E49| db $15, $32 ; duration, params
|1A91FB:1E4B| db $F9, $AD, $00, $12 ; enable slide
|1A91FF:1E4F| db $B2 ; play note D5
|1A9200:1E50| db $15, $3C ; duration, params
|1A9202:1E52| db $F9, $AF, $00, $12 ; enable slide
|1A9206:1E56| db $B4 ; play note E5
|1A9207:1E57| db $15, $46 ; duration, params
|1A9209:1E59| db $F9, $B1, $00, $12 ; enable slide
|1A920D:1E5D| db $B6 ; play note F#5
|1A920E:1E5E| db $15, $50 ; duration, params
|1A9210:1E60| db $F9, $B3, $00, $12 ; enable slide
|1A9214:1E64| db $B8 ; play note G#5
|1A9215:1E65| db $15, $5A ; duration, params
|1A9217:1E67| db $F9, $B5, $00, $12 ; enable slide
|1A921B:1E6B| db $BA ; play note A#5
|1A921C:1E6C| db $15, $64 ; duration, params
|1A921E:1E6E| db $F9, $B7, $00, $12 ; enable slide
|1A9222:1E72| db $BC ; play note C6
|1A9223:1E73| db $15, $6E ; duration, params
|1A9225:1E75| db $F9, $B9, $00, $12 ; enable slide
|1A9229:1E79| db $BE ; play note D6
|1A922A:1E7A| db $00 ; end sfx

;===================================================================================================

SFX3_26:
|1A922B:1E7B| db $E0, $00 ; set sfx instrument - fwoosh
|1A922D:1E7D| db $0B, $64 ; duration, params
|1A922F:1E7F| db $F9, $B7, $00, $0B ; enable slide
|1A9233:1E83| db $BC ; play note C6
|1A9234:1E84| db $30 ; duration
|1A9235:1E85| db $F1, $00, $24, $8C ; slide to note
|1A9239:1E89| db $00 ; end sfx

;===================================================================================================

SFX3_1A:
|1A923A:1E8A| db $E0, $0F ; set sfx instrument - pling
|1A923C:1E8C| db $1C, $50 ; duration, params
|1A923E:1E8E| db $AD ; play note A4
|1A923F:1E8F| db $C0 ; play note E6
|1A9240:1E90| db $30 ; duration
|1A9241:1E91| db $C0 ; play note E6
|1A9242:1E92| db $00 ; end sfx

;===================================================================================================

SFX3_38:
|1A9243:1E93| db $E0, $0F ; set sfx instrument - pling
|1A9245:1E95| db $0E, $00 ; duration, params
|1A9247:1E97| db $AA ; play note F#4
|1A9248:1E98| db $1C, $50 ; duration, params
|1A924A:1E9A| db $B4 ; play note E5
|1A924B:1E9B| db $B9 ; play note A5
|1A924C:1E9C| db $00 ; end sfx

;===================================================================================================

SFX3_25:
|1A924D:1E9D| db $E0, $13 ; set sfx instrument - brbrbrb
|1A924F:1E9F| db $04, $64 ; duration, params
|1A9251:1EA1| db $B5 ; play note F5
|1A9252:1EA2| db $B4 ; play note E5
|1A9253:1EA3| db $E0, $06 ; set sfx instrument - ching
|1A9255:1EA5| db $04, $50 ; duration, params
|1A9257:1EA7| db $9D ; play note F3
|1A9258:1EA8| db $04, $5A ; duration, params
|1A925A:1EAA| db $98 ; play note C3
|1A925B:1EAB| db $00 ; end sfx

;===================================================================================================

SFX1_11:
|1A925C:1EAC| db $E0, $16 ; set sfx instrument - aaaaaa
|1A925E:1EAE| db $20, $3C ; duration, params
|1A9260:1EB0| db $9B ; play note D#3
|1A9261:1EB1| db $9D ; play note F3
|1A9262:1EB2| db $7F ; duration
|1A9263:1EB3| db $9A ; play note D3
|1A9264:1EB4| db $20 ; duration
|1A9265:1EB5| db $9B ; play note D#3
|1A9266:1EB6| db $9D ; play note F3
|1A9267:1EB7| db $7F ; duration
|1A9268:1EB8| db $9A ; play note D3
|1A9269:1EB9| db $20 ; duration
|1A926A:1EBA| db $9B ; play note D#3
|1A926B:1EBB| db $9D ; play note F3
|1A926C:1EBC| db $7F ; duration
|1A926D:1EBD| db $F9, $9A, $00, $7F ; enable slide
|1A9271:1EC1| db $9A ; play note D3
|1A9272:1EC2| db $7F ; duration
|1A9273:1EC3| db $F1, $00, $7D, $9A ; slide to note
|1A9277:1EC7| db $00 ; end sfx

;===================================================================================================

SFX1_12:
|1A9278:1EC8| db $E0, $16 ; set sfx instrument - aaaaaa
|1A927A:1ECA| db $40, $3C ; duration, params
|1A927C:1ECC| db $98 ; play note C3
|1A927D:1ECD| db $7F ; duration
|1A927E:1ECE| db $97 ; play note B2
|1A927F:1ECF| db $40 ; duration
|1A9280:1ED0| db $98 ; play note C3
|1A9281:1ED1| db $7F ; duration
|1A9282:1ED2| db $97 ; play note B2
|1A9283:1ED3| db $20 ; duration
|1A9284:1ED4| db $A4 ; play note C4
|1A9285:1ED5| db $A6 ; play note D4
|1A9286:1ED6| db $7F ; duration
|1A9287:1ED7| db $F9, $A3, $00, $7F ; enable slide
|1A928B:1EDB| db $A3 ; play note B3
|1A928C:1EDC| db $7F ; duration
|1A928D:1EDD| db $F1, $00, $7D, $A3 ; slide to note
|1A9291:1EE1| db $00 ; end sfx

;===================================================================================================

UnusedSFX_1EE2:
|1A9292:1EE2| db $E0, $0D ; set sfx instrument - twee
|1A9294:1EE4| db $0B, $3C ; duration, params
|1A9296:1EE6| db $F9, $B7, $00, $0B ; enable slide
|1A929A:1EEA| db $B0 ; play note C5
|1A929B:1EEB| db $06 ; duration
|1A929C:1EEC| db $F1, $00, $03, $BC ; slide to note
|1A92A0:1EF0| db $00 ; end sfx

;===================================================================================================

SFX2_30:
|1A92A1:1EF1| db $E0, $15 ; set sfx instrument - uughf
|1A92A3:1EF3| db $06, $78 ; duration, params
|1A92A5:1EF5| db $F9, $B0, $00, $03 ; enable slide
|1A92A9:1EF9| db $BC ; play note C6
|1A92AA:1EFA| db $06, $00 ; duration, params
|1A92AC:1EFC| db $BC ; play note C6
|1A92AD:1EFD| db $06, $78 ; duration, params
|1A92AF:1EFF| db $F9, $B0, $00, $03 ; enable slide
|1A92B3:1F03| db $BC ; play note C6
|1A92B4:1F04| db $06, $6E ; duration, params
|1A92B6:1F06| db $F9, $B0, $00, $03 ; enable slide
|1A92BA:1F0A| db $BC ; play note C6
|1A92BB:1F0B| db $06, $5A ; duration, params
|1A92BD:1F0D| db $F9, $B0, $00, $03 ; enable slide
|1A92C1:1F11| db $BC ; play note C6
|1A92C2:1F12| db $00 ; end sfx

;===================================================================================================

UnusedSFX_1F13:
|1A92C3:1F13| db $E0, $15 ; set sfx instrument - uughf
|1A92C5:1F15| db $06, $78 ; duration, params
|1A92C7:1F17| db $F9, $B0, $00, $03 ; enable slide
|1A92CB:1F1B| db $C3 ; play note G6
|1A92CC:1F1C| db $06, $6E ; duration, params
|1A92CE:1F1E| db $F9, $B0, $00, $03 ; enable slide
|1A92D2:1F22| db $C1 ; play note F6
|1A92D3:1F23| db $06, $64 ; duration, params
|1A92D5:1F25| db $F9, $B0, $00, $03 ; enable slide
|1A92D9:1F29| db $C0 ; play note E6
|1A92DA:1F2A| db $06, $5A ; duration, params
|1A92DC:1F2C| db $F9, $B0, $00, $03 ; enable slide
|1A92E0:1F30| db $BE ; play note D6
|1A92E1:1F31| db $06, $50 ; duration, params
|1A92E3:1F33| db $F9, $B0, $00, $03 ; enable slide
|1A92E7:1F37| db $BE ; play note D6
|1A92E8:1F38| db $06, $46 ; duration, params
|1A92EA:1F3A| db $F9, $B0, $00, $03 ; enable slide
|1A92EE:1F3E| db $BE ; play note D6
|1A92EF:1F3F| db $06, $3C ; duration, params
|1A92F1:1F41| db $F9, $B0, $00, $03 ; enable slide
|1A92F5:1F45| db $BE ; play note D6
|1A92F6:1F46| db $00 ; end sfx

;===================================================================================================

SFX2_2F:
|1A92F7:1F47| db $E0, $01 ; set sfx instrument - swish
|1A92F9:1F49| db $0C, $78 ; duration, params
|1A92FB:1F4B| db $98 ; play note C3
|1A92FC:1F4C| db $04, $00 ; duration, params
|1A92FE:1F4E| db $98 ; play note C3
|1A92FF:1F4F| db $48, $78 ; duration, params
|1A9301:1F51| db $F9, $98, $00, $48 ; enable slide
|1A9305:1F55| db $98 ; play note C3
|1A9306:1F56| db $48, $78 ; duration, params
|1A9308:1F58| db $F1, $00, $48, $98 ; slide to note
|1A930C:1F5C| db $48, $6E ; duration, params
|1A930E:1F5E| db $F1, $00, $48, $98 ; slide to note
|1A9312:1F62| db $48, $5A ; duration, params
|1A9314:1F64| db $F1, $00, $48, $98 ; slide to note
|1A9318:1F68| db $4B, $28 ; duration, params
|1A931A:1F6A| db $F1, $00, $48, $98 ; slide to note
|1A931E:1F6E| db $00 ; end sfx

;===================================================================================================

SFX2_34:
SFX2_38:
|1A931F:1F6F| db $E0, $11 ; set sfx instrument - splssh
|1A9321:1F71| db $0C, $78 ; duration, params
|1A9323:1F73| db $F9, $8E, $00, $0C ; enable slide
|1A9327:1F77| db $9D ; play note F3
|1A9328:1F78| db $0C ; duration
|1A9329:1F79| db $F1, $00, $09, $A1 ; slide to note
|1A932D:1F7D| db $0C, $64 ; duration, params
|1A932F:1F7F| db $F9, $89, $00, $0C ; enable slide
|1A9333:1F83| db $98 ; play note C3
|1A9334:1F84| db $0C ; duration
|1A9335:1F85| db $F1, $00, $09, $9D ; slide to note
|1A9339:1F89| db $0C, $50 ; duration, params
|1A933B:1F8B| db $F9, $85, $00, $0C ; enable slide
|1A933F:1F8F| db $95 ; play note A2
|1A9340:1F90| db $0C ; duration
|1A9341:1F91| db $F1, $00, $09, $98 ; slide to note
|1A9345:1F95| db $0A ; duration
|1A9346:1F96| db $91 ; play note F2
|1A9347:1F97| db $08 ; duration
|1A9348:1F98| db $8E ; play note D2
|1A9349:1F99| db $06 ; duration
|1A934A:1F9A| db $8C ; play note C2
|1A934B:1F9B| db $00 ; end sfx

;===================================================================================================

SFX2_39:
|1A934C:1F9C| db $E0, $01 ; set sfx instrument - swish
|1A934E:1F9E| db $0C, $78 ; duration, params
|1A9350:1FA0| db $F9, $9D, $00, $0C ; enable slide
|1A9354:1FA4| db $98 ; play note C3
|1A9355:1FA5| db $0C, $78 ; duration, params
|1A9357:1FA7| db $F1, $00, $0C, $95 ; slide to note
|1A935B:1FAB| db $0C, $78 ; duration, params
|1A935D:1FAD| db $F1, $00, $0C, $93 ; slide to note
|1A9361:1FB1| db $48, $78 ; duration, params
|1A9363:1FB3| db $F1, $00, $48, $91 ; slide to note
|1A9367:1FB7| db $48, $6E ; duration, params
|1A9369:1FB9| db $F1, $00, $48, $90 ; slide to note
|1A936D:1FBD| db $48, $46 ; duration, params
|1A936F:1FBF| db $F1, $00, $48, $8E ; slide to note
|1A9373:1FC3| db $4B, $28 ; duration, params
|1A9375:1FC5| db $F1, $00, $48, $8C ; slide to note
|1A9379:1FC9| db $00 ; end sfx

;===================================================================================================

SFX2_2E:
|1A937A:1FCA| db $E0, $11 ; set sfx instrument - splssh
|1A937C:1FCC| db $0C ; duration
|1A937D:1FCD| db $91 ; play note F2
|1A937E:1FCE| db $16 ; duration
|1A937F:1FCF| db $8E ; play note D2
|1A9380:1FD0| db $0C ; duration
|1A9381:1FD1| db $90 ; play note E2
|1A9382:1FD2| db $14 ; duration
|1A9383:1FD3| db $8C ; play note C2
|1A9384:1FD4| db $0C ; duration
|1A9385:1FD5| db $89 ; play note A1
|1A9386:1FD6| db $12 ; duration
|1A9387:1FD7| db $89 ; play note A1
|1A9388:1FD8| db $00 ; end sfx

;===================================================================================================

SFX2_2C:
|1A9389:1FD9| db $E0, $00 ; set sfx instrument - fwoosh
|1A938B:1FDB| db $0C, $78 ; duration, params
|1A938D:1FDD| db $F9, $A4, $00, $09 ; enable slide
|1A9391:1FE1| db $9F ; play note G3
|1A9392:1FE2| db $E0, $17 ; set sfx instrument - twing
|1A9394:1FE4| db $24 ; duration
|1A9395:1FE5| db $B0 ; play note C5
|1A9396:1FE6| db $00 ; end sfx

;===================================================================================================

SFX2_3A:
|1A9397:1FE7| db $E0, $00 ; set sfx instrument - fwoosh
|1A9399:1FE9| db $10, $64 ; duration, params
|1A939B:1FEB| db $A4 ; play note C4
|1A939C:1FEC| db $E0, $17 ; set sfx instrument - twing
|1A939E:1FEE| db $24, $64 ; duration, params
|1A93A0:1FF0| db $B0 ; play note C5
|1A93A1:1FF1| db $00 ; end sfx

;===================================================================================================

SFX2_2B:
|1A93A2:1FF2| db $E0, $0E ; set sfx instrument - pwing
|1A93A4:1FF4| db $08, $28 ; duration, params
|1A93A6:1FF6| db $B2 ; play note D5
|1A93A7:1FF7| db $08, $32 ; duration, params
|1A93A9:1FF9| db $B2 ; play note D5
|1A93AA:1FFA| db $08, $14 ; duration, params
|1A93AC:1FFC| db $B2 ; play note D5
|1A93AD:1FFD| db $08, $0A ; duration, params
|1A93AF:1FFF| db $B2 ; play note D5
|1A93B0:2000| db $00 ; end sfx

;===================================================================================================

SFX3_23:
|1A93B1:2001| db $E0, $01 ; set sfx instrument - swish
|1A93B3:2003| db $0C, $46 ; duration, params
|1A93B5:2005| db $F9, $8C, $00, $0C ; enable slide
|1A93B9:2009| db $98 ; play note C3
|1A93BA:200A| db $0C, $78 ; duration, params
|1A93BC:200C| db $F1, $00, $0C, $AB ; slide to note
|1A93C0:2010| db $0C, $78 ; duration, params
|1A93C2:2012| db $F1, $00, $09, $93 ; slide to note
|1A93C6:2016| db $00 ; end sfx

;===================================================================================================

SFX3_39:
|1A93C7:2017| db $E0, $07 ; set sfx instrument - fwomp
|1A93C9:2019| db $06, $14 ; duration, params
|1A93CB:201B| db $F9, $BB, $00, $06 ; enable slide
|1A93CF:201F| db $B5 ; play note F5
|1A93D0:2020| db $06, $1E ; duration, params
|1A93D2:2022| db $F1, $00, $06, $BB ; slide to note
|1A93D6:2026| db $06, $28 ; duration, params
|1A93D8:2028| db $F1, $00, $06, $B5 ; slide to note
|1A93DC:202C| db $06, $14 ; duration, params
|1A93DE:202E| db $F1, $00, $03, $BB ; slide to note
|1A93E2:2032| db $00 ; end sfx

;===================================================================================================

SFX2_2A:
|1A93E3:2033| db $E0, $0C ; set sfx instrument - brrwwww
|1A93E5:2035| db $06, $50 ; duration, params
|1A93E7:2037| db $F9, $8C, $00, $06 ; enable slide
|1A93EB:203B| db $91 ; play note F2
|1A93EC:203C| db $09, $78 ; duration, params
|1A93EE:203E| db $F1, $00, $06, $98 ; slide to note
|1A93F2:2042| db $00 ; end sfx

;===================================================================================================

SFX3_24:
|1A93F3:2043| db $E0, $0D ; set sfx instrument - twee
|1A93F5:2045| db $08, $1E ; duration, params
|1A93F7:2047| db $A3 ; play note B3
|1A93F8:2048| db $A6 ; play note D4
|1A93F9:2049| db $AD ; play note A4
|1A93FA:204A| db $00 ; end sfx

;===================================================================================================

SFX3_1F:
|1A93FB:204B| db $E0, $16 ; set sfx instrument - aaaaaa
|1A93FD:204D| db $12, $64 ; duration, params
|1A93FF:204F| db $F9, $B2, $00, $12 ; enable slide
|1A9403:2053| db $AD ; play note A4
|1A9404:2054| db $08, $5A ; duration, params
|1A9406:2056| db $F1, $00, $08, $AF ; slide to note
|1A940A:205A| db $08, $50 ; duration, params
|1A940C:205C| db $F1, $00, $08, $A9 ; slide to note
|1A9410:2060| db $08, $46 ; duration, params
|1A9412:2062| db $F1, $00, $08, $AD ; slide to note
|1A9416:2066| db $08, $3C ; duration, params
|1A9418:2068| db $F1, $00, $08, $A8 ; slide to note
|1A941C:206C| db $08, $32 ; duration, params
|1A941E:206E| db $F1, $00, $08, $AB ; slide to note
|1A9422:2072| db $08, $28 ; duration, params
|1A9424:2074| db $F1, $00, $08, $A6 ; slide to note
|1A9428:2078| db $08, $1E ; duration, params
|1A942A:207A| db $F1, $00, $08, $A9 ; slide to note
|1A942E:207E| db $08, $14 ; duration, params
|1A9430:2080| db $F1, $00, $08, $A4 ; slide to note
|1A9434:2084| db $08, $0A ; duration, params
|1A9436:2086| db $F1, $00, $08, $A8 ; slide to note
|1A943A:208A| db $08, $05 ; duration, params
|1A943C:208C| db $F1, $00, $06, $A3 ; slide to note
|1A9440:2090| db $00 ; end sfx

;===================================================================================================

SFX3_1E:
|1A9441:2091| db $E0, $01 ; set sfx instrument - swish
|1A9443:2093| db $06, $32 ; duration, params
|1A9445:2095| db $BC ; play note C6
|1A9446:2096| db $BF ; play note D#6
|1A9447:2097| db $BC ; play note C6
|1A9448:2098| db $BF ; play note D#6
|1A9449:2099| db $06, $3C ; duration, params
|1A944B:209B| db $BC ; play note C6
|1A944C:209C| db $BF ; play note D#6
|1A944D:209D| db $BC ; play note C6
|1A944E:209E| db $BF ; play note D#6
|1A944F:209F| db $06, $28 ; duration, params
|1A9451:20A1| db $BC ; play note C6
|1A9452:20A2| db $BF ; play note D#6
|1A9453:20A3| db $BC ; play note C6
|1A9454:20A4| db $BF ; play note D#6
|1A9455:20A5| db $00 ; end sfx

;===================================================================================================

SFX3_1D:
SFX2_2D:
|1A9456:20A6| db $E0, $0F ; set sfx instrument - pling
|1A9458:20A8| db $10, $32 ; duration, params
|1A945A:20AA| db $F9, $AB, $00, $10 ; enable slide
|1A945E:20AE| db $AA ; play note F#4
|1A945F:20AF| db $11, $3C ; duration, params
|1A9461:20B1| db $F1, $00, $0E, $AB ; slide to note
|1A9465:20B5| db $00 ; end sfx

;===================================================================================================

SFX3_1B:
|1A9466:20B6| db $E0, $0E ; set sfx instrument - pwing
|1A9468:20B8| db $1C, $3C ; duration, params
|1A946A:20BA| db $B7 ; play note G5
|1A946B:20BB| db $B3 ; play note D#5
|1A946C:20BC| db $AC ; play note G#4
|1A946D:20BD| db $24 ; duration
|1A946E:20BE| db $B8 ; play note G#5
|1A946F:20BF| db $00 ; end sfx

;===================================================================================================

SFX3_3A:
|1A9470:20C0| db $E0, $0E ; set sfx instrument - pwing
|1A9472:20C2| db $0E, $00 ; duration, params
|1A9474:20C4| db $B7 ; play note G5
|1A9475:20C5| db $1C, $3C ; duration, params
|1A9477:20C7| db $B6 ; play note F#5
|1A9478:20C8| db $AD ; play note A4
|1A9479:20C9| db $B4 ; play note E5
|1A947A:20CA| db $24, $3C ; duration, params
|1A947C:20CC| db $BC ; play note C6
|1A947D:20CD| db $00 ; end sfx

;===================================================================================================

SFX2_31:
|1A947E:20CE| db $E0, $0D ; set sfx instrument - twee
|1A9480:20D0| db $04, $50 ; duration, params
|1A9482:20D2| db $B5 ; play note F5
|1A9483:20D3| db $B7 ; play note G5
|1A9484:20D4| db $B9 ; play note A5
|1A9485:20D5| db $BB ; play note B5
|1A9486:20D6| db $BC ; play note C6
|1A9487:20D7| db $BE ; play note D6
|1A9488:20D8| db $C0 ; play note E6
|1A9489:20D9| db $C1 ; play note F6
|1A948A:20DA| db $0C ; duration
|1A948B:20DB| db $C3 ; play note G6
|1A948C:20DC| db $00 ; end sfx

;===================================================================================================

SFX3_18:
|1A948D:20DD| db $E0, $05 ; set sfx instrument - clunk
|1A948F:20DF| db $04, $78 ; duration, params
|1A9491:20E1| db $95 ; play note A2
|1A9492:20E2| db $91 ; play note F2
|1A9493:20E3| db $8E ; play note D2
|1A9494:20E4| db $05, $78 ; duration, params
|1A9496:20E6| db $8C ; play note C2
|1A9497:20E7| db $90 ; play note E2
|1A9498:20E8| db $8E ; play note D2
|1A9499:20E9| db $04, $6E ; duration, params
|1A949B:20EB| db $91 ; play note F2
|1A949C:20EC| db $91 ; play note F2
|1A949D:20ED| db $93 ; play note G2
|1A949E:20EE| db $06, $6E ; duration, params
|1A94A0:20F0| db $96 ; play note A#2
|1A94A1:20F1| db $92 ; play note F#2
|1A94A2:20F2| db $95 ; play note A2
|1A94A3:20F3| db $03, $64 ; duration, params
|1A94A5:20F5| db $8F ; play note D#2
|1A94A6:20F6| db $93 ; play note G2
|1A94A7:20F7| db $91 ; play note F2
|1A94A8:20F8| db $04, $64 ; duration, params
|1A94AA:20FA| db $90 ; play note E2
|1A94AB:20FB| db $8E ; play note D2
|1A94AC:20FC| db $97 ; play note B2
|1A94AD:20FD| db $05, $64 ; duration, params
|1A94AF:20FF| db $8E ; play note D2
|1A94B0:2100| db $91 ; play note F2
|1A94B1:2101| db $8C ; play note C2
|1A94B2:2102| db $04, $64 ; duration, params
|1A94B4:2104| db $90 ; play note E2
|1A94B5:2105| db $8C ; play note C2
|1A94B6:2106| db $8E ; play note D2

;===================================================================================================

SFX2_22:
|1A94B7:2107| db $E0, $05 ; set sfx instrument - clunk
|1A94B9:2109| db $04, $78 ; duration, params
|1A94BB:210B| db $95 ; play note A2
|1A94BC:210C| db $91 ; play note F2
|1A94BD:210D| db $8E ; play note D2
|1A94BE:210E| db $05, $78 ; duration, params
|1A94C0:2110| db $8C ; play note C2
|1A94C1:2111| db $90 ; play note E2
|1A94C2:2112| db $8E ; play note D2
|1A94C3:2113| db $04, $6E ; duration, params
|1A94C5:2115| db $91 ; play note F2
|1A94C6:2116| db $91 ; play note F2
|1A94C7:2117| db $93 ; play note G2
|1A94C8:2118| db $06, $6E ; duration, params
|1A94CA:211A| db $96 ; play note A#2
|1A94CB:211B| db $92 ; play note F#2
|1A94CC:211C| db $95 ; play note A2
|1A94CD:211D| db $03, $64 ; duration, params
|1A94CF:211F| db $8C ; play note C2
|1A94D0:2120| db $91 ; play note F2
|1A94D1:2121| db $8E ; play note D2
|1A94D2:2122| db $00 ; end sfx

;===================================================================================================

SFX3_16:
|1A94D3:2123| db $E0, $13 ; set sfx instrument - brbrbrb
|1A94D5:2125| db $04, $50 ; duration, params
|1A94D7:2127| db $A4 ; play note C4
|1A94D8:2128| db $04, $50 ; duration, params
|1A94DA:212A| db $A4 ; play note C4
|1A94DB:212B| db $18, $5A ; duration, params
|1A94DD:212D| db $A4 ; play note C4
|1A94DE:212E| db $00 ; end sfx

;===================================================================================================

SFX3_15:
|1A94DF:212F| db $E0, $13 ; set sfx instrument - brbrbrb
|1A94E1:2131| db $04, $50 ; duration, params
|1A94E3:2133| db $A4 ; play note C4
|1A94E4:2134| db $04, $0A ; duration, params
|1A94E6:2136| db $A4 ; play note C4
|1A94E7:2137| db $18, $5A ; duration, params
|1A94E9:2139| db $A8 ; play note E4
|1A94EA:213A| db $00 ; end sfx

;===================================================================================================

SFX3_13:
|1A94EB:213B| db $E0, $0D ; set sfx instrument - twee
|1A94ED:213D| db $06, $50 ; duration, params
|1A94EF:213F| db $F9, $9A, $00, $06 ; enable slide
|1A94F3:2143| db $98 ; play note C3
|1A94F4:2144| db $06 ; duration
|1A94F5:2145| db $F1, $00, $06, $A1 ; slide to note
|1A94F9:2149| db $06 ; duration
|1A94FA:214A| db $F1, $00, $03, $9A ; slide to note
|1A94FE:214E| db $00 ; end sfx

;===================================================================================================

SFX3_11:
|1A94FF:214F| db $E0, $07 ; set sfx instrument - fwomp
|1A9501:2151| db $24, $32 ; duration, params
|1A9503:2153| db $F9, $B2, $00, $22 ; enable slide
|1A9507:2157| db $AB ; play note G4
|1A9508:2158| db $08 ; duration
|1A9509:2159| db $F1, $00, $06, $9F ; slide to note
|1A950D:215D| db $00 ; end sfx

;===================================================================================================

SFX3_12:
|1A950E:215E| db $E0, $07 ; set sfx instrument - fwomp
|1A9510:2160| db $24, $32 ; duration, params
|1A9512:2162| db $F9, $9F, $00, $22 ; enable slide
|1A9516:2166| db $AB ; play note G4
|1A9517:2167| db $08 ; duration
|1A9518:2168| db $F1, $00, $06, $B2 ; slide to note
|1A951C:216C| db $00 ; end sfx

;===================================================================================================

SFX3_10:
|1A951D:216D| db $E0, $0E ; set sfx instrument - pwing
|1A951F:216F| db $10, $1E ; duration, params
|1A9521:2171| db $A4 ; play note C4
|1A9522:2172| db $60, $1E ; duration, params
|1A9524:2174| db $B7 ; play note G5
|1A9525:2175| db $00 ; end sfx

;===================================================================================================

SFX3_3B:
|1A9526:2176| db $E0, $0E ; set sfx instrument - pwing
|1A9528:2178| db $08, $00 ; duration, params
|1A952A:217A| db $B0 ; play note C5
|1A952B:217B| db $10, $1E ; duration, params
|1A952D:217D| db $B0 ; play note C5
|1A952E:217E| db $60, $1E ; duration, params
|1A9530:2180| db $BC ; play note C6
|1A9531:2181| db $00 ; end sfx

;===================================================================================================

SFX3_0E:
|1A9532:2182| db $E0, $02 ; set sfx instrument - bomp
|1A9534:2184| db $04, $50 ; duration, params
|1A9536:2186| db $B9 ; play note A5
|1A9537:2187| db $04, $0A ; duration, params
|1A9539:2189| db $AD ; play note A4
|1A953A:218A| db $04, $5A ; duration, params
|1A953C:218C| db $BC ; play note C6
|1A953D:218D| db $00 ; end sfx

;===================================================================================================

SFX3_0C:
|1A953E:218E| db $E0, $0D ; set sfx instrument - twee
|1A9540:2190| db $08, $1E ; duration, params
|1A9542:2192| db $F9, $A1, $00, $06 ; enable slide
|1A9546:2196| db $A3 ; play note B3
|1A9547:2197| db $00 ; end sfx

;===================================================================================================

SFX3_0B:
|1A9548:2198| db $E0, $0B ; set sfx instrument - brrfft
|1A954A:219A| db $08, $64 ; duration, params
|1A954C:219C| db $F9, $AD, $00, $06 ; enable slide
|1A9550:21A0| db $B2 ; play note D5
|1A9551:21A1| db $08, $64 ; duration, params
|1A9553:21A3| db $F9, $B0, $00, $06 ; enable slide
|1A9557:21A7| db $C3 ; play note G6
|1A9558:21A8| db $00 ; end sfx

;===================================================================================================

SFX3_0A:
|1A9559:21A9| db $E0, $03 ; set sfx instrument - ting
|1A955B:21AB| db $04, $50 ; duration, params
|1A955D:21AD| db $B2 ; play note D5
|1A955E:21AE| db $04, $50 ; duration, params
|1A9560:21B0| db $B0 ; play note C5
|1A9561:21B1| db $24, $50 ; duration, params
|1A9563:21B3| db $B2 ; play note D5
|1A9564:21B4| db $00 ; end sfx

;===================================================================================================

SFX3_0D:
|1A9565:21B5| db $E0, $0E ; set sfx instrument - pwing
|1A9567:21B7| db $04, $46 ; duration, params
|1A9569:21B9| db $B9 ; play note A5
|1A956A:21BA| db $04, $32 ; duration, params
|1A956C:21BC| db $BB ; play note B5
|1A956D:21BD| db $04, $1E ; duration, params
|1A956F:21BF| db $BC ; play note C6
|1A9570:21C0| db $00 ; end sfx

;===================================================================================================

SFX3_09:
|1A9571:21C1| db $E0, $0C ; set sfx instrument - brrwwww
|1A9573:21C3| db $08, $50 ; duration, params
|1A9575:21C5| db $F9, $AF, $00, $08 ; enable slide
|1A9579:21C9| db $A6 ; play note D4
|1A957A:21CA| db $08 ; duration
|1A957B:21CB| db $F1, $00, $08, $9A ; slide to note
|1A957F:21CF| db $08 ; duration
|1A9580:21D0| db $F1, $00, $08, $A1 ; slide to note
|1A9584:21D4| db $08 ; duration
|1A9585:21D5| db $F1, $00, $08, $AB ; slide to note
|1A9589:21D9| db $08 ; duration
|1A958A:21DA| db $F1, $00, $05, $97 ; slide to note
|1A958E:21DE| db $08, $46 ; duration, params
|1A9590:21E0| db $F9, $9D, $00, $06 ; enable slide
|1A9594:21E4| db $B2 ; play note D5
|1A9595:21E5| db $00 ; end sfx

;===================================================================================================

SFX3_08:
|1A9596:21E6| db $E0, $0C ; set sfx instrument - brrwwww
|1A9598:21E8| db $05, $50 ; duration, params
|1A959A:21EA| db $F9, $A6, $00, $05 ; enable slide
|1A959E:21EE| db $9F ; play note G3
|1A959F:21EF| db $07 ; duration
|1A95A0:21F0| db $F1, $00, $05, $AD ; slide to note
|1A95A4:21F4| db $00 ; end sfx

;===================================================================================================

SFX3_06:
|1A95A5:21F5| db $E0, $02 ; set sfx instrument - bomp
|1A95A7:21F7| db $18, $78 ; duration, params
|1A95A9:21F9| db $F9, $87, $00, $18 ; enable slide
|1A95AD:21FD| db $B5 ; play note F5
|1A95AE:21FE| db $0C ; duration
|1A95AF:21FF| db $F1, $00, $0C, $B2 ; slide to note
|1A95B3:2203| db $0C ; duration
|1A95B4:2204| db $F1, $00, $0C, $AD ; slide to note
|1A95B8:2208| db $0C ; duration
|1A95B9:2209| db $F1, $00, $0A, $98 ; slide to note
|1A95BD:220D| db $00 ; end sfx

;===================================================================================================

SFX3_04:
|1A95BE:220E| db $E0, $12 ; set sfx instrument - weewoo
|1A95C0:2210| db $0C ; duration
|1A95C1:2211| db $F9, $8C, $00, $09 ; enable slide
|1A95C5:2215| db $87 ; play note G1
|1A95C6:2216| db $E0, $06 ; set sfx instrument - ching
|1A95C8:2218| db $04, $3C ; duration, params
|1A95CA:221A| db $8C ; play note C2
|1A95CB:221B| db $B5 ; play note F5
|1A95CC:221C| db $89 ; play note A1
|1A95CD:221D| db $B5 ; play note F5
|1A95CE:221E| db $04, $32 ; duration, params
|1A95D0:2220| db $8C ; play note C2
|1A95D1:2221| db $B5 ; play note F5
|1A95D2:2222| db $89 ; play note A1
|1A95D3:2223| db $B5 ; play note F5
|1A95D4:2224| db $04, $28 ; duration, params
|1A95D6:2226| db $8C ; play note C2
|1A95D7:2227| db $B5 ; play note F5
|1A95D8:2228| db $89 ; play note A1
|1A95D9:2229| db $B5 ; play note F5
|1A95DA:222A| db $04, $1E ; duration, params
|1A95DC:222C| db $8C ; play note C2
|1A95DD:222D| db $B5 ; play note F5
|1A95DE:222E| db $89 ; play note A1
|1A95DF:222F| db $B5 ; play note F5
|1A95E0:2230| db $04, $14 ; duration, params
|1A95E2:2232| db $8C ; play note C2
|1A95E3:2233| db $B5 ; play note F5
|1A95E4:2234| db $89 ; play note A1
|1A95E5:2235| db $B5 ; play note F5
|1A95E6:2236| db $04, $0A ; duration, params
|1A95E8:2238| db $8C ; play note C2
|1A95E9:2239| db $B5 ; play note F5
|1A95EA:223A| db $89 ; play note A1
|1A95EB:223B| db $B5 ; play note F5
|1A95EC:223C| db $00 ; end sfx

;===================================================================================================

SFX3_07:
|1A95ED:223D| db $E0, $0C ; set sfx instrument - brrwwww
|1A95EF:223F| db $04, $46 ; duration, params
|1A95F1:2241| db $A1 ; play note A3
|1A95F2:2242| db $18, $46 ; duration, params
|1A95F4:2244| db $F9, $A4, $00, $15 ; enable slide
|1A95F8:2248| db $93 ; play note G2
|1A95F9:2249| db $00 ; end sfx

;===================================================================================================

SFX3_03:
|1A95FA:224A| db $E0, $13 ; set sfx instrument - brbrbrb
|1A95FC:224C| db $08, $5A ; duration, params
|1A95FE:224E| db $A1 ; play note A3
|1A95FF:224F| db $30 ; duration
|1A9600:2250| db $A1 ; play note A3
|1A9601:2251| db $00 ; end sfx

;===================================================================================================

SFX2_27:
|1A9602:2252| db $E0, $0B ; set sfx instrument - brrfft
|1A9604:2254| db $10, $78 ; duration, params
|1A9606:2256| db $F9, $A4, $00, $10 ; enable slide
|1A960A:225A| db $B6 ; play note F#5
|1A960B:225B| db $10 ; duration
|1A960C:225C| db $F1, $00, $10, $AD ; slide to note
|1A9610:2260| db $10 ; duration
|1A9611:2261| db $F9, $A0, $00, $10 ; enable slide
|1A9615:2265| db $AD ; play note A4
|1A9616:2266| db $10 ; duration
|1A9617:2267| db $F1, $00, $10, $9D ; slide to note
|1A961B:226B| db $10 ; duration
|1A961C:226C| db $F9, $9A, $00, $10 ; enable slide
|1A9620:2270| db $A8 ; play note E4
|1A9621:2271| db $10 ; duration
|1A9622:2272| db $F1, $00, $10, $9A ; slide to note
|1A9626:2276| db $0C ; duration
|1A9627:2277| db $F1, $00, $0C, $9D ; slide to note
|1A962B:227B| db $0C ; duration
|1A962C:227C| db $F1, $00, $09, $95 ; slide to note
|1A9630:2280| db $E0, $13 ; set sfx instrument - brbrbrb
|1A9632:2282| db $08, $64 ; duration, params
|1A9634:2284| db $A4 ; play note C4
|1A9635:2285| db $A9 ; play note F4
|1A9636:2286| db $00 ; end sfx

;===================================================================================================

SFX2_28:
|1A9637:2287| db $E0, $11 ; set sfx instrument - splssh
|1A9639:2289| db $0C, $64 ; duration, params
|1A963B:228B| db $F9, $B9, $00, $0C ; enable slide
|1A963F:228F| db $B5 ; play note F5
|1A9640:2290| db $0C ; duration
|1A9641:2291| db $F1, $00, $09, $B7 ; slide to note
|1A9645:2295| db $00 ; end sfx

;===================================================================================================

SFX2_25:
|1A9646:2296| db $E0, $11 ; set sfx instrument - splssh
|1A9648:2298| db $0C, $64 ; duration, params
|1A964A:229A| db $F9, $8E, $00, $0C ; enable slide
|1A964E:229E| db $9D ; play note F3
|1A964F:229F| db $0C ; duration
|1A9650:22A0| db $F1, $00, $09, $A1 ; slide to note
|1A9654:22A4| db $00 ; end sfx

;===================================================================================================

SFX2_24:
|1A9655:22A5| db $E0, $11 ; set sfx instrument - splssh
|1A9657:22A7| db $30, $64 ; duration, params
|1A9659:22A9| db $A4 ; play note C4
|1A965A:22AA| db $00 ; end sfx

;===================================================================================================

SFX2_3D:
|1A965B:22AB| db $E0, $11 ; set sfx instrument - splssh
|1A965D:22AD| db $48, $64 ; duration, params
|1A965F:22AF| db $98 ; play note C3
|1A9660:22B0| db $00 ; end sfx

;===================================================================================================

SFX2_23:
|1A9661:22B1| db $E0, $01 ; set sfx instrument - swish
|1A9663:22B3| db $08, $3C ; duration, params
|1A9665:22B5| db $F9, $AF, $00, $05 ; enable slide
|1A9669:22B9| db $B5 ; play note F5
|1A966A:22BA| db $00 ; end sfx

;===================================================================================================

SFX2_1D:
|1A966B:22BB| db $E0, $16 ; set sfx instrument - aaaaaa
|1A966D:22BD| db $0A, $78 ; duration, params
|1A966F:22BF| db $F9, $89, $00, $0A ; enable slide
|1A9673:22C3| db $85 ; play note F1
|1A9674:22C4| db $0A ; duration
|1A9675:22C5| db $F1, $00, $0A, $8C ; slide to note
|1A9679:22C9| db $0A ; duration
|1A967A:22CA| db $F1, $00, $07, $9D ; slide to note
|1A967E:22CE| db $00 ; end sfx

;===================================================================================================

SFX2_21:
|1A967F:22CF| db $E0, $02 ; set sfx instrument - bomp
|1A9681:22D1| db $04, $3C ; duration, params
|1A9683:22D3| db $AD ; play note A4
|1A9684:22D4| db $E0, $01 ; set sfx instrument - swish
|1A9686:22D6| db $08, $3C ; duration, params
|1A9688:22D8| db $A3 ; play note B3
|1A9689:22D9| db $00 ; end sfx

;===================================================================================================

SFX2_20:
|1A968A:22DA| db $E0, $0D ; set sfx instrument - twee
|1A968C:22DC| db $12, $3C ; duration, params
|1A968E:22DE| db $F9, $B2, $00, $12 ; enable slide
|1A9692:22E2| db $AD ; play note A4
|1A9693:22E3| db $12 ; duration
|1A9694:22E4| db $F1, $00, $0F, $A3 ; slide to note
|1A9698:22E8| db $00 ; end sfx

;===================================================================================================

SFX2_1F:
|1A9699:22E9| db $E0, $02 ; set sfx instrument - bomp
|1A969B:22EB| db $08, $32 ; duration, params
|1A969D:22ED| db $AD ; play note A4
|1A969E:22EE| db $A6 ; play note D4
|1A969F:22EF| db $E0, $01 ; set sfx instrument - swish
|1A96A1:22F1| db $04, $5A ; duration, params
|1A96A3:22F3| db $B2 ; play note D5
|1A96A4:22F4| db $AD ; play note A4
|1A96A5:22F5| db $A9 ; play note F4
|1A96A6:22F6| db $04, $46 ; duration, params
|1A96A8:22F8| db $AB ; play note G4
|1A96A9:22F9| db $A1 ; play note A3
|1A96AA:22FA| db $A4 ; play note C4
|1A96AB:22FB| db $04, $1E ; duration, params
|1A96AD:22FD| db $A3 ; play note B3
|1A96AE:22FE| db $9C ; play note E3
|1A96AF:22FF| db $9A ; play note D3
|1A96B0:2300| db $00 ; end sfx

;===================================================================================================

SFX2_1C:
|1A96B1:2301| db $E0, $11 ; set sfx instrument - splssh
|1A96B3:2303| db $18, $64 ; duration, params
|1A96B5:2305| db $B2 ; play note D5
|1A96B6:2306| db $00 ; end sfx

;===================================================================================================

SFX2_1B:
|1A96B7:2307| db $E0, $11 ; set sfx instrument - splssh
|1A96B9:2309| db $08, $78 ; duration, params
|1A96BB:230B| db $F9, $8C, $00, $08 ; enable slide
|1A96BF:230F| db $9D ; play note F3
|1A96C0:2310| db $09 ; duration
|1A96C1:2311| db $F1, $00, $06, $93 ; slide to note
|1A96C5:2315| db $00 ; end sfx

;===================================================================================================

SFX2_1A:
|1A96C6:2316| db $E0, $01 ; set sfx instrument - swish
|1A96C8:2318| db $04, $28 ; duration, params
|1A96CA:231A| db $F9, $A4, $00, $04 ; enable slide
|1A96CE:231E| db $A9 ; play note F4
|1A96CF:231F| db $05, $3C ; duration, params
|1A96D1:2321| db $F1, $00, $02, $A6 ; slide to note
|1A96D5:2325| db $05, $50 ; duration, params
|1A96D7:2327| db $F1, $00, $02, $A3 ; slide to note
|1A96DB:232B| db $00 ; end sfx

;===================================================================================================

SFX2_16:
|1A96DC:232C| db $E0, $10 ; set sfx instrument - chshtsh
|1A96DE:232E| db $18, $78 ; duration, params
|1A96E0:2330| db $9A ; play note D3
|1A96E1:2331| db $18, $73 ; duration, params
|1A96E3:2333| db $9B ; play note D#3
|1A96E4:2334| db $18, $6E ; duration, params
|1A96E6:2336| db $9C ; play note E3
|1A96E7:2337| db $18, $69 ; duration, params
|1A96E9:2339| db $9D ; play note F3
|1A96EA:233A| db $18, $64 ; duration, params
|1A96EC:233C| db $9E ; play note F#3
|1A96ED:233D| db $18, $5F ; duration, params
|1A96EF:233F| db $9F ; play note G3
|1A96F0:2340| db $18, $5A ; duration, params
|1A96F2:2342| db $A0 ; play note G#3
|1A96F3:2343| db $00 ; end sfx

;===================================================================================================

SFX2_17:
|1A96F4:2344| db $E0, $10 ; set sfx instrument - chshtsh
|1A96F6:2346| db $18, $64 ; duration, params
|1A96F8:2348| db $A1 ; play note A3
|1A96F9:2349| db $18, $69 ; duration, params
|1A96FB:234B| db $A2 ; play note A#3
|1A96FC:234C| db $18, $6E ; duration, params
|1A96FE:234E| db $A3 ; play note B3
|1A96FF:234F| db $18, $73 ; duration, params
|1A9701:2351| db $A4 ; play note C4
|1A9702:2352| db $18, $78 ; duration, params
|1A9704:2354| db $A5 ; play note C#4
|1A9705:2355| db $00 ; end sfx

;===================================================================================================

SFX2_18:
|1A9706:2356| db $E0, $10 ; set sfx instrument - chshtsh
|1A9708:2358| db $18, $78 ; duration, params
|1A970A:235A| db $A5 ; play note C#4
|1A970B:235B| db $18, $73 ; duration, params
|1A970D:235D| db $A4 ; play note C4
|1A970E:235E| db $18, $6E ; duration, params
|1A9710:2360| db $A3 ; play note B3
|1A9711:2361| db $18, $69 ; duration, params
|1A9713:2363| db $A2 ; play note A#3
|1A9714:2364| db $18, $64 ; duration, params
|1A9716:2366| db $A1 ; play note A3
|1A9717:2367| db $18, $5F ; duration, params
|1A9719:2369| db $A0 ; play note G#3
|1A971A:236A| db $18, $5A ; duration, params
|1A971C:236C| db $9F ; play note G3
|1A971D:236D| db $00 ; end sfx

;===================================================================================================

SFX2_19:
|1A971E:236E| db $E0, $10 ; set sfx instrument - chshtsh
|1A9720:2370| db $18, $64 ; duration, params
|1A9722:2372| db $9E ; play note F#3
|1A9723:2373| db $18, $69 ; duration, params
|1A9725:2375| db $9D ; play note F3
|1A9726:2376| db $18, $6E ; duration, params
|1A9728:2378| db $9C ; play note E3
|1A9729:2379| db $18, $73 ; duration, params
|1A972B:237B| db $9B ; play note D#3
|1A972C:237C| db $18, $78 ; duration, params
|1A972E:237E| db $9A ; play note D3
|1A972F:237F| db $00 ; end sfx

;===================================================================================================

SFX2_14:
|1A9730:2380| db $E0, $07 ; set sfx instrument - fwomp
|1A9732:2382| db $0C, $28 ; duration, params
|1A9734:2384| db $F9, $9D, $00, $0C ; enable slide
|1A9738:2388| db $9F ; play note G3
|1A9739:2389| db $0C, $23 ; duration, params
|1A973B:238B| db $F1, $00, $09, $B2 ; slide to note
|1A973F:238F| db $00 ; end sfx

;===================================================================================================

SFX2_15:
|1A9740:2390| db $E0, $07 ; set sfx instrument - fwomp
|1A9742:2392| db $0C, $28 ; duration, params
|1A9744:2394| db $F9, $B2, $00, $0C ; enable slide
|1A9748:2398| db $9F ; play note G3
|1A9749:2399| db $0C, $23 ; duration, params
|1A974B:239B| db $F1, $00, $09, $9D ; slide to note
|1A974F:239F| db $00 ; end sfx

;===================================================================================================

SFX2_13:
|1A9750:23A0| db $E0, $0D ; set sfx instrument - twee
|1A9752:23A2| db $08, $46 ; duration, params
|1A9754:23A4| db $AB ; play note G4
|1A9755:23A5| db $B0 ; play note C5
|1A9756:23A6| db $B2 ; play note D5
|1A9757:23A7| db $B7 ; play note G5
|1A9758:23A8| db $B2 ; play note D5
|1A9759:23A9| db $60 ; duration
|1A975A:23AA| db $B4 ; play note E5
|1A975B:23AB| db $08, $3C ; duration, params
|1A975D:23AD| db $AB ; play note G4
|1A975E:23AE| db $B0 ; play note C5
|1A975F:23AF| db $B2 ; play note D5
|1A9760:23B0| db $B7 ; play note G5
|1A9761:23B1| db $B2 ; play note D5
|1A9762:23B2| db $60 ; duration
|1A9763:23B3| db $B4 ; play note E5
|1A9764:23B4| db $00 ; end sfx

;===================================================================================================

SFX2_3E:
|1A9765:23B5| db $E0, $0D ; set sfx instrument - twee
|1A9767:23B7| db $04, $00 ; duration, params
|1A9769:23B9| db $A8 ; play note E4
|1A976A:23BA| db $08, $28 ; duration, params
|1A976C:23BC| db $AB ; play note G4
|1A976D:23BD| db $B0 ; play note C5
|1A976E:23BE| db $B2 ; play note D5
|1A976F:23BF| db $B7 ; play note G5
|1A9770:23C0| db $B2 ; play note D5
|1A9771:23C1| db $60 ; duration
|1A9772:23C2| db $B4 ; play note E5
|1A9773:23C3| db $08, $1E ; duration, params
|1A9775:23C5| db $AB ; play note G4
|1A9776:23C6| db $B0 ; play note C5
|1A9777:23C7| db $B2 ; play note D5
|1A9778:23C8| db $B7 ; play note G5
|1A9779:23C9| db $B2 ; play note D5
|1A977A:23CA| db $60 ; duration
|1A977B:23CB| db $B4 ; play note E5
|1A977C:23CC| db $00 ; end sfx

;===================================================================================================

SFX2_12:
|1A977D:23CD| db $E0, $02 ; set sfx instrument - bomp
|1A977F:23CF| db $0A, $50 ; duration, params
|1A9781:23D1| db $F9, $8C, $00, $07 ; enable slide
|1A9785:23D5| db $B7 ; play note G5
|1A9786:23D6| db $E0, $01 ; set sfx instrument - swish
|1A9788:23D8| db $08, $64 ; duration, params
|1A978A:23DA| db $F9, $AD, $00, $05 ; enable slide
|1A978E:23DE| db $A4 ; play note C4
|1A978F:23DF| db $10, $00 ; duration, params
|1A9791:23E1| db $A4 ; play note C4
|1A9792:23E2| db $08, $28 ; duration, params
|1A9794:23E4| db $F9, $B0, $00, $08 ; enable slide
|1A9798:23E8| db $A4 ; play note C4
|1A9799:23E9| db $08 ; duration
|1A979A:23EA| db $F1, $B0, $00, $05 ; slide to note
|1A979E:23EE| db $9D ; play note F3
|1A979F:23EF| db $00 ; end sfx

;===================================================================================================

SFX2_11:
|1A97A0:23F0| db $E0, $05 ; set sfx instrument - clunk
|1A97A2:23F2| db $08, $64 ; duration, params
|1A97A4:23F4| db $F9, $BE, $00, $05 ; enable slide
|1A97A8:23F8| db $B9 ; play note A5
|1A97A9:23F9| db $00 ; end sfx

;===================================================================================================

SFX2_10:
|1A97AA:23FA| db $E0, $05 ; set sfx instrument - clunk
|1A97AC:23FC| db $08, $78 ; duration, params
|1A97AE:23FE| db $F9, $9F, $00, $05 ; enable slide
|1A97B2:2402| db $98 ; play note C3
|1A97B3:2403| db $00 ; end sfx

;===================================================================================================

SFX2_0E:
|1A97B4:2404| db $E0, $00 ; set sfx instrument - fwoosh
|1A97B6:2406| db $18, $32 ; duration, params
|1A97B8:2408| db $F9, $9F, $00, $18 ; enable slide
|1A97BC:240C| db $A4 ; play note C4
|1A97BD:240D| db $30, $28 ; duration, params
|1A97BF:240F| db $F1, $00, $2D, $98 ; slide to note
|1A97C3:2413| db $00 ; end sfx

;===================================================================================================

SFX2_0D:
|1A97C4:2414| db $E0, $00 ; set sfx instrument - fwoosh
|1A97C6:2416| db $06, $78 ; duration, params
|1A97C8:2418| db $B7 ; play note G5
|1A97C9:2419| db $06, $32 ; duration, params
|1A97CB:241B| db $B4 ; play note E5
|1A97CC:241C| db $06, $73 ; duration, params
|1A97CE:241E| db $B5 ; play note F5
|1A97CF:241F| db $06, $28 ; duration, params
|1A97D1:2421| db $B2 ; play note D5
|1A97D2:2422| db $06, $55 ; duration, params
|1A97D4:2424| db $B4 ; play note E5
|1A97D5:2425| db $05, $2D ; duration, params
|1A97D7:2427| db $B0 ; play note C5
|1A97D8:2428| db $05, $55 ; duration, params
|1A97DA:242A| db $B2 ; play note D5
|1A97DB:242B| db $04, $2D ; duration, params
|1A97DD:242D| db $BB ; play note B5
|1A97DE:242E| db $04, $55 ; duration, params
|1A97E0:2430| db $B0 ; play note C5
|1A97E1:2431| db $03, $23 ; duration, params
|1A97E3:2433| db $B9 ; play note A5
|1A97E4:2434| db $00 ; end sfx

;===================================================================================================

SFX2_3F:
|1A97E5:2435| db $E0, $0D ; set sfx instrument - twee
|1A97E7:2437| db $06, $1E ; duration, params
|1A97E9:2439| db $C0 ; play note E6
|1A97EA:243A| db $BE ; play note D6
|1A97EB:243B| db $C0 ; play note E6
|1A97EC:243C| db $C1 ; play note F6
|1A97ED:243D| db $C3 ; play note G6
|1A97EE:243E| db $00 ; end sfx

;===================================================================================================

SFX2_29:
|1A97EF:243F| db $E0, $01 ; set sfx instrument - swish
|1A97F1:2441| db $08, $3C ; duration, params
|1A97F3:2443| db $F9, $B7, $00, $05 ; enable slide
|1A97F7:2447| db $B4 ; play note E5
|1A97F8:2448| db $08, $14 ; duration, params
|1A97FA:244A| db $F9, $B5, $00, $08 ; enable slide
|1A97FE:244E| db $B7 ; play note G5
|1A97FF:244F| db $08, $37 ; duration, params
|1A9801:2451| db $F1, $00, $08, $B2 ; slide to note
|1A9805:2455| db $08, $0A ; duration, params
|1A9807:2457| db $F1, $00, $08, $B7 ; slide to note
|1A980B:245B| db $08, $23 ; duration, params
|1A980D:245D| db $F1, $00, $05, $BC ; slide to note
|1A9811:2461| db $00 ; end sfx

;===================================================================================================

SFX2_3B:
|1A9812:2462| db $E0, $06 ; set sfx instrument - ching
|1A9814:2464| db $06, $28 ; duration, params
|1A9816:2466| db $B9 ; play note A5
|1A9817:2467| db $B0 ; play note C5
|1A9818:2468| db $B3 ; play note D#5
|1A9819:2469| db $B6 ; play note F#5
|1A981A:246A| db $B9 ; play note A5
|1A981B:246B| db $00 ; end sfx

;===================================================================================================

SFX3_14:
|1A981C:246C| db $E0, $06 ; set sfx instrument - ching
|1A981E:246E| db $04, $50 ; duration, params
|1A9820:2470| db $B0 ; play note C5
|1A9821:2471| db $04, $0A ; duration, params
|1A9823:2473| db $AD ; play note A4
|1A9824:2474| db $04, $5A ; duration, params
|1A9826:2476| db $B5 ; play note F5
|1A9827:2477| db $00 ; end sfx

;===================================================================================================

SFX2_0B:
|1A9828:2478| db $E0, $02 ; set sfx instrument - bomp
|1A982A:247A| db $06, $50 ; duration, params
|1A982C:247C| db $A8 ; play note E4
|1A982D:247D| db $0C ; duration
|1A982E:247E| db $A9 ; play note F4
|1A982F:247F| db $00 ; end sfx

;===================================================================================================

SFX3_3F:
|1A9830:2480| db $E0, $0B ; set sfx instrument - brrfft
|1A9832:2482| db $10, $64 ; duration, params
|1A9834:2484| db $A1 ; play note A3
|1A9835:2485| db $A2 ; play note A#3
|1A9836:2486| db $A3 ; play note B3
|1A9837:2487| db $60 ; duration
|1A9838:2488| db $A4 ; play note C4
|1A9839:2489| db $00 ; end sfx

;===================================================================================================

SFX3_3C:
|1A983A:248A| db $E0, $0B ; set sfx instrument - brrfft
|1A983C:248C| db $10, $64 ; duration, params
|1A983E:248E| db $B0 ; play note C5
|1A983F:248F| db $B1 ; play note C#5
|1A9840:2490| db $B2 ; play note D5
|1A9841:2491| db $60 ; duration
|1A9842:2492| db $B3 ; play note D#5
|1A9843:2493| db $00 ; end sfx

;===================================================================================================

SFX3_3D:
|1A9844:2494| db $E0, $0B ; set sfx instrument - brrfft
|1A9846:2496| db $10, $64 ; duration, params
|1A9848:2498| db $A9 ; play note F4
|1A9849:2499| db $AA ; play note F#4
|1A984A:249A| db $AB ; play note G4
|1A984B:249B| db $60 ; duration
|1A984C:249C| db $AC ; play note G#4
|1A984D:249D| db $00 ; end sfx

;===================================================================================================

SFX3_3E:
|1A984E:249E| db $E0, $05 ; set sfx instrument - clunk
|1A9850:24A0| db $30, $64 ; duration, params
|1A9852:24A2| db $9A ; play note D3
|1A9853:24A3| db $06, $0A ; duration, params
|1A9855:24A5| db $9D ; play note F3
|1A9856:24A6| db $98 ; play note C3
|1A9857:24A7| db $06, $14 ; duration, params
|1A9859:24A9| db $9D ; play note F3
|1A985A:24AA| db $98 ; play note C3
|1A985B:24AB| db $06, $28 ; duration, params
|1A985D:24AD| db $9D ; play note F3
|1A985E:24AE| db $98 ; play note C3
|1A985F:24AF| db $06, $50 ; duration, params
|1A9861:24B1| db $9D ; play note F3
|1A9862:24B2| db $98 ; play note C3
|1A9863:24B3| db $9D ; play note F3
|1A9864:24B4| db $98 ; play note C3
|1A9865:24B5| db $9D ; play note F3
|1A9866:24B6| db $30 ; duration
|1A9867:24B7| db $98 ; play note C3
|1A9868:24B8| db $00 ; end sfx

;===================================================================================================

SFX3_0F:
|1A9869:24B9| db $E0, $0B ; set sfx instrument - brrfft
|1A986B:24BB| db $10, $78 ; duration, params
|1A986D:24BD| db $B9 ; play note A5
|1A986E:24BE| db $BA ; play note A#5
|1A986F:24BF| db $BB ; play note B5
|1A9870:24C0| db $60 ; duration
|1A9871:24C1| db $BC ; play note C6
|1A9872:24C2| db $00 ; end sfx

;===================================================================================================

SFX2_0F:
|1A9873:24C3| db $E0, $06 ; set sfx instrument - ching
|1A9875:24C5| db $0C, $64 ; duration, params
|1A9877:24C7| db $F9, $93, $00, $09 ; enable slide
|1A987B:24CB| db $B0 ; play note C5
|1A987C:24CC| db $06, $5A ; duration, params
|1A987E:24CE| db $F9, $B5, $00, $06 ; enable slide
|1A9882:24D2| db $B7 ; play note G5
|1A9883:24D3| db $06, $55 ; duration, params
|1A9885:24D5| db $F1, $00, $06, $B2 ; slide to note
|1A9889:24D9| db $06, $5F ; duration, params
|1A988B:24DB| db $F1, $00, $06, $B7 ; slide to note
|1A988F:24DF| db $06, $4B ; duration, params
|1A9891:24E1| db $F1, $00, $06, $B4 ; slide to note
|1A9895:24E5| db $06, $55 ; duration, params
|1A9897:24E7| db $F1, $00, $06, $B9 ; slide to note
|1A989B:24EB| db $06, $3C ; duration, params
|1A989D:24ED| db $F1, $00, $06, $B5 ; slide to note
|1A98A1:24F1| db $06, $46 ; duration, params
|1A98A3:24F3| db $F1, $00, $06, $BB ; slide to note
|1A98A7:24F7| db $06, $32 ; duration, params
|1A98A9:24F9| db $F1, $00, $06, $B7 ; slide to note
|1A98AD:24FD| db $06, $3C ; duration, params
|1A98AF:24FF| db $F1, $00, $06, $BC ; slide to note
|1A98B3:2503| db $06, $2D ; duration, params
|1A98B5:2505| db $F1, $00, $03, $BC ; slide to note
|1A98B9:2509| db $00 ; end sfx

;===================================================================================================

SFX3_19:
|1A98BA:250A| db $E0, $07 ; set sfx instrument - fwomp
|1A98BC:250C| db $08, $28 ; duration, params
|1A98BE:250E| db $F9, $AB, $00, $05 ; enable slide
|1A98C2:2512| db $A8 ; play note E4
|1A98C3:2513| db $08, $32 ; duration, params
|1A98C5:2515| db $F9, $A9, $00, $08 ; enable slide
|1A98C9:2519| db $AB ; play note G4
|1A98CA:251A| db $08, $2D ; duration, params
|1A98CC:251C| db $F1, $00, $08, $A6 ; slide to note
|1A98D0:2520| db $08, $1E ; duration, params
|1A98D2:2522| db $F1, $00, $08, $AB ; slide to note
|1A98D6:2526| db $08, $19 ; duration, params
|1A98D8:2528| db $F1, $00, $05, $A6 ; slide to note
|1A98DC:252C| db $00 ; end sfx

;===================================================================================================

UnusedSFX_252D:
|1A98DD:252D| db $E0, $05 ; set sfx instrument - clunk
|1A98DF:252F| db $06, $28 ; duration, params
|1A98E1:2531| db $BC ; play note C6
|1A98E2:2532| db $00 ; end sfx

;===================================================================================================

UnusedSFX_2533:
|1A98E3:2533| db $E0, $00 ; set sfx instrument - fwoosh
|1A98E5:2535| db $08, $32 ; duration, params
|1A98E7:2537| db $AB ; play note G4
|1A98E8:2538| db $B2 ; play note D5
|1A98E9:2539| db $A9 ; play note F4
|1A98EA:253A| db $AB ; play note G4
|1A98EB:253B| db $08, $28 ; duration, params
|1A98ED:253D| db $A8 ; play note E4
|1A98EE:253E| db $A6 ; play note D4
|1A98EF:253F| db $A8 ; play note E4
|1A98F0:2540| db $A4 ; play note C4
|1A98F1:2541| db $08, $1E ; duration, params
|1A98F3:2543| db $AB ; play note G4
|1A98F4:2544| db $B5 ; play note F5
|1A98F5:2545| db $A9 ; play note F4
|1A98F6:2546| db $B7 ; play note G5
|1A98F7:2547| db $08, $0A ; duration, params
|1A98F9:2549| db $AD ; play note A4
|1A98FA:254A| db $B2 ; play note D5
|1A98FB:254B| db $A4 ; play note C4
|1A98FC:254C| db $A8 ; play note E4
|1A98FD:254D| db $00 ; end sfx

;===================================================================================================

SFX3_02:
|1A98FE:254E| db $E0, $01 ; set sfx instrument - swish
|1A9900:2550| db $08, $28 ; duration, params
|1A9902:2552| db $F9, $AB, $00, $05 ; enable slide
|1A9906:2556| db $A8 ; play note E4
|1A9907:2557| db $08, $32 ; duration, params
|1A9909:2559| db $F9, $A9, $00, $08 ; enable slide
|1A990D:255D| db $AB ; play note G4
|1A990E:255E| db $08, $23 ; duration, params
|1A9910:2560| db $F1, $00, $08, $9A ; slide to note
|1A9914:2564| db $08, $28 ; duration, params
|1A9916:2566| db $F1, $00, $08, $AB ; slide to note
|1A991A:256A| db $08, $19 ; duration, params
|1A991C:256C| db $F1, $00, $08, $9A ; slide to note
|1A9920:2570| db $08, $0F ; duration, params
|1A9922:2572| db $F1, $00, $05, $9F ; slide to note
|1A9926:2576| db $00 ; end sfx

;===================================================================================================

SFX2_1E:
|1A9927:2577| db $E0, $01 ; set sfx instrument - swish
|1A9929:2579| db $08, $28 ; duration, params
|1A992B:257B| db $F9, $B7, $00, $05 ; enable slide
|1A992F:257F| db $B4 ; play note E5
|1A9930:2580| db $08, $32 ; duration, params
|1A9932:2582| db $F9, $B5, $00, $08 ; enable slide
|1A9936:2586| db $B7 ; play note G5
|1A9937:2587| db $08, $2D ; duration, params
|1A9939:2589| db $F1, $00, $08, $B2 ; slide to note
|1A993D:258D| db $08, $28 ; duration, params
|1A993F:258F| db $F1, $00, $08, $B7 ; slide to note
|1A9943:2593| db $08, $23 ; duration, params
|1A9945:2595| db $F1, $00, $08, $B2 ; slide to note
|1A9949:2599| db $08, $1E ; duration, params
|1A994B:259B| db $F1, $00, $08, $B7 ; slide to note
|1A994F:259F| db $08, $0F ; duration, params
|1A9951:25A1| db $F1, $00, $05, $B2 ; slide to note
|1A9955:25A5| db $00 ; end sfx

;===================================================================================================

SFX3_17:
|1A9956:25A6| db $E0, $08 ; set sfx instrument - squee
|1A9958:25A8| db $0C, $50 ; duration, params
|1A995A:25AA| db $B0 ; play note C5
|1A995B:25AB| db $B0 ; play note C5
|1A995C:25AC| db $00 ; end sfx

;===================================================================================================

SFX2_09:
|1A995D:25AD| db $E0, $00 ; set sfx instrument - fwoosh
|1A995F:25AF| db $09, $50 ; duration, params
|1A9961:25B1| db $F9, $B7, $00, $06 ; enable slide
|1A9965:25B5| db $BC ; play note C6
|1A9966:25B6| db $00 ; end sfx

;===================================================================================================

SFX2_07:
SFX3_05:
|1A9967:25B7| db $E0, $00 ; set sfx instrument - fwoosh
|1A9969:25B9| db $06, $50 ; duration, params
|1A996B:25BB| db $F9, $93, $00, $06 ; enable slide
|1A996F:25BF| db $B0 ; play note C5
|1A9970:25C0| db $06, $50 ; duration, params
|1A9972:25C2| db $F1, $00, $03, $8C ; slide to note
|1A9976:25C6| db $00 ; end sfx

;===================================================================================================

SFX2_0A:
|1A9977:25C7| db $E0, $06 ; set sfx instrument - ching
|1A9979:25C9| db $04, $50 ; duration, params
|1A997B:25CB| db $B3 ; play note D#5
|1A997C:25CC| db $06 ; duration
|1A997D:25CD| db $B0 ; play note C5
|1A997E:25CE| db $04 ; duration
|1A997F:25CF| db $B3 ; play note D#5
|1A9980:25D0| db $06 ; duration
|1A9981:25D1| db $B0 ; play note C5
|1A9982:25D2| db $04 ; duration
|1A9983:25D3| db $B3 ; play note D#5
|1A9984:25D4| db $06 ; duration
|1A9985:25D5| db $B0 ; play note C5
|1A9986:25D6| db $00 ; end sfx

;===================================================================================================

SFX2_06:
|1A9987:25D7| db $E0, $03 ; set sfx instrument - ting
|1A9989:25D9| db $18, $50 ; duration, params
|1A998B:25DB| db $B0 ; play note C5
|1A998C:25DC| db $00 ; end sfx

;===================================================================================================

SFX2_05:
|1A998D:25DD| db $E0, $06 ; set sfx instrument - ching
|1A998F:25DF| db $06, $78 ; duration, params
|1A9991:25E1| db $B0 ; play note C5
|1A9992:25E2| db $00 ; end sfx

;===================================================================================================

SFX2_08:
|1A9993:25E3| db $E0, $02 ; set sfx instrument - bomp
|1A9995:25E5| db $0A, $78 ; duration, params
|1A9997:25E7| db $F9, $B0, $00, $07 ; enable slide
|1A999B:25EB| db $98 ; play note C3
|1A999C:25EC| db $E0, $02 ; set sfx instrument - bomp
|1A999E:25EE| db $06, $32 ; duration, params
|1A99A0:25F0| db $F9, $B5, $00, $06 ; enable slide
|1A99A4:25F4| db $B7 ; play note G5
|1A99A5:25F5| db $06, $2D ; duration, params
|1A99A7:25F7| db $F1, $00, $06, $B2 ; slide to note
|1A99AB:25FB| db $06, $28 ; duration, params
|1A99AD:25FD| db $F1, $00, $06, $B7 ; slide to note
|1A99B1:2601| db $06, $23 ; duration, params
|1A99B3:2603| db $F1, $00, $06, $B2 ; slide to note
|1A99B7:2607| db $06, $14 ; duration, params
|1A99B9:2609| db $F1, $00, $06, $B7 ; slide to note
|1A99BD:260D| db $06, $0F ; duration, params
|1A99BF:260F| db $F1, $00, $03, $B2 ; slide to note
|1A99C3:2613| db $00 ; end sfx

;===================================================================================================

SFX2_01:
|1A99C4:2614| db $E0, $01 ; set sfx instrument - swish
|1A99C6:2616| db $04, $46 ; duration, params
|1A99C8:2618| db $F9, $9F, $00, $04 ; enable slide
|1A99CC:261C| db $8C ; play note C2
|1A99CD:261D| db $0C, $78 ; duration, params
|1A99CF:261F| db $F9, $9F, $00, $09 ; enable slide
|1A99D3:2623| db $B7 ; play note G5
|1A99D4:2624| db $00 ; end sfx

;===================================================================================================

SFX2_02:
|1A99D5:2625| db $E0, $01 ; set sfx instrument - swish
|1A99D7:2627| db $06, $78 ; duration, params
|1A99D9:2629| db $F9, $98, $00, $06 ; enable slide
|1A99DD:262D| db $B0 ; play note C5
|1A99DE:262E| db $07 ; duration
|1A99DF:262F| db $F1, $00, $04, $AB ; slide to note
|1A99E3:2633| db $00 ; end sfx

;===================================================================================================

SFX2_03:
|1A99E4:2634| db $E0, $02 ; set sfx instrument - bomp
|1A99E6:2636| db $0C, $78 ; duration, params
|1A99E8:2638| db $F9, $93, $00, $0C ; enable slide
|1A99EC:263C| db $C3 ; play note G6
|1A99ED:263D| db $07 ; duration
|1A99EE:263E| db $F1, $00, $04, $A4 ; slide to note
|1A99F2:2642| db $00 ; end sfx

;===================================================================================================

SFX2_04:
|1A99F3:2643| db $E0, $02 ; set sfx instrument - bomp
|1A99F5:2645| db $0F, $78 ; duration, params
|1A99F7:2647| db $F9, $8C, $00, $0F ; enable slide
|1A99FB:264B| db $BC ; play note C6
|1A99FC:264C| db $0D ; duration
|1A99FD:264D| db $F1, $00, $0A, $9F ; slide to note
|1A9A01:2651| db $00 ; end sfx

;===================================================================================================

SFX1_01:
|1A9A02:2652| db $E0, $01 ; set sfx instrument - swish
|1A9A04:2654| db $60, $50 ; duration, params
|1A9A06:2656| db $00 ; end sfx

;===================================================================================================

UnusedSFX_2657:
|1A9A07:2657| db $F9, $9F, $00, $60 ; enable slide
|1A9A0B:265B| db $9F ; play note G3
|1A9A0C:265C| db $63 ; duration
|1A9A0D:265D| db $F1, $00, $60, $9F ; slide to note
|1A9A11:2661| db $FF ; loop SFX

;===================================================================================================

SFX1_02:
|1A9A12:2662| db $E0, $01 ; set sfx instrument - swish
|1A9A14:2664| db $60, $00 ; duration, params
|1A9A16:2666| db $50 ; volume
|1A9A17:2667| db $F9, $98, $00, $60 ; enable slide
|1A9A1B:266B| db $98 ; play note C3
|1A9A1C:266C| db $60 ; duration
|1A9A1D:266D| db $F1, $00, $60, $98 ; slide to note
|1A9A21:2671| db $63 ; duration
|1A9A22:2672| db $F1, $00, $60, $98 ; slide to note
|1A9A26:2676| db $FF ; loop SFX

;===================================================================================================

SFX1_03:
|1A9A27:2677| db $E0, $01 ; set sfx instrument - swish
|1A9A29:2679| db $60, $32 ; duration, params
|1A9A2B:267B| db $00 ; end sfx

;===================================================================================================

UnusedSFX_267C:
|1A9A2C:267C| db $F9, $95, $00, $60 ; enable slide
|1A9A30:2680| db $95 ; play note A2
|1A9A31:2681| db $63 ; duration
|1A9A32:2682| db $F1, $00, $60, $95 ; slide to note
|1A9A36:2686| db $FF ; loop SFX

;===================================================================================================

SFX1_04:
|1A9A37:2687| db $E0, $01 ; set sfx instrument - swish
|1A9A39:2689| db $60, $00 ; duration, params
|1A9A3B:268B| db $32 ; volume
|1A9A3C:268C| db $F9, $91, $00, $60 ; enable slide
|1A9A40:2690| db $91 ; play note F2
|1A9A41:2691| db $60 ; duration
|1A9A42:2692| db $F1, $00, $60, $91 ; slide to note
|1A9A46:2696| db $63 ; duration
|1A9A47:2697| db $F1, $00, $60, $91 ; slide to note
|1A9A4B:269B| db $FF ; loop SFX

;===================================================================================================

SFX2_0C:
|1A9A4C:269C| db $E0, $13 ; set sfx instrument - brbrbrb
|1A9A4E:269E| db $60, $7F ; duration, params
|1A9A50:26A0| db $9F ; play note G3
|1A9A51:26A1| db $00 ; end sfx

;===================================================================================================

UnusedSFX_26A2:
|1A9A52:26A2| db $E0, $07 ; set sfx instrument - fwomp
|1A9A54:26A4| db $0C, $00 ; duration, params
|1A9A56:26A6| db $91 ; play note F2
|1A9A57:26A7| db $0C, $7F ; duration, params
|1A9A59:26A9| db $95 ; play note A2
|1A9A5A:26AA| db $18, $00 ; duration, params
|1A9A5C:26AC| db $8E ; play note D2
|1A9A5D:26AD| db $0C, $7F ; duration, params
|1A9A5F:26AF| db $93 ; play note G2
|1A9A60:26B0| db $0C, $7F ; duration, params
|1A9A62:26B2| db $90 ; play note E2
|1A9A63:26B3| db $30, $00 ; duration, params
|1A9A65:26B5| db $90 ; play note E2
|1A9A66:26B6| db $0C, $7F ; duration, params
|1A9A68:26B8| db $8E ; play note D2
|1A9A69:26B9| db $24, $00 ; duration, params
|1A9A6B:26BB| db $93 ; play note G2
|1A9A6C:26BC| db $0C, $7F ; duration, params
|1A9A6E:26BE| db $91 ; play note F2
|1A9A6F:26BF| db $E0, $14 ; set sfx instrument - bwow
|1A9A71:26C1| db $60, $7F ; duration, params
|1A9A73:26C3| db $F9, $85, $00, $60 ; enable slide
|1A9A77:26C7| db $87 ; play note G1
|1A9A78:26C8| db $33, $6B ; duration, params
|1A9A7A:26CA| db $F1, $00, $30, $89 ; slide to note
|1A9A7E:26CE| db $00 ; end sfx

;===================================================================================================

SFX3_22:
|1A9A7F:26CF| db $E0, $14 ; set sfx instrument - bwow
|1A9A81:26D1| db $18, $7F ; duration, params
|1A9A83:26D3| db $F9, $98, $00, $18 ; enable slide
|1A9A87:26D7| db $91 ; play note F2
|1A9A88:26D8| db $18 ; duration
|1A9A89:26D9| db $F1, $00, $18, $97 ; slide to note
|1A9A8D:26DD| db $18 ; duration
|1A9A8E:26DE| db $F1, $00, $18, $90 ; slide to note
|1A9A92:26E2| db $18 ; duration
|1A9A93:26E3| db $F1, $00, $18, $95 ; slide to note
|1A9A97:26E7| db $18 ; duration
|1A9A98:26E8| db $F1, $00, $18, $8E ; slide to note
|1A9A9C:26EC| db $60 ; duration
|1A9A9D:26ED| db $F1, $00, $60, $89 ; slide to note
|1A9AA1:26F1| db $63 ; duration
|1A9AA2:26F2| db $F1, $00, $60, $80 ; slide to note
|1A9AA6:26F6| db $00 ; end sfx

;===================================================================================================

SFX3_28:
|1A9AA7:26F7| db $E0, $07 ; set sfx instrument - fwomp
|1A9AA9:26F9| db $0C, $28 ; duration, params
|1A9AAB:26FB| db $F9, $C0, $00, $0C ; enable slide
|1A9AAF:26FF| db $C1 ; play note F6
|1A9AB0:2700| db $18 ; duration
|1A9AB1:2701| db $F1, $00, $18, $C2 ; slide to note
|1A9AB5:2705| db $0C, $3C ; duration, params
|1A9AB7:2707| db $F9, $C0, $00, $0C ; enable slide
|1A9ABB:270B| db $C1 ; play note F6
|1A9ABC:270C| db $18 ; duration
|1A9ABD:270D| db $F1, $00, $18, $C2 ; slide to note
|1A9AC1:2711| db $0C, $50 ; duration, params
|1A9AC3:2713| db $F9, $C0, $00, $0C ; enable slide
|1A9AC7:2717| db $C1 ; play note F6
|1A9AC8:2718| db $18 ; duration
|1A9AC9:2719| db $F1, $00, $18, $C2 ; slide to note
|1A9ACD:271D| db $0C, $3C ; duration, params
|1A9ACF:271F| db $F9, $C0, $00, $0C ; enable slide
|1A9AD3:2723| db $C1 ; play note F6
|1A9AD4:2724| db $18 ; duration
|1A9AD5:2725| db $F1, $00, $18, $C2 ; slide to note
|1A9AD9:2729| db $0C, $28 ; duration, params
|1A9ADB:272B| db $F9, $C0, $00, $0C ; enable slide
|1A9ADF:272F| db $C1 ; play note F6
|1A9AE0:2730| db $1B ; duration
|1A9AE1:2731| db $F1, $00, $18, $C2 ; slide to note
|1A9AE5:2735| db $00 ; end sfx

;===================================================================================================

SFX1_08:
|1A9AE6:2736| db $04, $00 ; duration, params
|1A9AE8:2738| db $A8 ; play note E4

;===================================================================================================

SFX1_07:
|1A9AE9:2739| db $E0, $13 ; set sfx instrument - brbrbrb
|1A9AEB:273B| db $08, $00 ; duration, params
|1A9AED:273D| db $7C ; volume
|1A9AEE:273E| db $8E ; play note D2
|1A9AEF:273F| db $08, $4E ; duration, params
|1A9AF1:2741| db $22 ; volume
|1A9AF2:2742| db $8D ; play note C#2
|1A9AF3:2743| db $0C, $64 ; duration, params
|1A9AF5:2745| db $56 ; volume
|1A9AF6:2746| db $8C ; play note C2
|1A9AF7:2747| db $12, $56 ; duration, params
|1A9AF9:2749| db $7C ; volume
|1A9AFA:274A| db $8D ; play note C#2
|1A9AFB:274B| db $0C, $2C ; duration, params
|1A9AFD:274D| db $58 ; volume
|1A9AFE:274E| db $8B ; play note B1
|1A9AFF:274F| db $12, $5C ; duration, params
|1A9B01:2751| db $3A ; volume
|1A9B02:2752| db $89 ; play note A1
|1A9B03:2753| db $0C, $62 ; duration, params
|1A9B05:2755| db $4A ; volume
|1A9B06:2756| db $8B ; play note B1
|1A9B07:2757| db $08, $2C ; duration, params
|1A9B09:2759| db $44 ; volume
|1A9B0A:275A| db $8C ; play note C2
|1A9B0B:275B| db $0C, $44 ; duration, params
|1A9B0D:275D| db $2C ; volume
|1A9B0E:275E| db $89 ; play note A1
|1A9B0F:275F| db $18, $60 ; duration, params
|1A9B11:2761| db $51 ; volume
|1A9B12:2762| db $8B ; play note B1
|1A9B13:2763| db $08, $36 ; duration, params
|1A9B15:2765| db $44 ; volume
|1A9B16:2766| db $8C ; play note C2
|1A9B17:2767| db $30, $4E ; duration, params
|1A9B19:2769| db $4E ; volume
|1A9B1A:276A| db $8B ; play note B1
|1A9B1B:276B| db $FF ; loop SFX

;===================================================================================================

SFX3_20:
|1A9B1C:276C| db $E0, $0F ; set sfx instrument - pling
|1A9B1E:276E| db $04, $50 ; duration, params
|1A9B20:2770| db $B9 ; play note A5
|1A9B21:2771| db $04, $3C ; duration, params
|1A9B23:2773| db $B9 ; play note A5
|1A9B24:2774| db $04, $28 ; duration, params
|1A9B26:2776| db $B9 ; play note A5
|1A9B27:2777| db $04, $14 ; duration, params
|1A9B29:2779| db $B9 ; play note A5
|1A9B2A:277A| db $04, $0A ; duration, params
|1A9B2C:277C| db $B9 ; play note A5
|1A9B2D:277D| db $00 ; end sfx

;===================================================================================================

UnusedSFX_277E:
|1A9B2E:277E| db $E0, $14 ; set sfx instrument - bwow
|1A9B30:2780| db $18, $14 ; duration, params
|1A9B32:2782| db $F9, $B4, $00, $18 ; enable slide
|1A9B36:2786| db $B5 ; play note F5
|1A9B37:2787| db $60 ; duration
|1A9B38:2788| db $F1, $00, $60, $B5 ; slide to note
|1A9B3C:278C| db $60, $1E ; duration, params
|1A9B3E:278E| db $F1, $00, $60, $B5 ; slide to note
|1A9B42:2792| db $60 ; duration
|1A9B43:2793| db $F1, $00, $60, $AD ; slide to note
|1A9B47:2797| db $63 ; duration
|1A9B48:2798| db $F1, $00, $60, $A6 ; slide to note
|1A9B4C:279C| db $00 ; end sfx

;===================================================================================================

UnusedSFX_279D:
|1A9B4D:279D| db $E0, $0D ; set sfx instrument - twee
|1A9B4F:279F| db $30, $00 ; duration, params
|1A9B51:27A1| db $B4 ; play note E5
|1A9B52:27A2| db $18, $0A ; duration, params
|1A9B54:27A4| db $F9, $B3, $00, $18 ; enable slide
|1A9B58:27A8| db $B6 ; play note F#5
|1A9B59:27A9| db $60 ; duration
|1A9B5A:27AA| db $F1, $00, $60, $B3 ; slide to note
|1A9B5E:27AE| db $18, $0F ; duration, params
|1A9B60:27B0| db $F1, $00, $18, $B6 ; slide to note
|1A9B64:27B4| db $60 ; duration
|1A9B65:27B5| db $F1, $00, $60, $B3 ; slide to note
|1A9B69:27B9| db $18 ; duration
|1A9B6A:27BA| db $F1, $00, $18, $B4 ; slide to note
|1A9B6E:27BE| db $60 ; duration
|1A9B6F:27BF| db $F1, $00, $60, $B1 ; slide to note
|1A9B73:27C3| db $63 ; duration
|1A9B74:27C4| db $F1, $00, $60, $AB ; slide to note
|1A9B78:27C8| db $00 ; end sfx

;===================================================================================================

UnusedSFX_27C9:
|1A9B79:27C9| db $E0, $12 ; set sfx instrument - weewoo
|1A9B7B:27CB| db $12, $5A ; duration, params
|1A9B7D:27CD| db $F9, $89, $00, $12 ; enable slide
|1A9B81:27D1| db $8D ; play note C#2
|1A9B82:27D2| db $0C ; duration
|1A9B83:27D3| db $F1, $00, $0C, $92 ; slide to note
|1A9B87:27D7| db $24 ; duration
|1A9B88:27D8| db $F1, $00, $24, $97 ; slide to note
|1A9B8C:27DC| db $7F ; duration
|1A9B8D:27DD| db $F1, $00, $48, $82 ; slide to note
|1A9B91:27E1| db $00 ; end sfx

;===================================================================================================

SFX3_21:
|1A9B92:27E2| db $E0, $14 ; set sfx instrument - bwow
|1A9B94:27E4| db $06, $5A ; duration, params
|1A9B96:27E6| db $F9, $8C, $00, $06 ; enable slide
|1A9B9A:27EA| db $92 ; play note F#2
|1A9B9B:27EB| db $12 ; duration
|1A9B9C:27EC| db $F1, $00, $12, $99 ; slide to note
|1A9BA0:27F0| db $12 ; duration
|1A9BA1:27F1| db $F1, $00, $0F, $91 ; slide to note
|1A9BA5:27F5| db $00 ; end sfx

;===================================================================================================

UnusedSFX_27F6:
|1A9BA6:27F6| db $E0, $0D ; set sfx instrument - twee
|1A9BA8:27F8| db $12, $64 ; duration, params
|1A9BAA:27FA| db $F9, $AB, $00, $0C ; enable slide
|1A9BAE:27FE| db $B7 ; play note G5
|1A9BAF:27FF| db $12, $64 ; duration, params
|1A9BB1:2801| db $F9, $B2, $00, $0C ; enable slide
|1A9BB5:2805| db $BE ; play note D6
|1A9BB6:2806| db $00 ; end sfx

;===================================================================================================

UnusedSFX_2807:
|1A9BB7:2807| db $E0, $0D ; set sfx instrument - twee
|1A9BB9:2809| db $12, $64 ; duration, params
|1A9BBB:280B| db $F9, $B2, $00, $0C ; enable slide
|1A9BBF:280F| db $BE ; play note D6
|1A9BC0:2810| db $12, $64 ; duration, params
|1A9BC2:2812| db $F9, $B7, $00, $0C ; enable slide
|1A9BC6:2816| db $C3 ; play note G6
|1A9BC7:2817| db $00 ; end sfx

;===================================================================================================

UnusedSFX_2818:
|1A9BC8:2818| db $E0, $0D ; set sfx instrument - twee
|1A9BCA:281A| db $12, $64 ; duration, params
|1A9BCC:281C| db $F9, $BA, $00, $0C ; enable slide
|1A9BD0:2820| db $AD ; play note A4
|1A9BD1:2821| db $12, $64 ; duration, params
|1A9BD3:2823| db $F9, $AB, $00, $0C ; enable slide
|1A9BD7:2827| db $A6 ; play note D4
|1A9BD8:2828| db $00 ; end sfx

;===================================================================================================

UnusedSFX_2829:
|1A9BD9:2829| db $06, $64 ; duration, params
|1A9BDB:282B| db $98 ; play note C3
|1A9BDC:282C| db $98 ; play note C3
|1A9BDD:282D| db $30, $64 ; duration, params
|1A9BDF:282F| db $98 ; play note C3
|1A9BE0:2830| db $00 ; end sfx

;===================================================================================================

UnusedSFX_2831:
|1A9BE1:2831| db $E0, $04 ; set sfx instrument - rrrrr
|1A9BE3:2833| db $06, $78 ; duration, params
|1A9BE5:2835| db $F9, $B0, $00, $06 ; enable slide
|1A9BE9:2839| db $A4 ; play note C4
|1A9BEA:283A| db $E0, $02 ; set sfx instrument - bomp
|1A9BEC:283C| db $09, $46 ; duration, params
|1A9BEE:283E| db $F9, $B0, $00, $06 ; enable slide
|1A9BF2:2842| db $B7 ; play note G5
|1A9BF3:2843| db $00 ; end sfx

;===================================================================================================

SFX2_26:
|1A9BF4:2844| db $E0, $15 ; set sfx instrument - uughf
|1A9BF6:2846| db $18, $64 ; duration, params
|1A9BF8:2848| db $B0 ; play note C5
|1A9BF9:2849| db $00 ; end sfx

;===================================================================================================

UnusedSFX_284A:
|1A9BFA:284A| db $E0, $0D ; set sfx instrument - twee
|1A9BFC:284C| db $18, $32 ; duration, params
|1A9BFE:284E| db $8D ; play note C#2

;===================================================================================================

SFX1_05:
SFX1_06:
|1A9BFF:284F| db $00 ; end sfx

site *

;===================================================================================================

SFXInstruments:
|1A9C00| dw $00E1, INSTRUMENT_DATA_SFX ; Transfer size, transfer address

site INSTRUMENT_DATA_SFX
;                   VOLL VOLR      Pitch      SRCN   ADSR   GAIN  Mult
|1A9C04:3E00| db $70, $70 : dw $1000 : db $00, $F6, $6A, $B8, $03 ; 00 - Fwoosh
|1A9C0D:3E09| db $70, $70 : dw $1000 : db $01, $8E, $E0, $B8, $02 ; 01 - Swish
|1A9C16:3E12| db $70, $70 : dw $1000 : db $14, $FE, $6A, $B8, $02 ; 02 - Bomp
|1A9C1F:3E1B| db $70, $70 : dw $1000 : db $03, $FE, $F8, $B8, $0D ; 03 - Ting
|1A9C28:3E24| db $70, $70 : dw $1000 : db $04, $FE, $6A, $7F, $03 ; 04 - Rrrrr
|1A9C31:3E2D| db $70, $70 : dw $1000 : db $02, $FE, $6A, $7F, $03 ; 05 - Clunk
|1A9C3A:3E36| db $70, $70 : dw $1000 : db $05, $FE, $6A, $70, $03 ; 06 - Ching
|1A9C43:3E3F| db $70, $70 : dw $1000 : db $06, $FE, $6A, $70, $03 ; 07 - Fwomp
|1A9C4C:3E48| db $70, $70 : dw $1000 : db $08, $FA, $6A, $70, $03 ; 08 - Squee
|1A9C55:3E51| db $70, $70 : dw $1000 : db $06, $FE, $6A, $70, $01 ; 09 - Unused
|1A9C5E:3E5A| db $70, $70 : dw $1000 : db $07, $FE, $6A, $70, $05 ; 0A - Bzzzrt
|1A9C67:3E63| db $70, $70 : dw $1000 : db $0B, $FE, $6A, $B8, $03 ; 0B - Brrfft
|1A9C70:3E6C| db $70, $70 : dw $1000 : db $0C, $FE, $E0, $B8, $02 ; 0C - Brrwwww
|1A9C79:3E75| db $70, $70 : dw $1000 : db $0D, $F9, $6E, $B8, $03 ; 0D - Twee
|1A9C82:3E7E| db $70, $70 : dw $1000 : db $0E, $FE, $F5, $B8, $07 ; 0E - Pwing
|1A9C8B:3E87| db $70, $70 : dw $1000 : db $0F, $FE, $F5, $B8, $06 ; 0F - Pling
|1A9C94:3E90| db $70, $70 : dw $1000 : db $01, $FE, $FC, $B8, $03 ; 10 - Chshtsh
|1A9C9D:3E99| db $70, $70 : dw $1000 : db $10, $8E, $E0, $B8, $03 ; 11 - Splssh
|1A9CA6:3EA2| db $70, $70 : dw $1000 : db $08, $8E, $E0, $B8, $02 ; 12 - Weewoo
|1A9CAF:3EAB| db $70, $70 : dw $1000 : db $14, $8E, $E0, $B8, $02 ; 13 - Brbrbrb
|1A9CB8:3EB4| db $70, $70 : dw $1000 : db $0A, $88, $E0, $B8, $02 ; 14 - Bwow
|1A9CC1:3EBD| db $70, $70 : dw $1000 : db $17, $8E, $E0, $B8, $02 ; 15 - Uughf
|1A9CCA:3EC6| db $70, $70 : dw $1000 : db $15, $FF, $E0, $B8, $04 ; 16 - Aaaaaa
|1A9CD3:3ECF| db $70, $70 : dw $1000 : db $03, $DF, $11, $B8, $0F ; 17 - Twing
|1A9CDC:3ED8| db $70, $70 : dw $1000 : db $01, $88, $E0, $B8, $01 ; 18 - Whooo

site *

;===================================================================================================

Fairy_Theme:
|1A9CE5| dw $020C, $2880 ; Transfer size, transfer address

site $2880

Song0B_FairyTheme:
|1A9CE9:2880| dw Song0B_Segment0

Song0B_Loop:
|1A9CEB:2882| dw Song0B_Segment1
|1A9CED:2884| dw Song0B_Segment2
|1A9CEF:2886| dw $00FF, Song0B_Loop ; Loop point
|1A9CF3:288A| dw $0000

Song0B_Segment1:
|1A9CF5:288C| dw Song0B_Segment1_Track0
|1A9CF7:288E| dw Song0B_Segment1_Track1
|1A9CF9:2890| dw Song0B_Segment1_Track2
|1A9CFB:2892| dw Song0B_Segment1_Track3
|1A9CFD:2894| dw Song0B_Segment1_Track4
|1A9CFF:2896| dw Song0B_Segment1_Track5
|1A9D01:2898| dw Song0B_Segment1_Track6
|1A9D03:289A| dw $0000

Song0B_Segment2:
|1A9D05:289C| dw Song0B_Segment2_Track0
|1A9D07:289E| dw Song0B_Segment2_Track1
|1A9D09:28A0| dw Song0B_Segment2_Track2
|1A9D0B:28A2| dw Song0B_Segment2_Track3
|1A9D0D:28A4| dw Song0B_Segment2_Track4
|1A9D0F:28A6| dw Song0B_Segment2_Track5
|1A9D11:28A8| dw Song0B_Segment2_Track6
|1A9D13:28AA| dw $0000

Song0B_Segment0:
|1A9D15:28AC| dw Song0B_Segment0_Track0
|1A9D17:28AE| dw $0000
|1A9D19:28B0| dw $0000
|1A9D1B:28B2| dw $0000
|1A9D1D:28B4| dw $0000
|1A9D1F:28B6| dw $0000
|1A9D21:28B8| dw $0000
|1A9D23:28BA| dw $0000

;===================================================================================================

Song0B_Segment1_Track0:
|1A9D25:28BC| db $E0, $0F ; set instrument - harp
|1A9D27:28BE| db $ED, $8C ; set channel volume
|1A9D29:28C0| db $E1, $02 ; set panning - leaning right
|1A9D2B:28C2| db $30, $7D ; duration, params
|1A9D2D:28C4| db $BA ; play note A#5
|1A9D2E:28C5| db $B8 ; play note G#5
|1A9D2F:28C6| db $B7 ; play note G5
|1A9D30:28C7| db $B8 ; play note G#5
|1A9D31:28C8| db $B8 ; play note G#5
|1A9D32:28C9| db $B6 ; play note F#5
|1A9D33:28CA| db $B5 ; play note F5
|1A9D34:28CB| db $B6 ; play note F#5
|1A9D35:28CC| db $B6 ; play note F#5
|1A9D36:28CD| db $B5 ; play note F5
|1A9D37:28CE| db $B4 ; play note E5
|1A9D38:28CF| db $B5 ; play note F5
|1A9D39:28D0| db $B5 ; play note F5
|1A9D3A:28D1| db $B3 ; play note D#5
|1A9D3B:28D2| db $B2 ; play note D5
|1A9D3C:28D3| db $B3 ; play note D#5
|1A9D3D:28D4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0B_Segment1_Track1:
|1A9D3E:28D5| db $E0, $0F ; set instrument - harp
|1A9D40:28D7| db $ED, $8C ; set channel volume
|1A9D42:28D9| db $E1, $04 ; set panning - leaning right
|1A9D44:28DB| db $0C ; duration
|1A9D45:28DC| db $C9 ; rest
|1A9D46:28DD| db $30, $7D ; duration, params
|1A9D48:28DF| db $B3 ; play note D#5
|1A9D49:28E0| db $B3 ; play note D#5
|1A9D4A:28E1| db $B3 ; play note D#5
|1A9D4B:28E2| db $B3 ; play note D#5
|1A9D4C:28E3| db $B1 ; play note C#5
|1A9D4D:28E4| db $B1 ; play note C#5
|1A9D4E:28E5| db $B1 ; play note C#5
|1A9D4F:28E6| db $B1 ; play note C#5
|1A9D50:28E7| db $AF ; play note B4
|1A9D51:28E8| db $AF ; play note B4
|1A9D52:28E9| db $AF ; play note B4
|1A9D53:28EA| db $AF ; play note B4
|1A9D54:28EB| db $AE ; play note A#4
|1A9D55:28EC| db $AE ; play note A#4
|1A9D56:28ED| db $AE ; play note A#4
|1A9D57:28EE| db $24 ; duration
|1A9D58:28EF| db $AE ; play note A#4

;---------------------------------------------------------------------------------------------------

Song0B_Segment1_Track2:
|1A9D59:28F0| db $E0, $0F ; set instrument - harp
|1A9D5B:28F2| db $ED, $8C ; set channel volume
|1A9D5D:28F4| db $E1, $06 ; set panning - leaning right
|1A9D5F:28F6| db $18 ; duration
|1A9D60:28F7| db $C9 ; rest
|1A9D61:28F8| db $30, $7D ; duration, params
|1A9D63:28FA| db $AF ; play note B4
|1A9D64:28FB| db $AF ; play note B4
|1A9D65:28FC| db $AF ; play note B4
|1A9D66:28FD| db $AF ; play note B4
|1A9D67:28FE| db $AE ; play note A#4
|1A9D68:28FF| db $AE ; play note A#4
|1A9D69:2900| db $AE ; play note A#4
|1A9D6A:2901| db $AE ; play note A#4
|1A9D6B:2902| db $AC ; play note G#4
|1A9D6C:2903| db $AC ; play note G#4
|1A9D6D:2904| db $AC ; play note G#4
|1A9D6E:2905| db $AC ; play note G#4
|1A9D6F:2906| db $AA ; play note F#4
|1A9D70:2907| db $AA ; play note F#4
|1A9D71:2908| db $AA ; play note F#4
|1A9D72:2909| db $18 ; duration
|1A9D73:290A| db $AA ; play note F#4

;---------------------------------------------------------------------------------------------------

Song0B_Segment1_Track3:
|1A9D74:290B| db $E0, $0F ; set instrument - harp
|1A9D76:290D| db $ED, $8C ; set channel volume
|1A9D78:290F| db $E1, $08 ; set panning - leaning right
|1A9D7A:2911| db $24 ; duration
|1A9D7B:2912| db $C9 ; rest
|1A9D7C:2913| db $30, $7D ; duration, params
|1A9D7E:2915| db $AC ; play note G#4
|1A9D7F:2916| db $AC ; play note G#4
|1A9D80:2917| db $AC ; play note G#4
|1A9D81:2918| db $AC ; play note G#4
|1A9D82:2919| db $AA ; play note F#4
|1A9D83:291A| db $AA ; play note F#4
|1A9D84:291B| db $AA ; play note F#4
|1A9D85:291C| db $AA ; play note F#4
|1A9D86:291D| db $A9 ; play note F4
|1A9D87:291E| db $A9 ; play note F4
|1A9D88:291F| db $A9 ; play note F4
|1A9D89:2920| db $A9 ; play note F4
|1A9D8A:2921| db $A7 ; play note D#4
|1A9D8B:2922| db $A7 ; play note D#4
|1A9D8C:2923| db $A7 ; play note D#4
|1A9D8D:2924| db $0C ; duration
|1A9D8E:2925| db $A7 ; play note D#4

;---------------------------------------------------------------------------------------------------

Song0B_Segment1_Track4:
|1A9D8F:2926| db $E0, $0F ; set instrument - harp
|1A9D91:2928| db $ED, $C8 ; set channel volume
|1A9D93:292A| db $E1, $0A ; set panning - balanced
|1A9D95:292C| db $24, $7D ; duration, params
|1A9D97:292E| db $8B ; play note B1
|1A9D98:292F| db $48 ; duration
|1A9D99:2930| db $A2 ; play note A#3
|1A9D9A:2931| db $24 ; duration
|1A9D9B:2932| db $9B ; play note D#3
|1A9D9C:2933| db $A5 ; play note C#4
|1A9D9D:2934| db $0C ; duration
|1A9D9E:2935| db $9B ; play note D#3
|1A9D9F:2936| db $24 ; duration
|1A9DA0:2937| db $8A ; play note A#1
|1A9DA1:2938| db $48 ; duration
|1A9DA2:2939| db $A0 ; play note G#3
|1A9DA3:293A| db $24 ; duration
|1A9DA4:293B| db $8A ; play note A#1
|1A9DA5:293C| db $A5 ; play note C#4
|1A9DA6:293D| db $0C ; duration
|1A9DA7:293E| db $99 ; play note C#3
|1A9DA8:293F| db $24 ; duration
|1A9DA9:2940| db $88 ; play note G#1
|1A9DAA:2941| db $3C ; duration
|1A9DAB:2942| db $9E ; play note F#3
|1A9DAC:2943| db $24 ; duration
|1A9DAD:2944| db $88 ; play note G#1
|1A9DAE:2945| db $9D ; play note F3
|1A9DAF:2946| db $18 ; duration
|1A9DB0:2947| db $99 ; play note C#3
|1A9DB1:2948| db $24 ; duration
|1A9DB2:2949| db $86 ; play note F#1
|1A9DB3:294A| db $3C ; duration
|1A9DB4:294B| db $9D ; play note F3
|1A9DB5:294C| db $24 ; duration
|1A9DB6:294D| db $86 ; play note F#1
|1A9DB7:294E| db $9B ; play note D#3
|1A9DB8:294F| db $18 ; duration
|1A9DB9:2950| db $A5 ; play note C#4

;---------------------------------------------------------------------------------------------------

Song0B_Segment1_Track5:
|1A9DBA:2951| db $E0, $0F ; set instrument - harp
|1A9DBC:2953| db $ED, $C8 ; set channel volume
|1A9DBE:2955| db $E1, $0E ; set panning - leaning left
|1A9DC0:2957| db $0C ; duration
|1A9DC1:2958| db $C9 ; rest
|1A9DC2:2959| db $60, $7D ; duration, params
|1A9DC4:295B| db $97 ; play note B2
|1A9DC5:295C| db $0C ; duration
|1A9DC6:295D| db $C8 ; sustain current note
|1A9DC7:295E| db $24 ; duration
|1A9DC8:295F| db $A2 ; play note A#3
|1A9DC9:2960| db $A2 ; play note A#3
|1A9DCA:2961| db $0C ; duration
|1A9DCB:2962| db $C8 ; sustain current note
|1A9DCC:2963| db $60 ; duration
|1A9DCD:2964| db $96 ; play note A#2
|1A9DCE:2965| db $0C ; duration
|1A9DCF:2966| db $C8 ; sustain current note
|1A9DD0:2967| db $24 ; duration
|1A9DD1:2968| db $A0 ; play note G#3
|1A9DD2:2969| db $A0 ; play note G#3
|1A9DD3:296A| db $0C ; duration
|1A9DD4:296B| db $C8 ; sustain current note
|1A9DD5:296C| db $54 ; duration
|1A9DD6:296D| db $94 ; play note G#2
|1A9DD7:296E| db $0C ; duration
|1A9DD8:296F| db $C8 ; sustain current note
|1A9DD9:2970| db $24 ; duration
|1A9DDA:2971| db $94 ; play note G#2
|1A9DDB:2972| db $A0 ; play note G#3
|1A9DDC:2973| db $0C ; duration
|1A9DDD:2974| db $97 ; play note B2
|1A9DDE:2975| db $C8 ; sustain current note
|1A9DDF:2976| db $54 ; duration
|1A9DE0:2977| db $92 ; play note F#2
|1A9DE1:2978| db $0C ; duration
|1A9DE2:2979| db $C8 ; sustain current note
|1A9DE3:297A| db $24 ; duration
|1A9DE4:297B| db $92 ; play note F#2
|1A9DE5:297C| db $A0 ; play note G#3
|1A9DE6:297D| db $0C ; duration
|1A9DE7:297E| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song0B_Segment1_Track6:
|1A9DE8:297F| db $E0, $0F ; set instrument - harp
|1A9DEA:2981| db $ED, $C8 ; set channel volume
|1A9DEC:2983| db $E1, $12 ; set panning - leaning left
|1A9DEE:2985| db $18 ; duration
|1A9DEF:2986| db $C9 ; rest
|1A9DF0:2987| db $54, $7D ; duration, params
|1A9DF2:2989| db $9B ; play note D#3
|1A9DF3:298A| db $18 ; duration
|1A9DF4:298B| db $C8 ; sustain current note
|1A9DF5:298C| db $24 ; duration
|1A9DF6:298D| db $A0 ; play note G#3
|1A9DF7:298E| db $18 ; duration
|1A9DF8:298F| db $A0 ; play note G#3
|1A9DF9:2990| db $C8 ; sustain current note
|1A9DFA:2991| db $54 ; duration
|1A9DFB:2992| db $99 ; play note C#3
|1A9DFC:2993| db $18 ; duration
|1A9DFD:2994| db $C8 ; sustain current note
|1A9DFE:2995| db $24 ; duration
|1A9DFF:2996| db $9E ; play note F#3
|1A9E00:2997| db $18 ; duration
|1A9E01:2998| db $9E ; play note F#3
|1A9E02:2999| db $C8 ; sustain current note
|1A9E03:299A| db $48 ; duration
|1A9E04:299B| db $97 ; play note B2
|1A9E05:299C| db $18 ; duration
|1A9E06:299D| db $C8 ; sustain current note
|1A9E07:299E| db $24 ; duration
|1A9E08:299F| db $9E ; play note F#3
|1A9E09:29A0| db $9D ; play note F3
|1A9E0A:29A1| db $18 ; duration
|1A9E0B:29A2| db $C8 ; sustain current note
|1A9E0C:29A3| db $48 ; duration
|1A9E0D:29A4| db $96 ; play note A#2
|1A9E0E:29A5| db $18 ; duration
|1A9E0F:29A6| db $C8 ; sustain current note
|1A9E10:29A7| db $24 ; duration
|1A9E11:29A8| db $9D ; play note F3
|1A9E12:29A9| db $9E ; play note F#3

;---------------------------------------------------------------------------------------------------

Song0B_Segment2_Track0:
|1A9E13:29AA| db $30, $7D ; duration, params
|1A9E15:29AC| db $BA ; play note A#5
|1A9E16:29AD| db $B8 ; play note G#5
|1A9E17:29AE| db $B7 ; play note G5
|1A9E18:29AF| db $B8 ; play note G#5
|1A9E19:29B0| db $BB ; play note B5
|1A9E1A:29B1| db $BA ; play note A#5
|1A9E1B:29B2| db $B9 ; play note A5
|1A9E1C:29B3| db $BA ; play note A#5
|1A9E1D:29B4| db $BD ; play note C#6
|1A9E1E:29B5| db $BB ; play note B5
|1A9E1F:29B6| db $BA ; play note A#5
|1A9E20:29B7| db $BB ; play note B5
|1A9E21:29B8| db $BA ; play note A#5
|1A9E22:29B9| db $B8 ; play note G#5
|1A9E23:29BA| db $B6 ; play note F#5
|1A9E24:29BB| db $B5 ; play note F5
|1A9E25:29BC| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0B_Segment2_Track1:
|1A9E26:29BD| db $0C ; duration
|1A9E27:29BE| db $C9 ; rest
|1A9E28:29BF| db $30, $7D ; duration, params
|1A9E2A:29C1| db $B3 ; play note D#5
|1A9E2B:29C2| db $B3 ; play note D#5
|1A9E2C:29C3| db $B3 ; play note D#5
|1A9E2D:29C4| db $B3 ; play note D#5
|1A9E2E:29C5| db $B4 ; play note E5
|1A9E2F:29C6| db $B4 ; play note E5
|1A9E30:29C7| db $B4 ; play note E5
|1A9E31:29C8| db $B4 ; play note E5
|1A9E32:29C9| db $B3 ; play note D#5
|1A9E33:29CA| db $B3 ; play note D#5
|1A9E34:29CB| db $B3 ; play note D#5
|1A9E35:29CC| db $B3 ; play note D#5
|1A9E36:29CD| db $AF ; play note B4
|1A9E37:29CE| db $AF ; play note B4
|1A9E38:29CF| db $AF ; play note B4
|1A9E39:29D0| db $24 ; duration
|1A9E3A:29D1| db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song0B_Segment2_Track2:
|1A9E3B:29D2| db $18 ; duration
|1A9E3C:29D3| db $C9 ; rest
|1A9E3D:29D4| db $30, $7D ; duration, params
|1A9E3F:29D6| db $AF ; play note B4
|1A9E40:29D7| db $AF ; play note B4
|1A9E41:29D8| db $AF ; play note B4
|1A9E42:29D9| db $AF ; play note B4
|1A9E43:29DA| db $B1 ; play note C#5
|1A9E44:29DB| db $B1 ; play note C#5
|1A9E45:29DC| db $B1 ; play note C#5
|1A9E46:29DD| db $B1 ; play note C#5
|1A9E47:29DE| db $AF ; play note B4
|1A9E48:29DF| db $AF ; play note B4
|1A9E49:29E0| db $AF ; play note B4
|1A9E4A:29E1| db $AF ; play note B4
|1A9E4B:29E2| db $AC ; play note G#4
|1A9E4C:29E3| db $AC ; play note G#4
|1A9E4D:29E4| db $AC ; play note G#4
|1A9E4E:29E5| db $18 ; duration
|1A9E4F:29E6| db $AC ; play note G#4

;---------------------------------------------------------------------------------------------------

Song0B_Segment2_Track3:
|1A9E50:29E7| db $24 ; duration
|1A9E51:29E8| db $C9 ; rest
|1A9E52:29E9| db $30, $7D ; duration, params
|1A9E54:29EB| db $AC ; play note G#4
|1A9E55:29EC| db $AC ; play note G#4
|1A9E56:29ED| db $AC ; play note G#4
|1A9E57:29EE| db $AC ; play note G#4
|1A9E58:29EF| db $AB ; play note G4
|1A9E59:29F0| db $AB ; play note G4
|1A9E5A:29F1| db $AB ; play note G4
|1A9E5B:29F2| db $AB ; play note G4
|1A9E5C:29F3| db $AC ; play note G#4
|1A9E5D:29F4| db $AC ; play note G#4
|1A9E5E:29F5| db $AC ; play note G#4
|1A9E5F:29F6| db $AC ; play note G#4
|1A9E60:29F7| db $A9 ; play note F4
|1A9E61:29F8| db $A9 ; play note F4
|1A9E62:29F9| db $A9 ; play note F4
|1A9E63:29FA| db $0C ; duration
|1A9E64:29FB| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song0B_Segment2_Track4:
|1A9E65:29FC| db $24, $7D ; duration, params
|1A9E67:29FE| db $8B ; play note B1
|1A9E68:29FF| db $3C ; duration
|1A9E69:2A00| db $A2 ; play note A#3
|1A9E6A:2A01| db $24 ; duration
|1A9E6B:2A02| db $8B ; play note B1
|1A9E6C:2A03| db $A0 ; play note G#3
|1A9E6D:2A04| db $18 ; duration
|1A9E6E:2A05| db $A0 ; play note G#3
|1A9E6F:2A06| db $24 ; duration
|1A9E70:2A07| db $8A ; play note A#1
|1A9E71:2A08| db $3C ; duration
|1A9E72:2A09| db $A5 ; play note C#4
|1A9E73:2A0A| db $24 ; duration
|1A9E74:2A0B| db $8F ; play note D#2
|1A9E75:2A0C| db $A2 ; play note A#3
|1A9E76:2A0D| db $18 ; duration
|1A9E77:2A0E| db $A5 ; play note C#4
|1A9E78:2A0F| db $24 ; duration
|1A9E79:2A10| db $88 ; play note G#1
|1A9E7A:2A11| db $3C ; duration
|1A9E7B:2A12| db $A3 ; play note B3
|1A9E7C:2A13| db $24 ; duration
|1A9E7D:2A14| db $88 ; play note G#1
|1A9E7E:2A15| db $A2 ; play note A#3
|1A9E7F:2A16| db $18 ; duration
|1A9E80:2A17| db $A0 ; play note G#3
|1A9E81:2A18| db $24 ; duration
|1A9E82:2A19| db $8D ; play note C#2
|1A9E83:2A1A| db $3C ; duration
|1A9E84:2A1B| db $A3 ; play note B3
|1A9E85:2A1C| db $24 ; duration
|1A9E86:2A1D| db $8D ; play note C#2
|1A9E87:2A1E| db $A0 ; play note G#3
|1A9E88:2A1F| db $18 ; duration
|1A9E89:2A20| db $AC ; play note G#4

;---------------------------------------------------------------------------------------------------

Song0B_Segment2_Track5:
|1A9E8A:2A21| db $0C ; duration
|1A9E8B:2A22| db $C9 ; rest
|1A9E8C:2A23| db $54, $7D ; duration, params
|1A9E8E:2A25| db $97 ; play note B2
|1A9E8F:2A26| db $0C ; duration
|1A9E90:2A27| db $C8 ; sustain current note
|1A9E91:2A28| db $24 ; duration
|1A9E92:2A29| db $97 ; play note B2
|1A9E93:2A2A| db $A7 ; play note D#4
|1A9E94:2A2B| db $0C ; duration
|1A9E95:2A2C| db $9B ; play note D#3
|1A9E96:2A2D| db $C8 ; sustain current note
|1A9E97:2A2E| db $54 ; duration
|1A9E98:2A2F| db $96 ; play note A#2
|1A9E99:2A30| db $0C ; duration
|1A9E9A:2A31| db $C8 ; sustain current note
|1A9E9B:2A32| db $24 ; duration
|1A9E9C:2A33| db $9B ; play note D#3
|1A9E9D:2A34| db $A8 ; play note E4
|1A9E9E:2A35| db $0C ; duration
|1A9E9F:2A36| db $A2 ; play note A#3
|1A9EA0:2A37| db $C8 ; sustain current note
|1A9EA1:2A38| db $54 ; duration
|1A9EA2:2A39| db $94 ; play note G#2
|1A9EA3:2A3A| db $0C ; duration
|1A9EA4:2A3B| db $C8 ; sustain current note
|1A9EA5:2A3C| db $24 ; duration
|1A9EA6:2A3D| db $94 ; play note G#2
|1A9EA7:2A3E| db $A5 ; play note C#4
|1A9EA8:2A3F| db $0C ; duration
|1A9EA9:2A40| db $9B ; play note D#3
|1A9EAA:2A41| db $C8 ; sustain current note
|1A9EAB:2A42| db $54 ; duration
|1A9EAC:2A43| db $99 ; play note C#3
|1A9EAD:2A44| db $0C ; duration
|1A9EAE:2A45| db $C8 ; sustain current note
|1A9EAF:2A46| db $24 ; duration
|1A9EB0:2A47| db $99 ; play note C#3
|1A9EB1:2A48| db $A9 ; play note F4
|1A9EB2:2A49| db $0C ; duration
|1A9EB3:2A4A| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song0B_Segment2_Track6:
|1A9EB4:2A4B| db $18 ; duration
|1A9EB5:2A4C| db $C9 ; rest
|1A9EB6:2A4D| db $48, $7D ; duration, params
|1A9EB8:2A4F| db $9B ; play note D#3
|1A9EB9:2A50| db $18 ; duration
|1A9EBA:2A51| db $C8 ; sustain current note
|1A9EBB:2A52| db $24 ; duration
|1A9EBC:2A53| db $A2 ; play note A#3
|1A9EBD:2A54| db $A2 ; play note A#3
|1A9EBE:2A55| db $18 ; duration
|1A9EBF:2A56| db $C8 ; sustain current note
|1A9EC0:2A57| db $48 ; duration
|1A9EC1:2A58| db $99 ; play note C#3
|1A9EC2:2A59| db $18 ; duration
|1A9EC3:2A5A| db $C8 ; sustain current note
|1A9EC4:2A5B| db $24 ; duration
|1A9EC5:2A5C| db $A5 ; play note C#4
|1A9EC6:2A5D| db $A7 ; play note D#4
|1A9EC7:2A5E| db $18 ; duration
|1A9EC8:2A5F| db $C8 ; sustain current note
|1A9EC9:2A60| db $48 ; duration
|1A9ECA:2A61| db $9B ; play note D#3
|1A9ECB:2A62| db $18 ; duration
|1A9ECC:2A63| db $C8 ; sustain current note
|1A9ECD:2A64| db $24 ; duration
|1A9ECE:2A65| db $A3 ; play note B3
|1A9ECF:2A66| db $A3 ; play note B3
|1A9ED0:2A67| db $18 ; duration
|1A9ED1:2A68| db $C8 ; sustain current note
|1A9ED2:2A69| db $48 ; duration
|1A9ED3:2A6A| db $A0 ; play note G#3
|1A9ED4:2A6B| db $18 ; duration
|1A9ED5:2A6C| db $C8 ; sustain current note
|1A9ED6:2A6D| db $24 ; duration
|1A9ED7:2A6E| db $A3 ; play note B3
|1A9ED8:2A6F| db $A7 ; play note D#4

;---------------------------------------------------------------------------------------------------

Song0B_Segment0_Track0:
|1A9ED9:2A70| db $FA, $19 ; set base percussion sample
|1A9EDB:2A72| db $E5, $B4 ; set song volume
|1A9EDD:2A74| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1A9EE1:2A78| db $F7, $02, $50, $02 ; configure EDL, EFB, FIR
|1A9EE5:2A7C| db $F8, $28, $28, $28 ; initiate gradual echo volume change
|1A9EE9:2A80| db $E7, $21 ; set song tempo
|1A9EEB:2A82| db $E0, $0F ; set instrument - harp
|1A9EED:2A84| db $ED, $8C ; set channel volume
|1A9EEF:2A86| db $E1, $02 ; set panning - leaning right
|1A9EF1:2A88| db $18 ; duration
|1A9EF2:2A89| db $C9 ; rest
|1A9EF3:2A8A| db $00 ; End
|1A9EF4:2A8B| db $00

site *

;===================================================================================================

SongBank_Overworld_Main:
|1A9EF5| dw $2DAE, SONG_POINTERS ; Transfer size, transfer address

site SONG_POINTERS
|1A9EF9:D000| dw Song01_TriforceIntro
|1A9EFB:D002| dw Song02_LightWorldOverture
|1A9EFD:D004| dw Song03_Rain
|1A9EFF:D006| dw Song04_BunnyTheme
|1A9F01:D008| dw Song05_LostWoods
|1A9F03:D00A| dw Song06_LegendsTheme_Attract
|1A9F05:D00C| dw Song07_KakarikoVillage
|1A9F07:D00E| dw Song08_MirrorWarp
|1A9F09:D010| dw Song09_DarkWorld
|1A9F0B:D012| dw Song0A_PullingTheMasterSword
|1A9F0D:D014| dw Song0B_FairyTheme
|1A9F0F:D016| dw Song0C_Fugitive
|1A9F11:D018| dw Song0D_SkullWoodsMarch
|1A9F13:D01A| dw Song0E_MinigameTheme
|1A9F15:D01C| dw Song0F_IntroFanfare
|1A9F17:D01E| dw $0000
|1A9F19:D020| dw $0000
|1A9F1B:D022| dw $0000
|1A9F1D:D024| dw $0000
|1A9F1F:D026| dw $0000
|1A9F21:D028| dw $0000
|1A9F23:D02A| dw $0000
|1A9F25:D02C| dw $0000
|1A9F27:D02E| dw $0000
|1A9F29:D030| dw $0000
|1A9F2B:D032| dw $0000
|1A9F2D:D034| dw $0000

;===================================================================================================

Song01_TriforceIntro:
|1A9F2F:D036| dw Song01_Segment0
|1A9F31:D038| dw Song01_Segment1
|1A9F33:D03A| dw $0000 ; Song end

Song01_Segment0:
|1A9F35:D03C| dw Song01_Segment0_Track0
|1A9F37:D03E| dw Song01_Segment0_Track1
|1A9F39:D040| dw Song01_Segment0_Track2
|1A9F3B:D042| dw Song01_Segment0_Track3
|1A9F3D:D044| dw Song01_Segment0_Track4
|1A9F3F:D046| dw $0000
|1A9F41:D048| dw $0000
|1A9F43:D04A| dw $0000

;---------------------------------------------------------------------------------------------------

Song01_Segment0_Track0:
|1A9F45:D04C| db $FA, $19 ; set base percussion sample
|1A9F47:D04E| db $E5, $C8 ; set song volume
|1A9F49:D050| db $E7, $1D ; set song tempo
|1A9F4B:D052| db $E8, $8C, $29 ; initiate gradual tempo change
|1A9F4E:D055| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1A9F52:D059| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1A9F56:D05D| db $F8, $28, $78, $78 ; initiate gradual echo volume change
|1A9F5A:D061| db $E0, $0F ; set instrument - harp
|1A9F5C:D063| db $ED, $C8 ; set channel volume
|1A9F5E:D065| db $06 ; duration
|1A9F5F:D066| db $C9 ; rest
|1A9F60:D067| db $06, $7D ; duration, params
|1A9F62:D069| db $B1 ; play note C#5
|1A9F63:D06A| db $AE ; play note A#4
|1A9F64:D06B| db $AB ; play note G4
|1A9F65:D06C| db $0C ; duration
|1A9F66:D06D| db $C8 ; sustain current note
|1A9F67:D06E| db $06 ; duration
|1A9F68:D06F| db $AE ; play note A#4
|1A9F69:D070| db $AB ; play note G4
|1A9F6A:D071| db $A9 ; play note F4
|1A9F6B:D072| db $0C ; duration
|1A9F6C:D073| db $C8 ; sustain current note
|1A9F6D:D074| db $06 ; duration
|1A9F6E:D075| db $AB ; play note G4
|1A9F6F:D076| db $A9 ; play note F4
|1A9F70:D077| db $A7 ; play note D#4
|1A9F71:D078| db $0C ; duration
|1A9F72:D079| db $C8 ; sustain current note
|1A9F73:D07A| db $06 ; duration
|1A9F74:D07B| db $A9 ; play note F4
|1A9F75:D07C| db $A7 ; play note D#4
|1A9F76:D07D| db $A5 ; play note C#4
|1A9F77:D07E| db $0C ; duration
|1A9F78:D07F| db $C8 ; sustain current note
|1A9F79:D080| db $06 ; duration
|1A9F7A:D081| db $A7 ; play note D#4
|1A9F7B:D082| db $A5 ; play note C#4
|1A9F7C:D083| db $A2 ; play note A#3
|1A9F7D:D084| db $0C ; duration
|1A9F7E:D085| db $C8 ; sustain current note
|1A9F7F:D086| db $06 ; duration
|1A9F80:D087| db $A5 ; play note C#4
|1A9F81:D088| db $A2 ; play note A#3
|1A9F82:D089| db $9F ; play note G3
|1A9F83:D08A| db $0C ; duration
|1A9F84:D08B| db $C8 ; sustain current note
|1A9F85:D08C| db $06 ; duration
|1A9F86:D08D| db $A2 ; play note A#3
|1A9F87:D08E| db $E8, $78, $17 ; initiate gradual tempo change
|1A9F8A:D091| db $9F ; play note G3
|1A9F8B:D092| db $9D ; play note F3
|1A9F8C:D093| db $0C ; duration
|1A9F8D:D094| db $C8 ; sustain current note
|1A9F8E:D095| db $06 ; duration
|1A9F8F:D096| db $9F ; play note G3
|1A9F90:D097| db $9D ; play note F3
|1A9F91:D098| db $9B ; play note D#3
|1A9F92:D099| db $C8 ; sustain current note
|1A9F93:D09A| db $1E ; duration
|1A9F94:D09B| db $96 ; play note A#2
|1A9F95:D09C| db $12 ; duration
|1A9F96:D09D| db $A5 ; play note C#4
|1A9F97:D09E| db $0C ; duration
|1A9F98:D09F| db $C8 ; sustain current note
|1A9F99:D0A0| db $48 ; duration
|1A9F9A:D0A1| db $B5 ; play note F5
|1A9F9B:D0A2| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song01_Segment0_Track1:
|1A9F9C:D0A3| db $E0, $0F ; set instrument - harp
|1A9F9E:D0A5| db $ED, $C8 ; set channel volume
|1A9FA0:D0A7| db $1E, $7D ; duration, params
|1A9FA2:D0A9| db $B3 ; play note D#5
|1A9FA3:D0AA| db $B1 ; play note C#5
|1A9FA4:D0AB| db $AE ; play note A#4
|1A9FA5:D0AC| db $06 ; duration
|1A9FA6:D0AD| db $AB ; play note G4
|1A9FA7:D0AE| db $18 ; duration
|1A9FA8:D0AF| db $C8 ; sustain current note
|1A9FA9:D0B0| db $1E ; duration
|1A9FAA:D0B1| db $A9 ; play note F4
|1A9FAB:D0B2| db $A7 ; play note D#4
|1A9FAC:D0B3| db $0C ; duration
|1A9FAD:D0B4| db $A5 ; play note C#4
|1A9FAE:D0B5| db $12 ; duration
|1A9FAF:D0B6| db $C8 ; sustain current note
|1A9FB0:D0B7| db $24 ; duration
|1A9FB1:D0B8| db $A2 ; play note A#3
|1A9FB2:D0B9| db $1E ; duration
|1A9FB3:D0BA| db $93 ; play note G2
|1A9FB4:D0BB| db $0C ; duration
|1A9FB5:D0BC| db $A9 ; play note F4
|1A9FB6:D0BD| db $12 ; duration
|1A9FB7:D0BE| db $C8 ; sustain current note
|1A9FB8:D0BF| db $42 ; duration
|1A9FB9:D0C0| db $B7 ; play note G5

;---------------------------------------------------------------------------------------------------

Song01_Segment0_Track2:
|1A9FBA:D0C1| db $E0, $0F ; set instrument - harp
|1A9FBC:D0C3| db $ED, $C8 ; set channel volume
|1A9FBE:D0C5| db $18 ; duration
|1A9FBF:D0C6| db $C9 ; rest
|1A9FC0:D0C7| db $1E, $7D ; duration, params
|1A9FC2:D0C9| db $A9 ; play note F4
|1A9FC3:D0CA| db $A7 ; play note D#4
|1A9FC4:D0CB| db $0C ; duration
|1A9FC5:D0CC| db $A5 ; play note C#4
|1A9FC6:D0CD| db $12 ; duration
|1A9FC7:D0CE| db $C8 ; sustain current note
|1A9FC8:D0CF| db $1E ; duration
|1A9FC9:D0D0| db $A2 ; play note A#3
|1A9FCA:D0D1| db $9F ; play note G3
|1A9FCB:D0D2| db $12 ; duration
|1A9FCC:D0D3| db $9D ; play note F3
|1A9FCD:D0D4| db $0C ; duration
|1A9FCE:D0D5| db $C8 ; sustain current note
|1A9FCF:D0D6| db $1E ; duration
|1A9FD0:D0D7| db $9B ; play note D#3
|1A9FD1:D0D8| db $12 ; duration
|1A9FD2:D0D9| db $99 ; play note C#3
|1A9FD3:D0DA| db $1E ; duration
|1A9FD4:D0DB| db $9D ; play note F3
|1A9FD5:D0DC| db $06 ; duration
|1A9FD6:D0DD| db $AB ; play note G4
|1A9FD7:D0DE| db $54 ; duration
|1A9FD8:D0DF| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song01_Segment0_Track3:
|1A9FD9:D0E0| db $E0, $0F ; set instrument - harp
|1A9FDB:D0E2| db $ED, $C8 ; set channel volume
|1A9FDD:D0E4| db $60 ; duration
|1A9FDE:D0E5| db $C9 ; rest
|1A9FDF:D0E6| db $C9 ; rest
|1A9FE0:D0E7| db $42 ; duration
|1A9FE1:D0E8| db $C9 ; rest
|1A9FE2:D0E9| db $1E, $7D ; duration, params
|1A9FE4:D0EB| db $9F ; play note G3
|1A9FE5:D0EC| db $54 ; duration
|1A9FE6:D0ED| db $AE ; play note A#4

;---------------------------------------------------------------------------------------------------

Song01_Segment0_Track4:
|1A9FE7:D0EE| db $E0, $0F ; set instrument - harp
|1A9FE9:D0F0| db $ED, $C8 ; set channel volume
|1A9FEB:D0F2| db $60 ; duration
|1A9FEC:D0F3| db $C9 ; rest
|1A9FED:D0F4| db $C9 ; rest
|1A9FEE:D0F5| db $48 ; duration
|1A9FEF:D0F6| db $C9 ; rest
|1A9FF0:D0F7| db $18, $7D ; duration, params
|1A9FF2:D0F9| db $A2 ; play note A#3
|1A9FF3:D0FA| db $06 ; duration
|1A9FF4:D0FB| db $C8 ; sustain current note
|1A9FF5:D0FC| db $4E ; duration
|1A9FF6:D0FD| db $B1 ; play note C#5
|1A9FF7:D0FE| db $00 ; End

;===================================================================================================

Song02_LightWorldOverture:
|1A9FF8:D0FF| dw Song02_Segment0

Song02_Loop:
|1A9FFA:D101| dw Song02_Segment1
|1A9FFC:D103| dw Song02_Segment2
|1A9FFE:D105| dw $00FF, Song02_Loop ; Loop point
|1AA002:D109| dw $0000

Song02_Segment0:
|1AA004:D10B| dw Song02_Segment0_Track0
|1AA006:D10D| dw Song02_Segment0_Track1
|1AA008:D10F| dw Song02_Segment0_Track2
|1AA00A:D111| dw Song02_Segment0_Track3
|1AA00C:D113| dw Song02_Segment0_Track4
|1AA00E:D115| dw Song02_Segment0_Track5
|1AA010:D117| dw Song02_Segment0_Track6
|1AA012:D119| dw Song02_Segment0_Track7

Song02_Segment1:
|1AA014:D11B| dw Song02_Segment1_Track0
|1AA016:D11D| dw Song02_Segment1_Track1
|1AA018:D11F| dw Song02_Segment1_Track2
|1AA01A:D121| dw Song02_Segment1_Track3
|1AA01C:D123| dw Song02_Segment1_Track4
|1AA01E:D125| dw Song02_Segment1_Track5
|1AA020:D127| dw $0000
|1AA022:D129| dw Song02_Segment1_Track7

Song02_Segment2:
|1AA024:D12B| dw Song02_Segment2_Track0
|1AA026:D12D| dw Song02_Segment2_Track1
|1AA028:D12F| dw Song02_Segment2_Track2
|1AA02A:D131| dw Song02_Segment2_Track3
|1AA02C:D133| dw Song02_Segment2_Track4
|1AA02E:D135| dw Song02_Segment2_Track5
|1AA030:D137| dw Song02_Segment2_Track6
|1AA032:D139| dw Song02_Segment2_Track7

;---------------------------------------------------------------------------------------------------

Song02_Segment0_Track0:
|1AA034:D13B| db $FA, $19 ; set base percussion sample
|1AA036:D13D| db $F5, $BB, $00, $00 ; configure EON, EVOLL, EVOLR
|1AA03A:D141| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1AA03E:D145| db $F8, $28, $00, $00 ; initiate gradual echo volume change
|1AA042:D149| db $E7, $1C ; set song tempo
|1AA044:D14B| db $E5, $A0 ; set song volume
|1AA046:D14D| db $ED, $FA ; set channel volume
|1AA048:D14F| db $E1, $0A ; set panning - balanced
|1AA04A:D151| db $E0, $0B ; set instrument - trombone
|1AA04C:D153| db $E3, $12, $1C, $26 ; enable vibrato
|1AA050:D157| db $E9, $00 ; set global transposition
|1AA052:D159| db $30, $5D ; duration, params
|1AA054:D15B| db $AE ; play note A#4
|1AA055:D15C| db $10 ; duration
|1AA056:D15D| db $C9 ; rest
|1AA057:D15E| db $04, $2D ; duration, params
|1AA059:D160| db $AE ; play note A#4
|1AA05A:D161| db $AE ; play note A#4
|1AA05B:D162| db $08, $2B ; duration, params
|1AA05D:D164| db $AE ; play note A#4
|1AA05E:D165| db $AE ; play note A#4
|1AA05F:D166| db $08, $2D ; duration, params
|1AA061:D168| db $AE ; play note A#4
|1AA062:D169| db $EF : dw Song02_Sub_D623 : db $02 ; call segment subroutine
|1AA066:D16D| db $0C, $3F ; duration, params
|1AA068:D16F| db $AE ; play note A#4
|1AA069:D170| db $06, $39 ; duration, params
|1AA06B:D172| db $A9 ; play note F4
|1AA06C:D173| db $06, $3B ; duration, params
|1AA06E:D175| db $A9 ; play note F4
|1AA06F:D176| db $0C, $5B ; duration, params
|1AA071:D178| db $A9 ; play note F4
|1AA072:D179| db $06, $3D ; duration, params
|1AA074:D17B| db $A9 ; play note F4
|1AA075:D17C| db $A9 ; play note F4
|1AA076:D17D| db $0C, $5F ; duration, params
|1AA078:D17F| db $A9 ; play note F4
|1AA079:D180| db $06, $4F ; duration, params
|1AA07B:D182| db $A9 ; play note F4
|1AA07C:D183| db $06, $3F ; duration, params
|1AA07E:D185| db $A9 ; play note F4
|1AA07F:D186| db $0C, $5F ; duration, params
|1AA081:D188| db $A9 ; play note F4
|1AA082:D189| db $A9 ; play note F4
|1AA083:D18A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Segment0_Track1:
|1AA084:D18B| db $ED, $FF ; set channel volume
|1AA086:D18D| db $E0, $11 ; set instrument - trumpet
|1AA088:D18F| db $E1, $0A ; set panning - balanced
|1AA08A:D191| db $E3, $08, $1E, $1E ; enable vibrato
|1AA08E:D195| db $18, $5D ; duration, params
|1AA090:D197| db $96 ; play note A#2
|1AA091:D198| db $08, $3B ; duration, params
|1AA093:D19A| db $96 ; play note A#2
|1AA094:D19B| db $96 ; play note A#2
|1AA095:D19C| db $96 ; play note A#2
|1AA096:D19D| db $18, $5D ; duration, params
|1AA098:D19F| db $96 ; play note A#2
|1AA099:D1A0| db $08, $3B ; duration, params
|1AA09B:D1A2| db $96 ; play note A#2
|1AA09C:D1A3| db $96 ; play note A#2
|1AA09D:D1A4| db $96 ; play note A#2
|1AA09E:D1A5| db $18, $5D ; duration, params
|1AA0A0:D1A7| db $94 ; play note G#2
|1AA0A1:D1A8| db $08, $3B ; duration, params
|1AA0A3:D1AA| db $94 ; play note G#2
|1AA0A4:D1AB| db $94 ; play note G#2
|1AA0A5:D1AC| db $94 ; play note G#2
|1AA0A6:D1AD| db $18, $5D ; duration, params
|1AA0A8:D1AF| db $94 ; play note G#2
|1AA0A9:D1B0| db $08, $3B ; duration, params
|1AA0AB:D1B2| db $94 ; play note G#2
|1AA0AC:D1B3| db $94 ; play note G#2
|1AA0AD:D1B4| db $94 ; play note G#2
|1AA0AE:D1B5| db $18, $5D ; duration, params
|1AA0B0:D1B7| db $92 ; play note F#2
|1AA0B1:D1B8| db $08, $3B ; duration, params
|1AA0B3:D1BA| db $92 ; play note F#2
|1AA0B4:D1BB| db $92 ; play note F#2
|1AA0B5:D1BC| db $92 ; play note F#2
|1AA0B6:D1BD| db $18, $5D ; duration, params
|1AA0B8:D1BF| db $92 ; play note F#2
|1AA0B9:D1C0| db $08, $3B ; duration, params
|1AA0BB:D1C2| db $92 ; play note F#2
|1AA0BC:D1C3| db $92 ; play note F#2
|1AA0BD:D1C4| db $92 ; play note F#2
|1AA0BE:D1C5| db $18, $5B ; duration, params
|1AA0C0:D1C7| db $91 ; play note F2
|1AA0C1:D1C8| db $91 ; play note F2
|1AA0C2:D1C9| db $18, $5D ; duration, params
|1AA0C4:D1CB| db $91 ; play note F2
|1AA0C5:D1CC| db $0C, $5F ; duration, params
|1AA0C7:D1CE| db $93 ; play note G2
|1AA0C8:D1CF| db $95 ; play note A2

;---------------------------------------------------------------------------------------------------

Song02_Segment0_Track2:
|1AA0C9:D1D0| db $ED, $C8 ; set channel volume
|1AA0CB:D1D2| db $E0, $13 ; set instrument - snare A
|1AA0CD:D1D4| db $E1, $0A ; set panning - balanced
|1AA0CF:D1D6| db $06, $79 ; duration, params
|1AA0D1:D1D8| db $A6 ; play note D4
|1AA0D2:D1D9| db $06, $75 ; duration, params
|1AA0D4:D1DB| db $A6 ; play note D4
|1AA0D5:D1DC| db $06, $78 ; duration, params
|1AA0D7:D1DE| db $A6 ; play note D4
|1AA0D8:D1DF| db $06, $77 ; duration, params
|1AA0DA:D1E1| db $A6 ; play note D4
|1AA0DB:D1E2| db $06, $7A ; duration, params
|1AA0DD:D1E4| db $A6 ; play note D4
|1AA0DE:D1E5| db $06, $79 ; duration, params
|1AA0E0:D1E7| db $A6 ; play note D4
|1AA0E1:D1E8| db $06, $7C ; duration, params
|1AA0E3:D1EA| db $A6 ; play note D4
|1AA0E4:D1EB| db $06, $7B ; duration, params
|1AA0E6:D1ED| db $A6 ; play note D4
|1AA0E7:D1EE| db $18, $7C ; duration, params
|1AA0E9:D1F0| db $A6 ; play note D4
|1AA0EA:D1F1| db $08, $79 ; duration, params
|1AA0EC:D1F3| db $A6 ; play note D4
|1AA0ED:D1F4| db $A6 ; play note D4
|1AA0EE:D1F5| db $A6 ; play note D4
|1AA0EF:D1F6| db $EF : dw Song02_Sub_D63C : db $02 ; call segment subroutine
|1AA0F3:D1FA| db $03, $7E ; duration, params
|1AA0F5:D1FC| db $A6 ; play note D4
|1AA0F6:D1FD| db $15, $7D ; duration, params
|1AA0F8:D1FF| db $A6 ; play note D4
|1AA0F9:D200| db $03, $7E ; duration, params
|1AA0FB:D202| db $A6 ; play note D4
|1AA0FC:D203| db $15, $7D ; duration, params
|1AA0FE:D205| db $A6 ; play note D4
|1AA0FF:D206| db $03, $7E ; duration, params
|1AA101:D208| db $A6 ; play note D4
|1AA102:D209| db $15, $7D ; duration, params
|1AA104:D20B| db $A6 ; play note D4
|1AA105:D20C| db $0C, $7F ; duration, params
|1AA107:D20E| db $A6 ; play note D4
|1AA108:D20F| db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song02_Segment0_Track3:
|1AA109:D210| db $ED, $E6 ; set channel volume
|1AA10B:D212| db $E1, $08 ; set panning - leaning right
|1AA10D:D214| db $E0, $0B ; set instrument - trombone
|1AA10F:D216| db $E3, $0D, $1C, $26 ; enable vibrato
|1AA113:D21A| db $30, $5D ; duration, params
|1AA115:D21C| db $A9 ; play note F4
|1AA116:D21D| db $10 ; duration
|1AA117:D21E| db $C9 ; rest
|1AA118:D21F| db $08, $57 ; duration, params
|1AA11A:D221| db $A9 ; play note F4
|1AA11B:D222| db $08, $59 ; duration, params
|1AA11D:D224| db $A9 ; play note F4
|1AA11E:D225| db $A9 ; play note F4
|1AA11F:D226| db $08, $49 ; duration, params
|1AA121:D228| db $A9 ; play note F4
|1AA122:D229| db $EF : dw Song02_Sub_D65C : db $02 ; call segment subroutine
|1AA126:D22D| db $0C, $3F ; duration, params
|1AA128:D22F| db $A9 ; play note F4
|1AA129:D230| db $06, $59 ; duration, params
|1AA12B:D232| db $9E ; play note F#3
|1AA12C:D233| db $06, $5B ; duration, params
|1AA12E:D235| db $9E ; play note F#3
|1AA12F:D236| db $0C ; duration
|1AA130:D237| db $9F ; play note G3
|1AA131:D238| db $06, $5D ; duration, params
|1AA133:D23A| db $9F ; play note G3
|1AA134:D23B| db $9F ; play note G3
|1AA135:D23C| db $0C, $5F ; duration, params
|1AA137:D23E| db $A0 ; play note G#3
|1AA138:D23F| db $06 ; duration
|1AA139:D240| db $A0 ; play note G#3
|1AA13A:D241| db $A0 ; play note G#3
|1AA13B:D242| db $0C ; duration
|1AA13C:D243| db $A1 ; play note A3
|1AA13D:D244| db $A1 ; play note A3

;---------------------------------------------------------------------------------------------------

Song02_Segment0_Track4:
|1AA13E:D245| db $ED, $DC ; set channel volume
|1AA140:D247| db $E1, $0C ; set panning - leaning left
|1AA142:D249| db $E0, $0B ; set instrument - trombone
|1AA144:D24B| db $E3, $0E, $20, $2A ; enable vibrato
|1AA148:D24F| db $30, $5D ; duration, params
|1AA14A:D251| db $A4 ; play note C4
|1AA14B:D252| db $10 ; duration
|1AA14C:D253| db $C9 ; rest
|1AA14D:D254| db $08, $57 ; duration, params
|1AA14F:D256| db $A4 ; play note C4
|1AA150:D257| db $08, $59 ; duration, params
|1AA152:D259| db $A4 ; play note C4
|1AA153:D25A| db $A4 ; play note C4
|1AA154:D25B| db $08, $49 ; duration, params
|1AA156:D25D| db $A4 ; play note C4
|1AA157:D25E| db $EF : dw Song02_Sub_D674 : db $02 ; call segment subroutine
|1AA15B:D262| db $0C, $3F ; duration, params
|1AA15D:D264| db $A4 ; play note C4
|1AA15E:D265| db $06, $59 ; duration, params
|1AA160:D267| db $A2 ; play note A#3
|1AA161:D268| db $06, $5B ; duration, params
|1AA163:D26A| db $A2 ; play note A#3
|1AA164:D26B| db $0C ; duration
|1AA165:D26C| db $A3 ; play note B3
|1AA166:D26D| db $06, $5D ; duration, params
|1AA168:D26F| db $A3 ; play note B3
|1AA169:D270| db $A3 ; play note B3
|1AA16A:D271| db $0C, $5F ; duration, params
|1AA16C:D273| db $A4 ; play note C4
|1AA16D:D274| db $06 ; duration
|1AA16E:D275| db $A4 ; play note C4
|1AA16F:D276| db $A4 ; play note C4
|1AA170:D277| db $0C ; duration
|1AA171:D278| db $A5 ; play note C#4
|1AA172:D279| db $A5 ; play note C#4

;---------------------------------------------------------------------------------------------------

Song02_Segment0_Track5:
|1AA173:D27A| db $ED, $DC ; set channel volume
|1AA175:D27C| db $E0, $11 ; set instrument - trumpet
|1AA177:D27E| db $E1, $0A ; set panning - balanced
|1AA179:D280| db $E3, $08, $1E, $1E ; enable vibrato
|1AA17D:D284| db $18, $5B ; duration, params
|1AA17F:D286| db $9D ; play note F3
|1AA180:D287| db $08, $39 ; duration, params
|1AA182:D289| db $9D ; play note F3
|1AA183:D28A| db $9D ; play note F3
|1AA184:D28B| db $9D ; play note F3
|1AA185:D28C| db $18, $5B ; duration, params
|1AA187:D28E| db $9D ; play note F3
|1AA188:D28F| db $08, $39 ; duration, params
|1AA18A:D291| db $9D ; play note F3
|1AA18B:D292| db $9D ; play note F3
|1AA18C:D293| db $9D ; play note F3
|1AA18D:D294| db $18, $5B ; duration, params
|1AA18F:D296| db $9B ; play note D#3
|1AA190:D297| db $08, $39 ; duration, params
|1AA192:D299| db $9B ; play note D#3
|1AA193:D29A| db $9B ; play note D#3
|1AA194:D29B| db $9B ; play note D#3
|1AA195:D29C| db $18, $5B ; duration, params
|1AA197:D29E| db $9B ; play note D#3
|1AA198:D29F| db $08, $39 ; duration, params
|1AA19A:D2A1| db $9B ; play note D#3
|1AA19B:D2A2| db $9B ; play note D#3
|1AA19C:D2A3| db $9B ; play note D#3
|1AA19D:D2A4| db $18, $5B ; duration, params
|1AA19F:D2A6| db $99 ; play note C#3
|1AA1A0:D2A7| db $08, $39 ; duration, params
|1AA1A2:D2A9| db $99 ; play note C#3
|1AA1A3:D2AA| db $99 ; play note C#3
|1AA1A4:D2AB| db $99 ; play note C#3
|1AA1A5:D2AC| db $18, $5B ; duration, params
|1AA1A7:D2AE| db $99 ; play note C#3
|1AA1A8:D2AF| db $08, $39 ; duration, params
|1AA1AA:D2B1| db $99 ; play note C#3
|1AA1AB:D2B2| db $99 ; play note C#3
|1AA1AC:D2B3| db $99 ; play note C#3
|1AA1AD:D2B4| db $18, $59 ; duration, params
|1AA1AF:D2B6| db $9B ; play note D#3
|1AA1B0:D2B7| db $18, $5B ; duration, params
|1AA1B2:D2B9| db $9B ; play note D#3
|1AA1B3:D2BA| db $18, $5D ; duration, params
|1AA1B5:D2BC| db $9B ; play note D#3
|1AA1B6:D2BD| db $0C, $5F ; duration, params
|1AA1B8:D2BF| db $9C ; play note E3
|1AA1B9:D2C0| db $9D ; play note F3

;---------------------------------------------------------------------------------------------------

Song02_Segment0_Track6:
|1AA1BA:D2C1| db $ED, $C8 ; set channel volume
|1AA1BC:D2C3| db $E1, $0A ; set panning - balanced
|1AA1BE:D2C5| db $E0, $13 ; set instrument - snare A
|1AA1C0:D2C7| db $EF : dw Song02_Sub_D68C : db $03 ; call segment subroutine
|1AA1C4:D2CB| db $ED, $FF ; set channel volume
|1AA1C6:D2CD| db $E0, $0C ; set instrument - cymbal
|1AA1C8:D2CF| db $30, $7F ; duration, params
|1AA1CA:D2D1| db $9C ; play note E3
|1AA1CB:D2D2| db $9C ; play note E3

;---------------------------------------------------------------------------------------------------

Song02_Segment0_Track7:
|1AA1CC:D2D3| db $ED, $B4 ; set channel volume
|1AA1CE:D2D5| db $E1, $02 ; set panning - leaning right
|1AA1D0:D2D7| db $E0, $0B ; set instrument - trombone
|1AA1D2:D2D9| db $E3, $13, $1B, $28 ; enable vibrato
|1AA1D6:D2DD| db $0A ; duration
|1AA1D7:D2DE| db $C9 ; rest
|1AA1D8:D2DF| db $30, $5D ; duration, params
|1AA1DA:D2E1| db $AE ; play note A#4
|1AA1DB:D2E2| db $10 ; duration
|1AA1DC:D2E3| db $C9 ; rest
|1AA1DD:D2E4| db $04, $2D ; duration, params
|1AA1DF:D2E6| db $AE ; play note A#4
|1AA1E0:D2E7| db $AE ; play note A#4
|1AA1E1:D2E8| db $08, $2B ; duration, params
|1AA1E3:D2EA| db $AE ; play note A#4
|1AA1E4:D2EB| db $AE ; play note A#4
|1AA1E5:D2EC| db $08, $2D ; duration, params
|1AA1E7:D2EE| db $AE ; play note A#4
|1AA1E8:D2EF| db $EF : dw Song02_Sub_D623 : db $02 ; call segment subroutine
|1AA1EC:D2F3| db $0C, $3F ; duration, params
|1AA1EE:D2F5| db $AE ; play note A#4
|1AA1EF:D2F6| db $06, $39 ; duration, params
|1AA1F1:D2F8| db $A9 ; play note F4
|1AA1F2:D2F9| db $06, $3B ; duration, params
|1AA1F4:D2FB| db $A9 ; play note F4
|1AA1F5:D2FC| db $0C, $5B ; duration, params
|1AA1F7:D2FE| db $A9 ; play note F4
|1AA1F8:D2FF| db $06, $3D ; duration, params
|1AA1FA:D301| db $A9 ; play note F4
|1AA1FB:D302| db $A9 ; play note F4
|1AA1FC:D303| db $0C, $5F ; duration, params
|1AA1FE:D305| db $A9 ; play note F4
|1AA1FF:D306| db $06, $4F ; duration, params
|1AA201:D308| db $A9 ; play note F4
|1AA202:D309| db $06, $3F ; duration, params
|1AA204:D30B| db $A9 ; play note F4
|1AA205:D30C| db $0C, $5F ; duration, params
|1AA207:D30E| db $A9 ; play note F4
|1AA208:D30F| db $02 ; duration
|1AA209:D310| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song02_Segment1_Track0:
|1AA20A:D311| db $EF : dw Song02_Sub_D6A0 : db $01 ; call segment subroutine
|1AA20E:D315| db $EF : dw Song02_Sub_D6DA : db $01 ; call segment subroutine
|1AA212:D319| db $0C ; duration
|1AA213:D31A| db $B5 ; play note F5
|1AA214:D31B| db $06, $3D ; duration, params
|1AA216:D31D| db $A9 ; play note F4
|1AA217:D31E| db $A9 ; play note F4
|1AA218:D31F| db $0C, $4E ; duration, params
|1AA21A:D321| db $A9 ; play note F4
|1AA21B:D322| db $06, $3E ; duration, params
|1AA21D:D324| db $A9 ; play note F4
|1AA21E:D325| db $A9 ; play note F4
|1AA21F:D326| db $0C, $4E ; duration, params
|1AA221:D328| db $A9 ; play note F4
|1AA222:D329| db $06, $3F ; duration, params
|1AA224:D32B| db $A9 ; play note F4
|1AA225:D32C| db $A9 ; play note F4
|1AA226:D32D| db $0C, $4F ; duration, params
|1AA228:D32F| db $A9 ; play note F4
|1AA229:D330| db $A9 ; play note F4
|1AA22A:D331| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Segment1_Track1:
|1AA22B:D332| db $EF : dw Song02_Sub_D724 : db $01 ; call segment subroutine
|1AA22F:D336| db $18, $5D ; duration, params
|1AA231:D338| db $92 ; play note F#2
|1AA232:D339| db $08, $4D ; duration, params
|1AA234:D33B| db $92 ; play note F#2
|1AA235:D33C| db $92 ; play note F#2
|1AA236:D33D| db $90 ; play note E2
|1AA237:D33E| db $18 ; duration
|1AA238:D33F| db $92 ; play note F#2
|1AA239:D340| db $92 ; play note F#2
|1AA23A:D341| db $18, $5D ; duration, params
|1AA23C:D343| db $99 ; play note C#3
|1AA23D:D344| db $08, $4D ; duration, params
|1AA23F:D346| db $99 ; play note C#3
|1AA240:D347| db $99 ; play note C#3
|1AA241:D348| db $98 ; play note C3
|1AA242:D349| db $18 ; duration
|1AA243:D34A| db $99 ; play note C#3
|1AA244:D34B| db $99 ; play note C#3
|1AA245:D34C| db $18, $5D ; duration, params
|1AA247:D34E| db $97 ; play note B2
|1AA248:D34F| db $08, $4D ; duration, params
|1AA24A:D351| db $97 ; play note B2
|1AA24B:D352| db $97 ; play note B2
|1AA24C:D353| db $96 ; play note A#2
|1AA24D:D354| db $18 ; duration
|1AA24E:D355| db $97 ; play note B2
|1AA24F:D356| db $08 ; duration
|1AA250:D357| db $97 ; play note B2
|1AA251:D358| db $97 ; play note B2
|1AA252:D359| db $97 ; play note B2
|1AA253:D35A| db $18, $5D ; duration, params
|1AA255:D35C| db $96 ; play note A#2
|1AA256:D35D| db $08, $4D ; duration, params
|1AA258:D35F| db $96 ; play note A#2
|1AA259:D360| db $96 ; play note A#2
|1AA25A:D361| db $94 ; play note G#2
|1AA25B:D362| db $18 ; duration
|1AA25C:D363| db $96 ; play note A#2
|1AA25D:D364| db $08 ; duration
|1AA25E:D365| db $96 ; play note A#2
|1AA25F:D366| db $96 ; play note A#2
|1AA260:D367| db $96 ; play note A#2
|1AA261:D368| db $18, $5D ; duration, params
|1AA263:D36A| db $98 ; play note C3
|1AA264:D36B| db $08, $4D ; duration, params
|1AA266:D36D| db $98 ; play note C3
|1AA267:D36E| db $98 ; play note C3
|1AA268:D36F| db $97 ; play note B2
|1AA269:D370| db $18 ; duration
|1AA26A:D371| db $98 ; play note C3
|1AA26B:D372| db $08 ; duration
|1AA26C:D373| db $98 ; play note C3
|1AA26D:D374| db $98 ; play note C3
|1AA26E:D375| db $98 ; play note C3
|1AA26F:D376| db $18, $5D ; duration, params
|1AA271:D378| db $91 ; play note F2
|1AA272:D379| db $91 ; play note F2
|1AA273:D37A| db $91 ; play note F2
|1AA274:D37B| db $0C, $4D ; duration, params
|1AA276:D37D| db $93 ; play note G2
|1AA277:D37E| db $95 ; play note A2

;---------------------------------------------------------------------------------------------------

Song02_Segment1_Track2:
|1AA278:D37F| db $ED, $B4 ; set channel volume
|1AA27A:D381| db $E0, $13 ; set instrument - snare A
|1AA27C:D383| db $E1, $0A ; set panning - balanced
|1AA27E:D385| db $EF : dw Song02_Sub_D73B : db $07 ; call segment subroutine
|1AA282:D389| db $0C, $6D ; duration, params
|1AA284:D38B| db $A6 ; play note D4
|1AA285:D38C| db $06, $6B ; duration, params
|1AA287:D38E| db $A6 ; play note D4
|1AA288:D38F| db $A6 ; play note D4
|1AA289:D390| db $0C, $6D ; duration, params
|1AA28B:D392| db $A6 ; play note D4
|1AA28C:D393| db $06, $6B ; duration, params
|1AA28E:D395| db $A6 ; play note D4
|1AA28F:D396| db $A6 ; play note D4
|1AA290:D397| db $0C, $6D ; duration, params
|1AA292:D399| db $A6 ; play note D4
|1AA293:D39A| db $06, $6B ; duration, params
|1AA295:D39C| db $A6 ; play note D4
|1AA296:D39D| db $A6 ; play note D4
|1AA297:D39E| db $06, $69 ; duration, params
|1AA299:D3A0| db $A6 ; play note D4
|1AA29A:D3A1| db $A6 ; play note D4
|1AA29B:D3A2| db $A6 ; play note D4
|1AA29C:D3A3| db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song02_Segment1_Track3:
|1AA29D:D3A4| db $ED, $DC ; set channel volume
|1AA29F:D3A6| db $E1, $12 ; set panning - leaning left
|1AA2A1:D3A8| db $E0, $0A ; set instrument - strings B
|1AA2A3:D3AA| db $E3, $12, $1A, $28 ; enable vibrato
|1AA2A7:D3AE| db $EF : dw Song02_Sub_D74D : db $01 ; call segment subroutine
|1AA2AB:D3B2| db $9D ; play note F3
|1AA2AC:D3B3| db $08 ; duration
|1AA2AD:D3B4| db $C8 ; sustain current note
|1AA2AE:D3B5| db $9D ; play note F3
|1AA2AF:D3B6| db $9B ; play note D#3
|1AA2B0:D3B7| db $30 ; duration
|1AA2B1:D3B8| db $9D ; play note F3
|1AA2B2:D3B9| db $18 ; duration
|1AA2B3:D3BA| db $9E ; play note F#3
|1AA2B4:D3BB| db $0C ; duration
|1AA2B5:D3BC| db $9E ; play note F#3
|1AA2B6:D3BD| db $06 ; duration
|1AA2B7:D3BE| db $9E ; play note F#3
|1AA2B8:D3BF| db $A0 ; play note G#3
|1AA2B9:D3C0| db $30 ; duration
|1AA2BA:D3C1| db $A2 ; play note A#3
|1AA2BB:D3C2| db $18 ; duration
|1AA2BC:D3C3| db $9D ; play note F3
|1AA2BD:D3C4| db $0C ; duration
|1AA2BE:D3C5| db $9D ; play note F3
|1AA2BF:D3C6| db $06 ; duration
|1AA2C0:D3C7| db $9D ; play note F3
|1AA2C1:D3C8| db $9E ; play note F#3
|1AA2C2:D3C9| db $30 ; duration
|1AA2C3:D3CA| db $A0 ; play note G#3
|1AA2C4:D3CB| db $EF : dw Song02_Sub_D76A : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song02_Segment1_Track4:
|1AA2C8:D3CF| db $ED, $C8 ; set channel volume
|1AA2CA:D3D1| db $E1, $0A ; set panning - balanced
|1AA2CC:D3D3| db $E0, $02 ; set instrument - timpani
|1AA2CE:D3D5| db $EF : dw Song02_Sub_D77E : db $01 ; call segment subroutine
|1AA2D2:D3D9| db $C9 ; rest
|1AA2D3:D3DA| db $C9 ; rest
|1AA2D4:D3DB| db $C9 ; rest
|1AA2D5:D3DC| db $30, $7F ; duration, params
|1AA2D7:D3DE| db $85 ; play note F1
|1AA2D8:D3DF| db $18 ; duration
|1AA2D9:D3E0| db $85 ; play note F1
|1AA2DA:D3E1| db $85 ; play note F1

;---------------------------------------------------------------------------------------------------

Song02_Segment1_Track5:
|1AA2DB:D3E2| db $ED, $E6 ; set channel volume
|1AA2DD:D3E4| db $E1, $0A ; set panning - balanced
|1AA2DF:D3E6| db $E0, $0B ; set instrument - trombone
|1AA2E1:D3E8| db $E3, $13, $19, $28 ; enable vibrato
|1AA2E5:D3EC| db $F4, $14 ; set channel fine tuning
|1AA2E7:D3EE| db $EF : dw Song02_Sub_D784 : db $01 ; call segment subroutine
|1AA2EB:D3F2| db $30, $6D ; duration, params
|1AA2ED:D3F4| db $B1 ; play note C#5
|1AA2EE:D3F5| db $10 ; duration
|1AA2EF:D3F6| db $C9 ; rest
|1AA2F0:D3F7| db $08 ; duration
|1AA2F1:D3F8| db $B1 ; play note C#5
|1AA2F2:D3F9| db $08, $5D ; duration, params
|1AA2F4:D3FB| db $B1 ; play note C#5
|1AA2F5:D3FC| db $08, $6D ; duration, params
|1AA2F7:D3FE| db $B0 ; play note C5
|1AA2F8:D3FF| db $08, $4D ; duration, params
|1AA2FA:D401| db $AE ; play note A#4
|1AA2FB:D402| db $B0 ; play note C5
|1AA2FC:D403| db $C9 ; rest
|1AA2FD:D404| db $AE ; play note A#4
|1AA2FE:D405| db $30, $6D ; duration, params
|1AA300:D407| db $AC ; play note G#4
|1AA301:D408| db $18, $4D ; duration, params
|1AA303:D40A| db $AC ; play note G#4
|1AA304:D40B| db $0C, $2D ; duration, params
|1AA306:D40D| db $AA ; play note F#4
|1AA307:D40E| db $06, $5D ; duration, params
|1AA309:D410| db $AA ; play note F#4
|1AA30A:D411| db $06, $2D ; duration, params
|1AA30C:D413| db $AC ; play note G#4
|1AA30D:D414| db $30, $4D ; duration, params
|1AA30F:D416| db $AE ; play note A#4
|1AA310:D417| db $0C, $6D ; duration, params
|1AA312:D419| db $AC ; play note G#4
|1AA313:D41A| db $0C, $4D ; duration, params
|1AA315:D41C| db $AA ; play note F#4
|1AA316:D41D| db $0C, $2D ; duration, params
|1AA318:D41F| db $A9 ; play note F4
|1AA319:D420| db $06, $5D ; duration, params
|1AA31B:D422| db $A9 ; play note F4
|1AA31C:D423| db $06, $2D ; duration, params
|1AA31E:D425| db $AA ; play note F#4
|1AA31F:D426| db $30, $4D ; duration, params
|1AA321:D428| db $AC ; play note G#4
|1AA322:D429| db $0C, $6D ; duration, params
|1AA324:D42B| db $AA ; play note F#4
|1AA325:D42C| db $0C, $4D ; duration, params
|1AA327:D42E| db $A9 ; play note F4
|1AA328:D42F| db $0C, $2D ; duration, params
|1AA32A:D431| db $A8 ; play note E4
|1AA32B:D432| db $06 ; duration
|1AA32C:D433| db $A8 ; play note E4
|1AA32D:D434| db $A9 ; play note F4
|1AA32E:D435| db $30, $6D ; duration, params
|1AA330:D437| db $AB ; play note G4
|1AA331:D438| db $18 ; duration
|1AA332:D439| db $AE ; play note A#4
|1AA333:D43A| db $0C ; duration
|1AA334:D43B| db $AD ; play note A4
|1AA335:D43C| db $06, $4D ; duration, params
|1AA337:D43E| db $A1 ; play note A3
|1AA338:D43F| db $A1 ; play note A3
|1AA339:D440| db $0C, $4E ; duration, params
|1AA33B:D442| db $A1 ; play note A3
|1AA33C:D443| db $06 ; duration
|1AA33D:D444| db $A1 ; play note A3
|1AA33E:D445| db $A1 ; play note A3
|1AA33F:D446| db $0C ; duration
|1AA340:D447| db $A1 ; play note A3
|1AA341:D448| db $06, $4F ; duration, params
|1AA343:D44A| db $A1 ; play note A3
|1AA344:D44B| db $A1 ; play note A3
|1AA345:D44C| db $0C ; duration
|1AA346:D44D| db $A1 ; play note A3
|1AA347:D44E| db $A1 ; play note A3

;---------------------------------------------------------------------------------------------------

Song02_Segment1_Track7:
|1AA348:D44F| db $ED, $78 ; set channel volume
|1AA34A:D451| db $E1, $02 ; set panning - leaning right
|1AA34C:D453| db $E0, $0B ; set instrument - trombone
|1AA34E:D455| db $E3, $11, $1A, $27 ; enable vibrato
|1AA352:D459| db $F4, $1E ; set channel fine tuning
|1AA354:D45B| db $EF : dw Song02_Sub_D7A8 : db $01 ; call segment subroutine
|1AA358:D45F| db $EF : dw Song02_Sub_D6DA : db $01 ; call segment subroutine
|1AA35C:D463| db $0C ; duration
|1AA35D:D464| db $B5 ; play note F5
|1AA35E:D465| db $06, $4D ; duration, params
|1AA360:D467| db $A9 ; play note F4
|1AA361:D468| db $A9 ; play note F4
|1AA362:D469| db $0C, $4E ; duration, params
|1AA364:D46B| db $A9 ; play note F4
|1AA365:D46C| db $06 ; duration
|1AA366:D46D| db $A9 ; play note F4
|1AA367:D46E| db $A9 ; play note F4
|1AA368:D46F| db $0C ; duration
|1AA369:D470| db $A9 ; play note F4
|1AA36A:D471| db $06, $4F ; duration, params
|1AA36C:D473| db $A9 ; play note F4
|1AA36D:D474| db $A9 ; play note F4
|1AA36E:D475| db $0C ; duration
|1AA36F:D476| db $A9 ; play note F4
|1AA370:D477| db $03 ; duration
|1AA371:D478| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song02_Segment2_Track0:
|1AA372:D479| db $EF : dw Song02_Sub_D6A0 : db $01 ; call segment subroutine
|1AA376:D47D| db $EF : dw Song02_Sub_D7CE : db $01 ; call segment subroutine
|1AA37A:D481| db $0C ; duration
|1AA37B:D482| db $B5 ; play note F5
|1AA37C:D483| db $06, $3D ; duration, params
|1AA37E:D485| db $A9 ; play note F4
|1AA37F:D486| db $A9 ; play note F4
|1AA380:D487| db $0C, $4E ; duration, params
|1AA382:D489| db $A9 ; play note F4
|1AA383:D48A| db $06, $3E ; duration, params
|1AA385:D48C| db $A9 ; play note F4
|1AA386:D48D| db $A9 ; play note F4
|1AA387:D48E| db $0C, $4E ; duration, params
|1AA389:D490| db $A9 ; play note F4
|1AA38A:D491| db $06, $3F ; duration, params
|1AA38C:D493| db $A9 ; play note F4
|1AA38D:D494| db $A9 ; play note F4
|1AA38E:D495| db $0C, $4F ; duration, params
|1AA390:D497| db $A9 ; play note F4
|1AA391:D498| db $A9 ; play note F4
|1AA392:D499| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Segment2_Track1:
|1AA393:D49A| db $EF : dw Song02_Sub_D724 : db $01 ; call segment subroutine
|1AA397:D49E| db $92 ; play note F#2
|1AA398:D49F| db $08 ; duration
|1AA399:D4A0| db $92 ; play note F#2
|1AA39A:D4A1| db $92 ; play note F#2
|1AA39B:D4A2| db $90 ; play note E2
|1AA39C:D4A3| db $18 ; duration
|1AA39D:D4A4| db $92 ; play note F#2
|1AA39E:D4A5| db $92 ; play note F#2
|1AA39F:D4A6| db $91 ; play note F2
|1AA3A0:D4A7| db $08 ; duration
|1AA3A1:D4A8| db $91 ; play note F2
|1AA3A2:D4A9| db $91 ; play note F2
|1AA3A3:D4AA| db $8F ; play note D#2
|1AA3A4:D4AB| db $18 ; duration
|1AA3A5:D4AC| db $91 ; play note F2
|1AA3A6:D4AD| db $91 ; play note F2
|1AA3A7:D4AE| db $EF : dw Song02_Sub_D806 : db $02 ; call segment subroutine
|1AA3AB:D4B2| db $97 ; play note B2
|1AA3AC:D4B3| db $08 ; duration
|1AA3AD:D4B4| db $97 ; play note B2
|1AA3AE:D4B5| db $97 ; play note B2
|1AA3AF:D4B6| db $96 ; play note A#2
|1AA3B0:D4B7| db $18 ; duration
|1AA3B1:D4B8| db $97 ; play note B2
|1AA3B2:D4B9| db $08 ; duration
|1AA3B3:D4BA| db $97 ; play note B2
|1AA3B4:D4BB| db $97 ; play note B2
|1AA3B5:D4BC| db $97 ; play note B2
|1AA3B6:D4BD| db $18 ; duration
|1AA3B7:D4BE| db $96 ; play note A#2
|1AA3B8:D4BF| db $08 ; duration
|1AA3B9:D4C0| db $96 ; play note A#2
|1AA3BA:D4C1| db $96 ; play note A#2
|1AA3BB:D4C2| db $94 ; play note G#2
|1AA3BC:D4C3| db $18 ; duration
|1AA3BD:D4C4| db $96 ; play note A#2
|1AA3BE:D4C5| db $08 ; duration
|1AA3BF:D4C6| db $96 ; play note A#2
|1AA3C0:D4C7| db $96 ; play note A#2
|1AA3C1:D4C8| db $96 ; play note A#2
|1AA3C2:D4C9| db $18 ; duration
|1AA3C3:D4CA| db $98 ; play note C3
|1AA3C4:D4CB| db $08 ; duration
|1AA3C5:D4CC| db $98 ; play note C3
|1AA3C6:D4CD| db $98 ; play note C3
|1AA3C7:D4CE| db $97 ; play note B2
|1AA3C8:D4CF| db $18 ; duration
|1AA3C9:D4D0| db $98 ; play note C3
|1AA3CA:D4D1| db $08 ; duration
|1AA3CB:D4D2| db $98 ; play note C3
|1AA3CC:D4D3| db $98 ; play note C3
|1AA3CD:D4D4| db $98 ; play note C3
|1AA3CE:D4D5| db $18 ; duration
|1AA3CF:D4D6| db $91 ; play note F2
|1AA3D0:D4D7| db $91 ; play note F2
|1AA3D1:D4D8| db $91 ; play note F2
|1AA3D2:D4D9| db $0C ; duration
|1AA3D3:D4DA| db $93 ; play note G2
|1AA3D4:D4DB| db $95 ; play note A2

;---------------------------------------------------------------------------------------------------

Song02_Segment2_Track2:
|1AA3D5:D4DC| db $EF : dw Song02_Sub_D73B : db $04 ; call segment subroutine
|1AA3D9:D4E0| db $EF : dw Song02_Sub_D81C : db $02 ; call segment subroutine
|1AA3DD:D4E4| db $EF : dw Song02_Sub_D73B : db $03 ; call segment subroutine
|1AA3E1:D4E8| db $0C, $6D ; duration, params
|1AA3E3:D4EA| db $A6 ; play note D4
|1AA3E4:D4EB| db $06, $6B ; duration, params
|1AA3E6:D4ED| db $A6 ; play note D4
|1AA3E7:D4EE| db $A6 ; play note D4
|1AA3E8:D4EF| db $0C, $6D ; duration, params
|1AA3EA:D4F1| db $A6 ; play note D4
|1AA3EB:D4F2| db $06, $6B ; duration, params
|1AA3ED:D4F4| db $A6 ; play note D4
|1AA3EE:D4F5| db $A6 ; play note D4
|1AA3EF:D4F6| db $0C, $6D ; duration, params
|1AA3F1:D4F8| db $A6 ; play note D4
|1AA3F2:D4F9| db $06, $6B ; duration, params
|1AA3F4:D4FB| db $A6 ; play note D4
|1AA3F5:D4FC| db $A6 ; play note D4
|1AA3F6:D4FD| db $06, $69 ; duration, params
|1AA3F8:D4FF| db $A6 ; play note D4
|1AA3F9:D500| db $A6 ; play note D4
|1AA3FA:D501| db $A6 ; play note D4
|1AA3FB:D502| db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song02_Segment2_Track3:
|1AA3FC:D503| db $E1, $12 ; set panning - leaning left
|1AA3FE:D505| db $E0, $0A ; set instrument - strings B
|1AA400:D507| db $E3, $12, $1A, $28 ; enable vibrato
|1AA404:D50B| db $EF : dw Song02_Sub_D74D : db $01 ; call segment subroutine
|1AA408:D50F| db $30 ; duration
|1AA409:D510| db $9D ; play note F3
|1AA40A:D511| db $A1 ; play note A3
|1AA40B:D512| db $EF : dw Song02_Sub_D850 : db $02 ; call segment subroutine
|1AA40F:D516| db $18 ; duration
|1AA410:D517| db $9E ; play note F#3
|1AA411:D518| db $0C ; duration
|1AA412:D519| db $9E ; play note F#3
|1AA413:D51A| db $06 ; duration
|1AA414:D51B| db $9E ; play note F#3
|1AA415:D51C| db $9D ; play note F3
|1AA416:D51D| db $30 ; duration
|1AA417:D51E| db $9E ; play note F#3
|1AA418:D51F| db $18 ; duration
|1AA419:D520| db $9D ; play note F3
|1AA41A:D521| db $0C ; duration
|1AA41B:D522| db $9D ; play note F3
|1AA41C:D523| db $06 ; duration
|1AA41D:D524| db $9D ; play note F3
|1AA41E:D525| db $9B ; play note D#3
|1AA41F:D526| db $30 ; duration
|1AA420:D527| db $9D ; play note F3
|1AA421:D528| db $EF : dw Song02_Sub_D76A : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song02_Segment2_Track4:
|1AA425:D52C| db $ED, $DC ; set channel volume
|1AA427:D52E| db $E1, $10 ; set panning - leaning left
|1AA429:D530| db $E0, $0A ; set instrument - strings B
|1AA42B:D532| db $E3, $13, $19, $26 ; enable vibrato
|1AA42F:D536| db $EF : dw Song02_Sub_D77E : db $01 ; call segment subroutine
|1AA433:D53A| db $18, $7B ; duration, params
|1AA435:D53C| db $A2 ; play note A#3
|1AA436:D53D| db $A8 ; play note E4
|1AA437:D53E| db $30 ; duration
|1AA438:D53F| db $AB ; play note G4
|1AA439:D540| db $A4 ; play note C4
|1AA43A:D541| db $A1 ; play note A3
|1AA43B:D542| db $18 ; duration
|1AA43C:D543| db $A2 ; play note A#3
|1AA43D:D544| db $A8 ; play note E4
|1AA43E:D545| db $30 ; duration
|1AA43F:D546| db $AB ; play note G4
|1AA440:D547| db $A4 ; play note C4
|1AA441:D548| db $A1 ; play note A3
|1AA442:D549| db $EF : dw Song02_Sub_D77E : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song02_Segment2_Track5:
|1AA446:D54D| db $ED, $E6 ; set channel volume
|1AA448:D54F| db $E0, $0B ; set instrument - trombone
|1AA44A:D551| db $EF : dw Song02_Sub_D784 : db $01 ; call segment subroutine
|1AA44E:D555| db $48, $5B ; duration, params
|1AA450:D557| db $B1 ; play note C#5
|1AA451:D558| db $18 ; duration
|1AA452:D559| db $B4 ; play note E5
|1AA453:D55A| db $0C ; duration
|1AA454:D55B| db $B3 ; play note D#5
|1AA455:D55C| db $C9 ; rest
|1AA456:D55D| db $30 ; duration
|1AA457:D55E| db $B0 ; play note C5
|1AA458:D55F| db $18 ; duration
|1AA459:D560| db $AD ; play note A4
|1AA45A:D561| db $48 ; duration
|1AA45B:D562| db $AE ; play note A#4
|1AA45C:D563| db $18 ; duration
|1AA45D:D564| db $B1 ; play note C#5
|1AA45E:D565| db $0C ; duration
|1AA45F:D566| db $B0 ; play note C5
|1AA460:D567| db $C9 ; rest
|1AA461:D568| db $30 ; duration
|1AA462:D569| db $AD ; play note A4
|1AA463:D56A| db $18 ; duration
|1AA464:D56B| db $AD ; play note A4
|1AA465:D56C| db $48 ; duration
|1AA466:D56D| db $AE ; play note A#4
|1AA467:D56E| db $18 ; duration
|1AA468:D56F| db $B1 ; play note C#5
|1AA469:D570| db $0C ; duration
|1AA46A:D571| db $B0 ; play note C5
|1AA46B:D572| db $C9 ; rest
|1AA46C:D573| db $30 ; duration
|1AA46D:D574| db $AD ; play note A4
|1AA46E:D575| db $18 ; duration
|1AA46F:D576| db $A9 ; play note F4
|1AA470:D577| db $48 ; duration
|1AA471:D578| db $AA ; play note F#4
|1AA472:D579| db $18 ; duration
|1AA473:D57A| db $AF ; play note B4
|1AA474:D57B| db $0C ; duration
|1AA475:D57C| db $AE ; play note A#4
|1AA476:D57D| db $C9 ; rest
|1AA477:D57E| db $30 ; duration
|1AA478:D57F| db $A9 ; play note F4
|1AA479:D580| db $18 ; duration
|1AA47A:D581| db $A5 ; play note C#4
|1AA47B:D582| db $0C, $2B ; duration, params
|1AA47D:D584| db $A8 ; play note E4
|1AA47E:D585| db $06 ; duration
|1AA47F:D586| db $A8 ; play note E4
|1AA480:D587| db $A9 ; play note F4
|1AA481:D588| db $30, $6D ; duration, params
|1AA483:D58A| db $AB ; play note G4
|1AA484:D58B| db $18 ; duration
|1AA485:D58C| db $AE ; play note A#4
|1AA486:D58D| db $0C ; duration
|1AA487:D58E| db $AD ; play note A4
|1AA488:D58F| db $06, $4D ; duration, params
|1AA48A:D591| db $A1 ; play note A3
|1AA48B:D592| db $A1 ; play note A3
|1AA48C:D593| db $0C, $4E ; duration, params
|1AA48E:D595| db $A1 ; play note A3
|1AA48F:D596| db $06 ; duration
|1AA490:D597| db $A1 ; play note A3
|1AA491:D598| db $A1 ; play note A3
|1AA492:D599| db $0C ; duration
|1AA493:D59A| db $A1 ; play note A3
|1AA494:D59B| db $06, $4F ; duration, params
|1AA496:D59D| db $A1 ; play note A3
|1AA497:D59E| db $A1 ; play note A3
|1AA498:D59F| db $0C ; duration
|1AA499:D5A0| db $A1 ; play note A3
|1AA49A:D5A1| db $A1 ; play note A3

;---------------------------------------------------------------------------------------------------

Song02_Segment2_Track6:
|1AA49B:D5A2| db $ED, $A0 ; set channel volume
|1AA49D:D5A4| db $E0, $13 ; set instrument - snare A
|1AA49F:D5A6| db $E1, $0B ; set panning - leaning left
|1AA4A1:D5A8| db $EF : dw Song02_Sub_D77E : db $01 ; call segment subroutine
|1AA4A5:D5AC| db $03, $7D ; duration, params
|1AA4A7:D5AE| db $9A ; play note D3
|1AA4A8:D5AF| db $06, $78 ; duration, params
|1AA4AA:D5B1| db $9A ; play note D3
|1AA4AB:D5B2| db $06, $77 ; duration, params
|1AA4AD:D5B4| db $9A ; play note D3
|1AA4AE:D5B5| db $06, $78 ; duration, params
|1AA4B0:D5B7| db $9A ; play note D3
|1AA4B1:D5B8| db $06, $7A ; duration, params
|1AA4B3:D5BA| db $9A ; play note D3
|1AA4B4:D5BB| db $06, $79 ; duration, params
|1AA4B6:D5BD| db $9A ; play note D3
|1AA4B7:D5BE| db $06, $7A ; duration, params
|1AA4B9:D5C0| db $9A ; play note D3
|1AA4BA:D5C1| db $06, $7C ; duration, params
|1AA4BC:D5C3| db $9A ; play note D3
|1AA4BD:D5C4| db $03 ; duration
|1AA4BE:D5C5| db $9A ; play note D3
|1AA4BF:D5C6| db $E0, $0C ; set instrument - cymbal
|1AA4C1:D5C8| db $ED, $FA ; set channel volume
|1AA4C3:D5CA| db $30, $7F ; duration, params
|1AA4C5:D5CC| db $9C ; play note E3
|1AA4C6:D5CD| db $EF : dw Song02_Sub_D858 : db $01 ; call segment subroutine
|1AA4CA:D5D1| db $E0, $13 ; set instrument - snare A
|1AA4CC:D5D3| db $ED, $A0 ; set channel volume
|1AA4CE:D5D5| db $03, $7D ; duration, params
|1AA4D0:D5D7| db $9A ; play note D3
|1AA4D1:D5D8| db $06, $78 ; duration, params
|1AA4D3:D5DA| db $9A ; play note D3
|1AA4D4:D5DB| db $06, $77 ; duration, params
|1AA4D6:D5DD| db $9A ; play note D3
|1AA4D7:D5DE| db $06, $78 ; duration, params
|1AA4D9:D5E0| db $9A ; play note D3
|1AA4DA:D5E1| db $06, $7A ; duration, params
|1AA4DC:D5E3| db $9A ; play note D3
|1AA4DD:D5E4| db $06, $79 ; duration, params
|1AA4DF:D5E6| db $9A ; play note D3
|1AA4E0:D5E7| db $06, $7A ; duration, params
|1AA4E2:D5E9| db $9A ; play note D3
|1AA4E3:D5EA| db $06, $7C ; duration, params
|1AA4E5:D5EC| db $9A ; play note D3
|1AA4E6:D5ED| db $03, $7B ; duration, params
|1AA4E8:D5EF| db $9A ; play note D3
|1AA4E9:D5F0| db $E0, $0C ; set instrument - cymbal
|1AA4EB:D5F2| db $ED, $FA ; set channel volume
|1AA4ED:D5F4| db $30, $7F ; duration, params
|1AA4EF:D5F6| db $9C ; play note E3
|1AA4F0:D5F7| db $EF : dw Song02_Sub_D858 : db $01 ; call segment subroutine
|1AA4F4:D5FB| db $EF : dw Song02_Sub_D865 : db $01 ; call segment subroutine
|1AA4F8:D5FF| db $30 ; duration
|1AA4F9:D600| db $85 ; play note F1
|1AA4FA:D601| db $18 ; duration
|1AA4FB:D602| db $85 ; play note F1
|1AA4FC:D603| db $85 ; play note F1

;---------------------------------------------------------------------------------------------------

Song02_Segment2_Track7:
|1AA4FD:D604| db $EF : dw Song02_Sub_D7A8 : db $01 ; call segment subroutine
|1AA501:D608| db $EF : dw Song02_Sub_D7CE : db $01 ; call segment subroutine
|1AA505:D60C| db $0C ; duration
|1AA506:D60D| db $B5 ; play note F5
|1AA507:D60E| db $06, $4D ; duration, params
|1AA509:D610| db $A9 ; play note F4
|1AA50A:D611| db $A9 ; play note F4
|1AA50B:D612| db $0C, $4E ; duration, params
|1AA50D:D614| db $A9 ; play note F4
|1AA50E:D615| db $06 ; duration
|1AA50F:D616| db $A9 ; play note F4
|1AA510:D617| db $A9 ; play note F4
|1AA511:D618| db $0C ; duration
|1AA512:D619| db $A9 ; play note F4
|1AA513:D61A| db $06, $4F ; duration, params
|1AA515:D61C| db $A9 ; play note F4
|1AA516:D61D| db $A9 ; play note F4
|1AA517:D61E| db $0C ; duration
|1AA518:D61F| db $A9 ; play note F4
|1AA519:D620| db $03 ; duration
|1AA51A:D621| db $A9 ; play note F4
|1AA51B:D622| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D623:
|1AA51C:D623| db $08, $5F ; duration, params
|1AA51E:D625| db $AE ; play note A#4
|1AA51F:D626| db $C9 ; rest
|1AA520:D627| db $08, $59 ; duration, params
|1AA522:D629| db $AC ; play note G#4
|1AA523:D62A| db $18, $5D ; duration, params
|1AA525:D62C| db $AE ; play note A#4
|1AA526:D62D| db $10, $3D ; duration, params
|1AA528:D62F| db $C8 ; sustain current note
|1AA529:D630| db $04, $2D ; duration, params
|1AA52B:D632| db $AE ; play note A#4
|1AA52C:D633| db $AE ; play note A#4
|1AA52D:D634| db $08, $2B ; duration, params
|1AA52F:D636| db $AE ; play note A#4
|1AA530:D637| db $AE ; play note A#4
|1AA531:D638| db $08, $2D ; duration, params
|1AA533:D63A| db $AE ; play note A#4
|1AA534:D63B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D63C:
|1AA535:D63C| db $06 ; duration
|1AA536:D63D| db $A6 ; play note D4
|1AA537:D63E| db $06, $75 ; duration, params
|1AA539:D640| db $A6 ; play note D4
|1AA53A:D641| db $06, $78 ; duration, params
|1AA53C:D643| db $A6 ; play note D4
|1AA53D:D644| db $06, $77 ; duration, params
|1AA53F:D646| db $A6 ; play note D4
|1AA540:D647| db $06, $7A ; duration, params
|1AA542:D649| db $A6 ; play note D4
|1AA543:D64A| db $06, $79 ; duration, params
|1AA545:D64C| db $A6 ; play note D4
|1AA546:D64D| db $06, $7C ; duration, params
|1AA548:D64F| db $A6 ; play note D4
|1AA549:D650| db $06, $7B ; duration, params
|1AA54B:D652| db $A6 ; play note D4
|1AA54C:D653| db $18, $7C ; duration, params
|1AA54E:D655| db $A6 ; play note D4
|1AA54F:D656| db $08, $79 ; duration, params
|1AA551:D658| db $A6 ; play note D4
|1AA552:D659| db $A6 ; play note D4
|1AA553:D65A| db $A6 ; play note D4
|1AA554:D65B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D65C:
|1AA555:D65C| db $08, $5F ; duration, params
|1AA557:D65E| db $A9 ; play note F4
|1AA558:D65F| db $C9 ; rest
|1AA559:D660| db $08, $59 ; duration, params
|1AA55B:D662| db $A9 ; play note F4
|1AA55C:D663| db $18, $5D ; duration, params
|1AA55E:D665| db $A9 ; play note F4
|1AA55F:D666| db $10, $37 ; duration, params
|1AA561:D668| db $C8 ; sustain current note
|1AA562:D669| db $08, $57 ; duration, params
|1AA564:D66B| db $A9 ; play note F4
|1AA565:D66C| db $08, $59 ; duration, params
|1AA567:D66E| db $A9 ; play note F4
|1AA568:D66F| db $A9 ; play note F4
|1AA569:D670| db $08, $49 ; duration, params
|1AA56B:D672| db $A9 ; play note F4
|1AA56C:D673| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D674:
|1AA56D:D674| db $08, $5F ; duration, params
|1AA56F:D676| db $A4 ; play note C4
|1AA570:D677| db $C9 ; rest
|1AA571:D678| db $08, $59 ; duration, params
|1AA573:D67A| db $A4 ; play note C4
|1AA574:D67B| db $18, $5D ; duration, params
|1AA576:D67D| db $A4 ; play note C4
|1AA577:D67E| db $10, $37 ; duration, params
|1AA579:D680| db $C8 ; sustain current note
|1AA57A:D681| db $08, $57 ; duration, params
|1AA57C:D683| db $A4 ; play note C4
|1AA57D:D684| db $08, $59 ; duration, params
|1AA57F:D686| db $A4 ; play note C4
|1AA580:D687| db $A4 ; play note C4
|1AA581:D688| db $08, $49 ; duration, params
|1AA583:D68A| db $A4 ; play note C4
|1AA584:D68B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D68C:
|1AA585:D68C| db $03, $79 ; duration, params
|1AA587:D68E| db $A6 ; play note D4
|1AA588:D68F| db $06, $77 ; duration, params
|1AA58A:D691| db $A6 ; play note D4
|1AA58B:D692| db $06, $75 ; duration, params
|1AA58D:D694| db $A6 ; play note D4
|1AA58E:D695| db $06, $76 ; duration, params
|1AA590:D697| db $A6 ; play note D4
|1AA591:D698| db $06, $77 ; duration, params
|1AA593:D69A| db $A6 ; play note D4
|1AA594:D69B| db $06, $78 ; duration, params
|1AA596:D69D| db $A6 ; play note D4
|1AA597:D69E| db $06, $79 ; duration, params
|1AA599:D6A0| db $A6 ; play note D4
|1AA59A:D6A1| db $06, $7A ; duration, params
|1AA59C:D6A3| db $A6 ; play note D4
|1AA59D:D6A4| db $06, $7B ; duration, params
|1AA59F:D6A6| db $A6 ; play note D4
|1AA5A0:D6A7| db $2D ; duration
|1AA5A1:D6A8| db $C9 ; rest
|1AA5A2:D6A9| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D6A0:
|1AA5A3:D6AA| db $ED, $FA ; set channel volume
|1AA5A5:D6AC| db $E1, $0A ; set panning - balanced
|1AA5A7:D6AE| db $E0, $0B ; set instrument - trombone
|1AA5A9:D6B0| db $E3, $12, $1C, $26 ; enable vibrato
|1AA5AD:D6B4| db $0C, $4D ; duration, params
|1AA5AF:D6B6| db $AE ; play note A#4
|1AA5B0:D6B7| db $C9 ; rest
|1AA5B1:D6B8| db $2A, $6D ; duration, params
|1AA5B3:D6BA| db $A9 ; play note F4
|1AA5B4:D6BB| db $06, $4D ; duration, params
|1AA5B6:D6BD| db $AE ; play note A#4
|1AA5B7:D6BE| db $06, $5D ; duration, params
|1AA5B9:D6C0| db $AE ; play note A#4
|1AA5BA:D6C1| db $06, $4D ; duration, params
|1AA5BC:D6C3| db $B0 ; play note C5
|1AA5BD:D6C4| db $06, $5D ; duration, params
|1AA5BF:D6C6| db $B2 ; play note D5
|1AA5C0:D6C7| db $06, $4D ; duration, params
|1AA5C2:D6C9| db $B3 ; play note D#5
|1AA5C3:D6CA| db $30, $6D ; duration, params
|1AA5C5:D6CC| db $B5 ; play note F5
|1AA5C6:D6CD| db $0C ; duration
|1AA5C7:D6CE| db $C9 ; rest
|1AA5C8:D6CF| db $0C, $2D ; duration, params
|1AA5CA:D6D1| db $B5 ; play note F5
|1AA5CB:D6D2| db $08, $7D ; duration, params
|1AA5CD:D6D4| db $B5 ; play note F5
|1AA5CE:D6D5| db $08, $5D ; duration, params
|1AA5D0:D6D7| db $B6 ; play note F#5
|1AA5D1:D6D8| db $B8 ; play note G#5
|1AA5D2:D6D9| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D6DA:
|1AA5D3:D6DA| db $30, $6D ; duration, params
|1AA5D5:D6DC| db $BA ; play note A#5
|1AA5D6:D6DD| db $10 ; duration
|1AA5D7:D6DE| db $C9 ; rest
|1AA5D8:D6DF| db $08, $2D ; duration, params
|1AA5DA:D6E1| db $BA ; play note A#5
|1AA5DB:D6E2| db $08, $5D ; duration, params
|1AA5DD:D6E4| db $BA ; play note A#5
|1AA5DE:D6E5| db $08, $6D ; duration, params
|1AA5E0:D6E7| db $B8 ; play note G#5
|1AA5E1:D6E8| db $08, $4D ; duration, params
|1AA5E3:D6EA| db $B6 ; play note F#5
|1AA5E4:D6EB| db $B8 ; play note G#5
|1AA5E5:D6EC| db $C9 ; rest
|1AA5E6:D6ED| db $B6 ; play note F#5
|1AA5E7:D6EE| db $30, $6D ; duration, params
|1AA5E9:D6F0| db $B5 ; play note F5
|1AA5EA:D6F1| db $18, $4D ; duration, params
|1AA5EC:D6F3| db $B5 ; play note F5
|1AA5ED:D6F4| db $0C, $2D ; duration, params
|1AA5EF:D6F6| db $B3 ; play note D#5
|1AA5F0:D6F7| db $06, $5D ; duration, params
|1AA5F2:D6F9| db $B3 ; play note D#5
|1AA5F3:D6FA| db $06, $2D ; duration, params
|1AA5F5:D6FC| db $B5 ; play note F5
|1AA5F6:D6FD| db $30, $4D ; duration, params
|1AA5F8:D6FF| db $B6 ; play note F#5
|1AA5F9:D700| db $0C, $6D ; duration, params
|1AA5FB:D702| db $B5 ; play note F5
|1AA5FC:D703| db $0C, $4D ; duration, params
|1AA5FE:D705| db $B3 ; play note D#5
|1AA5FF:D706| db $0C, $2D ; duration, params
|1AA601:D708| db $B1 ; play note C#5
|1AA602:D709| db $06, $5D ; duration, params
|1AA604:D70B| db $B1 ; play note C#5
|1AA605:D70C| db $06, $2D ; duration, params
|1AA607:D70E| db $B3 ; play note D#5
|1AA608:D70F| db $30, $4D ; duration, params
|1AA60A:D711| db $B5 ; play note F5
|1AA60B:D712| db $0C, $6D ; duration, params
|1AA60D:D714| db $B3 ; play note D#5
|1AA60E:D715| db $0C, $4D ; duration, params
|1AA610:D717| db $B1 ; play note C#5
|1AA611:D718| db $0C, $2D ; duration, params
|1AA613:D71A| db $B0 ; play note C5
|1AA614:D71B| db $06 ; duration
|1AA615:D71C| db $B0 ; play note C5
|1AA616:D71D| db $B2 ; play note D5
|1AA617:D71E| db $30, $6D ; duration, params
|1AA619:D720| db $B4 ; play note E5
|1AA61A:D721| db $18 ; duration
|1AA61B:D722| db $B7 ; play note G5
|1AA61C:D723| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D724:
|1AA61D:D724| db $18, $5D ; duration, params
|1AA61F:D726| db $96 ; play note A#2
|1AA620:D727| db $08, $4D ; duration, params
|1AA622:D729| db $96 ; play note A#2
|1AA623:D72A| db $96 ; play note A#2
|1AA624:D72B| db $94 ; play note G#2
|1AA625:D72C| db $18 ; duration
|1AA626:D72D| db $96 ; play note A#2
|1AA627:D72E| db $96 ; play note A#2
|1AA628:D72F| db $18, $5D ; duration, params
|1AA62A:D731| db $94 ; play note G#2
|1AA62B:D732| db $08, $4D ; duration, params
|1AA62D:D734| db $94 ; play note G#2
|1AA62E:D735| db $94 ; play note G#2
|1AA62F:D736| db $92 ; play note F#2
|1AA630:D737| db $18 ; duration
|1AA631:D738| db $94 ; play note G#2
|1AA632:D739| db $94 ; play note G#2
|1AA633:D73A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D73B:
|1AA634:D73B| db $18, $6D ; duration, params
|1AA636:D73D| db $A6 ; play note D4
|1AA637:D73E| db $08, $6B ; duration, params
|1AA639:D740| db $A6 ; play note D4
|1AA63A:D741| db $A6 ; play note D4
|1AA63B:D742| db $A6 ; play note D4
|1AA63C:D743| db $0C ; duration
|1AA63D:D744| db $A6 ; play note D4
|1AA63E:D745| db $A6 ; play note D4
|1AA63F:D746| db $06, $79 ; duration, params
|1AA641:D748| db $A6 ; play note D4
|1AA642:D749| db $A6 ; play note D4
|1AA643:D74A| db $A6 ; play note D4
|1AA644:D74B| db $A6 ; play note D4
|1AA645:D74C| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D74D:
|1AA646:D74D| db $18 ; duration
|1AA647:D74E| db $C9 ; rest
|1AA648:D74F| db $18, $7B ; duration, params
|1AA64A:D751| db $A2 ; play note A#3
|1AA64B:D752| db $30 ; duration
|1AA64C:D753| db $9D ; play note F3
|1AA64D:D754| db $12 ; duration
|1AA64E:D755| db $C8 ; sustain current note
|1AA64F:D756| db $06 ; duration
|1AA650:D757| db $A2 ; play note A#3
|1AA651:D758| db $A2 ; play note A#3
|1AA652:D759| db $A4 ; play note C4
|1AA653:D75A| db $A6 ; play note D4
|1AA654:D75B| db $A7 ; play note D#4
|1AA655:D75C| db $30 ; duration
|1AA656:D75D| db $A9 ; play note F4
|1AA657:D75E| db $12 ; duration
|1AA658:D75F| db $C8 ; sustain current note
|1AA659:D760| db $06 ; duration
|1AA65A:D761| db $9E ; play note F#3
|1AA65B:D762| db $9E ; play note F#3
|1AA65C:D763| db $A0 ; play note G#3
|1AA65D:D764| db $A2 ; play note A#3
|1AA65E:D765| db $A4 ; play note C4
|1AA65F:D766| db $18 ; duration
|1AA660:D767| db $A5 ; play note C#4
|1AA661:D768| db $9E ; play note F#3
|1AA662:D769| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D76A:
|1AA663:D76A| db $18 ; duration
|1AA664:D76B| db $9C ; play note E3
|1AA665:D76C| db $0C ; duration
|1AA666:D76D| db $9C ; play note E3
|1AA667:D76E| db $06 ; duration
|1AA668:D76F| db $9C ; play note E3
|1AA669:D770| db $9D ; play note F3
|1AA66A:D771| db $0C ; duration
|1AA66B:D772| db $9F ; play note G3
|1AA66C:D773| db $06 ; duration
|1AA66D:D774| db $9F ; play note G3
|1AA66E:D775| db $A1 ; play note A3
|1AA66F:D776| db $0C ; duration
|1AA670:D777| db $A2 ; play note A#3
|1AA671:D778| db $A4 ; play note C4
|1AA672:D779| db $30, $77 ; duration, params
|1AA674:D77B| db $A1 ; play note A3
|1AA675:D77C| db $A1 ; play note A3
|1AA676:D77D| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D77E:
|1AA677:D77E| db $60 ; duration
|1AA678:D77F| db $C9 ; rest
|1AA679:D780| db $C9 ; rest
|1AA67A:D781| db $C9 ; rest
|1AA67B:D782| db $C9 ; rest
|1AA67C:D783| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D784:
|1AA67D:D784| db $0C, $4D ; duration, params
|1AA67F:D786| db $A6 ; play note D4
|1AA680:D787| db $C9 ; rest
|1AA681:D788| db $2A, $6D ; duration, params
|1AA683:D78A| db $A2 ; play note A#3
|1AA684:D78B| db $06, $4D ; duration, params
|1AA686:D78D| db $A6 ; play note D4
|1AA687:D78E| db $06, $5D ; duration, params
|1AA689:D790| db $A6 ; play note D4
|1AA68A:D791| db $06, $4D ; duration, params
|1AA68C:D793| db $A7 ; play note D#4
|1AA68D:D794| db $06, $5D ; duration, params
|1AA68F:D796| db $A9 ; play note F4
|1AA690:D797| db $06, $4D ; duration, params
|1AA692:D799| db $AB ; play note G4
|1AA693:D79A| db $30, $6D ; duration, params
|1AA695:D79C| db $AC ; play note G#4
|1AA696:D79D| db $0C ; duration
|1AA697:D79E| db $C9 ; rest
|1AA698:D79F| db $0C, $2D ; duration, params
|1AA69A:D7A1| db $AC ; play note G#4
|1AA69B:D7A2| db $08, $5D ; duration, params
|1AA69D:D7A4| db $AC ; play note G#4
|1AA69E:D7A5| db $AE ; play note A#4
|1AA69F:D7A6| db $B0 ; play note C5
|1AA6A0:D7A7| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D7A8:
|1AA6A1:D7A8| db $09 ; duration
|1AA6A2:D7A9| db $C9 ; rest
|1AA6A3:D7AA| db $0C, $4D ; duration, params
|1AA6A5:D7AC| db $AE ; play note A#4
|1AA6A6:D7AD| db $C9 ; rest
|1AA6A7:D7AE| db $2A, $6D ; duration, params
|1AA6A9:D7B0| db $A9 ; play note F4
|1AA6AA:D7B1| db $06, $4D ; duration, params
|1AA6AC:D7B3| db $AE ; play note A#4
|1AA6AD:D7B4| db $06, $5D ; duration, params
|1AA6AF:D7B6| db $AE ; play note A#4
|1AA6B0:D7B7| db $06, $4D ; duration, params
|1AA6B2:D7B9| db $B0 ; play note C5
|1AA6B3:D7BA| db $06, $5D ; duration, params
|1AA6B5:D7BC| db $B2 ; play note D5
|1AA6B6:D7BD| db $06, $4D ; duration, params
|1AA6B8:D7BF| db $B3 ; play note D#5
|1AA6B9:D7C0| db $30, $6D ; duration, params
|1AA6BB:D7C2| db $B5 ; play note F5
|1AA6BC:D7C3| db $0C ; duration
|1AA6BD:D7C4| db $C9 ; rest
|1AA6BE:D7C5| db $0C, $2D ; duration, params
|1AA6C0:D7C7| db $B5 ; play note F5
|1AA6C1:D7C8| db $08, $5D ; duration, params
|1AA6C3:D7CA| db $B5 ; play note F5
|1AA6C4:D7CB| db $B6 ; play note F#5
|1AA6C5:D7CC| db $B8 ; play note G#5
|1AA6C6:D7CD| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D7CE:
|1AA6C7:D7CE| db $48 ; duration
|1AA6C8:D7CF| db $BA ; play note A#5
|1AA6C9:D7D0| db $18 ; duration
|1AA6CA:D7D1| db $BD ; play note C#6
|1AA6CB:D7D2| db $0C ; duration
|1AA6CC:D7D3| db $BC ; play note C6
|1AA6CD:D7D4| db $C9 ; rest
|1AA6CE:D7D5| db $30 ; duration
|1AA6CF:D7D6| db $B9 ; play note A5
|1AA6D0:D7D7| db $18 ; duration
|1AA6D1:D7D8| db $B5 ; play note F5
|1AA6D2:D7D9| db $48 ; duration
|1AA6D3:D7DA| db $B6 ; play note F#5
|1AA6D4:D7DB| db $18 ; duration
|1AA6D5:D7DC| db $BA ; play note A#5
|1AA6D6:D7DD| db $0C ; duration
|1AA6D7:D7DE| db $B9 ; play note A5
|1AA6D8:D7DF| db $C9 ; rest
|1AA6D9:D7E0| db $30 ; duration
|1AA6DA:D7E1| db $B5 ; play note F5
|1AA6DB:D7E2| db $18 ; duration
|1AA6DC:D7E3| db $B5 ; play note F5
|1AA6DD:D7E4| db $48 ; duration
|1AA6DE:D7E5| db $B6 ; play note F#5
|1AA6DF:D7E6| db $18 ; duration
|1AA6E0:D7E7| db $BA ; play note A#5
|1AA6E1:D7E8| db $0C ; duration
|1AA6E2:D7E9| db $B9 ; play note A5
|1AA6E3:D7EA| db $C9 ; rest
|1AA6E4:D7EB| db $30 ; duration
|1AA6E5:D7EC| db $B5 ; play note F5
|1AA6E6:D7ED| db $18 ; duration
|1AA6E7:D7EE| db $B2 ; play note D5
|1AA6E8:D7EF| db $48 ; duration
|1AA6E9:D7F0| db $B3 ; play note D#5
|1AA6EA:D7F1| db $18 ; duration
|1AA6EB:D7F2| db $B6 ; play note F#5
|1AA6EC:D7F3| db $0C ; duration
|1AA6ED:D7F4| db $B5 ; play note F5
|1AA6EE:D7F5| db $C9 ; rest
|1AA6EF:D7F6| db $30 ; duration
|1AA6F0:D7F7| db $B1 ; play note C#5
|1AA6F1:D7F8| db $18 ; duration
|1AA6F2:D7F9| db $AE ; play note A#4
|1AA6F3:D7FA| db $0C, $2B ; duration, params
|1AA6F5:D7FC| db $B0 ; play note C5
|1AA6F6:D7FD| db $06 ; duration
|1AA6F7:D7FE| db $B0 ; play note C5
|1AA6F8:D7FF| db $B2 ; play note D5
|1AA6F9:D800| db $30, $6D ; duration, params
|1AA6FB:D802| db $B4 ; play note E5
|1AA6FC:D803| db $18 ; duration
|1AA6FD:D804| db $B7 ; play note G5
|1AA6FE:D805| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D806:
|1AA6FF:D806| db $08, $4F ; duration, params
|1AA701:D808| db $90 ; play note E2
|1AA702:D809| db $96 ; play note A#2
|1AA703:D80A| db $99 ; play note C#3
|1AA704:D80B| db $9C ; play note E3
|1AA705:D80C| db $A2 ; play note A#3
|1AA706:D80D| db $A5 ; play note C#4
|1AA707:D80E| db $18 ; duration
|1AA708:D80F| db $A8 ; play note E4
|1AA709:D810| db $C9 ; rest
|1AA70A:D811| db $18, $4D ; duration, params
|1AA70C:D813| db $A9 ; play note F4
|1AA70D:D814| db $08 ; duration
|1AA70E:D815| db $91 ; play note F2
|1AA70F:D816| db $91 ; play note F2
|1AA710:D817| db $91 ; play note F2
|1AA711:D818| db $18 ; duration
|1AA712:D819| db $91 ; play note F2
|1AA713:D81A| db $C9 ; rest
|1AA714:D81B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D81C:
|1AA715:D81C| db $06, $6D ; duration, params
|1AA717:D81E| db $A6 ; play note D4
|1AA718:D81F| db $06, $67 ; duration, params
|1AA71A:D821| db $A6 ; play note D4
|1AA71B:D822| db $06, $69 ; duration, params
|1AA71D:D824| db $A6 ; play note D4
|1AA71E:D825| db $06, $68 ; duration, params
|1AA720:D827| db $A6 ; play note D4
|1AA721:D828| db $06, $69 ; duration, params
|1AA723:D82A| db $A6 ; play note D4
|1AA724:D82B| db $06, $6B ; duration, params
|1AA726:D82D| db $A6 ; play note D4
|1AA727:D82E| db $06, $6A ; duration, params
|1AA729:D830| db $A6 ; play note D4
|1AA72A:D831| db $06, $6B ; duration, params
|1AA72C:D833| db $A6 ; play note D4
|1AA72D:D834| db $0C, $6D ; duration, params
|1AA72F:D836| db $A6 ; play note D4
|1AA730:D837| db $A6 ; play note D4
|1AA731:D838| db $06, $79 ; duration, params
|1AA733:D83A| db $A6 ; play note D4
|1AA734:D83B| db $A6 ; play note D4
|1AA735:D83C| db $A6 ; play note D4
|1AA736:D83D| db $A6 ; play note D4
|1AA737:D83E| db $18, $6D ; duration, params
|1AA739:D840| db $A6 ; play note D4
|1AA73A:D841| db $08, $6B ; duration, params
|1AA73C:D843| db $A6 ; play note D4
|1AA73D:D844| db $A6 ; play note D4
|1AA73E:D845| db $A6 ; play note D4
|1AA73F:D846| db $0C ; duration
|1AA740:D847| db $A6 ; play note D4
|1AA741:D848| db $A6 ; play note D4
|1AA742:D849| db $06, $79 ; duration, params
|1AA744:D84B| db $A6 ; play note D4
|1AA745:D84C| db $A6 ; play note D4
|1AA746:D84D| db $A6 ; play note D4
|1AA747:D84E| db $A6 ; play note D4
|1AA748:D84F| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D850:
|1AA749:D850| db $18 ; duration
|1AA74A:D851| db $9C ; play note E3
|1AA74B:D852| db $48 ; duration
|1AA74C:D853| db $A2 ; play note A#3
|1AA74D:D854| db $30 ; duration
|1AA74E:D855| db $A1 ; play note A3
|1AA74F:D856| db $9D ; play note F3
|1AA750:D857| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D858:
|1AA751:D858| db $E0, $02 ; set instrument - timpani
|1AA753:D85A| db $ED, $C8 ; set channel volume
|1AA755:D85C| db $18 ; duration
|1AA756:D85D| db $C9 ; rest
|1AA757:D85E| db $08 ; duration
|1AA758:D85F| db $85 ; play note F1
|1AA759:D860| db $85 ; play note F1
|1AA75A:D861| db $85 ; play note F1
|1AA75B:D862| db $30 ; duration
|1AA75C:D863| db $85 ; play note F1
|1AA75D:D864| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song02_Sub_D865:
|1AA75E:D865| db $60 ; duration
|1AA75F:D866| db $C9 ; rest
|1AA760:D867| db $C9 ; rest
|1AA761:D868| db $C9 ; rest
|1AA762:D869| db $00 ; End

;===================================================================================================

Song03_Rain:
|1AA763:D86A| dw Song03_Segment0

Song03_Loop:
|1AA765:D86C| dw Song03_Segment1
|1AA767:D86E| dw Song03_Segment1
|1AA769:D870| dw Song03_Segment2
|1AA76B:D872| dw $00FF, Song03_Loop ; Loop point
|1AA76F:D876| dw $0000

Song03_Unused0:
|1AA771:D878| dw Song03_Unused0_Track0
|1AA773:D87A| dw Song03_Unused0_Track1
|1AA775:D87C| dw Song03_Unused0_Track2
|1AA777:D87E| dw Song03_Unused0_Track3
|1AA779:D880| dw Song03_Unused0_Track4
|1AA77B:D882| dw Song03_Unused0_Track5
|1AA77D:D884| dw $0000
|1AA77F:D886| dw $0000

Song03_Segment0:
|1AA781:D888| dw Song03_Segment0_Track0
|1AA783:D88A| dw Song03_Segment0_Track1
|1AA785:D88C| dw Song03_Segment0_Track2
|1AA787:D88E| dw Song03_Segment0_Track3
|1AA789:D890| dw $0000
|1AA78B:D892| dw $0000
|1AA78D:D894| dw $0000
|1AA78F:D896| dw $0000

Song03_Segment1:
|1AA791:D898| dw Song03_Segment1_Track0
|1AA793:D89A| dw Song03_Segment1_Track1
|1AA795:D89C| dw Song03_Segment1_Track2
|1AA797:D89E| dw Song03_Segment1_Track3
|1AA799:D8A0| dw Song03_Segment1_Track4
|1AA79B:D8A2| dw Song03_Segment1_Track5
|1AA79D:D8A4| dw $0000
|1AA79F:D8A6| dw $0000

Song03_Unused1:
|1AA7A1:D8A8| dw Song03_Unused1_Track0
|1AA7A3:D8AA| dw Song03_Unused1_Track1
|1AA7A5:D8AC| dw Song03_Unused1_Track2
|1AA7A7:D8AE| dw Song03_Unused1_Track3
|1AA7A9:D8B0| dw Song03_Unused1_Track4
|1AA7AB:D8B2| dw Song03_Unused1_Track5
|1AA7AD:D8B4| dw $0000
|1AA7AF:D8B6| dw $0000

Song03_Unused2:
|1AA7B1:D8B8| dw Song03_Unused2_Track0
|1AA7B3:D8BA| dw Song03_Unused2_Track1
|1AA7B5:D8BC| dw Song03_Unused2_Track2
|1AA7B7:D8BE| dw Song03_Unused2_Track3
|1AA7B9:D8C0| dw Song03_Unused2_Track4
|1AA7BB:D8C2| dw Song03_Unused2_Track5
|1AA7BD:D8C4| dw $0000
|1AA7BF:D8C6| dw $0000

Song03_Segment2:
|1AA7C1:D8C8| dw Song03_Segment2_Track0
|1AA7C3:D8CA| dw Song03_Segment2_Track1
|1AA7C5:D8CC| dw Song03_Segment2_Track2
|1AA7C7:D8CE| dw Song03_Segment2_Track3
|1AA7C9:D8D0| dw Song03_Segment2_Track4
|1AA7CB:D8D2| dw Song03_Segment2_Track5
|1AA7CD:D8D4| dw $0000
|1AA7CF:D8D6| dw $0000

;---------------------------------------------------------------------------------------------------

Song03_Unused0_Track0:
|1AA7D1:D8D8| db $18 ; duration
|1AA7D2:D8D9| db $C9 ; rest
|1AA7D3:D8DA| db $48, $7B ; duration, params
|1AA7D5:D8DC| db $AF ; play note B4
|1AA7D6:D8DD| db $18 ; duration
|1AA7D7:D8DE| db $C9 ; rest
|1AA7D8:D8DF| db $48 ; duration
|1AA7D9:D8E0| db $B0 ; play note C5
|1AA7DA:D8E1| db $18 ; duration
|1AA7DB:D8E2| db $C9 ; rest
|1AA7DC:D8E3| db $48 ; duration
|1AA7DD:D8E4| db $B1 ; play note C#5
|1AA7DE:D8E5| db $18 ; duration
|1AA7DF:D8E6| db $C9 ; rest
|1AA7E0:D8E7| db $48 ; duration
|1AA7E1:D8E8| db $B2 ; play note D5
|1AA7E2:D8E9| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song03_Unused0_Track1:
|1AA7E3:D8EA| db $18 ; duration
|1AA7E4:D8EB| db $C9 ; rest
|1AA7E5:D8EC| db $48, $7B ; duration, params
|1AA7E7:D8EE| db $AA ; play note F#4
|1AA7E8:D8EF| db $18 ; duration
|1AA7E9:D8F0| db $C9 ; rest
|1AA7EA:D8F1| db $48 ; duration
|1AA7EB:D8F2| db $AB ; play note G4
|1AA7EC:D8F3| db $18 ; duration
|1AA7ED:D8F4| db $C9 ; rest
|1AA7EE:D8F5| db $48 ; duration
|1AA7EF:D8F6| db $AC ; play note G#4
|1AA7F0:D8F7| db $18 ; duration
|1AA7F1:D8F8| db $C9 ; rest
|1AA7F2:D8F9| db $48 ; duration
|1AA7F3:D8FA| db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song03_Unused0_Track2:
|1AA7F4:D8FB| db $0C, $7D ; duration, params
|1AA7F6:D8FD| db $90 ; play note E2
|1AA7F7:D8FE| db $97 ; play note B2
|1AA7F8:D8FF| db $48 ; duration
|1AA7F9:D900| db $9C ; play note E3
|1AA7FA:D901| db $EF : dw Song03_Sub_DC20 : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song03_Unused0_Track3:
|1AA7FE:D905| db $18 ; duration
|1AA7FF:D906| db $C9 ; rest
|1AA800:D907| db $48, $7B ; duration, params
|1AA802:D909| db $A8 ; play note E4
|1AA803:D90A| db $18 ; duration
|1AA804:D90B| db $C9 ; rest
|1AA805:D90C| db $48 ; duration
|1AA806:D90D| db $A9 ; play note F4
|1AA807:D90E| db $18 ; duration
|1AA808:D90F| db $C9 ; rest
|1AA809:D910| db $48 ; duration
|1AA80A:D911| db $AA ; play note F#4
|1AA80B:D912| db $18 ; duration
|1AA80C:D913| db $C9 ; rest
|1AA80D:D914| db $48 ; duration
|1AA80E:D915| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song03_Unused0_Track4:
|1AA80F:D916| db $EF : dw Song03_Sub_DC26 : db $01 ; call segment subroutine
|1AA813:D91A| db $B2 ; play note D5
|1AA814:D91B| db $B2 ; play note D5
|1AA815:D91C| db $B2 ; play note D5
|1AA816:D91D| db $B2 ; play note D5
|1AA817:D91E| db $B2 ; play note D5
|1AA818:D91F| db $B2 ; play note D5
|1AA819:D920| db $B2 ; play note D5
|1AA81A:D921| db $B2 ; play note D5
|1AA81B:D922| db $B2 ; play note D5
|1AA81C:D923| db $B2 ; play note D5
|1AA81D:D924| db $B2 ; play note D5
|1AA81E:D925| db $B2 ; play note D5
|1AA81F:D926| db $B2 ; play note D5
|1AA820:D927| db $B2 ; play note D5
|1AA821:D928| db $B2 ; play note D5
|1AA822:D929| db $B2 ; play note D5

;---------------------------------------------------------------------------------------------------

Song03_Unused0_Track5:
|1AA823:D92A| db $EF : dw Song03_Sub_DC59 : db $01 ; call segment subroutine
|1AA827:D92E| db $AD ; play note A4
|1AA828:D92F| db $AD ; play note A4
|1AA829:D930| db $AD ; play note A4
|1AA82A:D931| db $AD ; play note A4
|1AA82B:D932| db $AD ; play note A4
|1AA82C:D933| db $AD ; play note A4
|1AA82D:D934| db $AD ; play note A4
|1AA82E:D935| db $AD ; play note A4
|1AA82F:D936| db $AD ; play note A4
|1AA830:D937| db $AD ; play note A4
|1AA831:D938| db $AD ; play note A4
|1AA832:D939| db $AD ; play note A4
|1AA833:D93A| db $AD ; play note A4
|1AA834:D93B| db $AD ; play note A4
|1AA835:D93C| db $AD ; play note A4
|1AA836:D93D| db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song03_Segment0_Track0:
|1AA837:D93E| db $FA, $18 ; set base percussion sample
|1AA839:D940| db $E5, $C8 ; set song volume
|1AA83B:D942| db $E7, $1D ; set song tempo
|1AA83D:D944| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1AA841:D948| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1AA845:D94C| db $F8, $1E, $28, $28 ; initiate gradual echo volume change
|1AA849:D950| db $E0, $0A ; set instrument - strings B
|1AA84B:D952| db $ED, $C8 ; set channel volume
|1AA84D:D954| db $E3, $14, $19, $1E ; enable vibrato
|1AA851:D958| db $18 ; duration
|1AA852:D959| db $C9 ; rest
|1AA853:D95A| db $48, $7B ; duration, params
|1AA855:D95C| db $AB ; play note G4
|1AA856:D95D| db $18 ; duration
|1AA857:D95E| db $C9 ; rest
|1AA858:D95F| db $48 ; duration
|1AA859:D960| db $AC ; play note G#4
|1AA85A:D961| db $18 ; duration
|1AA85B:D962| db $C9 ; rest
|1AA85C:D963| db $48 ; duration
|1AA85D:D964| db $AD ; play note A4
|1AA85E:D965| db $18 ; duration
|1AA85F:D966| db $C9 ; rest
|1AA860:D967| db $48 ; duration
|1AA861:D968| db $AE ; play note A#4
|1AA862:D969| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song03_Segment0_Track1:
|1AA863:D96A| db $E0, $0A ; set instrument - strings B
|1AA865:D96C| db $ED, $C8 ; set channel volume
|1AA867:D96E| db $E3, $14, $19, $1E ; enable vibrato
|1AA86B:D972| db $18 ; duration
|1AA86C:D973| db $C9 ; rest
|1AA86D:D974| db $48, $7B ; duration, params
|1AA86F:D976| db $A6 ; play note D4
|1AA870:D977| db $18 ; duration
|1AA871:D978| db $C9 ; rest
|1AA872:D979| db $48 ; duration
|1AA873:D97A| db $A7 ; play note D#4
|1AA874:D97B| db $18 ; duration
|1AA875:D97C| db $C9 ; rest
|1AA876:D97D| db $48 ; duration
|1AA877:D97E| db $A8 ; play note E4
|1AA878:D97F| db $18 ; duration
|1AA879:D980| db $C9 ; rest
|1AA87A:D981| db $48 ; duration
|1AA87B:D982| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song03_Segment0_Track2:
|1AA87C:D983| db $EF : dw Song03_Sub_DC8C : db $01 ; call segment subroutine
|1AA880:D987| db $EF : dw Song03_Sub_DC9B : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song03_Segment0_Track3:
|1AA884:D98B| db $E0, $0A ; set instrument - strings B
|1AA886:D98D| db $ED, $C8 ; set channel volume
|1AA888:D98F| db $E3, $14, $19, $1E ; enable vibrato
|1AA88C:D993| db $18 ; duration
|1AA88D:D994| db $C9 ; rest
|1AA88E:D995| db $48, $7B ; duration, params
|1AA890:D997| db $A4 ; play note C4
|1AA891:D998| db $18 ; duration
|1AA892:D999| db $C9 ; rest
|1AA893:D99A| db $48 ; duration
|1AA894:D99B| db $A5 ; play note C#4
|1AA895:D99C| db $18 ; duration
|1AA896:D99D| db $C9 ; rest
|1AA897:D99E| db $48 ; duration
|1AA898:D99F| db $A6 ; play note D4
|1AA899:D9A0| db $18 ; duration
|1AA89A:D9A1| db $C9 ; rest
|1AA89B:D9A2| db $48 ; duration
|1AA89C:D9A3| db $A7 ; play note D#4

;---------------------------------------------------------------------------------------------------

Song03_Segment1_Track0:
|1AA89D:D9A4| db $E0, $12 ; set instrument - horn
|1AA89F:D9A6| db $ED, $C8 ; set channel volume
|1AA8A1:D9A8| db $E3, $14, $19, $1E ; enable vibrato
|1AA8A5:D9AC| db $18 ; duration
|1AA8A6:D9AD| db $C9 ; rest
|1AA8A7:D9AE| db $48, $7B ; duration, params
|1AA8A9:D9B0| db $AB ; play note G4
|1AA8AA:D9B1| db $18 ; duration
|1AA8AB:D9B2| db $C9 ; rest
|1AA8AC:D9B3| db $48 ; duration
|1AA8AD:D9B4| db $AC ; play note G#4
|1AA8AE:D9B5| db $18 ; duration
|1AA8AF:D9B6| db $C9 ; rest
|1AA8B0:D9B7| db $48 ; duration
|1AA8B1:D9B8| db $AD ; play note A4
|1AA8B2:D9B9| db $18 ; duration
|1AA8B3:D9BA| db $C9 ; rest
|1AA8B4:D9BB| db $48 ; duration
|1AA8B5:D9BC| db $AE ; play note A#4
|1AA8B6:D9BD| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song03_Segment1_Track1:
|1AA8B7:D9BE| db $E0, $12 ; set instrument - horn
|1AA8B9:D9C0| db $ED, $C8 ; set channel volume
|1AA8BB:D9C2| db $E3, $14, $19, $1E ; enable vibrato
|1AA8BF:D9C6| db $18 ; duration
|1AA8C0:D9C7| db $C9 ; rest
|1AA8C1:D9C8| db $48, $7B ; duration, params
|1AA8C3:D9CA| db $A6 ; play note D4
|1AA8C4:D9CB| db $18 ; duration
|1AA8C5:D9CC| db $C9 ; rest
|1AA8C6:D9CD| db $48 ; duration
|1AA8C7:D9CE| db $A7 ; play note D#4
|1AA8C8:D9CF| db $18 ; duration
|1AA8C9:D9D0| db $C9 ; rest
|1AA8CA:D9D1| db $48 ; duration
|1AA8CB:D9D2| db $A8 ; play note E4
|1AA8CC:D9D3| db $18 ; duration
|1AA8CD:D9D4| db $C9 ; rest
|1AA8CE:D9D5| db $48 ; duration
|1AA8CF:D9D6| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song03_Segment1_Track2:
|1AA8D0:D9D7| db $EF : dw Song03_Sub_DC8C : db $01 ; call segment subroutine
|1AA8D4:D9DB| db $EF : dw Song03_Sub_DC9B : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song03_Segment1_Track3:
|1AA8D8:D9DF| db $E0, $12 ; set instrument - horn
|1AA8DA:D9E1| db $ED, $C8 ; set channel volume
|1AA8DC:D9E3| db $E3, $14, $19, $1E ; enable vibrato
|1AA8E0:D9E7| db $18 ; duration
|1AA8E1:D9E8| db $C9 ; rest
|1AA8E2:D9E9| db $48, $7B ; duration, params
|1AA8E4:D9EB| db $A4 ; play note C4
|1AA8E5:D9EC| db $18 ; duration
|1AA8E6:D9ED| db $C9 ; rest
|1AA8E7:D9EE| db $48 ; duration
|1AA8E8:D9EF| db $A5 ; play note C#4
|1AA8E9:D9F0| db $18 ; duration
|1AA8EA:D9F1| db $C9 ; rest
|1AA8EB:D9F2| db $48 ; duration
|1AA8EC:D9F3| db $A6 ; play note D4
|1AA8ED:D9F4| db $18 ; duration
|1AA8EE:D9F5| db $C9 ; rest
|1AA8EF:D9F6| db $48 ; duration
|1AA8F0:D9F7| db $A7 ; play note D#4

;---------------------------------------------------------------------------------------------------

Song03_Segment1_Track4:
|1AA8F1:D9F8| db $E0, $0A ; set instrument - strings B
|1AA8F3:D9FA| db $ED, $C8 ; set channel volume
|1AA8F5:D9FC| db $E3, $14, $19, $1E ; enable vibrato
|1AA8F9:DA00| db $06, $7B ; duration, params
|1AA8FB:DA02| db $AB ; play note G4
|1AA8FC:DA03| db $AB ; play note G4
|1AA8FD:DA04| db $AB ; play note G4
|1AA8FE:DA05| db $AB ; play note G4
|1AA8FF:DA06| db $AB ; play note G4
|1AA900:DA07| db $AB ; play note G4
|1AA901:DA08| db $AB ; play note G4
|1AA902:DA09| db $AB ; play note G4
|1AA903:DA0A| db $AB ; play note G4
|1AA904:DA0B| db $AB ; play note G4
|1AA905:DA0C| db $AB ; play note G4
|1AA906:DA0D| db $AB ; play note G4
|1AA907:DA0E| db $AB ; play note G4
|1AA908:DA0F| db $AB ; play note G4
|1AA909:DA10| db $AB ; play note G4
|1AA90A:DA11| db $AB ; play note G4
|1AA90B:DA12| db $AC ; play note G#4
|1AA90C:DA13| db $AC ; play note G#4
|1AA90D:DA14| db $AC ; play note G#4
|1AA90E:DA15| db $AC ; play note G#4
|1AA90F:DA16| db $AC ; play note G#4
|1AA910:DA17| db $AC ; play note G#4
|1AA911:DA18| db $AC ; play note G#4
|1AA912:DA19| db $AC ; play note G#4
|1AA913:DA1A| db $AC ; play note G#4
|1AA914:DA1B| db $AC ; play note G#4
|1AA915:DA1C| db $AC ; play note G#4
|1AA916:DA1D| db $AC ; play note G#4
|1AA917:DA1E| db $AC ; play note G#4
|1AA918:DA1F| db $AC ; play note G#4
|1AA919:DA20| db $AC ; play note G#4
|1AA91A:DA21| db $AC ; play note G#4
|1AA91B:DA22| db $AD ; play note A4
|1AA91C:DA23| db $AD ; play note A4
|1AA91D:DA24| db $AD ; play note A4
|1AA91E:DA25| db $AD ; play note A4
|1AA91F:DA26| db $AD ; play note A4
|1AA920:DA27| db $AD ; play note A4
|1AA921:DA28| db $AD ; play note A4
|1AA922:DA29| db $AD ; play note A4
|1AA923:DA2A| db $AD ; play note A4
|1AA924:DA2B| db $AD ; play note A4
|1AA925:DA2C| db $AD ; play note A4
|1AA926:DA2D| db $AD ; play note A4
|1AA927:DA2E| db $AD ; play note A4
|1AA928:DA2F| db $AD ; play note A4
|1AA929:DA30| db $AD ; play note A4
|1AA92A:DA31| db $AD ; play note A4
|1AA92B:DA32| db $AE ; play note A#4
|1AA92C:DA33| db $AE ; play note A#4
|1AA92D:DA34| db $AE ; play note A#4
|1AA92E:DA35| db $AE ; play note A#4
|1AA92F:DA36| db $AE ; play note A#4
|1AA930:DA37| db $AE ; play note A#4
|1AA931:DA38| db $AE ; play note A#4
|1AA932:DA39| db $AE ; play note A#4
|1AA933:DA3A| db $AE ; play note A#4
|1AA934:DA3B| db $AE ; play note A#4
|1AA935:DA3C| db $AE ; play note A#4
|1AA936:DA3D| db $AE ; play note A#4
|1AA937:DA3E| db $AE ; play note A#4
|1AA938:DA3F| db $AE ; play note A#4
|1AA939:DA40| db $AE ; play note A#4
|1AA93A:DA41| db $AE ; play note A#4

;---------------------------------------------------------------------------------------------------

Song03_Segment1_Track5:
|1AA93B:DA42| db $E0, $0A ; set instrument - strings B
|1AA93D:DA44| db $ED, $C8 ; set channel volume
|1AA93F:DA46| db $E3, $14, $19, $1E ; enable vibrato
|1AA943:DA4A| db $06, $7B ; duration, params
|1AA945:DA4C| db $A6 ; play note D4
|1AA946:DA4D| db $A6 ; play note D4
|1AA947:DA4E| db $A6 ; play note D4
|1AA948:DA4F| db $A6 ; play note D4
|1AA949:DA50| db $A6 ; play note D4
|1AA94A:DA51| db $A6 ; play note D4
|1AA94B:DA52| db $A6 ; play note D4
|1AA94C:DA53| db $A6 ; play note D4
|1AA94D:DA54| db $A6 ; play note D4
|1AA94E:DA55| db $A6 ; play note D4
|1AA94F:DA56| db $A6 ; play note D4
|1AA950:DA57| db $A6 ; play note D4
|1AA951:DA58| db $A6 ; play note D4
|1AA952:DA59| db $A6 ; play note D4
|1AA953:DA5A| db $A6 ; play note D4
|1AA954:DA5B| db $A6 ; play note D4
|1AA955:DA5C| db $A7 ; play note D#4
|1AA956:DA5D| db $A7 ; play note D#4
|1AA957:DA5E| db $A7 ; play note D#4
|1AA958:DA5F| db $A7 ; play note D#4
|1AA959:DA60| db $A7 ; play note D#4
|1AA95A:DA61| db $A7 ; play note D#4
|1AA95B:DA62| db $A7 ; play note D#4
|1AA95C:DA63| db $A7 ; play note D#4
|1AA95D:DA64| db $A7 ; play note D#4
|1AA95E:DA65| db $A7 ; play note D#4
|1AA95F:DA66| db $A7 ; play note D#4
|1AA960:DA67| db $A7 ; play note D#4
|1AA961:DA68| db $A7 ; play note D#4
|1AA962:DA69| db $A7 ; play note D#4
|1AA963:DA6A| db $A7 ; play note D#4
|1AA964:DA6B| db $A7 ; play note D#4
|1AA965:DA6C| db $A8 ; play note E4
|1AA966:DA6D| db $A8 ; play note E4
|1AA967:DA6E| db $A8 ; play note E4
|1AA968:DA6F| db $A8 ; play note E4
|1AA969:DA70| db $A8 ; play note E4
|1AA96A:DA71| db $A8 ; play note E4
|1AA96B:DA72| db $A8 ; play note E4
|1AA96C:DA73| db $A8 ; play note E4
|1AA96D:DA74| db $A8 ; play note E4
|1AA96E:DA75| db $A8 ; play note E4
|1AA96F:DA76| db $A8 ; play note E4
|1AA970:DA77| db $A8 ; play note E4
|1AA971:DA78| db $A8 ; play note E4
|1AA972:DA79| db $A8 ; play note E4
|1AA973:DA7A| db $A8 ; play note E4
|1AA974:DA7B| db $A8 ; play note E4
|1AA975:DA7C| db $A9 ; play note F4
|1AA976:DA7D| db $A9 ; play note F4
|1AA977:DA7E| db $A9 ; play note F4
|1AA978:DA7F| db $A9 ; play note F4
|1AA979:DA80| db $A9 ; play note F4
|1AA97A:DA81| db $A9 ; play note F4
|1AA97B:DA82| db $A9 ; play note F4
|1AA97C:DA83| db $A9 ; play note F4
|1AA97D:DA84| db $A9 ; play note F4
|1AA97E:DA85| db $A9 ; play note F4
|1AA97F:DA86| db $A9 ; play note F4
|1AA980:DA87| db $A9 ; play note F4
|1AA981:DA88| db $A9 ; play note F4
|1AA982:DA89| db $A9 ; play note F4
|1AA983:DA8A| db $A9 ; play note F4
|1AA984:DA8B| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song03_Unused1_Track0:
|1AA985:DA8C| db $18 ; duration
|1AA986:DA8D| db $C9 ; rest
|1AA987:DA8E| db $48, $7B ; duration, params
|1AA989:DA90| db $B3 ; play note D#5
|1AA98A:DA91| db $18 ; duration
|1AA98B:DA92| db $C9 ; rest
|1AA98C:DA93| db $48 ; duration
|1AA98D:DA94| db $B2 ; play note D5
|1AA98E:DA95| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song03_Unused1_Track1:
|1AA98F:DA96| db $18 ; duration
|1AA990:DA97| db $C9 ; rest
|1AA991:DA98| db $48, $7B ; duration, params
|1AA993:DA9A| db $AE ; play note A#4
|1AA994:DA9B| db $18 ; duration
|1AA995:DA9C| db $C9 ; rest
|1AA996:DA9D| db $48 ; duration
|1AA997:DA9E| db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song03_Unused1_Track2:
|1AA998:DA9F| db $0C, $7D ; duration, params
|1AA99A:DAA1| db $94 ; play note G#2
|1AA99B:DAA2| db $9B ; play note D#3
|1AA99C:DAA3| db $48 ; duration
|1AA99D:DAA4| db $A0 ; play note G#3
|1AA99E:DAA5| db $0C ; duration
|1AA99F:DAA6| db $95 ; play note A2
|1AA9A0:DAA7| db $9C ; play note E3
|1AA9A1:DAA8| db $48 ; duration
|1AA9A2:DAA9| db $A1 ; play note A3

;---------------------------------------------------------------------------------------------------

Song03_Unused1_Track3:
|1AA9A3:DAAA| db $18 ; duration
|1AA9A4:DAAB| db $C9 ; rest
|1AA9A5:DAAC| db $48, $7B ; duration, params
|1AA9A7:DAAE| db $AC ; play note G#4
|1AA9A8:DAAF| db $18 ; duration
|1AA9A9:DAB0| db $C9 ; rest
|1AA9AA:DAB1| db $48 ; duration
|1AA9AB:DAB2| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song03_Unused1_Track4:
|1AA9AC:DAB3| db $06, $7B ; duration, params
|1AA9AE:DAB5| db $B3 ; play note D#5
|1AA9AF:DAB6| db $B3 ; play note D#5
|1AA9B0:DAB7| db $B3 ; play note D#5
|1AA9B1:DAB8| db $B3 ; play note D#5
|1AA9B2:DAB9| db $B3 ; play note D#5
|1AA9B3:DABA| db $B3 ; play note D#5
|1AA9B4:DABB| db $B3 ; play note D#5
|1AA9B5:DABC| db $B3 ; play note D#5
|1AA9B6:DABD| db $B3 ; play note D#5
|1AA9B7:DABE| db $B3 ; play note D#5
|1AA9B8:DABF| db $B3 ; play note D#5
|1AA9B9:DAC0| db $B3 ; play note D#5
|1AA9BA:DAC1| db $B3 ; play note D#5
|1AA9BB:DAC2| db $B3 ; play note D#5
|1AA9BC:DAC3| db $B3 ; play note D#5
|1AA9BD:DAC4| db $B3 ; play note D#5
|1AA9BE:DAC5| db $B2 ; play note D5
|1AA9BF:DAC6| db $B2 ; play note D5
|1AA9C0:DAC7| db $B2 ; play note D5
|1AA9C1:DAC8| db $B2 ; play note D5
|1AA9C2:DAC9| db $B2 ; play note D5
|1AA9C3:DACA| db $B2 ; play note D5
|1AA9C4:DACB| db $B2 ; play note D5
|1AA9C5:DACC| db $B2 ; play note D5
|1AA9C6:DACD| db $B2 ; play note D5
|1AA9C7:DACE| db $B2 ; play note D5
|1AA9C8:DACF| db $B2 ; play note D5
|1AA9C9:DAD0| db $B2 ; play note D5
|1AA9CA:DAD1| db $B2 ; play note D5
|1AA9CB:DAD2| db $B2 ; play note D5
|1AA9CC:DAD3| db $B2 ; play note D5
|1AA9CD:DAD4| db $B2 ; play note D5

;---------------------------------------------------------------------------------------------------

Song03_Unused1_Track5:
|1AA9CE:DAD5| db $06, $7B ; duration, params
|1AA9D0:DAD7| db $AE ; play note A#4
|1AA9D1:DAD8| db $AE ; play note A#4
|1AA9D2:DAD9| db $AE ; play note A#4
|1AA9D3:DADA| db $AE ; play note A#4
|1AA9D4:DADB| db $AE ; play note A#4
|1AA9D5:DADC| db $AE ; play note A#4
|1AA9D6:DADD| db $AE ; play note A#4
|1AA9D7:DADE| db $AE ; play note A#4
|1AA9D8:DADF| db $AE ; play note A#4
|1AA9D9:DAE0| db $AE ; play note A#4
|1AA9DA:DAE1| db $AE ; play note A#4
|1AA9DB:DAE2| db $AE ; play note A#4
|1AA9DC:DAE3| db $AE ; play note A#4
|1AA9DD:DAE4| db $AE ; play note A#4
|1AA9DE:DAE5| db $AE ; play note A#4
|1AA9DF:DAE6| db $AE ; play note A#4
|1AA9E0:DAE7| db $AD ; play note A4
|1AA9E1:DAE8| db $AD ; play note A4
|1AA9E2:DAE9| db $AD ; play note A4
|1AA9E3:DAEA| db $AD ; play note A4
|1AA9E4:DAEB| db $AD ; play note A4
|1AA9E5:DAEC| db $AD ; play note A4
|1AA9E6:DAED| db $AD ; play note A4
|1AA9E7:DAEE| db $AD ; play note A4
|1AA9E8:DAEF| db $AD ; play note A4
|1AA9E9:DAF0| db $AD ; play note A4
|1AA9EA:DAF1| db $AD ; play note A4
|1AA9EB:DAF2| db $AD ; play note A4
|1AA9EC:DAF3| db $AD ; play note A4
|1AA9ED:DAF4| db $AD ; play note A4
|1AA9EE:DAF5| db $AD ; play note A4
|1AA9EF:DAF6| db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song03_Unused2_Track0:
|1AA9F0:DAF7| db $18 ; duration
|1AA9F1:DAF8| db $C9 ; rest
|1AA9F2:DAF9| db $48, $7B ; duration, params
|1AA9F4:DAFB| db $B3 ; play note D#5
|1AA9F5:DAFC| db $18 ; duration
|1AA9F6:DAFD| db $C9 ; rest
|1AA9F7:DAFE| db $48 ; duration
|1AA9F8:DAFF| db $B4 ; play note E5
|1AA9F9:DB00| db $18 ; duration
|1AA9FA:DB01| db $C9 ; rest
|1AA9FB:DB02| db $48 ; duration
|1AA9FC:DB03| db $B3 ; play note D#5
|1AA9FD:DB04| db $18 ; duration
|1AA9FE:DB05| db $C9 ; rest
|1AA9FF:DB06| db $48 ; duration
|1AAA00:DB07| db $B2 ; play note D5
|1AAA01:DB08| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song03_Unused2_Track1:
|1AAA02:DB09| db $18 ; duration
|1AAA03:DB0A| db $C9 ; rest
|1AAA04:DB0B| db $48, $7B ; duration, params
|1AAA06:DB0D| db $AE ; play note A#4
|1AAA07:DB0E| db $18 ; duration
|1AAA08:DB0F| db $C9 ; rest
|1AAA09:DB10| db $48 ; duration
|1AAA0A:DB11| db $AF ; play note B4
|1AAA0B:DB12| db $18 ; duration
|1AAA0C:DB13| db $C9 ; rest
|1AAA0D:DB14| db $48 ; duration
|1AAA0E:DB15| db $AE ; play note A#4
|1AAA0F:DB16| db $18 ; duration
|1AAA10:DB17| db $C9 ; rest
|1AAA11:DB18| db $48 ; duration
|1AAA12:DB19| db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song03_Unused2_Track2:
|1AAA13:DB1A| db $0C, $7D ; duration, params
|1AAA15:DB1C| db $94 ; play note G#2
|1AAA16:DB1D| db $9B ; play note D#3
|1AAA17:DB1E| db $48 ; duration
|1AAA18:DB1F| db $A0 ; play note G#3
|1AAA19:DB20| db $EF : dw Song03_Sub_DCA1 : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song03_Unused2_Track3:
|1AAA1D:DB24| db $18 ; duration
|1AAA1E:DB25| db $C9 ; rest
|1AAA1F:DB26| db $48, $7B ; duration, params
|1AAA21:DB28| db $AC ; play note G#4
|1AAA22:DB29| db $18 ; duration
|1AAA23:DB2A| db $C9 ; rest
|1AAA24:DB2B| db $48 ; duration
|1AAA25:DB2C| db $AD ; play note A4
|1AAA26:DB2D| db $18 ; duration
|1AAA27:DB2E| db $C9 ; rest
|1AAA28:DB2F| db $48 ; duration
|1AAA29:DB30| db $AC ; play note G#4
|1AAA2A:DB31| db $18 ; duration
|1AAA2B:DB32| db $C9 ; rest
|1AAA2C:DB33| db $48 ; duration
|1AAA2D:DB34| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song03_Unused2_Track4:
|1AAA2E:DB35| db $06, $7B ; duration, params
|1AAA30:DB37| db $B3 ; play note D#5
|1AAA31:DB38| db $B3 ; play note D#5
|1AAA32:DB39| db $B3 ; play note D#5
|1AAA33:DB3A| db $B3 ; play note D#5
|1AAA34:DB3B| db $B3 ; play note D#5
|1AAA35:DB3C| db $B3 ; play note D#5
|1AAA36:DB3D| db $B3 ; play note D#5
|1AAA37:DB3E| db $B3 ; play note D#5
|1AAA38:DB3F| db $B3 ; play note D#5
|1AAA39:DB40| db $B3 ; play note D#5
|1AAA3A:DB41| db $B3 ; play note D#5
|1AAA3B:DB42| db $B3 ; play note D#5
|1AAA3C:DB43| db $B3 ; play note D#5
|1AAA3D:DB44| db $B3 ; play note D#5
|1AAA3E:DB45| db $B3 ; play note D#5
|1AAA3F:DB46| db $B3 ; play note D#5
|1AAA40:DB47| db $B4 ; play note E5
|1AAA41:DB48| db $B4 ; play note E5
|1AAA42:DB49| db $B4 ; play note E5
|1AAA43:DB4A| db $B4 ; play note E5
|1AAA44:DB4B| db $B4 ; play note E5
|1AAA45:DB4C| db $B4 ; play note E5
|1AAA46:DB4D| db $B4 ; play note E5
|1AAA47:DB4E| db $B4 ; play note E5
|1AAA48:DB4F| db $B4 ; play note E5
|1AAA49:DB50| db $B4 ; play note E5
|1AAA4A:DB51| db $B4 ; play note E5
|1AAA4B:DB52| db $B4 ; play note E5
|1AAA4C:DB53| db $B4 ; play note E5
|1AAA4D:DB54| db $B4 ; play note E5
|1AAA4E:DB55| db $B4 ; play note E5
|1AAA4F:DB56| db $B4 ; play note E5
|1AAA50:DB57| db $B3 ; play note D#5
|1AAA51:DB58| db $B3 ; play note D#5
|1AAA52:DB59| db $B3 ; play note D#5
|1AAA53:DB5A| db $B3 ; play note D#5
|1AAA54:DB5B| db $B3 ; play note D#5
|1AAA55:DB5C| db $B3 ; play note D#5
|1AAA56:DB5D| db $B3 ; play note D#5
|1AAA57:DB5E| db $B3 ; play note D#5
|1AAA58:DB5F| db $B3 ; play note D#5
|1AAA59:DB60| db $B3 ; play note D#5
|1AAA5A:DB61| db $B3 ; play note D#5
|1AAA5B:DB62| db $B3 ; play note D#5
|1AAA5C:DB63| db $B3 ; play note D#5
|1AAA5D:DB64| db $B3 ; play note D#5
|1AAA5E:DB65| db $B3 ; play note D#5
|1AAA5F:DB66| db $B3 ; play note D#5
|1AAA60:DB67| db $B2 ; play note D5
|1AAA61:DB68| db $B2 ; play note D5
|1AAA62:DB69| db $B2 ; play note D5
|1AAA63:DB6A| db $B2 ; play note D5
|1AAA64:DB6B| db $B2 ; play note D5
|1AAA65:DB6C| db $B2 ; play note D5
|1AAA66:DB6D| db $B2 ; play note D5
|1AAA67:DB6E| db $B2 ; play note D5
|1AAA68:DB6F| db $B2 ; play note D5
|1AAA69:DB70| db $B2 ; play note D5
|1AAA6A:DB71| db $B2 ; play note D5
|1AAA6B:DB72| db $B2 ; play note D5
|1AAA6C:DB73| db $B2 ; play note D5
|1AAA6D:DB74| db $B2 ; play note D5
|1AAA6E:DB75| db $B2 ; play note D5
|1AAA6F:DB76| db $B2 ; play note D5

;---------------------------------------------------------------------------------------------------

Song03_Unused2_Track5:
|1AAA70:DB77| db $06, $7B ; duration, params
|1AAA72:DB79| db $AE ; play note A#4
|1AAA73:DB7A| db $AE ; play note A#4
|1AAA74:DB7B| db $AE ; play note A#4
|1AAA75:DB7C| db $AE ; play note A#4
|1AAA76:DB7D| db $AE ; play note A#4
|1AAA77:DB7E| db $AE ; play note A#4
|1AAA78:DB7F| db $AE ; play note A#4
|1AAA79:DB80| db $AE ; play note A#4
|1AAA7A:DB81| db $AE ; play note A#4
|1AAA7B:DB82| db $AE ; play note A#4
|1AAA7C:DB83| db $AE ; play note A#4
|1AAA7D:DB84| db $AE ; play note A#4
|1AAA7E:DB85| db $AE ; play note A#4
|1AAA7F:DB86| db $AE ; play note A#4
|1AAA80:DB87| db $AE ; play note A#4
|1AAA81:DB88| db $AE ; play note A#4
|1AAA82:DB89| db $AF ; play note B4
|1AAA83:DB8A| db $AF ; play note B4
|1AAA84:DB8B| db $AF ; play note B4
|1AAA85:DB8C| db $AF ; play note B4
|1AAA86:DB8D| db $AF ; play note B4
|1AAA87:DB8E| db $AF ; play note B4
|1AAA88:DB8F| db $AF ; play note B4
|1AAA89:DB90| db $AF ; play note B4
|1AAA8A:DB91| db $AF ; play note B4
|1AAA8B:DB92| db $AF ; play note B4
|1AAA8C:DB93| db $AF ; play note B4
|1AAA8D:DB94| db $AF ; play note B4
|1AAA8E:DB95| db $AF ; play note B4
|1AAA8F:DB96| db $AF ; play note B4
|1AAA90:DB97| db $AF ; play note B4
|1AAA91:DB98| db $AF ; play note B4
|1AAA92:DB99| db $AE ; play note A#4
|1AAA93:DB9A| db $AE ; play note A#4
|1AAA94:DB9B| db $AE ; play note A#4
|1AAA95:DB9C| db $AE ; play note A#4
|1AAA96:DB9D| db $AE ; play note A#4
|1AAA97:DB9E| db $AE ; play note A#4
|1AAA98:DB9F| db $AE ; play note A#4
|1AAA99:DBA0| db $AE ; play note A#4
|1AAA9A:DBA1| db $AE ; play note A#4
|1AAA9B:DBA2| db $AE ; play note A#4
|1AAA9C:DBA3| db $AE ; play note A#4
|1AAA9D:DBA4| db $AE ; play note A#4
|1AAA9E:DBA5| db $AE ; play note A#4
|1AAA9F:DBA6| db $AE ; play note A#4
|1AAAA0:DBA7| db $AE ; play note A#4
|1AAAA1:DBA8| db $AE ; play note A#4
|1AAAA2:DBA9| db $AD ; play note A4
|1AAAA3:DBAA| db $AD ; play note A4
|1AAAA4:DBAB| db $AD ; play note A4
|1AAAA5:DBAC| db $AD ; play note A4
|1AAAA6:DBAD| db $AD ; play note A4
|1AAAA7:DBAE| db $AD ; play note A4
|1AAAA8:DBAF| db $AD ; play note A4
|1AAAA9:DBB0| db $AD ; play note A4
|1AAAAA:DBB1| db $AD ; play note A4
|1AAAAB:DBB2| db $AD ; play note A4
|1AAAAC:DBB3| db $AD ; play note A4
|1AAAAD:DBB4| db $AD ; play note A4
|1AAAAE:DBB5| db $AD ; play note A4
|1AAAAF:DBB6| db $AD ; play note A4
|1AAAB0:DBB7| db $AD ; play note A4
|1AAAB1:DBB8| db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song03_Segment2_Track0:
|1AAAB2:DBB9| db $18 ; duration
|1AAAB3:DBBA| db $C9 ; rest
|1AAAB4:DBBB| db $48, $7B ; duration, params
|1AAAB6:DBBD| db $AF ; play note B4
|1AAAB7:DBBE| db $18 ; duration
|1AAAB8:DBBF| db $C9 ; rest
|1AAAB9:DBC0| db $48 ; duration
|1AAABA:DBC1| db $B0 ; play note C5
|1AAABB:DBC2| db $18 ; duration
|1AAABC:DBC3| db $C9 ; rest
|1AAABD:DBC4| db $48 ; duration
|1AAABE:DBC5| db $B1 ; play note C#5
|1AAABF:DBC6| db $18 ; duration
|1AAAC0:DBC7| db $C9 ; rest
|1AAAC1:DBC8| db $48 ; duration
|1AAAC2:DBC9| db $B0 ; play note C5
|1AAAC3:DBCA| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song03_Segment2_Track1:
|1AAAC4:DBCB| db $18 ; duration
|1AAAC5:DBCC| db $C9 ; rest
|1AAAC6:DBCD| db $48, $7B ; duration, params
|1AAAC8:DBCF| db $AA ; play note F#4
|1AAAC9:DBD0| db $18 ; duration
|1AAACA:DBD1| db $C9 ; rest
|1AAACB:DBD2| db $48 ; duration
|1AAACC:DBD3| db $AB ; play note G4
|1AAACD:DBD4| db $18 ; duration
|1AAACE:DBD5| db $C9 ; rest
|1AAACF:DBD6| db $48 ; duration
|1AAAD0:DBD7| db $AC ; play note G#4
|1AAAD1:DBD8| db $18 ; duration
|1AAAD2:DBD9| db $C9 ; rest
|1AAAD3:DBDA| db $48 ; duration
|1AAAD4:DBDB| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song03_Segment2_Track2:
|1AAAD5:DBDC| db $0C, $7D ; duration, params
|1AAAD7:DBDE| db $90 ; play note E2
|1AAAD8:DBDF| db $97 ; play note B2
|1AAAD9:DBE0| db $48 ; duration
|1AAADA:DBE1| db $9C ; play note E3
|1AAADB:DBE2| db $EF : dw Song03_Sub_DC20 : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song03_Segment2_Track3:
|1AAADF:DBE6| db $18 ; duration
|1AAAE0:DBE7| db $C9 ; rest
|1AAAE1:DBE8| db $48, $7B ; duration, params
|1AAAE3:DBEA| db $A8 ; play note E4
|1AAAE4:DBEB| db $18 ; duration
|1AAAE5:DBEC| db $C9 ; rest
|1AAAE6:DBED| db $48 ; duration
|1AAAE7:DBEE| db $A9 ; play note F4
|1AAAE8:DBEF| db $18 ; duration
|1AAAE9:DBF0| db $C9 ; rest
|1AAAEA:DBF1| db $48 ; duration
|1AAAEB:DBF2| db $AA ; play note F#4
|1AAAEC:DBF3| db $18 ; duration
|1AAAED:DBF4| db $C9 ; rest
|1AAAEE:DBF5| db $48 ; duration
|1AAAEF:DBF6| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song03_Segment2_Track4:
|1AAAF0:DBF7| db $EF : dw Song03_Sub_DC26 : db $01 ; call segment subroutine
|1AAAF4:DBFB| db $B0 ; play note C5
|1AAAF5:DBFC| db $B0 ; play note C5
|1AAAF6:DBFD| db $B0 ; play note C5
|1AAAF7:DBFE| db $B0 ; play note C5
|1AAAF8:DBFF| db $B0 ; play note C5
|1AAAF9:DC00| db $B0 ; play note C5
|1AAAFA:DC01| db $B0 ; play note C5
|1AAAFB:DC02| db $B0 ; play note C5
|1AAAFC:DC03| db $B0 ; play note C5
|1AAAFD:DC04| db $B0 ; play note C5
|1AAAFE:DC05| db $B0 ; play note C5
|1AAAFF:DC06| db $B0 ; play note C5
|1AAB00:DC07| db $B0 ; play note C5
|1AAB01:DC08| db $B0 ; play note C5
|1AAB02:DC09| db $B0 ; play note C5
|1AAB03:DC0A| db $B0 ; play note C5

;---------------------------------------------------------------------------------------------------

Song03_Segment2_Track5:
|1AAB04:DC0B| db $EF : dw Song03_Sub_DC59 : db $01 ; call segment subroutine
|1AAB08:DC0F| db $AB ; play note G4
|1AAB09:DC10| db $AB ; play note G4
|1AAB0A:DC11| db $AB ; play note G4
|1AAB0B:DC12| db $AB ; play note G4
|1AAB0C:DC13| db $AB ; play note G4
|1AAB0D:DC14| db $AB ; play note G4
|1AAB0E:DC15| db $AB ; play note G4
|1AAB0F:DC16| db $AB ; play note G4
|1AAB10:DC17| db $AB ; play note G4
|1AAB11:DC18| db $AB ; play note G4
|1AAB12:DC19| db $AB ; play note G4
|1AAB13:DC1A| db $AB ; play note G4
|1AAB14:DC1B| db $AB ; play note G4
|1AAB15:DC1C| db $AB ; play note G4
|1AAB16:DC1D| db $AB ; play note G4
|1AAB17:DC1E| db $AB ; play note G4
|1AAB18:DC1F| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song03_Sub_DC20:
|1AAB19:DC20| db $0C ; duration
|1AAB1A:DC21| db $90 ; play note E2
|1AAB1B:DC22| db $97 ; play note B2
|1AAB1C:DC23| db $48 ; duration
|1AAB1D:DC24| db $9C ; play note E3
|1AAB1E:DC25| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song03_Sub_DC26:
|1AAB1F:DC26| db $06, $7B ; duration, params
|1AAB21:DC28| db $AF ; play note B4
|1AAB22:DC29| db $AF ; play note B4
|1AAB23:DC2A| db $AF ; play note B4
|1AAB24:DC2B| db $AF ; play note B4
|1AAB25:DC2C| db $AF ; play note B4
|1AAB26:DC2D| db $AF ; play note B4
|1AAB27:DC2E| db $AF ; play note B4
|1AAB28:DC2F| db $AF ; play note B4
|1AAB29:DC30| db $AF ; play note B4
|1AAB2A:DC31| db $AF ; play note B4
|1AAB2B:DC32| db $AF ; play note B4
|1AAB2C:DC33| db $AF ; play note B4
|1AAB2D:DC34| db $AF ; play note B4
|1AAB2E:DC35| db $AF ; play note B4
|1AAB2F:DC36| db $AF ; play note B4
|1AAB30:DC37| db $AF ; play note B4
|1AAB31:DC38| db $B0 ; play note C5
|1AAB32:DC39| db $B0 ; play note C5
|1AAB33:DC3A| db $B0 ; play note C5
|1AAB34:DC3B| db $B0 ; play note C5
|1AAB35:DC3C| db $B0 ; play note C5
|1AAB36:DC3D| db $B0 ; play note C5
|1AAB37:DC3E| db $B0 ; play note C5
|1AAB38:DC3F| db $B0 ; play note C5
|1AAB39:DC40| db $B0 ; play note C5
|1AAB3A:DC41| db $B0 ; play note C5
|1AAB3B:DC42| db $B0 ; play note C5
|1AAB3C:DC43| db $B0 ; play note C5
|1AAB3D:DC44| db $B0 ; play note C5
|1AAB3E:DC45| db $B0 ; play note C5
|1AAB3F:DC46| db $B0 ; play note C5
|1AAB40:DC47| db $B0 ; play note C5
|1AAB41:DC48| db $B1 ; play note C#5
|1AAB42:DC49| db $B1 ; play note C#5
|1AAB43:DC4A| db $B1 ; play note C#5
|1AAB44:DC4B| db $B1 ; play note C#5
|1AAB45:DC4C| db $B1 ; play note C#5
|1AAB46:DC4D| db $B1 ; play note C#5
|1AAB47:DC4E| db $B1 ; play note C#5
|1AAB48:DC4F| db $B1 ; play note C#5
|1AAB49:DC50| db $B1 ; play note C#5
|1AAB4A:DC51| db $B1 ; play note C#5
|1AAB4B:DC52| db $B1 ; play note C#5
|1AAB4C:DC53| db $B1 ; play note C#5
|1AAB4D:DC54| db $B1 ; play note C#5
|1AAB4E:DC55| db $B1 ; play note C#5
|1AAB4F:DC56| db $B1 ; play note C#5
|1AAB50:DC57| db $B1 ; play note C#5
|1AAB51:DC58| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song03_Sub_DC59:
|1AAB52:DC59| db $06, $7B ; duration, params
|1AAB54:DC5B| db $AA ; play note F#4
|1AAB55:DC5C| db $AA ; play note F#4
|1AAB56:DC5D| db $AA ; play note F#4
|1AAB57:DC5E| db $AA ; play note F#4
|1AAB58:DC5F| db $AA ; play note F#4
|1AAB59:DC60| db $AA ; play note F#4
|1AAB5A:DC61| db $AA ; play note F#4
|1AAB5B:DC62| db $AA ; play note F#4
|1AAB5C:DC63| db $AA ; play note F#4
|1AAB5D:DC64| db $AA ; play note F#4
|1AAB5E:DC65| db $AA ; play note F#4
|1AAB5F:DC66| db $AA ; play note F#4
|1AAB60:DC67| db $AA ; play note F#4
|1AAB61:DC68| db $AA ; play note F#4
|1AAB62:DC69| db $AA ; play note F#4
|1AAB63:DC6A| db $AA ; play note F#4
|1AAB64:DC6B| db $AB ; play note G4
|1AAB65:DC6C| db $AB ; play note G4
|1AAB66:DC6D| db $AB ; play note G4
|1AAB67:DC6E| db $AB ; play note G4
|1AAB68:DC6F| db $AB ; play note G4
|1AAB69:DC70| db $AB ; play note G4
|1AAB6A:DC71| db $AB ; play note G4
|1AAB6B:DC72| db $AB ; play note G4
|1AAB6C:DC73| db $AB ; play note G4
|1AAB6D:DC74| db $AB ; play note G4
|1AAB6E:DC75| db $AB ; play note G4
|1AAB6F:DC76| db $AB ; play note G4
|1AAB70:DC77| db $AB ; play note G4
|1AAB71:DC78| db $AB ; play note G4
|1AAB72:DC79| db $AB ; play note G4
|1AAB73:DC7A| db $AB ; play note G4
|1AAB74:DC7B| db $AC ; play note G#4
|1AAB75:DC7C| db $AC ; play note G#4
|1AAB76:DC7D| db $AC ; play note G#4
|1AAB77:DC7E| db $AC ; play note G#4
|1AAB78:DC7F| db $AC ; play note G#4
|1AAB79:DC80| db $AC ; play note G#4
|1AAB7A:DC81| db $AC ; play note G#4
|1AAB7B:DC82| db $AC ; play note G#4
|1AAB7C:DC83| db $AC ; play note G#4
|1AAB7D:DC84| db $AC ; play note G#4
|1AAB7E:DC85| db $AC ; play note G#4
|1AAB7F:DC86| db $AC ; play note G#4
|1AAB80:DC87| db $AC ; play note G#4
|1AAB81:DC88| db $AC ; play note G#4
|1AAB82:DC89| db $AC ; play note G#4
|1AAB83:DC8A| db $AC ; play note G#4
|1AAB84:DC8B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song03_Sub_DC8C:
|1AAB85:DC8C| db $E0, $0A ; set instrument - strings B
|1AAB87:DC8E| db $ED, $D2 ; set channel volume
|1AAB89:DC90| db $E3, $14, $19, $1E ; enable vibrato
|1AAB8D:DC94| db $0C, $7D ; duration, params
|1AAB8F:DC96| db $8C ; play note C2
|1AAB90:DC97| db $93 ; play note G2
|1AAB91:DC98| db $48 ; duration
|1AAB92:DC99| db $98 ; play note C3
|1AAB93:DC9A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song03_Sub_DC9B:
|1AAB94:DC9B| db $0C ; duration
|1AAB95:DC9C| db $8C ; play note C2
|1AAB96:DC9D| db $93 ; play note G2
|1AAB97:DC9E| db $48 ; duration
|1AAB98:DC9F| db $98 ; play note C3
|1AAB99:DCA0| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song03_Sub_DCA1:
|1AAB9A:DCA1| db $0C ; duration
|1AAB9B:DCA2| db $94 ; play note G#2
|1AAB9C:DCA3| db $9B ; play note D#3
|1AAB9D:DCA4| db $48 ; duration
|1AAB9E:DCA5| db $A0 ; play note G#3
|1AAB9F:DCA6| db $00 ; End

;===================================================================================================

Song04_BunnyTheme:
|1AABA0:DCA7| dw Song04_Segment0
|1AABA2:DCA9| dw Song04_Segment1
|1AABA4:DCAB| dw Song04_Segment2
|1AABA6:DCAD| dw Song04_Segment3
|1AABA8:DCAF| dw $00FF, Song04_BunnyTheme ; Loop point
|1AABAC:DCB3| dw $0000

Song04_Segment1:
|1AABAE:DCB5| dw Song04_Segment1_Track0
|1AABB0:DCB7| dw Song04_Segment1_Track1
|1AABB2:DCB9| dw Song04_Segment1_Track2
|1AABB4:DCBB| dw Song04_Segment1_Track3
|1AABB6:DCBD| dw Song04_Segment1_Track4
|1AABB8:DCBF| dw $0000
|1AABBA:DCC1| dw $0000
|1AABBC:DCC3| dw $0000

Song04_Segment2:
|1AABBE:DCC5| dw Song04_Segment2_Track0
|1AABC0:DCC7| dw Song04_Segment2_Track1
|1AABC2:DCC9| dw Song04_Segment2_Track2
|1AABC4:DCCB| dw Song04_Segment2_Track3
|1AABC6:DCCD| dw Song04_Segment2_Track4
|1AABC8:DCCF| dw $0000
|1AABCA:DCD1| dw $0000
|1AABCC:DCD3| dw $0000

Song04_Segment0:
|1AABCE:DCD5| dw Song04_Segment0_Track0
|1AABD0:DCD7| dw Song04_Segment0_Track1
|1AABD2:DCD9| dw Song04_Segment0_Track2
|1AABD4:DCDB| dw $0000
|1AABD6:DCDD| dw $0000
|1AABD8:DCDF| dw $0000
|1AABDA:DCE1| dw $0000
|1AABDC:DCE3| dw $0000

Song04_Segment3:
|1AABDE:DCE5| dw Song04_Segment3_Track0
|1AABE0:DCE7| dw Song04_Segment3_Track1
|1AABE2:DCE9| dw Song04_Segment3_Track2
|1AABE4:DCEB| dw Song04_Segment3_Track3
|1AABE6:DCED| dw Song04_Segment3_Track4
|1AABE8:DCEF| dw $0000
|1AABEA:DCF1| dw $0000
|1AABEC:DCF3| dw $0000

;---------------------------------------------------------------------------------------------------

Song04_Segment1_Track0:
|1AABEE:DCF5| db $E5, $C8 ; set song volume
|1AABF0:DCF7| db $E7, $23 ; set song tempo
|1AABF2:DCF9| db $ED, $C8 ; set channel volume
|1AABF4:DCFB| db $E0, $12 ; set instrument - horn
|1AABF6:DCFD| db $E3, $14, $14, $14 ; enable vibrato
|1AABFA:DD01| db $EF : dw Song04_Sub_DE4D : db $01 ; call segment subroutine
|1AABFE:DD05| db $24, $7D ; duration, params
|1AAC00:DD07| db $AD ; play note A4
|1AAC01:DD08| db $3C, $5D ; duration, params
|1AAC03:DD0A| db $A6 ; play note D4
|1AAC04:DD0B| db $30 ; duration
|1AAC05:DD0C| db $C8 ; sustain current note
|1AAC06:DD0D| db $C9 ; rest
|1AAC07:DD0E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song04_Segment1_Track1:
|1AAC08:DD0F| db $ED, $A0 ; set channel volume
|1AAC0A:DD11| db $E0, $12 ; set instrument - horn
|1AAC0C:DD13| db $E3, $0A, $1E, $0A ; enable vibrato
|1AAC10:DD17| db $0C, $3D ; duration, params
|1AAC12:DD19| db $9A ; play note D3
|1AAC13:DD1A| db $A1 ; play note A3
|1AAC14:DD1B| db $A1 ; play note A3
|1AAC15:DD1C| db $A1 ; play note A3
|1AAC16:DD1D| db $A1 ; play note A3
|1AAC17:DD1E| db $A1 ; play note A3
|1AAC18:DD1F| db $A1 ; play note A3
|1AAC19:DD20| db $A1 ; play note A3
|1AAC1A:DD21| db $EF : dw Song04_Sub_DE63 : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song04_Segment1_Track2:
|1AAC1E:DD25| db $ED, $C8 ; set channel volume
|1AAC20:DD27| db $E0, $12 ; set instrument - horn
|1AAC22:DD29| db $E3, $14, $1E, $14 ; enable vibrato
|1AAC26:DD2D| db $EF : dw Song04_Sub_DE6C : db $04 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song04_Segment1_Track3:
|1AAC2A:DD31| db $EF : dw Song04_Sub_DE79 : db $01 ; call segment subroutine
|1AAC2E:DD35| db $24, $7D ; duration, params
|1AAC30:DD37| db $A9 ; play note F4
|1AAC31:DD38| db $3C, $5D ; duration, params
|1AAC33:DD3A| db $A3 ; play note B3
|1AAC34:DD3B| db $30 ; duration
|1AAC35:DD3C| db $C8 ; sustain current note
|1AAC36:DD3D| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song04_Segment1_Track4:
|1AAC37:DD3E| db $EF : dw Song04_Sub_DE97 : db $01 ; call segment subroutine
|1AAC3B:DD42| db $24, $7D ; duration, params
|1AAC3D:DD44| db $B4 ; play note E5
|1AAC3E:DD45| db $3C, $5D ; duration, params
|1AAC40:DD47| db $AD ; play note A4
|1AAC41:DD48| db $30 ; duration
|1AAC42:DD49| db $C8 ; sustain current note
|1AAC43:DD4A| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song04_Segment2_Track0:
|1AAC44:DD4B| db $EF : dw Song04_Sub_DEB5 : db $01 ; call segment subroutine
|1AAC48:DD4F| db $24, $7D ; duration, params
|1AAC4A:DD51| db $AD ; play note A4
|1AAC4B:DD52| db $3C, $5D ; duration, params
|1AAC4D:DD54| db $B2 ; play note D5
|1AAC4E:DD55| db $30 ; duration
|1AAC4F:DD56| db $C8 ; sustain current note
|1AAC50:DD57| db $C9 ; rest
|1AAC51:DD58| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song04_Segment2_Track1:
|1AAC52:DD59| db $ED, $A0 ; set channel volume
|1AAC54:DD5B| db $E0, $12 ; set instrument - horn
|1AAC56:DD5D| db $E3, $0A, $1E, $0A ; enable vibrato
|1AAC5A:DD61| db $0C, $3D ; duration, params
|1AAC5C:DD63| db $9A ; play note D3
|1AAC5D:DD64| db $A1 ; play note A3
|1AAC5E:DD65| db $A1 ; play note A3
|1AAC5F:DD66| db $A1 ; play note A3
|1AAC60:DD67| db $A1 ; play note A3
|1AAC61:DD68| db $A1 ; play note A3
|1AAC62:DD69| db $A1 ; play note A3
|1AAC63:DD6A| db $A1 ; play note A3
|1AAC64:DD6B| db $EF : dw Song04_Sub_DE63 : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song04_Segment2_Track2:
|1AAC68:DD6F| db $ED, $C8 ; set channel volume
|1AAC6A:DD71| db $E0, $12 ; set instrument - horn
|1AAC6C:DD73| db $E3, $14, $1E, $14 ; enable vibrato
|1AAC70:DD77| db $EF : dw Song04_Sub_DE6C : db $04 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song04_Segment2_Track3:
|1AAC74:DD7B| db $EF : dw Song04_Sub_DE79 : db $01 ; call segment subroutine
|1AAC78:DD7F| db $24, $7D ; duration, params
|1AAC7A:DD81| db $A9 ; play note F4
|1AAC7B:DD82| db $3C, $5D ; duration, params
|1AAC7D:DD84| db $AF ; play note B4
|1AAC7E:DD85| db $30 ; duration
|1AAC7F:DD86| db $C8 ; sustain current note
|1AAC80:DD87| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song04_Segment2_Track4:
|1AAC81:DD88| db $EF : dw Song04_Sub_DE97 : db $01 ; call segment subroutine
|1AAC85:DD8C| db $24, $7D ; duration, params
|1AAC87:DD8E| db $B4 ; play note E5
|1AAC88:DD8F| db $3C, $5D ; duration, params
|1AAC8A:DD91| db $B9 ; play note A5
|1AAC8B:DD92| db $30 ; duration
|1AAC8C:DD93| db $C8 ; sustain current note
|1AAC8D:DD94| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song04_Segment0_Track0:
|1AAC8E:DD95| db $FA, $17 ; set base percussion sample
|1AAC90:DD97| db $E5, $C8 ; set song volume
|1AAC92:DD99| db $E7, $25 ; set song tempo
|1AAC94:DD9B| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1AAC98:DD9F| db $F7, $02, $14, $02 ; configure EDL, EFB, FIR
|1AAC9C:DDA3| db $F8, $28, $14, $14 ; initiate gradual echo volume change
|1AACA0:DDA7| db $ED, $C8 ; set channel volume
|1AACA2:DDA9| db $E0, $12 ; set instrument - horn
|1AACA4:DDAB| db $E3, $14, $14, $14 ; enable vibrato
|1AACA8:DDAF| db $60 ; duration
|1AACA9:DDB0| db $C9 ; rest
|1AACAA:DDB1| db $C9 ; rest
|1AACAB:DDB2| db $C9 ; rest
|1AACAC:DDB3| db $C9 ; rest
|1AACAD:DDB4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song04_Segment0_Track1:
|1AACAE:DDB5| db $ED, $A0 ; set channel volume
|1AACB0:DDB7| db $E0, $12 ; set instrument - horn
|1AACB2:DDB9| db $E3, $0A, $1E, $0A ; enable vibrato
|1AACB6:DDBD| db $0C, $3D ; duration, params
|1AACB8:DDBF| db $9A ; play note D3
|1AACB9:DDC0| db $A1 ; play note A3
|1AACBA:DDC1| db $A1 ; play note A3
|1AACBB:DDC2| db $A1 ; play note A3
|1AACBC:DDC3| db $A1 ; play note A3
|1AACBD:DDC4| db $A1 ; play note A3
|1AACBE:DDC5| db $A1 ; play note A3
|1AACBF:DDC6| db $A1 ; play note A3
|1AACC0:DDC7| db $EF : dw Song04_Sub_DE63 : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song04_Segment0_Track2:
|1AACC4:DDCB| db $ED, $C8 ; set channel volume
|1AACC6:DDCD| db $E0, $12 ; set instrument - horn
|1AACC8:DDCF| db $E3, $14, $1E, $14 ; enable vibrato
|1AACCC:DDD3| db $EF : dw Song04_Sub_DE6C : db $04 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song04_Segment3_Track0:
|1AACD0:DDD7| db $EF : dw Song04_Sub_DE97 : db $01 ; call segment subroutine
|1AACD4:DDDB| db $24, $7D ; duration, params
|1AACD6:DDDD| db $B4 ; play note E5
|1AACD7:DDDE| db $3C, $5D ; duration, params
|1AACD9:DDE0| db $AD ; play note A4
|1AACDA:DDE1| db $30 ; duration
|1AACDB:DDE2| db $C8 ; sustain current note
|1AACDC:DDE3| db $18, $7D ; duration, params
|1AACDE:DDE5| db $AD ; play note A4
|1AACDF:DDE6| db $06 ; duration
|1AACE0:DDE7| db $AC ; play note G#4
|1AACE1:DDE8| db $AB ; play note G4
|1AACE2:DDE9| db $0C ; duration
|1AACE3:DDEA| db $AA ; play note F#4
|1AACE4:DDEB| db $60 ; duration
|1AACE5:DDEC| db $C8 ; sustain current note
|1AACE6:DDED| db $30 ; duration
|1AACE7:DDEE| db $C8 ; sustain current note
|1AACE8:DDEF| db $C9 ; rest
|1AACE9:DDF0| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song04_Segment3_Track1:
|1AACEA:DDF1| db $ED, $A0 ; set channel volume
|1AACEC:DDF3| db $E0, $12 ; set instrument - horn
|1AACEE:DDF5| db $E3, $0A, $1E, $0A ; enable vibrato
|1AACF2:DDF9| db $0C, $3D ; duration, params
|1AACF4:DDFB| db $9A ; play note D3
|1AACF5:DDFC| db $A1 ; play note A3
|1AACF6:DDFD| db $A1 ; play note A3
|1AACF7:DDFE| db $A1 ; play note A3
|1AACF8:DDFF| db $A1 ; play note A3
|1AACF9:DE00| db $A1 ; play note A3
|1AACFA:DE01| db $A1 ; play note A3
|1AACFB:DE02| db $A1 ; play note A3
|1AACFC:DE03| db $EF : dw Song04_Sub_DE63 : db $03 ; call segment subroutine
|1AAD00:DE07| db $EF : dw Song04_Sub_DED3 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song04_Segment3_Track2:
|1AAD04:DE0B| db $ED, $C8 ; set channel volume
|1AAD06:DE0D| db $E0, $12 ; set instrument - horn
|1AAD08:DE0F| db $E3, $14, $1E, $14 ; enable vibrato
|1AAD0C:DE13| db $EF : dw Song04_Sub_DE6C : db $04 ; call segment subroutine
|1AAD10:DE17| db $EF : dw Song04_Sub_DEDC : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song04_Segment3_Track3:
|1AAD14:DE1B| db $EF : dw Song04_Sub_DE79 : db $01 ; call segment subroutine
|1AAD18:DE1F| db $24, $7D ; duration, params
|1AAD1A:DE21| db $A9 ; play note F4
|1AAD1B:DE22| db $3C, $5D ; duration, params
|1AAD1D:DE24| db $A3 ; play note B3
|1AAD1E:DE25| db $30 ; duration
|1AAD1F:DE26| db $C8 ; sustain current note
|1AAD20:DE27| db $18, $7D ; duration, params
|1AAD22:DE29| db $A3 ; play note B3
|1AAD23:DE2A| db $06 ; duration
|1AAD24:DE2B| db $A2 ; play note A#3
|1AAD25:DE2C| db $A1 ; play note A3
|1AAD26:DE2D| db $0C ; duration
|1AAD27:DE2E| db $A0 ; play note G#3
|1AAD28:DE2F| db $60 ; duration
|1AAD29:DE30| db $C8 ; sustain current note
|1AAD2A:DE31| db $30 ; duration
|1AAD2B:DE32| db $C8 ; sustain current note
|1AAD2C:DE33| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song04_Segment3_Track4:
|1AAD2D:DE34| db $EF : dw Song04_Sub_DEB5 : db $01 ; call segment subroutine
|1AAD31:DE38| db $24, $7D ; duration, params
|1AAD33:DE3A| db $AD ; play note A4
|1AAD34:DE3B| db $3C, $5D ; duration, params
|1AAD36:DE3D| db $A6 ; play note D4
|1AAD37:DE3E| db $30 ; duration
|1AAD38:DE3F| db $C8 ; sustain current note
|1AAD39:DE40| db $30, $08 ; duration, params
|1AAD3B:DE42| db $A6 ; play note D4
|1AAD3C:DE43| db $18 ; duration
|1AAD3D:DE44| db $C9 ; rest
|1AAD3E:DE45| db $C9 ; rest
|1AAD3F:DE46| db $C9 ; rest
|1AAD40:DE47| db $C9 ; rest
|1AAD41:DE48| db $C9 ; rest
|1AAD42:DE49| db $C9 ; rest
|1AAD43:DE4A| db $C9 ; rest
|1AAD44:DE4B| db $C9 ; rest
|1AAD45:DE4C| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song04_Sub_DE4D:
|1AAD46:DE4D| db $0C, $3D ; duration, params
|1AAD48:DE4F| db $A6 ; play note D4
|1AAD49:DE50| db $18 ; duration
|1AAD4A:DE51| db $C9 ; rest
|1AAD4B:DE52| db $0C ; duration
|1AAD4C:DE53| db $A8 ; play note E4
|1AAD4D:DE54| db $18 ; duration
|1AAD4E:DE55| db $C9 ; rest
|1AAD4F:DE56| db $0C ; duration
|1AAD50:DE57| db $A9 ; play note F4
|1AAD51:DE58| db $C9 ; rest
|1AAD52:DE59| db $C9 ; rest
|1AAD53:DE5A| db $B0 ; play note C5
|1AAD54:DE5B| db $18 ; duration
|1AAD55:DE5C| db $C9 ; rest
|1AAD56:DE5D| db $0C ; duration
|1AAD57:DE5E| db $AF ; play note B4
|1AAD58:DE5F| db $C9 ; rest
|1AAD59:DE60| db $AB ; play note G4
|1AAD5A:DE61| db $C9 ; rest
|1AAD5B:DE62| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song04_Sub_DE63:
|1AAD5C:DE63| db $9A ; play note D3
|1AAD5D:DE64| db $A1 ; play note A3
|1AAD5E:DE65| db $A1 ; play note A3
|1AAD5F:DE66| db $A1 ; play note A3
|1AAD60:DE67| db $A1 ; play note A3
|1AAD61:DE68| db $A1 ; play note A3
|1AAD62:DE69| db $A1 ; play note A3
|1AAD63:DE6A| db $A1 ; play note A3
|1AAD64:DE6B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song04_Sub_DE6C:
|1AAD65:DE6C| db $0C, $4D ; duration, params
|1AAD67:DE6E| db $93 ; play note G2
|1AAD68:DE6F| db $0C, $3D ; duration, params
|1AAD6A:DE71| db $9A ; play note D3
|1AAD6B:DE72| db $9A ; play note D3
|1AAD6C:DE73| db $9A ; play note D3
|1AAD6D:DE74| db $9A ; play note D3
|1AAD6E:DE75| db $9A ; play note D3
|1AAD6F:DE76| db $9A ; play note D3
|1AAD70:DE77| db $9A ; play note D3
|1AAD71:DE78| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song04_Sub_DE79:
|1AAD72:DE79| db $ED, $C8 ; set channel volume
|1AAD74:DE7B| db $E0, $12 ; set instrument - horn
|1AAD76:DE7D| db $E3, $14, $14, $14 ; enable vibrato
|1AAD7A:DE81| db $0C, $3D ; duration, params
|1AAD7C:DE83| db $A3 ; play note B3
|1AAD7D:DE84| db $18 ; duration
|1AAD7E:DE85| db $C9 ; rest
|1AAD7F:DE86| db $0C ; duration
|1AAD80:DE87| db $A4 ; play note C4
|1AAD81:DE88| db $18 ; duration
|1AAD82:DE89| db $C9 ; rest
|1AAD83:DE8A| db $0C ; duration
|1AAD84:DE8B| db $A6 ; play note D4
|1AAD85:DE8C| db $C9 ; rest
|1AAD86:DE8D| db $C9 ; rest
|1AAD87:DE8E| db $AD ; play note A4
|1AAD88:DE8F| db $18 ; duration
|1AAD89:DE90| db $C9 ; rest
|1AAD8A:DE91| db $0C ; duration
|1AAD8B:DE92| db $AB ; play note G4
|1AAD8C:DE93| db $C9 ; rest
|1AAD8D:DE94| db $A8 ; play note E4
|1AAD8E:DE95| db $C9 ; rest
|1AAD8F:DE96| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song04_Sub_DE97:
|1AAD90:DE97| db $ED, $A0 ; set channel volume
|1AAD92:DE99| db $E0, $12 ; set instrument - horn
|1AAD94:DE9B| db $E3, $14, $14, $14 ; enable vibrato
|1AAD98:DE9F| db $0C, $3D ; duration, params
|1AAD9A:DEA1| db $AD ; play note A4
|1AAD9B:DEA2| db $18 ; duration
|1AAD9C:DEA3| db $C9 ; rest
|1AAD9D:DEA4| db $0C ; duration
|1AAD9E:DEA5| db $AF ; play note B4
|1AAD9F:DEA6| db $18 ; duration
|1AADA0:DEA7| db $C9 ; rest
|1AADA1:DEA8| db $0C ; duration
|1AADA2:DEA9| db $B0 ; play note C5
|1AADA3:DEAA| db $C9 ; rest
|1AADA4:DEAB| db $C9 ; rest
|1AADA5:DEAC| db $B7 ; play note G5
|1AADA6:DEAD| db $18 ; duration
|1AADA7:DEAE| db $C9 ; rest
|1AADA8:DEAF| db $0C ; duration
|1AADA9:DEB0| db $B6 ; play note F#5
|1AADAA:DEB1| db $C9 ; rest
|1AADAB:DEB2| db $B2 ; play note D5
|1AADAC:DEB3| db $C9 ; rest
|1AADAD:DEB4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song04_Sub_DEB5:
|1AADAE:DEB5| db $ED, $C8 ; set channel volume
|1AADB0:DEB7| db $E0, $12 ; set instrument - horn
|1AADB2:DEB9| db $E3, $14, $14, $14 ; enable vibrato
|1AADB6:DEBD| db $0C, $3D ; duration, params
|1AADB8:DEBF| db $A6 ; play note D4
|1AADB9:DEC0| db $18 ; duration
|1AADBA:DEC1| db $C9 ; rest
|1AADBB:DEC2| db $0C ; duration
|1AADBC:DEC3| db $A8 ; play note E4
|1AADBD:DEC4| db $18 ; duration
|1AADBE:DEC5| db $C9 ; rest
|1AADBF:DEC6| db $0C ; duration
|1AADC0:DEC7| db $A9 ; play note F4
|1AADC1:DEC8| db $C9 ; rest
|1AADC2:DEC9| db $C9 ; rest
|1AADC3:DECA| db $B0 ; play note C5
|1AADC4:DECB| db $18 ; duration
|1AADC5:DECC| db $C9 ; rest
|1AADC6:DECD| db $0C ; duration
|1AADC7:DECE| db $AF ; play note B4
|1AADC8:DECF| db $C9 ; rest
|1AADC9:DED0| db $AB ; play note G4
|1AADCA:DED1| db $C9 ; rest
|1AADCB:DED2| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song04_Sub_DED3:
|1AADCC:DED3| db $99 ; play note C#3
|1AADCD:DED4| db $A0 ; play note G#3
|1AADCE:DED5| db $A0 ; play note G#3
|1AADCF:DED6| db $A0 ; play note G#3
|1AADD0:DED7| db $A0 ; play note G#3
|1AADD1:DED8| db $A0 ; play note G#3
|1AADD2:DED9| db $A0 ; play note G#3
|1AADD3:DEDA| db $A0 ; play note G#3
|1AADD4:DEDB| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song04_Sub_DEDC:
|1AADD5:DEDC| db $92 ; play note F#2
|1AADD6:DEDD| db $99 ; play note C#3
|1AADD7:DEDE| db $99 ; play note C#3
|1AADD8:DEDF| db $99 ; play note C#3
|1AADD9:DEE0| db $99 ; play note C#3
|1AADDA:DEE1| db $99 ; play note C#3
|1AADDB:DEE2| db $99 ; play note C#3
|1AADDC:DEE3| db $99 ; play note C#3
|1AADDD:DEE4| db $00 ; End

;===================================================================================================

Song05_LostWoods:
|1AADDE:DEE5| dw Song05_Segment0
|1AADE0:DEE7| dw Song05_Segment1
|1AADE2:DEE9| dw Song05_Segment2
|1AADE4:DEEB| dw $00FF, Song05_LostWoods ; Loop point
|1AADE8:DEEF| dw $0000

Song05_Segment0:
|1AADEA:DEF1| dw Song05_Segment0_Track0
|1AADEC:DEF3| dw Song05_Segment0_Track1
|1AADEE:DEF5| dw Song05_Segment0_Track2
|1AADF0:DEF7| dw Song05_Segment0_Track3
|1AADF2:DEF9| dw Song05_Segment0_Track4
|1AADF4:DEFB| dw $0000
|1AADF6:DEFD| dw $0000
|1AADF8:DEFF| dw Song05_Segment0_Track7

Song05_Segment1:
|1AADFA:DF01| dw Song05_Segment1_Track0
|1AADFC:DF03| dw Song05_Segment1_Track1
|1AADFE:DF05| dw Song05_Segment1_Track2
|1AAE00:DF07| dw Song05_Segment1_Track3
|1AAE02:DF09| dw Song05_Segment1_Track4
|1AAE04:DF0B| dw $0000
|1AAE06:DF0D| dw $0000
|1AAE08:DF0F| dw Song05_Segment1_Track7

Song05_Unused0:
|1AAE0A:DF11| dw Song05_Unused0_Track0
|1AAE0C:DF13| dw Song05_Unused0_Track1
|1AAE0E:DF15| dw Song05_Unused0_Track2
|1AAE10:DF17| dw Song05_Unused0_Track3
|1AAE12:DF19| dw Song05_Unused0_Track4
|1AAE14:DF1B| dw $0000
|1AAE16:DF1D| dw $0000
|1AAE18:DF1F| dw Song05_Unused0_Track7

Song05_Segment2:
|1AAE1A:DF21| dw Song05_Segment2_Track0
|1AAE1C:DF23| dw Song05_Segment2_Track1
|1AAE1E:DF25| dw Song05_Segment2_Track2
|1AAE20:DF27| dw Song05_Segment2_Track3
|1AAE22:DF29| dw Song05_Segment2_Track4
|1AAE24:DF2B| dw $0000
|1AAE26:DF2D| dw $0000
|1AAE28:DF2F| dw Song05_Segment2_Track7

;---------------------------------------------------------------------------------------------------

Song05_Segment0_Track0:
|1AAE2A:DF31| db $FA, $17 ; set base percussion sample
|1AAE2C:DF33| db $E5, $C8 ; set song volume
|1AAE2E:DF35| db $E7, $1D ; set song tempo
|1AAE30:DF37| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1AAE34:DF3B| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1AAE38:DF3F| db $F8, $28, $1E, $1E ; initiate gradual echo volume change
|1AAE3C:DF43| db $ED, $C8 ; set channel volume
|1AAE3E:DF45| db $E0, $0A ; set instrument - strings B
|1AAE40:DF47| db $E3, $1E, $14, $1E ; enable vibrato
|1AAE44:DF4B| db $0C ; duration
|1AAE45:DF4C| db $C9 ; rest
|1AAE46:DF4D| db $0C, $29 ; duration, params
|1AAE48:DF4F| db $AF ; play note B4
|1AAE49:DF50| db $0C, $2B ; duration, params
|1AAE4B:DF52| db $AF ; play note B4
|1AAE4C:DF53| db $18, $4B ; duration, params
|1AAE4E:DF55| db $AF ; play note B4
|1AAE4F:DF56| db $0C, $29 ; duration, params
|1AAE51:DF58| db $AF ; play note B4
|1AAE52:DF59| db $AF ; play note B4
|1AAE53:DF5A| db $AF ; play note B4
|1AAE54:DF5B| db $EF : dw Song05_Sub_E236 : db $01 ; call segment subroutine
|1AAE58:DF5F| db $C9 ; rest
|1AAE59:DF60| db $AF ; play note B4
|1AAE5A:DF61| db $0C, $2B ; duration, params
|1AAE5C:DF63| db $AF ; play note B4
|1AAE5D:DF64| db $30, $4B ; duration, params
|1AAE5F:DF66| db $AF ; play note B4
|1AAE60:DF67| db $0C ; duration
|1AAE61:DF68| db $C9 ; rest
|1AAE62:DF69| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song05_Segment0_Track1:
|1AAE63:DF6A| db $E0, $09 ; set instrument - strings A
|1AAE65:DF6C| db $ED, $B4 ; set channel volume
|1AAE67:DF6E| db $E3, $1E, $14, $1E ; enable vibrato
|1AAE6B:DF72| db $EF : dw Song05_Sub_E250 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song05_Segment0_Track2:
|1AAE6F:DF76| db $ED, $B4 ; set channel volume
|1AAE71:DF78| db $E0, $0A ; set instrument - strings B
|1AAE73:DF7A| db $E3, $1E, $14, $1E ; enable vibrato
|1AAE77:DF7E| db $0C ; duration
|1AAE78:DF7F| db $C9 ; rest
|1AAE79:DF80| db $0C, $29 ; duration, params
|1AAE7B:DF82| db $AC ; play note G#4
|1AAE7C:DF83| db $0C, $2B ; duration, params
|1AAE7E:DF85| db $AC ; play note G#4
|1AAE7F:DF86| db $18, $4B ; duration, params
|1AAE81:DF88| db $AC ; play note G#4
|1AAE82:DF89| db $0C, $29 ; duration, params
|1AAE84:DF8B| db $AC ; play note G#4
|1AAE85:DF8C| db $AC ; play note G#4
|1AAE86:DF8D| db $AC ; play note G#4
|1AAE87:DF8E| db $C9 ; rest
|1AAE88:DF8F| db $AD ; play note A4
|1AAE89:DF90| db $0C, $2B ; duration, params
|1AAE8B:DF92| db $AD ; play note A4
|1AAE8C:DF93| db $30, $4B ; duration, params
|1AAE8E:DF95| db $AD ; play note A4
|1AAE8F:DF96| db $0C ; duration
|1AAE90:DF97| db $C9 ; rest
|1AAE91:DF98| db $C9 ; rest
|1AAE92:DF99| db $0C, $29 ; duration, params
|1AAE94:DF9B| db $AC ; play note G#4
|1AAE95:DF9C| db $0C, $2B ; duration, params
|1AAE97:DF9E| db $AC ; play note G#4
|1AAE98:DF9F| db $18, $4B ; duration, params
|1AAE9A:DFA1| db $AC ; play note G#4
|1AAE9B:DFA2| db $0C, $29 ; duration, params
|1AAE9D:DFA4| db $AC ; play note G#4
|1AAE9E:DFA5| db $AC ; play note G#4
|1AAE9F:DFA6| db $AC ; play note G#4
|1AAEA0:DFA7| db $C9 ; rest
|1AAEA1:DFA8| db $AD ; play note A4
|1AAEA2:DFA9| db $0C, $2B ; duration, params
|1AAEA4:DFAB| db $AD ; play note A4
|1AAEA5:DFAC| db $30, $4B ; duration, params
|1AAEA7:DFAE| db $AD ; play note A4
|1AAEA8:DFAF| db $0C ; duration
|1AAEA9:DFB0| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song05_Segment0_Track3:
|1AAEAA:DFB1| db $ED, $B4 ; set channel volume
|1AAEAC:DFB3| db $E0, $0A ; set instrument - strings B
|1AAEAE:DFB5| db $E3, $1E, $14, $1E ; enable vibrato
|1AAEB2:DFB9| db $0C ; duration
|1AAEB3:DFBA| db $C9 ; rest
|1AAEB4:DFBB| db $0C, $29 ; duration, params
|1AAEB6:DFBD| db $A8 ; play note E4
|1AAEB7:DFBE| db $0C, $2B ; duration, params
|1AAEB9:DFC0| db $A8 ; play note E4
|1AAEBA:DFC1| db $18, $4B ; duration, params
|1AAEBC:DFC3| db $A8 ; play note E4
|1AAEBD:DFC4| db $0C, $29 ; duration, params
|1AAEBF:DFC6| db $A8 ; play note E4
|1AAEC0:DFC7| db $A8 ; play note E4
|1AAEC1:DFC8| db $A8 ; play note E4
|1AAEC2:DFC9| db $C9 ; rest
|1AAEC3:DFCA| db $A9 ; play note F4
|1AAEC4:DFCB| db $0C, $2B ; duration, params
|1AAEC6:DFCD| db $A9 ; play note F4
|1AAEC7:DFCE| db $30, $4B ; duration, params
|1AAEC9:DFD0| db $A9 ; play note F4
|1AAECA:DFD1| db $0C ; duration
|1AAECB:DFD2| db $C9 ; rest
|1AAECC:DFD3| db $C9 ; rest
|1AAECD:DFD4| db $0C, $29 ; duration, params
|1AAECF:DFD6| db $A8 ; play note E4
|1AAED0:DFD7| db $0C, $2B ; duration, params
|1AAED2:DFD9| db $A8 ; play note E4
|1AAED3:DFDA| db $18, $4B ; duration, params
|1AAED5:DFDC| db $A8 ; play note E4
|1AAED6:DFDD| db $0C, $29 ; duration, params
|1AAED8:DFDF| db $A8 ; play note E4
|1AAED9:DFE0| db $A8 ; play note E4
|1AAEDA:DFE1| db $A8 ; play note E4
|1AAEDB:DFE2| db $C9 ; rest
|1AAEDC:DFE3| db $A9 ; play note F4
|1AAEDD:DFE4| db $0C, $2B ; duration, params
|1AAEDF:DFE6| db $A9 ; play note F4
|1AAEE0:DFE7| db $30, $4B ; duration, params
|1AAEE2:DFE9| db $A9 ; play note F4
|1AAEE3:DFEA| db $0C ; duration
|1AAEE4:DFEB| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song05_Segment0_Track4:
|1AAEE5:DFEC| db $ED, $A0 ; set channel volume
|1AAEE7:DFEE| db $E0, $16 ; set instrument - flute
|1AAEE9:DFF0| db $60 ; duration
|1AAEEA:DFF1| db $C9 ; rest
|1AAEEB:DFF2| db $40 ; duration
|1AAEEC:DFF3| db $C9 ; rest
|1AAEED:DFF4| db $04, $3B ; duration, params
|1AAEEF:DFF6| db $BB ; play note B5
|1AAEF0:DFF7| db $B9 ; play note A5
|1AAEF1:DFF8| db $18, $7D ; duration, params
|1AAEF3:DFFA| db $BB ; play note B5
|1AAEF4:DFFB| db $60 ; duration
|1AAEF5:DFFC| db $C9 ; rest
|1AAEF6:DFFD| db $3C ; duration
|1AAEF7:DFFE| db $C9 ; rest
|1AAEF8:DFFF| db $06, $3B ; duration, params
|1AAEFA:E001| db $BB ; play note B5
|1AAEFB:E002| db $B9 ; play note A5
|1AAEFC:E003| db $18, $7D ; duration, params
|1AAEFE:E005| db $BB ; play note B5

;---------------------------------------------------------------------------------------------------

Song05_Segment0_Track7:
|1AAEFF:E006| db $ED, $82 ; set channel volume
|1AAF01:E008| db $E0, $0A ; set instrument - strings B
|1AAF03:E00A| db $E3, $1E, $14, $1E ; enable vibrato
|1AAF07:E00E| db $14 ; duration
|1AAF08:E00F| db $C9 ; rest
|1AAF09:E010| db $0C, $29 ; duration, params
|1AAF0B:E012| db $AF ; play note B4
|1AAF0C:E013| db $0C, $2B ; duration, params
|1AAF0E:E015| db $AF ; play note B4
|1AAF0F:E016| db $18, $4B ; duration, params
|1AAF11:E018| db $AF ; play note B4
|1AAF12:E019| db $0C, $29 ; duration, params
|1AAF14:E01B| db $AF ; play note B4
|1AAF15:E01C| db $AF ; play note B4
|1AAF16:E01D| db $AF ; play note B4
|1AAF17:E01E| db $EF : dw Song05_Sub_E236 : db $01 ; call segment subroutine
|1AAF1B:E022| db $C9 ; rest
|1AAF1C:E023| db $AF ; play note B4
|1AAF1D:E024| db $0C, $2B ; duration, params
|1AAF1F:E026| db $AF ; play note B4
|1AAF20:E027| db $30, $4B ; duration, params
|1AAF22:E029| db $AF ; play note B4
|1AAF23:E02A| db $04 ; duration
|1AAF24:E02B| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song05_Segment1_Track0:
|1AAF25:E02C| db $EF : dw Song05_Sub_E25A : db $01 ; call segment subroutine
|1AAF29:E030| db $EF : dw Song05_Sub_E274 : db $01 ; call segment subroutine
|1AAF2D:E034| db $C8 ; sustain current note
|1AAF2E:E035| db $A6 ; play note D4
|1AAF2F:E036| db $A6 ; play note D4
|1AAF30:E037| db $30 ; duration
|1AAF31:E038| db $A6 ; play note D4
|1AAF32:E039| db $0C ; duration
|1AAF33:E03A| db $C9 ; rest
|1AAF34:E03B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song05_Segment1_Track1:
|1AAF35:E03C| db $ED, $C8 ; set channel volume
|1AAF37:E03E| db $E3, $1E, $14, $1E ; enable vibrato
|1AAF3B:E042| db $60, $6D ; duration, params
|1AAF3D:E044| db $9F ; play note G3
|1AAF3E:E045| db $98 ; play note C3
|1AAF3F:E046| db $9D ; play note F3
|1AAF40:E047| db $96 ; play note A#2

;---------------------------------------------------------------------------------------------------

Song05_Segment1_Track2:
|1AAF41:E048| db $EF : dw Song05_Sub_E28A : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song05_Segment1_Track3:
|1AAF45:E04C| db $ED, $C8 ; set channel volume
|1AAF47:E04E| db $E0, $0A ; set instrument - strings B
|1AAF49:E050| db $E3, $1E, $14, $1E ; enable vibrato
|1AAF4D:E054| db $0C ; duration
|1AAF4E:E055| db $C9 ; rest
|1AAF4F:E056| db $0C, $29 ; duration, params
|1AAF51:E058| db $AB ; play note G4
|1AAF52:E059| db $AB ; play note G4
|1AAF53:E05A| db $AB ; play note G4
|1AAF54:E05B| db $0C, $5B ; duration, params
|1AAF56:E05D| db $AB ; play note G4
|1AAF57:E05E| db $0C, $29 ; duration, params
|1AAF59:E060| db $AB ; play note G4
|1AAF5A:E061| db $AB ; play note G4
|1AAF5B:E062| db $AB ; play note G4
|1AAF5C:E063| db $C9 ; rest
|1AAF5D:E064| db $AB ; play note G4
|1AAF5E:E065| db $AB ; play note G4
|1AAF5F:E066| db $0C, $59 ; duration, params
|1AAF61:E068| db $AB ; play note G4
|1AAF62:E069| db $0C, $2B ; duration, params
|1AAF64:E06B| db $AB ; play note G4
|1AAF65:E06C| db $0C, $29 ; duration, params
|1AAF67:E06E| db $AB ; play note G4
|1AAF68:E06F| db $AB ; play note G4
|1AAF69:E070| db $AB ; play note G4
|1AAF6A:E071| db $EF : dw Song05_Sub_E2CA : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song05_Segment1_Track4:
|1AAF6E:E075| db $ED, $C8 ; set channel volume
|1AAF70:E077| db $E0, $0A ; set instrument - strings B
|1AAF72:E079| db $E3, $1E, $14, $1E ; enable vibrato
|1AAF76:E07D| db $0C ; duration
|1AAF77:E07E| db $C9 ; rest
|1AAF78:E07F| db $0C, $29 ; duration, params
|1AAF7A:E081| db $A6 ; play note D4
|1AAF7B:E082| db $A6 ; play note D4
|1AAF7C:E083| db $A6 ; play note D4
|1AAF7D:E084| db $0C, $5B ; duration, params
|1AAF7F:E086| db $A6 ; play note D4
|1AAF80:E087| db $0C, $29 ; duration, params
|1AAF82:E089| db $A6 ; play note D4
|1AAF83:E08A| db $A6 ; play note D4
|1AAF84:E08B| db $A6 ; play note D4
|1AAF85:E08C| db $C9 ; rest
|1AAF86:E08D| db $A4 ; play note C4
|1AAF87:E08E| db $A4 ; play note C4
|1AAF88:E08F| db $A4 ; play note C4
|1AAF89:E090| db $0C, $5B ; duration, params
|1AAF8B:E092| db $A4 ; play note C4
|1AAF8C:E093| db $0C, $29 ; duration, params
|1AAF8E:E095| db $A4 ; play note C4
|1AAF8F:E096| db $A4 ; play note C4
|1AAF90:E097| db $A4 ; play note C4
|1AAF91:E098| db $C9 ; rest
|1AAF92:E099| db $A4 ; play note C4
|1AAF93:E09A| db $A4 ; play note C4
|1AAF94:E09B| db $A4 ; play note C4
|1AAF95:E09C| db $0C, $59 ; duration, params
|1AAF97:E09E| db $A4 ; play note C4
|1AAF98:E09F| db $0C, $2B ; duration, params
|1AAF9A:E0A1| db $A4 ; play note C4
|1AAF9B:E0A2| db $0C, $29 ; duration, params
|1AAF9D:E0A4| db $A4 ; play note C4
|1AAF9E:E0A5| db $A4 ; play note C4
|1AAF9F:E0A6| db $C9 ; rest
|1AAFA0:E0A7| db $A2 ; play note A#3
|1AAFA1:E0A8| db $A2 ; play note A#3
|1AAFA2:E0A9| db $A2 ; play note A#3
|1AAFA3:E0AA| db $0C, $59 ; duration, params
|1AAFA5:E0AC| db $A2 ; play note A#3
|1AAFA6:E0AD| db $0C, $2B ; duration, params
|1AAFA8:E0AF| db $A2 ; play note A#3
|1AAFA9:E0B0| db $0C, $29 ; duration, params
|1AAFAB:E0B2| db $A2 ; play note A#3
|1AAFAC:E0B3| db $A2 ; play note A#3

;---------------------------------------------------------------------------------------------------

Song05_Segment1_Track7:
|1AAFAD:E0B4| db $EF : dw Song05_Sub_E2D7 : db $01 ; call segment subroutine
|1AAFB1:E0B8| db $EF : dw Song05_Sub_E274 : db $01 ; call segment subroutine
|1AAFB5:E0BC| db $C8 ; sustain current note
|1AAFB6:E0BD| db $A6 ; play note D4
|1AAFB7:E0BE| db $A6 ; play note D4
|1AAFB8:E0BF| db $30 ; duration
|1AAFB9:E0C0| db $A6 ; play note D4
|1AAFBA:E0C1| db $04 ; duration
|1AAFBB:E0C2| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song05_Unused0_Track0:
|1AAFBC:E0C3| db $EF : dw Song05_Sub_E25A : db $01 ; call segment subroutine
|1AAFC0:E0C7| db $EF : dw Song05_Sub_E274 : db $01 ; call segment subroutine
|1AAFC4:E0CB| db $C8 ; sustain current note
|1AAFC5:E0CC| db $A6 ; play note D4
|1AAFC6:E0CD| db $A6 ; play note D4
|1AAFC7:E0CE| db $30 ; duration
|1AAFC8:E0CF| db $A6 ; play note D4
|1AAFC9:E0D0| db $0C ; duration
|1AAFCA:E0D1| db $C9 ; rest
|1AAFCB:E0D2| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song05_Unused0_Track1:
|1AAFCC:E0D3| db $E0, $0A ; set instrument - strings B
|1AAFCE:E0D5| db $ED, $C8 ; set channel volume
|1AAFD0:E0D7| db $E3, $1E, $14, $1E ; enable vibrato
|1AAFD4:E0DB| db $60, $6D ; duration, params
|1AAFD6:E0DD| db $9F ; play note G3
|1AAFD7:E0DE| db $98 ; play note C3
|1AAFD8:E0DF| db $9D ; play note F3
|1AAFD9:E0E0| db $9C ; play note E3

;---------------------------------------------------------------------------------------------------

Song05_Unused0_Track2:
|1AAFDA:E0E1| db $EF : dw Song05_Sub_E28A : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song05_Unused0_Track3:
|1AAFDE:E0E5| db $ED, $C8 ; set channel volume
|1AAFE0:E0E7| db $E0, $0A ; set instrument - strings B
|1AAFE2:E0E9| db $E3, $1E, $14, $1E ; enable vibrato
|1AAFE6:E0ED| db $EF : dw Song05_Sub_E2F1 : db $02 ; call segment subroutine
|1AAFEA:E0F1| db $06, $5D ; duration, params
|1AAFEC:E0F3| db $A9 ; play note F4
|1AAFED:E0F4| db $06, $59 ; duration, params
|1AAFEF:E0F6| db $A9 ; play note F4
|1AAFF0:E0F7| db $A9 ; play note F4
|1AAFF1:E0F8| db $A9 ; play note F4
|1AAFF2:E0F9| db $06, $5B ; duration, params
|1AAFF4:E0FB| db $A9 ; play note F4
|1AAFF5:E0FC| db $06, $59 ; duration, params
|1AAFF7:E0FE| db $A9 ; play note F4
|1AAFF8:E0FF| db $A9 ; play note F4
|1AAFF9:E100| db $A9 ; play note F4
|1AAFFA:E101| db $06, $5D ; duration, params
|1AAFFC:E103| db $A9 ; play note F4
|1AAFFD:E104| db $06, $59 ; duration, params
|1AAFFF:E106| db $A9 ; play note F4
|1AB000:E107| db $A9 ; play note F4
|1AB001:E108| db $A9 ; play note F4
|1AB002:E109| db $06, $5B ; duration, params
|1AB004:E10B| db $A9 ; play note F4
|1AB005:E10C| db $06, $59 ; duration, params
|1AB007:E10E| db $A9 ; play note F4
|1AB008:E10F| db $A9 ; play note F4
|1AB009:E110| db $A9 ; play note F4
|1AB00A:E111| db $06, $5D ; duration, params
|1AB00C:E113| db $A8 ; play note E4
|1AB00D:E114| db $06, $59 ; duration, params
|1AB00F:E116| db $A8 ; play note E4
|1AB010:E117| db $A8 ; play note E4
|1AB011:E118| db $A8 ; play note E4
|1AB012:E119| db $06, $5B ; duration, params
|1AB014:E11B| db $A8 ; play note E4
|1AB015:E11C| db $06, $59 ; duration, params
|1AB017:E11E| db $A8 ; play note E4
|1AB018:E11F| db $A8 ; play note E4
|1AB019:E120| db $A8 ; play note E4
|1AB01A:E121| db $06, $5D ; duration, params
|1AB01C:E123| db $A8 ; play note E4
|1AB01D:E124| db $06, $59 ; duration, params
|1AB01F:E126| db $A8 ; play note E4
|1AB020:E127| db $A8 ; play note E4
|1AB021:E128| db $A8 ; play note E4
|1AB022:E129| db $06, $5B ; duration, params
|1AB024:E12B| db $A8 ; play note E4
|1AB025:E12C| db $06, $59 ; duration, params
|1AB027:E12E| db $A8 ; play note E4
|1AB028:E12F| db $A8 ; play note E4
|1AB029:E130| db $A8 ; play note E4

;---------------------------------------------------------------------------------------------------

Song05_Unused0_Track4:
|1AB02A:E131| db $ED, $C8 ; set channel volume
|1AB02C:E133| db $E0, $0A ; set instrument - strings B
|1AB02E:E135| db $E3, $1E, $14, $1E ; enable vibrato
|1AB032:E139| db $06, $5D ; duration, params
|1AB034:E13B| db $A6 ; play note D4
|1AB035:E13C| db $06, $59 ; duration, params
|1AB037:E13E| db $A6 ; play note D4
|1AB038:E13F| db $A6 ; play note D4
|1AB039:E140| db $A6 ; play note D4
|1AB03A:E141| db $06, $5B ; duration, params
|1AB03C:E143| db $A6 ; play note D4
|1AB03D:E144| db $06, $59 ; duration, params
|1AB03F:E146| db $A6 ; play note D4
|1AB040:E147| db $A6 ; play note D4
|1AB041:E148| db $A6 ; play note D4
|1AB042:E149| db $06, $5D ; duration, params
|1AB044:E14B| db $A6 ; play note D4
|1AB045:E14C| db $06, $59 ; duration, params
|1AB047:E14E| db $A6 ; play note D4
|1AB048:E14F| db $A6 ; play note D4
|1AB049:E150| db $A6 ; play note D4
|1AB04A:E151| db $06, $5B ; duration, params
|1AB04C:E153| db $A6 ; play note D4
|1AB04D:E154| db $06, $59 ; duration, params
|1AB04F:E156| db $A6 ; play note D4
|1AB050:E157| db $A6 ; play note D4
|1AB051:E158| db $A6 ; play note D4
|1AB052:E159| db $EF : dw Song05_Sub_E312 : db $02 ; call segment subroutine
|1AB056:E15D| db $06, $5D ; duration, params
|1AB058:E15F| db $A3 ; play note B3
|1AB059:E160| db $06, $59 ; duration, params
|1AB05B:E162| db $A3 ; play note B3
|1AB05C:E163| db $A3 ; play note B3
|1AB05D:E164| db $A3 ; play note B3
|1AB05E:E165| db $06, $5B ; duration, params
|1AB060:E167| db $A3 ; play note B3
|1AB061:E168| db $06, $59 ; duration, params
|1AB063:E16A| db $A3 ; play note B3
|1AB064:E16B| db $A3 ; play note B3
|1AB065:E16C| db $A3 ; play note B3
|1AB066:E16D| db $06, $5D ; duration, params
|1AB068:E16F| db $A3 ; play note B3
|1AB069:E170| db $06, $59 ; duration, params
|1AB06B:E172| db $A3 ; play note B3
|1AB06C:E173| db $A3 ; play note B3
|1AB06D:E174| db $A3 ; play note B3
|1AB06E:E175| db $06, $5B ; duration, params
|1AB070:E177| db $A3 ; play note B3
|1AB071:E178| db $06, $59 ; duration, params
|1AB073:E17A| db $A3 ; play note B3
|1AB074:E17B| db $A3 ; play note B3
|1AB075:E17C| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song05_Unused0_Track7:
|1AB076:E17D| db $EF : dw Song05_Sub_E2D7 : db $01 ; call segment subroutine
|1AB07A:E181| db $EF : dw Song05_Sub_E274 : db $01 ; call segment subroutine
|1AB07E:E185| db $C8 ; sustain current note
|1AB07F:E186| db $A6 ; play note D4
|1AB080:E187| db $A6 ; play note D4
|1AB081:E188| db $30 ; duration
|1AB082:E189| db $A6 ; play note D4
|1AB083:E18A| db $04 ; duration
|1AB084:E18B| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song05_Segment2_Track0:
|1AB085:E18C| db $ED, $C8 ; set channel volume
|1AB087:E18E| db $E0, $0A ; set instrument - strings B
|1AB089:E190| db $E3, $1E, $14, $1E ; enable vibrato
|1AB08D:E194| db $EF : dw Song05_Sub_E333 : db $01 ; call segment subroutine
|1AB091:E198| db $60, $58 ; duration, params
|1AB093:E19A| db $C8 ; sustain current note
|1AB094:E19B| db $60, $48 ; duration, params
|1AB096:E19D| db $C8 ; sustain current note
|1AB097:E19E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song05_Segment2_Track1:
|1AB098:E19F| db $ED, $C8 ; set channel volume
|1AB09A:E1A1| db $E3, $1E, $14, $1E ; enable vibrato
|1AB09E:E1A5| db $60, $6D ; duration, params
|1AB0A0:E1A7| db $94 ; play note G#2
|1AB0A1:E1A8| db $96 ; play note A#2
|1AB0A2:E1A9| db $98 ; play note C3
|1AB0A3:E1AA| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song05_Segment2_Track2:
|1AB0A4:E1AB| db $ED, $C8 ; set channel volume
|1AB0A6:E1AD| db $E0, $16 ; set instrument - flute
|1AB0A8:E1AF| db $E3, $1E, $14, $1E ; enable vibrato
|1AB0AC:E1B3| db $0C ; duration
|1AB0AD:E1B4| db $C9 ; rest
|1AB0AE:E1B5| db $0C, $29 ; duration, params
|1AB0B0:E1B7| db $B7 ; play note G5
|1AB0B1:E1B8| db $0C, $2B ; duration, params
|1AB0B3:E1BA| db $B7 ; play note G5
|1AB0B4:E1BB| db $B7 ; play note G5
|1AB0B5:E1BC| db $0C, $2D ; duration, params
|1AB0B7:E1BE| db $B7 ; play note G5
|1AB0B8:E1BF| db $18, $29 ; duration, params
|1AB0BA:E1C1| db $B0 ; play note C5
|1AB0BB:E1C2| db $0C ; duration
|1AB0BC:E1C3| db $B0 ; play note C5
|1AB0BD:E1C4| db $C8 ; sustain current note
|1AB0BE:E1C5| db $B2 ; play note D5
|1AB0BF:E1C6| db $B4 ; play note E5
|1AB0C0:E1C7| db $18 ; duration
|1AB0C1:E1C8| db $B5 ; play note F5
|1AB0C2:E1C9| db $0C ; duration
|1AB0C3:E1CA| db $B4 ; play note E5
|1AB0C4:E1CB| db $B5 ; play note F5
|1AB0C5:E1CC| db $B7 ; play note G5
|1AB0C6:E1CD| db $60, $58 ; duration, params
|1AB0C8:E1CF| db $C8 ; sustain current note
|1AB0C9:E1D0| db $60, $48 ; duration, params
|1AB0CB:E1D2| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song05_Segment2_Track3:
|1AB0CC:E1D3| db $ED, $C8 ; set channel volume
|1AB0CE:E1D5| db $E0, $0A ; set instrument - strings B
|1AB0D0:E1D7| db $E3, $1E, $14, $1E ; enable vibrato
|1AB0D4:E1DB| db $0C ; duration
|1AB0D5:E1DC| db $C9 ; rest
|1AB0D6:E1DD| db $0C, $29 ; duration, params
|1AB0D8:E1DF| db $A0 ; play note G#3
|1AB0D9:E1E0| db $A0 ; play note G#3
|1AB0DA:E1E1| db $A0 ; play note G#3
|1AB0DB:E1E2| db $0C, $5B ; duration, params
|1AB0DD:E1E4| db $A0 ; play note G#3
|1AB0DE:E1E5| db $0C, $29 ; duration, params
|1AB0E0:E1E7| db $A0 ; play note G#3
|1AB0E1:E1E8| db $A0 ; play note G#3
|1AB0E2:E1E9| db $A0 ; play note G#3
|1AB0E3:E1EA| db $C9 ; rest
|1AB0E4:E1EB| db $A2 ; play note A#3
|1AB0E5:E1EC| db $A2 ; play note A#3
|1AB0E6:E1ED| db $0C, $59 ; duration, params
|1AB0E8:E1EF| db $A2 ; play note A#3
|1AB0E9:E1F0| db $0C, $2B ; duration, params
|1AB0EB:E1F2| db $A2 ; play note A#3
|1AB0EC:E1F3| db $0C, $29 ; duration, params
|1AB0EE:E1F5| db $A2 ; play note A#3
|1AB0EF:E1F6| db $A2 ; play note A#3
|1AB0F0:E1F7| db $A2 ; play note A#3
|1AB0F1:E1F8| db $EF : dw Song05_Sub_E34E : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song05_Segment2_Track4:
|1AB0F5:E1FC| db $ED, $C8 ; set channel volume
|1AB0F7:E1FE| db $E0, $0A ; set instrument - strings B
|1AB0F9:E200| db $E3, $1E, $14, $1E ; enable vibrato
|1AB0FD:E204| db $0C ; duration
|1AB0FE:E205| db $C9 ; rest
|1AB0FF:E206| db $0C, $29 ; duration, params
|1AB101:E208| db $A7 ; play note D#4
|1AB102:E209| db $A7 ; play note D#4
|1AB103:E20A| db $A7 ; play note D#4
|1AB104:E20B| db $0C, $5B ; duration, params
|1AB106:E20D| db $A7 ; play note D#4
|1AB107:E20E| db $0C, $29 ; duration, params
|1AB109:E210| db $A7 ; play note D#4
|1AB10A:E211| db $A7 ; play note D#4
|1AB10B:E212| db $A7 ; play note D#4
|1AB10C:E213| db $C9 ; rest
|1AB10D:E214| db $A9 ; play note F4
|1AB10E:E215| db $A9 ; play note F4
|1AB10F:E216| db $A9 ; play note F4
|1AB110:E217| db $0C, $5B ; duration, params
|1AB112:E219| db $A9 ; play note F4
|1AB113:E21A| db $0C, $29 ; duration, params
|1AB115:E21C| db $A9 ; play note F4
|1AB116:E21D| db $A9 ; play note F4
|1AB117:E21E| db $A9 ; play note F4
|1AB118:E21F| db $EF : dw Song05_Sub_E35B : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song05_Segment2_Track7:
|1AB11C:E223| db $ED, $8C ; set channel volume
|1AB11E:E225| db $E0, $0A ; set instrument - strings B
|1AB120:E227| db $E3, $1E, $14, $1E ; enable vibrato
|1AB124:E22B| db $EF : dw Song05_Sub_E333 : db $01 ; call segment subroutine
|1AB128:E22F| db $60, $58 ; duration, params
|1AB12A:E231| db $C8 ; sustain current note
|1AB12B:E232| db $60, $48 ; duration, params
|1AB12D:E234| db $C8 ; sustain current note
|1AB12E:E235| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song05_Sub_E236:
|1AB12F:E236| db $C9 ; rest
|1AB130:E237| db $AF ; play note B4
|1AB131:E238| db $0C, $2B ; duration, params
|1AB133:E23A| db $AF ; play note B4
|1AB134:E23B| db $30, $4B ; duration, params
|1AB136:E23D| db $AF ; play note B4
|1AB137:E23E| db $0C ; duration
|1AB138:E23F| db $C9 ; rest
|1AB139:E240| db $C9 ; rest
|1AB13A:E241| db $0C, $29 ; duration, params
|1AB13C:E243| db $AF ; play note B4
|1AB13D:E244| db $0C, $2B ; duration, params
|1AB13F:E246| db $AF ; play note B4
|1AB140:E247| db $18, $4B ; duration, params
|1AB142:E249| db $AF ; play note B4
|1AB143:E24A| db $0C, $29 ; duration, params
|1AB145:E24C| db $AF ; play note B4
|1AB146:E24D| db $AF ; play note B4
|1AB147:E24E| db $AF ; play note B4
|1AB148:E24F| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song05_Sub_E250:
|1AB149:E250| db $48, $69 ; duration, params
|1AB14B:E252| db $9C ; play note E3
|1AB14C:E253| db $18, $6D ; duration, params
|1AB14E:E255| db $97 ; play note B2
|1AB14F:E256| db $30 ; duration
|1AB150:E257| db $9D ; play note F3
|1AB151:E258| db $98 ; play note C3
|1AB152:E259| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song05_Sub_E25A:
|1AB153:E25A| db $ED, $C8 ; set channel volume
|1AB155:E25C| db $E0, $0A ; set instrument - strings B
|1AB157:E25E| db $E3, $1E, $14, $1E ; enable vibrato
|1AB15B:E262| db $0C ; duration
|1AB15C:E263| db $C9 ; rest
|1AB15D:E264| db $0C, $29 ; duration, params
|1AB15F:E266| db $AF ; play note B4
|1AB160:E267| db $0C, $2B ; duration, params
|1AB162:E269| db $AF ; play note B4
|1AB163:E26A| db $AF ; play note B4
|1AB164:E26B| db $0C, $2D ; duration, params
|1AB166:E26D| db $AF ; play note B4
|1AB167:E26E| db $18, $29 ; duration, params
|1AB169:E270| db $A9 ; play note F4
|1AB16A:E271| db $0C ; duration
|1AB16B:E272| db $A9 ; play note F4
|1AB16C:E273| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song05_Sub_E274:
|1AB16D:E274| db $C8 ; sustain current note
|1AB16E:E275| db $A8 ; play note E4
|1AB16F:E276| db $A8 ; play note E4
|1AB170:E277| db $30 ; duration
|1AB171:E278| db $A8 ; play note E4
|1AB172:E279| db $0C ; duration
|1AB173:E27A| db $C9 ; rest
|1AB174:E27B| db $C9 ; rest
|1AB175:E27C| db $AD ; play note A4
|1AB176:E27D| db $0C, $2B ; duration, params
|1AB178:E27F| db $AD ; play note A4
|1AB179:E280| db $AD ; play note A4
|1AB17A:E281| db $0C, $2D ; duration, params
|1AB17C:E283| db $AD ; play note A4
|1AB17D:E284| db $18, $29 ; duration, params
|1AB17F:E286| db $A8 ; play note E4
|1AB180:E287| db $0C ; duration
|1AB181:E288| db $A8 ; play note E4
|1AB182:E289| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song05_Sub_E28A:
|1AB183:E28A| db $ED, $C8 ; set channel volume
|1AB185:E28C| db $E0, $16 ; set instrument - flute
|1AB187:E28E| db $E3, $1E, $14, $1E ; enable vibrato
|1AB18B:E292| db $0C ; duration
|1AB18C:E293| db $C9 ; rest
|1AB18D:E294| db $0C, $29 ; duration, params
|1AB18F:E296| db $BB ; play note B5
|1AB190:E297| db $0C, $2B ; duration, params
|1AB192:E299| db $BB ; play note B5
|1AB193:E29A| db $BB ; play note B5
|1AB194:E29B| db $0C, $2D ; duration, params
|1AB196:E29D| db $BB ; play note B5
|1AB197:E29E| db $18, $49 ; duration, params
|1AB199:E2A0| db $B5 ; play note F5
|1AB19A:E2A1| db $0C, $29 ; duration, params
|1AB19C:E2A3| db $B5 ; play note F5
|1AB19D:E2A4| db $C8 ; sustain current note
|1AB19E:E2A5| db $B4 ; play note E5
|1AB19F:E2A6| db $06 ; duration
|1AB1A0:E2A7| db $B4 ; play note E5
|1AB1A1:E2A8| db $B2 ; play note D5
|1AB1A2:E2A9| db $30, $49 ; duration, params
|1AB1A4:E2AB| db $B4 ; play note E5
|1AB1A5:E2AC| db $0C ; duration
|1AB1A6:E2AD| db $C9 ; rest
|1AB1A7:E2AE| db $C9 ; rest
|1AB1A8:E2AF| db $0C, $29 ; duration, params
|1AB1AA:E2B1| db $B9 ; play note A5
|1AB1AB:E2B2| db $0C, $2B ; duration, params
|1AB1AD:E2B4| db $B9 ; play note A5
|1AB1AE:E2B5| db $B9 ; play note A5
|1AB1AF:E2B6| db $0C, $2D ; duration, params
|1AB1B1:E2B8| db $B9 ; play note A5
|1AB1B2:E2B9| db $18, $49 ; duration, params
|1AB1B4:E2BB| db $B4 ; play note E5
|1AB1B5:E2BC| db $0C, $29 ; duration, params
|1AB1B7:E2BE| db $B4 ; play note E5
|1AB1B8:E2BF| db $C8 ; sustain current note
|1AB1B9:E2C0| db $B2 ; play note D5
|1AB1BA:E2C1| db $06 ; duration
|1AB1BB:E2C2| db $B2 ; play note D5
|1AB1BC:E2C3| db $B0 ; play note C5
|1AB1BD:E2C4| db $30, $49 ; duration, params
|1AB1BF:E2C6| db $B2 ; play note D5
|1AB1C0:E2C7| db $0C ; duration
|1AB1C1:E2C8| db $C9 ; rest
|1AB1C2:E2C9| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song05_Sub_E2CA:
|1AB1C3:E2CA| db $C9 ; rest
|1AB1C4:E2CB| db $A9 ; play note F4
|1AB1C5:E2CC| db $A9 ; play note F4
|1AB1C6:E2CD| db $A9 ; play note F4
|1AB1C7:E2CE| db $0C, $5B ; duration, params
|1AB1C9:E2D0| db $A9 ; play note F4
|1AB1CA:E2D1| db $0C, $29 ; duration, params
|1AB1CC:E2D3| db $A9 ; play note F4
|1AB1CD:E2D4| db $A9 ; play note F4
|1AB1CE:E2D5| db $A9 ; play note F4
|1AB1CF:E2D6| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song05_Sub_E2D7:
|1AB1D0:E2D7| db $ED, $8C ; set channel volume
|1AB1D2:E2D9| db $E0, $0A ; set instrument - strings B
|1AB1D4:E2DB| db $E3, $1E, $14, $1E ; enable vibrato
|1AB1D8:E2DF| db $14 ; duration
|1AB1D9:E2E0| db $C9 ; rest
|1AB1DA:E2E1| db $0C, $29 ; duration, params
|1AB1DC:E2E3| db $AF ; play note B4
|1AB1DD:E2E4| db $0C, $2B ; duration, params
|1AB1DF:E2E6| db $AF ; play note B4
|1AB1E0:E2E7| db $AF ; play note B4
|1AB1E1:E2E8| db $0C, $2D ; duration, params
|1AB1E3:E2EA| db $AF ; play note B4
|1AB1E4:E2EB| db $18, $29 ; duration, params
|1AB1E6:E2ED| db $A9 ; play note F4
|1AB1E7:E2EE| db $0C ; duration
|1AB1E8:E2EF| db $A9 ; play note F4
|1AB1E9:E2F0| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song05_Sub_E2F1:
|1AB1EA:E2F1| db $06, $5D ; duration, params
|1AB1EC:E2F3| db $AB ; play note G4
|1AB1ED:E2F4| db $06, $59 ; duration, params
|1AB1EF:E2F6| db $AB ; play note G4
|1AB1F0:E2F7| db $AB ; play note G4
|1AB1F1:E2F8| db $AB ; play note G4
|1AB1F2:E2F9| db $06, $5B ; duration, params
|1AB1F4:E2FB| db $AB ; play note G4
|1AB1F5:E2FC| db $06, $59 ; duration, params
|1AB1F7:E2FE| db $AB ; play note G4
|1AB1F8:E2FF| db $AB ; play note G4
|1AB1F9:E300| db $AB ; play note G4
|1AB1FA:E301| db $06, $5D ; duration, params
|1AB1FC:E303| db $AB ; play note G4
|1AB1FD:E304| db $06, $59 ; duration, params
|1AB1FF:E306| db $AB ; play note G4
|1AB200:E307| db $AB ; play note G4
|1AB201:E308| db $AB ; play note G4
|1AB202:E309| db $06, $5B ; duration, params
|1AB204:E30B| db $AB ; play note G4
|1AB205:E30C| db $06, $59 ; duration, params
|1AB207:E30E| db $AB ; play note G4
|1AB208:E30F| db $AB ; play note G4
|1AB209:E310| db $AB ; play note G4
|1AB20A:E311| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song05_Sub_E312:
|1AB20B:E312| db $06, $5D ; duration, params
|1AB20D:E314| db $A4 ; play note C4
|1AB20E:E315| db $06, $59 ; duration, params
|1AB210:E317| db $A4 ; play note C4
|1AB211:E318| db $A4 ; play note C4
|1AB212:E319| db $A4 ; play note C4
|1AB213:E31A| db $06, $5B ; duration, params
|1AB215:E31C| db $A4 ; play note C4
|1AB216:E31D| db $06, $59 ; duration, params
|1AB218:E31F| db $A4 ; play note C4
|1AB219:E320| db $A4 ; play note C4
|1AB21A:E321| db $A4 ; play note C4
|1AB21B:E322| db $06, $5D ; duration, params
|1AB21D:E324| db $A4 ; play note C4
|1AB21E:E325| db $06, $59 ; duration, params
|1AB220:E327| db $A4 ; play note C4
|1AB221:E328| db $A4 ; play note C4
|1AB222:E329| db $A4 ; play note C4
|1AB223:E32A| db $06, $5B ; duration, params
|1AB225:E32C| db $A4 ; play note C4
|1AB226:E32D| db $06, $59 ; duration, params
|1AB228:E32F| db $A4 ; play note C4
|1AB229:E330| db $A4 ; play note C4
|1AB22A:E331| db $A4 ; play note C4
|1AB22B:E332| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song05_Sub_E333:
|1AB22C:E333| db $0C ; duration
|1AB22D:E334| db $C9 ; rest
|1AB22E:E335| db $0C, $29 ; duration, params
|1AB230:E337| db $AB ; play note G4
|1AB231:E338| db $0C, $2B ; duration, params
|1AB233:E33A| db $AB ; play note G4
|1AB234:E33B| db $AB ; play note G4
|1AB235:E33C| db $0C, $2D ; duration, params
|1AB237:E33E| db $AB ; play note G4
|1AB238:E33F| db $18, $29 ; duration, params
|1AB23A:E341| db $A4 ; play note C4
|1AB23B:E342| db $0C ; duration
|1AB23C:E343| db $A4 ; play note C4
|1AB23D:E344| db $C8 ; sustain current note
|1AB23E:E345| db $A6 ; play note D4
|1AB23F:E346| db $A8 ; play note E4
|1AB240:E347| db $18 ; duration
|1AB241:E348| db $A9 ; play note F4
|1AB242:E349| db $0C ; duration
|1AB243:E34A| db $A8 ; play note E4
|1AB244:E34B| db $A9 ; play note F4
|1AB245:E34C| db $AB ; play note G4
|1AB246:E34D| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song05_Sub_E34E:
|1AB247:E34E| db $C9 ; rest
|1AB248:E34F| db $AB ; play note G4
|1AB249:E350| db $AB ; play note G4
|1AB24A:E351| db $AB ; play note G4
|1AB24B:E352| db $0C, $5B ; duration, params
|1AB24D:E354| db $AB ; play note G4
|1AB24E:E355| db $0C, $29 ; duration, params
|1AB250:E357| db $AB ; play note G4
|1AB251:E358| db $AB ; play note G4
|1AB252:E359| db $AB ; play note G4
|1AB253:E35A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song05_Sub_E35B:
|1AB254:E35B| db $C9 ; rest
|1AB255:E35C| db $A4 ; play note C4
|1AB256:E35D| db $A4 ; play note C4
|1AB257:E35E| db $A4 ; play note C4
|1AB258:E35F| db $0C, $59 ; duration, params
|1AB25A:E361| db $A4 ; play note C4
|1AB25B:E362| db $0C, $2B ; duration, params
|1AB25D:E364| db $A4 ; play note C4
|1AB25E:E365| db $0C, $29 ; duration, params
|1AB260:E367| db $A4 ; play note C4
|1AB261:E368| db $A4 ; play note C4
|1AB262:E369| db $00 ; End

;===================================================================================================

Song06_LegendsTheme_Attract:
|1AB263:E36A| dw Song06_Segment0
|1AB265:E36C| dw Song06_Segment1

Song06_Loop:
|1AB267:E36E| dw Song06_Segment2
|1AB269:E370| dw Song06_Segment2
|1AB26B:E372| dw Song06_Segment3
|1AB26D:E374| dw Song06_Segment4
|1AB26F:E376| dw $00FF, Song06_Loop ; Loop point
|1AB273:E37A| dw $0000

Song06_Unused0:
|1AB275:E37C| dw Song06_Unused0_Track0
|1AB277:E37E| dw Song06_Unused0_Track1
|1AB279:E380| dw Song06_Unused0_Track2
|1AB27B:E382| dw Song06_Unused0_Track3
|1AB27D:E384| dw $0000
|1AB27F:E386| dw $0000
|1AB281:E388| dw $0000
|1AB283:E38A| dw $0000

Song06_Segment0:
|1AB285:E38C| dw Song06_Segment0_Track0
|1AB287:E38E| dw Song06_Segment0_Track1
|1AB289:E390| dw Song06_Segment0_Track2
|1AB28B:E392| dw Song06_Segment0_Track3
|1AB28D:E394| dw $0000
|1AB28F:E396| dw $0000
|1AB291:E398| dw $0000
|1AB293:E39A| dw $0000

Song06_Segment1:
|1AB295:E39C| dw Song06_Segment1_Track0
|1AB297:E39E| dw Song06_Segment1_Track1
|1AB299:E3A0| dw Song06_Segment1_Track2
|1AB29B:E3A2| dw Song06_Segment1_Track3
|1AB29D:E3A4| dw Song06_Segment1_Track4
|1AB29F:E3A6| dw Song06_Segment1_Track5
|1AB2A1:E3A8| dw $0000
|1AB2A3:E3AA| dw $0000

Song06_Segment2:
|1AB2A5:E3AC| dw Song06_Segment2_Track0
|1AB2A7:E3AE| dw Song06_Segment2_Track1
|1AB2A9:E3B0| dw Song06_Segment2_Track2
|1AB2AB:E3B2| dw Song06_Segment2_Track3
|1AB2AD:E3B4| dw Song06_Segment2_Track4
|1AB2AF:E3B6| dw Song06_Segment2_Track5
|1AB2B1:E3B8| dw $0000
|1AB2B3:E3BA| dw $0000

Song06_Segment3:
|1AB2B5:E3BC| dw Song06_Segment3_Track0
|1AB2B7:E3BE| dw Song06_Segment3_Track1
|1AB2B9:E3C0| dw Song06_Segment3_Track2
|1AB2BB:E3C2| dw Song06_Segment3_Track3
|1AB2BD:E3C4| dw Song06_Segment3_Track4
|1AB2BF:E3C6| dw Song06_Segment3_Track5
|1AB2C1:E3C8| dw $0000
|1AB2C3:E3CA| dw $0000

Song06_Segment4:
|1AB2C5:E3CC| dw Song06_Segment4_Track0
|1AB2C7:E3CE| dw Song06_Segment4_Track1
|1AB2C9:E3D0| dw Song06_Segment4_Track2
|1AB2CB:E3D2| dw Song06_Segment4_Track3
|1AB2CD:E3D4| dw Song06_Segment4_Track4
|1AB2CF:E3D6| dw Song06_Segment4_Track5
|1AB2D1:E3D8| dw $0000
|1AB2D3:E3DA| dw $0000

;---------------------------------------------------------------------------------------------------

Song06_Unused0_Track0:
|1AB2D5:E3DC| db $EF : dw Song06_Sub_E728 : db $01 ; call segment subroutine
|1AB2D9:E3E0| db $48 ; duration
|1AB2DA:E3E1| db $B0 ; play note C5
|1AB2DB:E3E2| db $0C ; duration
|1AB2DC:E3E3| db $AF ; play note B4
|1AB2DD:E3E4| db $AD ; play note A4
|1AB2DE:E3E5| db $48 ; duration
|1AB2DF:E3E6| db $B0 ; play note C5
|1AB2E0:E3E7| db $0C ; duration
|1AB2E1:E3E8| db $AF ; play note B4
|1AB2E2:E3E9| db $AD ; play note A4
|1AB2E3:E3EA| db $60 ; duration
|1AB2E4:E3EB| db $AF ; play note B4
|1AB2E5:E3EC| db $C8 ; sustain current note
|1AB2E6:E3ED| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Unused0_Track1:
|1AB2E7:E3EE| db $EF : dw Song06_Sub_E740 : db $01 ; call segment subroutine
|1AB2EB:E3F2| db $18 ; duration
|1AB2EC:E3F3| db $C9 ; rest
|1AB2ED:E3F4| db $48 ; duration
|1AB2EE:E3F5| db $A9 ; play note F4
|1AB2EF:E3F6| db $18 ; duration
|1AB2F0:E3F7| db $C9 ; rest
|1AB2F1:E3F8| db $48 ; duration
|1AB2F2:E3F9| db $AE ; play note A#4
|1AB2F3:E3FA| db $18 ; duration
|1AB2F4:E3FB| db $C9 ; rest
|1AB2F5:E3FC| db $48 ; duration
|1AB2F6:E3FD| db $AC ; play note G#4
|1AB2F7:E3FE| db $18 ; duration
|1AB2F8:E3FF| db $C9 ; rest
|1AB2F9:E400| db $48 ; duration
|1AB2FA:E401| db $AD ; play note A4
|1AB2FB:E402| db $18 ; duration
|1AB2FC:E403| db $C9 ; rest
|1AB2FD:E404| db $48 ; duration
|1AB2FE:E405| db $AD ; play note A4
|1AB2FF:E406| db $18 ; duration
|1AB300:E407| db $C9 ; rest
|1AB301:E408| db $48 ; duration
|1AB302:E409| db $AA ; play note F#4
|1AB303:E40A| db $60 ; duration
|1AB304:E40B| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song06_Unused0_Track2:
|1AB305:E40C| db $EF : dw Song06_Sub_E74E : db $01 ; call segment subroutine
|1AB309:E410| db $0C ; duration
|1AB30A:E411| db $93 ; play note G2
|1AB30B:E412| db $9A ; play note D3
|1AB30C:E413| db $48 ; duration
|1AB30D:E414| db $9F ; play note G3
|1AB30E:E415| db $0C ; duration
|1AB30F:E416| db $93 ; play note G2
|1AB310:E417| db $9A ; play note D3
|1AB311:E418| db $48 ; duration
|1AB312:E419| db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song06_Unused0_Track3:
|1AB313:E41A| db $EF : dw Song06_Sub_E776 : db $01 ; call segment subroutine
|1AB317:E41E| db $EF : dw Song06_Sub_E78C : db $01 ; call segment subroutine
|1AB31B:E422| db $18 ; duration
|1AB31C:E423| db $C9 ; rest
|1AB31D:E424| db $48 ; duration
|1AB31E:E425| db $A6 ; play note D4
|1AB31F:E426| db $18 ; duration
|1AB320:E427| db $C9 ; rest
|1AB321:E428| db $48 ; duration
|1AB322:E429| db $A6 ; play note D4
|1AB323:E42A| db $60 ; duration
|1AB324:E42B| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song06_Segment0_Track0:
|1AB325:E42C| db $FA, $17 ; set base percussion sample
|1AB327:E42E| db $E5, $C8 ; set song volume
|1AB329:E430| db $E7, $1D ; set song tempo
|1AB32B:E432| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1AB32F:E436| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1AB333:E43A| db $F8, $1E, $28, $28 ; initiate gradual echo volume change
|1AB337:E43E| db $E0, $0A ; set instrument - strings B
|1AB339:E440| db $ED, $C8 ; set channel volume
|1AB33B:E442| db $E3, $14, $19, $1E ; enable vibrato
|1AB33F:E446| db $18 ; duration
|1AB340:E447| db $C9 ; rest
|1AB341:E448| db $48, $7B ; duration, params
|1AB343:E44A| db $AB ; play note G4
|1AB344:E44B| db $18 ; duration
|1AB345:E44C| db $C9 ; rest
|1AB346:E44D| db $48 ; duration
|1AB347:E44E| db $AC ; play note G#4
|1AB348:E44F| db $18 ; duration
|1AB349:E450| db $C9 ; rest
|1AB34A:E451| db $48 ; duration
|1AB34B:E452| db $AD ; play note A4
|1AB34C:E453| db $18 ; duration
|1AB34D:E454| db $C9 ; rest
|1AB34E:E455| db $48 ; duration
|1AB34F:E456| db $AE ; play note A#4
|1AB350:E457| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Segment0_Track1:
|1AB351:E458| db $EF : dw Song06_Sub_E795 : db $01 ; call segment subroutine
|1AB355:E45C| db $EF : dw Song06_Sub_E78C : db $01 ; call segment subroutine
|1AB359:E460| db $18 ; duration
|1AB35A:E461| db $C9 ; rest
|1AB35B:E462| db $48 ; duration
|1AB35C:E463| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song06_Segment0_Track2:
|1AB35D:E464| db $EF : dw Song06_Sub_E7A3 : db $01 ; call segment subroutine
|1AB361:E468| db $EF : dw Song06_Sub_E7B2 : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song06_Segment0_Track3:
|1AB365:E46C| db $EF : dw Song06_Sub_E7B8 : db $01 ; call segment subroutine
|1AB369:E470| db $18 ; duration
|1AB36A:E471| db $C9 ; rest
|1AB36B:E472| db $48 ; duration
|1AB36C:E473| db $A6 ; play note D4
|1AB36D:E474| db $18 ; duration
|1AB36E:E475| db $C9 ; rest
|1AB36F:E476| db $48 ; duration
|1AB370:E477| db $A7 ; play note D#4

;---------------------------------------------------------------------------------------------------

Song06_Segment1_Track0:
|1AB371:E478| db $EF : dw Song06_Sub_E740 : db $01 ; call segment subroutine
|1AB375:E47C| db $18 ; duration
|1AB376:E47D| db $C9 ; rest
|1AB377:E47E| db $48 ; duration
|1AB378:E47F| db $AC ; play note G#4
|1AB379:E480| db $18 ; duration
|1AB37A:E481| db $C9 ; rest
|1AB37B:E482| db $48 ; duration
|1AB37C:E483| db $AD ; play note A4
|1AB37D:E484| db $18 ; duration
|1AB37E:E485| db $C9 ; rest
|1AB37F:E486| db $48 ; duration
|1AB380:E487| db $AE ; play note A#4
|1AB381:E488| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Segment1_Track1:
|1AB382:E489| db $EF : dw Song06_Sub_E795 : db $01 ; call segment subroutine
|1AB386:E48D| db $EF : dw Song06_Sub_E78C : db $01 ; call segment subroutine
|1AB38A:E491| db $18 ; duration
|1AB38B:E492| db $C9 ; rest
|1AB38C:E493| db $48 ; duration
|1AB38D:E494| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song06_Segment1_Track2:
|1AB38E:E495| db $EF : dw Song06_Sub_E7A3 : db $01 ; call segment subroutine
|1AB392:E499| db $EF : dw Song06_Sub_E7B2 : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song06_Segment1_Track3:
|1AB396:E49D| db $EF : dw Song06_Sub_E7B8 : db $01 ; call segment subroutine
|1AB39A:E4A1| db $18 ; duration
|1AB39B:E4A2| db $C9 ; rest
|1AB39C:E4A3| db $48 ; duration
|1AB39D:E4A4| db $A6 ; play note D4
|1AB39E:E4A5| db $18 ; duration
|1AB39F:E4A6| db $C9 ; rest
|1AB3A0:E4A7| db $48 ; duration
|1AB3A1:E4A8| db $A7 ; play note D#4

;---------------------------------------------------------------------------------------------------

Song06_Segment1_Track4:
|1AB3A2:E4A9| db $EF : dw Song06_Sub_E7CA : db $01 ; call segment subroutine
|1AB3A6:E4AD| db $AC ; play note G#4
|1AB3A7:E4AE| db $AC ; play note G#4
|1AB3A8:E4AF| db $AC ; play note G#4
|1AB3A9:E4B0| db $AC ; play note G#4
|1AB3AA:E4B1| db $AC ; play note G#4
|1AB3AB:E4B2| db $AC ; play note G#4
|1AB3AC:E4B3| db $AC ; play note G#4
|1AB3AD:E4B4| db $AC ; play note G#4
|1AB3AE:E4B5| db $AC ; play note G#4
|1AB3AF:E4B6| db $AC ; play note G#4
|1AB3B0:E4B7| db $AC ; play note G#4
|1AB3B1:E4B8| db $AC ; play note G#4
|1AB3B2:E4B9| db $AC ; play note G#4
|1AB3B3:E4BA| db $AC ; play note G#4
|1AB3B4:E4BB| db $AC ; play note G#4
|1AB3B5:E4BC| db $AC ; play note G#4
|1AB3B6:E4BD| db $AD ; play note A4
|1AB3B7:E4BE| db $AD ; play note A4
|1AB3B8:E4BF| db $AD ; play note A4
|1AB3B9:E4C0| db $AD ; play note A4
|1AB3BA:E4C1| db $AD ; play note A4
|1AB3BB:E4C2| db $AD ; play note A4
|1AB3BC:E4C3| db $AD ; play note A4
|1AB3BD:E4C4| db $AD ; play note A4
|1AB3BE:E4C5| db $AD ; play note A4
|1AB3BF:E4C6| db $AD ; play note A4
|1AB3C0:E4C7| db $AD ; play note A4
|1AB3C1:E4C8| db $AD ; play note A4
|1AB3C2:E4C9| db $AD ; play note A4
|1AB3C3:E4CA| db $AD ; play note A4
|1AB3C4:E4CB| db $AD ; play note A4
|1AB3C5:E4CC| db $AD ; play note A4
|1AB3C6:E4CD| db $AE ; play note A#4
|1AB3C7:E4CE| db $AE ; play note A#4
|1AB3C8:E4CF| db $AE ; play note A#4
|1AB3C9:E4D0| db $AE ; play note A#4
|1AB3CA:E4D1| db $AE ; play note A#4
|1AB3CB:E4D2| db $AE ; play note A#4
|1AB3CC:E4D3| db $AE ; play note A#4
|1AB3CD:E4D4| db $AE ; play note A#4
|1AB3CE:E4D5| db $AE ; play note A#4
|1AB3CF:E4D6| db $AE ; play note A#4
|1AB3D0:E4D7| db $AE ; play note A#4
|1AB3D1:E4D8| db $AE ; play note A#4
|1AB3D2:E4D9| db $AE ; play note A#4
|1AB3D3:E4DA| db $AE ; play note A#4
|1AB3D4:E4DB| db $AE ; play note A#4
|1AB3D5:E4DC| db $AE ; play note A#4

;---------------------------------------------------------------------------------------------------

Song06_Segment1_Track5:
|1AB3D6:E4DD| db $E0, $0A ; set instrument - strings B
|1AB3D8:E4DF| db $ED, $C8 ; set channel volume
|1AB3DA:E4E1| db $E3, $14, $19, $1E ; enable vibrato
|1AB3DE:E4E5| db $06, $7B ; duration, params
|1AB3E0:E4E7| db $A6 ; play note D4
|1AB3E1:E4E8| db $A6 ; play note D4
|1AB3E2:E4E9| db $A6 ; play note D4
|1AB3E3:E4EA| db $A6 ; play note D4
|1AB3E4:E4EB| db $A6 ; play note D4
|1AB3E5:E4EC| db $A6 ; play note D4
|1AB3E6:E4ED| db $A6 ; play note D4
|1AB3E7:E4EE| db $A6 ; play note D4
|1AB3E8:E4EF| db $A6 ; play note D4
|1AB3E9:E4F0| db $A6 ; play note D4
|1AB3EA:E4F1| db $A6 ; play note D4
|1AB3EB:E4F2| db $A6 ; play note D4
|1AB3EC:E4F3| db $A6 ; play note D4
|1AB3ED:E4F4| db $A6 ; play note D4
|1AB3EE:E4F5| db $A6 ; play note D4
|1AB3EF:E4F6| db $A6 ; play note D4
|1AB3F0:E4F7| db $EF : dw Song06_Sub_E7E5 : db $01 ; call segment subroutine
|1AB3F4:E4FB| db $A9 ; play note F4
|1AB3F5:E4FC| db $A9 ; play note F4
|1AB3F6:E4FD| db $A9 ; play note F4
|1AB3F7:E4FE| db $A9 ; play note F4
|1AB3F8:E4FF| db $A9 ; play note F4
|1AB3F9:E500| db $A9 ; play note F4
|1AB3FA:E501| db $A9 ; play note F4
|1AB3FB:E502| db $A9 ; play note F4
|1AB3FC:E503| db $A9 ; play note F4
|1AB3FD:E504| db $A9 ; play note F4
|1AB3FE:E505| db $A9 ; play note F4
|1AB3FF:E506| db $A9 ; play note F4
|1AB400:E507| db $A9 ; play note F4
|1AB401:E508| db $A9 ; play note F4
|1AB402:E509| db $A9 ; play note F4
|1AB403:E50A| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song06_Segment2_Track0:
|1AB404:E50B| db $EF : dw Song06_Sub_E728 : db $01 ; call segment subroutine
|1AB408:E50F| db $48 ; duration
|1AB409:E510| db $B0 ; play note C5
|1AB40A:E511| db $0C ; duration
|1AB40B:E512| db $AF ; play note B4
|1AB40C:E513| db $AD ; play note A4
|1AB40D:E514| db $48 ; duration
|1AB40E:E515| db $B0 ; play note C5
|1AB40F:E516| db $0C ; duration
|1AB410:E517| db $AF ; play note B4
|1AB411:E518| db $AD ; play note A4
|1AB412:E519| db $60 ; duration
|1AB413:E51A| db $AF ; play note B4
|1AB414:E51B| db $C8 ; sustain current note
|1AB415:E51C| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Segment2_Track1:
|1AB416:E51D| db $EF : dw Song06_Sub_E740 : db $01 ; call segment subroutine
|1AB41A:E521| db $18 ; duration
|1AB41B:E522| db $C9 ; rest
|1AB41C:E523| db $48 ; duration
|1AB41D:E524| db $A9 ; play note F4
|1AB41E:E525| db $18 ; duration
|1AB41F:E526| db $C9 ; rest
|1AB420:E527| db $48 ; duration
|1AB421:E528| db $AE ; play note A#4
|1AB422:E529| db $18 ; duration
|1AB423:E52A| db $C9 ; rest
|1AB424:E52B| db $48 ; duration
|1AB425:E52C| db $AC ; play note G#4
|1AB426:E52D| db $18 ; duration
|1AB427:E52E| db $C9 ; rest
|1AB428:E52F| db $48 ; duration
|1AB429:E530| db $AD ; play note A4
|1AB42A:E531| db $18 ; duration
|1AB42B:E532| db $C9 ; rest
|1AB42C:E533| db $48 ; duration
|1AB42D:E534| db $AA ; play note F#4
|1AB42E:E535| db $18 ; duration
|1AB42F:E536| db $C9 ; rest
|1AB430:E537| db $48 ; duration
|1AB431:E538| db $AA ; play note F#4
|1AB432:E539| db $60 ; duration
|1AB433:E53A| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song06_Segment2_Track2:
|1AB434:E53B| db $EF : dw Song06_Sub_E74E : db $01 ; call segment subroutine
|1AB438:E53F| db $0C ; duration
|1AB439:E540| db $93 ; play note G2
|1AB43A:E541| db $9A ; play note D3
|1AB43B:E542| db $48 ; duration
|1AB43C:E543| db $9F ; play note G3
|1AB43D:E544| db $0C ; duration
|1AB43E:E545| db $93 ; play note G2
|1AB43F:E546| db $9A ; play note D3
|1AB440:E547| db $48 ; duration
|1AB441:E548| db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song06_Segment2_Track3:
|1AB442:E549| db $EF : dw Song06_Sub_E776 : db $01 ; call segment subroutine
|1AB446:E54D| db $EF : dw Song06_Sub_E78C : db $01 ; call segment subroutine
|1AB44A:E551| db $18 ; duration
|1AB44B:E552| db $C9 ; rest
|1AB44C:E553| db $48 ; duration
|1AB44D:E554| db $A8 ; play note E4
|1AB44E:E555| db $18 ; duration
|1AB44F:E556| db $C9 ; rest
|1AB450:E557| db $48 ; duration
|1AB451:E558| db $A6 ; play note D4
|1AB452:E559| db $60 ; duration
|1AB453:E55A| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song06_Segment2_Track4:
|1AB454:E55B| db $EF : dw Song06_Sub_E7CA : db $01 ; call segment subroutine
|1AB458:E55F| db $A9 ; play note F4
|1AB459:E560| db $A9 ; play note F4
|1AB45A:E561| db $A9 ; play note F4
|1AB45B:E562| db $A9 ; play note F4
|1AB45C:E563| db $A9 ; play note F4
|1AB45D:E564| db $A9 ; play note F4
|1AB45E:E565| db $A9 ; play note F4
|1AB45F:E566| db $A9 ; play note F4
|1AB460:E567| db $A9 ; play note F4
|1AB461:E568| db $A9 ; play note F4
|1AB462:E569| db $A9 ; play note F4
|1AB463:E56A| db $A9 ; play note F4
|1AB464:E56B| db $A9 ; play note F4
|1AB465:E56C| db $A9 ; play note F4
|1AB466:E56D| db $A9 ; play note F4
|1AB467:E56E| db $A9 ; play note F4
|1AB468:E56F| db $AE ; play note A#4
|1AB469:E570| db $AE ; play note A#4
|1AB46A:E571| db $AE ; play note A#4
|1AB46B:E572| db $AE ; play note A#4
|1AB46C:E573| db $AE ; play note A#4
|1AB46D:E574| db $AE ; play note A#4
|1AB46E:E575| db $AE ; play note A#4
|1AB46F:E576| db $AE ; play note A#4
|1AB470:E577| db $AE ; play note A#4
|1AB471:E578| db $AE ; play note A#4
|1AB472:E579| db $AE ; play note A#4
|1AB473:E57A| db $AE ; play note A#4
|1AB474:E57B| db $AE ; play note A#4
|1AB475:E57C| db $AE ; play note A#4
|1AB476:E57D| db $AE ; play note A#4
|1AB477:E57E| db $AE ; play note A#4
|1AB478:E57F| db $AC ; play note G#4
|1AB479:E580| db $AC ; play note G#4
|1AB47A:E581| db $AC ; play note G#4
|1AB47B:E582| db $AC ; play note G#4
|1AB47C:E583| db $AC ; play note G#4
|1AB47D:E584| db $AC ; play note G#4
|1AB47E:E585| db $AC ; play note G#4
|1AB47F:E586| db $AC ; play note G#4
|1AB480:E587| db $AC ; play note G#4
|1AB481:E588| db $AC ; play note G#4
|1AB482:E589| db $AC ; play note G#4
|1AB483:E58A| db $AC ; play note G#4
|1AB484:E58B| db $AC ; play note G#4
|1AB485:E58C| db $AC ; play note G#4
|1AB486:E58D| db $AC ; play note G#4
|1AB487:E58E| db $AC ; play note G#4
|1AB488:E58F| db $AD ; play note A4
|1AB489:E590| db $AD ; play note A4
|1AB48A:E591| db $AD ; play note A4
|1AB48B:E592| db $AD ; play note A4
|1AB48C:E593| db $AD ; play note A4
|1AB48D:E594| db $AD ; play note A4
|1AB48E:E595| db $AD ; play note A4
|1AB48F:E596| db $AD ; play note A4
|1AB490:E597| db $AD ; play note A4
|1AB491:E598| db $AD ; play note A4
|1AB492:E599| db $AD ; play note A4
|1AB493:E59A| db $AD ; play note A4
|1AB494:E59B| db $AD ; play note A4
|1AB495:E59C| db $AD ; play note A4
|1AB496:E59D| db $AD ; play note A4
|1AB497:E59E| db $AD ; play note A4
|1AB498:E59F| db $EF : dw Song06_Sub_E806 : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song06_Segment2_Track5:
|1AB49C:E5A3| db $E0, $0A ; set instrument - strings B
|1AB49E:E5A5| db $ED, $C8 ; set channel volume
|1AB4A0:E5A7| db $E3, $14, $19, $1E ; enable vibrato
|1AB4A4:E5AB| db $06, $7B ; duration, params
|1AB4A6:E5AD| db $A8 ; play note E4
|1AB4A7:E5AE| db $A8 ; play note E4
|1AB4A8:E5AF| db $A8 ; play note E4
|1AB4A9:E5B0| db $A8 ; play note E4
|1AB4AA:E5B1| db $A8 ; play note E4
|1AB4AB:E5B2| db $A8 ; play note E4
|1AB4AC:E5B3| db $A8 ; play note E4
|1AB4AD:E5B4| db $A8 ; play note E4
|1AB4AE:E5B5| db $A8 ; play note E4
|1AB4AF:E5B6| db $A8 ; play note E4
|1AB4B0:E5B7| db $A8 ; play note E4
|1AB4B1:E5B8| db $A8 ; play note E4
|1AB4B2:E5B9| db $A8 ; play note E4
|1AB4B3:E5BA| db $A8 ; play note E4
|1AB4B4:E5BB| db $A8 ; play note E4
|1AB4B5:E5BC| db $A8 ; play note E4
|1AB4B6:E5BD| db $A4 ; play note C4
|1AB4B7:E5BE| db $A4 ; play note C4
|1AB4B8:E5BF| db $A4 ; play note C4
|1AB4B9:E5C0| db $A4 ; play note C4
|1AB4BA:E5C1| db $A4 ; play note C4
|1AB4BB:E5C2| db $A4 ; play note C4
|1AB4BC:E5C3| db $A4 ; play note C4
|1AB4BD:E5C4| db $A4 ; play note C4
|1AB4BE:E5C5| db $A4 ; play note C4
|1AB4BF:E5C6| db $A4 ; play note C4
|1AB4C0:E5C7| db $A4 ; play note C4
|1AB4C1:E5C8| db $A4 ; play note C4
|1AB4C2:E5C9| db $A4 ; play note C4
|1AB4C3:E5CA| db $A4 ; play note C4
|1AB4C4:E5CB| db $A4 ; play note C4
|1AB4C5:E5CC| db $A4 ; play note C4
|1AB4C6:E5CD| db $AB ; play note G4
|1AB4C7:E5CE| db $AB ; play note G4
|1AB4C8:E5CF| db $AB ; play note G4
|1AB4C9:E5D0| db $AB ; play note G4
|1AB4CA:E5D1| db $AB ; play note G4
|1AB4CB:E5D2| db $AB ; play note G4
|1AB4CC:E5D3| db $AB ; play note G4
|1AB4CD:E5D4| db $AB ; play note G4
|1AB4CE:E5D5| db $AB ; play note G4
|1AB4CF:E5D6| db $AB ; play note G4
|1AB4D0:E5D7| db $AB ; play note G4
|1AB4D1:E5D8| db $AB ; play note G4
|1AB4D2:E5D9| db $AB ; play note G4
|1AB4D3:E5DA| db $AB ; play note G4
|1AB4D4:E5DB| db $AB ; play note G4
|1AB4D5:E5DC| db $AB ; play note G4
|1AB4D6:E5DD| db $EF : dw Song06_Sub_E7E5 : db $01 ; call segment subroutine
|1AB4DA:E5E1| db $A8 ; play note E4
|1AB4DB:E5E2| db $A8 ; play note E4
|1AB4DC:E5E3| db $A8 ; play note E4
|1AB4DD:E5E4| db $A8 ; play note E4
|1AB4DE:E5E5| db $A8 ; play note E4
|1AB4DF:E5E6| db $A8 ; play note E4
|1AB4E0:E5E7| db $A8 ; play note E4
|1AB4E1:E5E8| db $A8 ; play note E4
|1AB4E2:E5E9| db $A8 ; play note E4
|1AB4E3:E5EA| db $A8 ; play note E4
|1AB4E4:E5EB| db $A8 ; play note E4
|1AB4E5:E5EC| db $A8 ; play note E4
|1AB4E6:E5ED| db $A8 ; play note E4
|1AB4E7:E5EE| db $A8 ; play note E4
|1AB4E8:E5EF| db $A8 ; play note E4
|1AB4E9:E5F0| db $A8 ; play note E4
|1AB4EA:E5F1| db $EF : dw Song06_Sub_E817 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song06_Segment3_Track0:
|1AB4EE:E5F5| db $EF : dw Song06_Sub_E828 : db $01 ; call segment subroutine
|1AB4F2:E5F9| db $48 ; duration
|1AB4F3:E5FA| db $AD ; play note A4
|1AB4F4:E5FB| db $30 ; duration
|1AB4F5:E5FC| db $A9 ; play note F4
|1AB4F6:E5FD| db $18 ; duration
|1AB4F7:E5FE| db $AE ; play note A#4
|1AB4F8:E5FF| db $A9 ; play note F4
|1AB4F9:E600| db $A8 ; play note E4
|1AB4FA:E601| db $AE ; play note A#4
|1AB4FB:E602| db $48 ; duration
|1AB4FC:E603| db $AD ; play note A4
|1AB4FD:E604| db $C8 ; sustain current note
|1AB4FE:E605| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Segment3_Track1:
|1AB4FF:E606| db $EF : dw Song06_Sub_E83F : db $01 ; call segment subroutine
|1AB503:E60A| db $A9 ; play note F4
|1AB504:E60B| db $AE ; play note A#4
|1AB505:E60C| db $AC ; play note G#4
|1AB506:E60D| db $AD ; play note A4
|1AB507:E60E| db $AA ; play note F#4
|1AB508:E60F| db $AA ; play note F#4
|1AB509:E610| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song06_Segment3_Track2:
|1AB50A:E611| db $EF : dw Song06_Sub_E84B : db $01 ; call segment subroutine
|1AB50E:E615| db $0C ; duration
|1AB50F:E616| db $95 ; play note A2
|1AB510:E617| db $9C ; play note E3
|1AB511:E618| db $30 ; duration
|1AB512:E619| db $A1 ; play note A3
|1AB513:E61A| db $0C ; duration
|1AB514:E61B| db $95 ; play note A2
|1AB515:E61C| db $9C ; play note E3
|1AB516:E61D| db $30 ; duration
|1AB517:E61E| db $A1 ; play note A3
|1AB518:E61F| db $0C ; duration
|1AB519:E620| db $93 ; play note G2
|1AB51A:E621| db $9A ; play note D3
|1AB51B:E622| db $30 ; duration
|1AB51C:E623| db $9F ; play note G3
|1AB51D:E624| db $0C ; duration
|1AB51E:E625| db $8C ; play note C2
|1AB51F:E626| db $93 ; play note G2
|1AB520:E627| db $30 ; duration
|1AB521:E628| db $98 ; play note C3
|1AB522:E629| db $0C ; duration
|1AB523:E62A| db $91 ; play note F2
|1AB524:E62B| db $98 ; play note C3
|1AB525:E62C| db $30 ; duration
|1AB526:E62D| db $9D ; play note F3
|1AB527:E62E| db $0C ; duration
|1AB528:E62F| db $91 ; play note F2
|1AB529:E630| db $98 ; play note C3
|1AB52A:E631| db $30 ; duration
|1AB52B:E632| db $9D ; play note F3

;---------------------------------------------------------------------------------------------------

Song06_Segment3_Track3:
|1AB52C:E633| db $EF : dw Song06_Sub_E85F : db $01 ; call segment subroutine
|1AB530:E637| db $A4 ; play note C4
|1AB531:E638| db $AB ; play note G4
|1AB532:E639| db $A7 ; play note D#4
|1AB533:E63A| db $A8 ; play note E4
|1AB534:E63B| db $A8 ; play note E4
|1AB535:E63C| db $A6 ; play note D4
|1AB536:E63D| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song06_Segment3_Track4:
|1AB537:E63E| db $EF : dw Song06_Sub_E86B : db $01 ; call segment subroutine
|1AB53B:E642| db $EF : dw Song06_Sub_E88E : db $02 ; call segment subroutine
|1AB53F:E646| db $EF : dw Song06_Sub_E89B : db $02 ; call segment subroutine
|1AB543:E64A| db $EF : dw Song06_Sub_E8A8 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song06_Segment3_Track5:
|1AB547:E64E| db $E0, $0A ; set instrument - strings B
|1AB549:E650| db $ED, $C8 ; set channel volume
|1AB54B:E652| db $E3, $14, $19, $1E ; enable vibrato
|1AB54F:E656| db $06, $7B ; duration, params
|1AB551:E658| db $A6 ; play note D4
|1AB552:E659| db $A6 ; play note D4
|1AB553:E65A| db $A6 ; play note D4
|1AB554:E65B| db $A6 ; play note D4
|1AB555:E65C| db $A6 ; play note D4
|1AB556:E65D| db $A6 ; play note D4
|1AB557:E65E| db $A6 ; play note D4
|1AB558:E65F| db $A6 ; play note D4
|1AB559:E660| db $A6 ; play note D4
|1AB55A:E661| db $A6 ; play note D4
|1AB55B:E662| db $A6 ; play note D4
|1AB55C:E663| db $A6 ; play note D4
|1AB55D:E664| db $A6 ; play note D4
|1AB55E:E665| db $A6 ; play note D4
|1AB55F:E666| db $A6 ; play note D4
|1AB560:E667| db $A6 ; play note D4
|1AB561:E668| db $A6 ; play note D4
|1AB562:E669| db $A6 ; play note D4
|1AB563:E66A| db $A6 ; play note D4
|1AB564:E66B| db $A6 ; play note D4
|1AB565:E66C| db $A6 ; play note D4
|1AB566:E66D| db $A6 ; play note D4
|1AB567:E66E| db $A6 ; play note D4
|1AB568:E66F| db $A6 ; play note D4
|1AB569:E670| db $EF : dw Song06_Sub_E8A8 : db $02 ; call segment subroutine
|1AB56D:E674| db $EF : dw Song06_Sub_E8B5 : db $02 ; call segment subroutine
|1AB571:E678| db $EF : dw Song06_Sub_E8C2 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song06_Segment4_Track0:
|1AB575:E67C| db $EF : dw Song06_Sub_E828 : db $01 ; call segment subroutine
|1AB579:E680| db $48 ; duration
|1AB57A:E681| db $AD ; play note A4
|1AB57B:E682| db $30 ; duration
|1AB57C:E683| db $AB ; play note G4
|1AB57D:E684| db $18 ; duration
|1AB57E:E685| db $B0 ; play note C5
|1AB57F:E686| db $AB ; play note G4
|1AB580:E687| db $A9 ; play note F4
|1AB581:E688| db $AB ; play note G4
|1AB582:E689| db $48 ; duration
|1AB583:E68A| db $AD ; play note A4
|1AB584:E68B| db $AF ; play note B4
|1AB585:E68C| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Segment4_Track1:
|1AB586:E68D| db $EF : dw Song06_Sub_E83F : db $01 ; call segment subroutine
|1AB58A:E691| db $A9 ; play note F4
|1AB58B:E692| db $AE ; play note A#4
|1AB58C:E693| db $AC ; play note G#4
|1AB58D:E694| db $AD ; play note A4
|1AB58E:E695| db $AA ; play note F#4
|1AB58F:E696| db $AA ; play note F#4
|1AB590:E697| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song06_Segment4_Track2:
|1AB591:E698| db $EF : dw Song06_Sub_E84B : db $01 ; call segment subroutine
|1AB595:E69C| db $0C ; duration
|1AB596:E69D| db $95 ; play note A2
|1AB597:E69E| db $9C ; play note E3
|1AB598:E69F| db $30 ; duration
|1AB599:E6A0| db $A1 ; play note A3
|1AB59A:E6A1| db $0C ; duration
|1AB59B:E6A2| db $95 ; play note A2
|1AB59C:E6A3| db $9C ; play note E3
|1AB59D:E6A4| db $30 ; duration
|1AB59E:E6A5| db $A1 ; play note A3
|1AB59F:E6A6| db $0C ; duration
|1AB5A0:E6A7| db $94 ; play note G#2
|1AB5A1:E6A8| db $9B ; play note D#3
|1AB5A2:E6A9| db $30 ; duration
|1AB5A3:E6AA| db $A0 ; play note G#3
|1AB5A4:E6AB| db $0C ; duration
|1AB5A5:E6AC| db $94 ; play note G#2
|1AB5A6:E6AD| db $9B ; play note D#3
|1AB5A7:E6AE| db $30 ; duration
|1AB5A8:E6AF| db $A0 ; play note G#3
|1AB5A9:E6B0| db $0C ; duration
|1AB5AA:E6B1| db $93 ; play note G2
|1AB5AB:E6B2| db $9A ; play note D3
|1AB5AC:E6B3| db $30 ; duration
|1AB5AD:E6B4| db $9F ; play note G3
|1AB5AE:E6B5| db $0C ; duration
|1AB5AF:E6B6| db $92 ; play note F#2
|1AB5B0:E6B7| db $99 ; play note C#3
|1AB5B1:E6B8| db $30 ; duration
|1AB5B2:E6B9| db $9E ; play note F#3

;---------------------------------------------------------------------------------------------------

Song06_Segment4_Track3:
|1AB5B3:E6BA| db $EF : dw Song06_Sub_E85F : db $01 ; call segment subroutine
|1AB5B7:E6BE| db $A4 ; play note C4
|1AB5B8:E6BF| db $AB ; play note G4
|1AB5B9:E6C0| db $A7 ; play note D#4
|1AB5BA:E6C1| db $A8 ; play note E4
|1AB5BB:E6C2| db $A8 ; play note E4
|1AB5BC:E6C3| db $A6 ; play note D4
|1AB5BD:E6C4| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song06_Segment4_Track4:
|1AB5BE:E6C5| db $EF : dw Song06_Sub_E86B : db $01 ; call segment subroutine
|1AB5C2:E6C9| db $EF : dw Song06_Sub_E88E : db $02 ; call segment subroutine
|1AB5C6:E6CD| db $EF : dw Song06_Sub_E8CF : db $02 ; call segment subroutine
|1AB5CA:E6D1| db $AA ; play note F#4
|1AB5CB:E6D2| db $AA ; play note F#4
|1AB5CC:E6D3| db $AA ; play note F#4
|1AB5CD:E6D4| db $AA ; play note F#4
|1AB5CE:E6D5| db $AA ; play note F#4
|1AB5CF:E6D6| db $AA ; play note F#4
|1AB5D0:E6D7| db $AA ; play note F#4
|1AB5D1:E6D8| db $AA ; play note F#4
|1AB5D2:E6D9| db $AA ; play note F#4
|1AB5D3:E6DA| db $AA ; play note F#4
|1AB5D4:E6DB| db $AA ; play note F#4
|1AB5D5:E6DC| db $AA ; play note F#4
|1AB5D6:E6DD| db $AB ; play note G4
|1AB5D7:E6DE| db $AB ; play note G4
|1AB5D8:E6DF| db $AB ; play note G4
|1AB5D9:E6E0| db $AB ; play note G4
|1AB5DA:E6E1| db $AB ; play note G4
|1AB5DB:E6E2| db $AB ; play note G4
|1AB5DC:E6E3| db $AB ; play note G4
|1AB5DD:E6E4| db $AB ; play note G4
|1AB5DE:E6E5| db $AB ; play note G4
|1AB5DF:E6E6| db $AB ; play note G4
|1AB5E0:E6E7| db $AB ; play note G4
|1AB5E1:E6E8| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song06_Segment4_Track5:
|1AB5E2:E6E9| db $E0, $0A ; set instrument - strings B
|1AB5E4:E6EB| db $ED, $C8 ; set channel volume
|1AB5E6:E6ED| db $E3, $14, $19, $1E ; enable vibrato
|1AB5EA:E6F1| db $06, $7B ; duration, params
|1AB5EC:E6F3| db $A6 ; play note D4
|1AB5ED:E6F4| db $A6 ; play note D4
|1AB5EE:E6F5| db $A6 ; play note D4
|1AB5EF:E6F6| db $A6 ; play note D4
|1AB5F0:E6F7| db $A6 ; play note D4
|1AB5F1:E6F8| db $A6 ; play note D4
|1AB5F2:E6F9| db $A6 ; play note D4
|1AB5F3:E6FA| db $A6 ; play note D4
|1AB5F4:E6FB| db $A6 ; play note D4
|1AB5F5:E6FC| db $A6 ; play note D4
|1AB5F6:E6FD| db $A6 ; play note D4
|1AB5F7:E6FE| db $A6 ; play note D4
|1AB5F8:E6FF| db $A6 ; play note D4
|1AB5F9:E700| db $A6 ; play note D4
|1AB5FA:E701| db $A6 ; play note D4
|1AB5FB:E702| db $A6 ; play note D4
|1AB5FC:E703| db $A6 ; play note D4
|1AB5FD:E704| db $A6 ; play note D4
|1AB5FE:E705| db $A6 ; play note D4
|1AB5FF:E706| db $A6 ; play note D4
|1AB600:E707| db $A6 ; play note D4
|1AB601:E708| db $A6 ; play note D4
|1AB602:E709| db $A6 ; play note D4
|1AB603:E70A| db $A6 ; play note D4
|1AB604:E70B| db $EF : dw Song06_Sub_E8A8 : db $04 ; call segment subroutine
|1AB608:E70F| db $A6 ; play note D4
|1AB609:E710| db $A6 ; play note D4
|1AB60A:E711| db $A6 ; play note D4
|1AB60B:E712| db $A6 ; play note D4
|1AB60C:E713| db $A6 ; play note D4
|1AB60D:E714| db $A6 ; play note D4
|1AB60E:E715| db $A6 ; play note D4
|1AB60F:E716| db $A6 ; play note D4
|1AB610:E717| db $A6 ; play note D4
|1AB611:E718| db $A6 ; play note D4
|1AB612:E719| db $A6 ; play note D4
|1AB613:E71A| db $A6 ; play note D4
|1AB614:E71B| db $A8 ; play note E4
|1AB615:E71C| db $A8 ; play note E4
|1AB616:E71D| db $A8 ; play note E4
|1AB617:E71E| db $A8 ; play note E4
|1AB618:E71F| db $A8 ; play note E4
|1AB619:E720| db $A8 ; play note E4
|1AB61A:E721| db $A8 ; play note E4
|1AB61B:E722| db $A8 ; play note E4
|1AB61C:E723| db $A8 ; play note E4
|1AB61D:E724| db $A8 ; play note E4
|1AB61E:E725| db $A8 ; play note E4
|1AB61F:E726| db $A8 ; play note E4
|1AB620:E727| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E728:
|1AB621:E728| db $E0, $0A ; set instrument - strings B
|1AB623:E72A| db $ED, $C8 ; set channel volume
|1AB625:E72C| db $E3, $14, $19, $1E ; enable vibrato
|1AB629:E730| db $48, $7B ; duration, params
|1AB62B:E732| db $AF ; play note B4
|1AB62C:E733| db $0C ; duration
|1AB62D:E734| db $AD ; play note A4
|1AB62E:E735| db $AB ; play note G4
|1AB62F:E736| db $60 ; duration
|1AB630:E737| db $AD ; play note A4
|1AB631:E738| db $48 ; duration
|1AB632:E739| db $B2 ; play note D5
|1AB633:E73A| db $0C ; duration
|1AB634:E73B| db $B0 ; play note C5
|1AB635:E73C| db $AE ; play note A#4
|1AB636:E73D| db $60 ; duration
|1AB637:E73E| db $B0 ; play note C5
|1AB638:E73F| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E740:
|1AB639:E740| db $E0, $0A ; set instrument - strings B
|1AB63B:E742| db $ED, $C8 ; set channel volume
|1AB63D:E744| db $E3, $14, $19, $1E ; enable vibrato
|1AB641:E748| db $18 ; duration
|1AB642:E749| db $C9 ; rest
|1AB643:E74A| db $48, $7B ; duration, params
|1AB645:E74C| db $AB ; play note G4
|1AB646:E74D| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E74E:
|1AB647:E74E| db $E0, $0A ; set instrument - strings B
|1AB649:E750| db $ED, $D2 ; set channel volume
|1AB64B:E752| db $E3, $14, $19, $1E ; enable vibrato
|1AB64F:E756| db $0C, $7D ; duration, params
|1AB651:E758| db $91 ; play note F2
|1AB652:E759| db $98 ; play note C3
|1AB653:E75A| db $48 ; duration
|1AB654:E75B| db $9D ; play note F3
|1AB655:E75C| db $0C ; duration
|1AB656:E75D| db $96 ; play note A#2
|1AB657:E75E| db $9D ; play note F3
|1AB658:E75F| db $48 ; duration
|1AB659:E760| db $A2 ; play note A#3
|1AB65A:E761| db $0C ; duration
|1AB65B:E762| db $8F ; play note D#2
|1AB65C:E763| db $96 ; play note A#2
|1AB65D:E764| db $48 ; duration
|1AB65E:E765| db $9B ; play note D#3
|1AB65F:E766| db $0C ; duration
|1AB660:E767| db $94 ; play note G#2
|1AB661:E768| db $9B ; play note D#3
|1AB662:E769| db $48 ; duration
|1AB663:E76A| db $A0 ; play note G#3
|1AB664:E76B| db $0C ; duration
|1AB665:E76C| db $95 ; play note A2
|1AB666:E76D| db $9C ; play note E3
|1AB667:E76E| db $48 ; duration
|1AB668:E76F| db $A1 ; play note A3
|1AB669:E770| db $0C ; duration
|1AB66A:E771| db $8E ; play note D2
|1AB66B:E772| db $95 ; play note A2
|1AB66C:E773| db $48 ; duration
|1AB66D:E774| db $9A ; play note D3
|1AB66E:E775| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E776:
|1AB66F:E776| db $E0, $0A ; set instrument - strings B
|1AB671:E778| db $ED, $C8 ; set channel volume
|1AB673:E77A| db $E3, $14, $19, $1E ; enable vibrato
|1AB677:E77E| db $18 ; duration
|1AB678:E77F| db $C9 ; rest
|1AB679:E780| db $48, $7B ; duration, params
|1AB67B:E782| db $A8 ; play note E4
|1AB67C:E783| db $18 ; duration
|1AB67D:E784| db $C9 ; rest
|1AB67E:E785| db $48 ; duration
|1AB67F:E786| db $A4 ; play note C4
|1AB680:E787| db $18 ; duration
|1AB681:E788| db $C9 ; rest
|1AB682:E789| db $48 ; duration
|1AB683:E78A| db $AB ; play note G4
|1AB684:E78B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E78C:
|1AB685:E78C| db $18 ; duration
|1AB686:E78D| db $C9 ; rest
|1AB687:E78E| db $48 ; duration
|1AB688:E78F| db $A7 ; play note D#4
|1AB689:E790| db $18 ; duration
|1AB68A:E791| db $C9 ; rest
|1AB68B:E792| db $48 ; duration
|1AB68C:E793| db $A8 ; play note E4
|1AB68D:E794| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E795:
|1AB68E:E795| db $E0, $0A ; set instrument - strings B
|1AB690:E797| db $ED, $C8 ; set channel volume
|1AB692:E799| db $E3, $14, $19, $1E ; enable vibrato
|1AB696:E79D| db $18 ; duration
|1AB697:E79E| db $C9 ; rest
|1AB698:E79F| db $48, $7B ; duration, params
|1AB69A:E7A1| db $A6 ; play note D4
|1AB69B:E7A2| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E7A3:
|1AB69C:E7A3| db $E0, $0A ; set instrument - strings B
|1AB69E:E7A5| db $ED, $D2 ; set channel volume
|1AB6A0:E7A7| db $E3, $14, $19, $1E ; enable vibrato
|1AB6A4:E7AB| db $0C, $7D ; duration, params
|1AB6A6:E7AD| db $8C ; play note C2
|1AB6A7:E7AE| db $93 ; play note G2
|1AB6A8:E7AF| db $48 ; duration
|1AB6A9:E7B0| db $98 ; play note C3
|1AB6AA:E7B1| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E7B2:
|1AB6AB:E7B2| db $0C ; duration
|1AB6AC:E7B3| db $8C ; play note C2
|1AB6AD:E7B4| db $93 ; play note G2
|1AB6AE:E7B5| db $48 ; duration
|1AB6AF:E7B6| db $98 ; play note C3
|1AB6B0:E7B7| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E7B8:
|1AB6B1:E7B8| db $E0, $0A ; set instrument - strings B
|1AB6B3:E7BA| db $ED, $C8 ; set channel volume
|1AB6B5:E7BC| db $E3, $14, $19, $1E ; enable vibrato
|1AB6B9:E7C0| db $18 ; duration
|1AB6BA:E7C1| db $C9 ; rest
|1AB6BB:E7C2| db $48, $7B ; duration, params
|1AB6BD:E7C4| db $A4 ; play note C4
|1AB6BE:E7C5| db $18 ; duration
|1AB6BF:E7C6| db $C9 ; rest
|1AB6C0:E7C7| db $48 ; duration
|1AB6C1:E7C8| db $A5 ; play note C#4
|1AB6C2:E7C9| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E7CA:
|1AB6C3:E7CA| db $E0, $0A ; set instrument - strings B
|1AB6C5:E7CC| db $ED, $C8 ; set channel volume
|1AB6C7:E7CE| db $E3, $14, $19, $1E ; enable vibrato
|1AB6CB:E7D2| db $06, $7B ; duration, params
|1AB6CD:E7D4| db $AB ; play note G4
|1AB6CE:E7D5| db $AB ; play note G4
|1AB6CF:E7D6| db $AB ; play note G4
|1AB6D0:E7D7| db $AB ; play note G4
|1AB6D1:E7D8| db $AB ; play note G4
|1AB6D2:E7D9| db $AB ; play note G4
|1AB6D3:E7DA| db $AB ; play note G4
|1AB6D4:E7DB| db $AB ; play note G4
|1AB6D5:E7DC| db $AB ; play note G4
|1AB6D6:E7DD| db $AB ; play note G4
|1AB6D7:E7DE| db $AB ; play note G4
|1AB6D8:E7DF| db $AB ; play note G4
|1AB6D9:E7E0| db $AB ; play note G4
|1AB6DA:E7E1| db $AB ; play note G4
|1AB6DB:E7E2| db $AB ; play note G4
|1AB6DC:E7E3| db $AB ; play note G4
|1AB6DD:E7E4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E7E5:
|1AB6DE:E7E5| db $A7 ; play note D#4
|1AB6DF:E7E6| db $A7 ; play note D#4
|1AB6E0:E7E7| db $A7 ; play note D#4
|1AB6E1:E7E8| db $A7 ; play note D#4
|1AB6E2:E7E9| db $A7 ; play note D#4
|1AB6E3:E7EA| db $A7 ; play note D#4
|1AB6E4:E7EB| db $A7 ; play note D#4
|1AB6E5:E7EC| db $A7 ; play note D#4
|1AB6E6:E7ED| db $A7 ; play note D#4
|1AB6E7:E7EE| db $A7 ; play note D#4
|1AB6E8:E7EF| db $A7 ; play note D#4
|1AB6E9:E7F0| db $A7 ; play note D#4
|1AB6EA:E7F1| db $A7 ; play note D#4
|1AB6EB:E7F2| db $A7 ; play note D#4
|1AB6EC:E7F3| db $A7 ; play note D#4
|1AB6ED:E7F4| db $A7 ; play note D#4
|1AB6EE:E7F5| db $A8 ; play note E4
|1AB6EF:E7F6| db $A8 ; play note E4
|1AB6F0:E7F7| db $A8 ; play note E4
|1AB6F1:E7F8| db $A8 ; play note E4
|1AB6F2:E7F9| db $A8 ; play note E4
|1AB6F3:E7FA| db $A8 ; play note E4
|1AB6F4:E7FB| db $A8 ; play note E4
|1AB6F5:E7FC| db $A8 ; play note E4
|1AB6F6:E7FD| db $A8 ; play note E4
|1AB6F7:E7FE| db $A8 ; play note E4
|1AB6F8:E7FF| db $A8 ; play note E4
|1AB6F9:E800| db $A8 ; play note E4
|1AB6FA:E801| db $A8 ; play note E4
|1AB6FB:E802| db $A8 ; play note E4
|1AB6FC:E803| db $A8 ; play note E4
|1AB6FD:E804| db $A8 ; play note E4
|1AB6FE:E805| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E806:
|1AB6FF:E806| db $AA ; play note F#4
|1AB700:E807| db $AA ; play note F#4
|1AB701:E808| db $AA ; play note F#4
|1AB702:E809| db $AA ; play note F#4
|1AB703:E80A| db $AA ; play note F#4
|1AB704:E80B| db $AA ; play note F#4
|1AB705:E80C| db $AA ; play note F#4
|1AB706:E80D| db $AA ; play note F#4
|1AB707:E80E| db $AA ; play note F#4
|1AB708:E80F| db $AA ; play note F#4
|1AB709:E810| db $AA ; play note F#4
|1AB70A:E811| db $AA ; play note F#4
|1AB70B:E812| db $AA ; play note F#4
|1AB70C:E813| db $AA ; play note F#4
|1AB70D:E814| db $AA ; play note F#4
|1AB70E:E815| db $AA ; play note F#4
|1AB70F:E816| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E817:
|1AB710:E817| db $A6 ; play note D4
|1AB711:E818| db $A6 ; play note D4
|1AB712:E819| db $A6 ; play note D4
|1AB713:E81A| db $A6 ; play note D4
|1AB714:E81B| db $A6 ; play note D4
|1AB715:E81C| db $A6 ; play note D4
|1AB716:E81D| db $A6 ; play note D4
|1AB717:E81E| db $A6 ; play note D4
|1AB718:E81F| db $A6 ; play note D4
|1AB719:E820| db $A6 ; play note D4
|1AB71A:E821| db $A6 ; play note D4
|1AB71B:E822| db $A6 ; play note D4
|1AB71C:E823| db $A6 ; play note D4
|1AB71D:E824| db $A6 ; play note D4
|1AB71E:E825| db $A6 ; play note D4
|1AB71F:E826| db $A6 ; play note D4
|1AB720:E827| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E828:
|1AB721:E828| db $E0, $0A ; set instrument - strings B
|1AB723:E82A| db $ED, $C8 ; set channel volume
|1AB725:E82C| db $E3, $14, $19, $1E ; enable vibrato
|1AB729:E830| db $30, $7B ; duration, params
|1AB72B:E832| db $AD ; play note A4
|1AB72C:E833| db $18 ; duration
|1AB72D:E834| db $B2 ; play note D5
|1AB72E:E835| db $30 ; duration
|1AB72F:E836| db $AD ; play note A4
|1AB730:E837| db $18 ; duration
|1AB731:E838| db $B2 ; play note D5
|1AB732:E839| db $30 ; duration
|1AB733:E83A| db $B0 ; play note C5
|1AB734:E83B| db $0C ; duration
|1AB735:E83C| db $AF ; play note B4
|1AB736:E83D| db $B0 ; play note C5
|1AB737:E83E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E83F:
|1AB738:E83F| db $E0, $0A ; set instrument - strings B
|1AB73A:E841| db $ED, $00 ; set channel volume
|1AB73C:E843| db $E3, $14, $19, $1E ; enable vibrato
|1AB740:E847| db $48, $7B ; duration, params
|1AB742:E849| db $AB ; play note G4
|1AB743:E84A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E84B:
|1AB744:E84B| db $E0, $0A ; set instrument - strings B
|1AB746:E84D| db $ED, $D2 ; set channel volume
|1AB748:E84F| db $E3, $14, $19, $1E ; enable vibrato
|1AB74C:E853| db $0C, $7D ; duration, params
|1AB74E:E855| db $96 ; play note A#2
|1AB74F:E856| db $9D ; play note F3
|1AB750:E857| db $30 ; duration
|1AB751:E858| db $A2 ; play note A#3
|1AB752:E859| db $0C ; duration
|1AB753:E85A| db $96 ; play note A#2
|1AB754:E85B| db $9D ; play note F3
|1AB755:E85C| db $30 ; duration
|1AB756:E85D| db $A2 ; play note A#3
|1AB757:E85E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E85F:
|1AB758:E85F| db $E0, $0A ; set instrument - strings B
|1AB75A:E861| db $ED, $00 ; set channel volume
|1AB75C:E863| db $E3, $14, $19, $1E ; enable vibrato
|1AB760:E867| db $48, $7B ; duration, params
|1AB762:E869| db $A8 ; play note E4
|1AB763:E86A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E86B:
|1AB764:E86B| db $E0, $0A ; set instrument - strings B
|1AB766:E86D| db $ED, $C8 ; set channel volume
|1AB768:E86F| db $E3, $14, $19, $1E ; enable vibrato
|1AB76C:E873| db $06, $7B ; duration, params
|1AB76E:E875| db $A9 ; play note F4
|1AB76F:E876| db $A9 ; play note F4
|1AB770:E877| db $A9 ; play note F4
|1AB771:E878| db $A9 ; play note F4
|1AB772:E879| db $A9 ; play note F4
|1AB773:E87A| db $A9 ; play note F4
|1AB774:E87B| db $A9 ; play note F4
|1AB775:E87C| db $A9 ; play note F4
|1AB776:E87D| db $A9 ; play note F4
|1AB777:E87E| db $A9 ; play note F4
|1AB778:E87F| db $A9 ; play note F4
|1AB779:E880| db $A9 ; play note F4
|1AB77A:E881| db $A9 ; play note F4
|1AB77B:E882| db $A9 ; play note F4
|1AB77C:E883| db $A9 ; play note F4
|1AB77D:E884| db $A9 ; play note F4
|1AB77E:E885| db $A9 ; play note F4
|1AB77F:E886| db $A9 ; play note F4
|1AB780:E887| db $A9 ; play note F4
|1AB781:E888| db $A9 ; play note F4
|1AB782:E889| db $A9 ; play note F4
|1AB783:E88A| db $A9 ; play note F4
|1AB784:E88B| db $A9 ; play note F4
|1AB785:E88C| db $A9 ; play note F4
|1AB786:E88D| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E88E:
|1AB787:E88E| db $A8 ; play note E4
|1AB788:E88F| db $A8 ; play note E4
|1AB789:E890| db $A8 ; play note E4
|1AB78A:E891| db $A8 ; play note E4
|1AB78B:E892| db $A8 ; play note E4
|1AB78C:E893| db $A8 ; play note E4
|1AB78D:E894| db $A8 ; play note E4
|1AB78E:E895| db $A8 ; play note E4
|1AB78F:E896| db $A8 ; play note E4
|1AB790:E897| db $A8 ; play note E4
|1AB791:E898| db $A8 ; play note E4
|1AB792:E899| db $A8 ; play note E4
|1AB793:E89A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E89B:
|1AB794:E89B| db $A6 ; play note D4
|1AB795:E89C| db $A6 ; play note D4
|1AB796:E89D| db $A6 ; play note D4
|1AB797:E89E| db $A6 ; play note D4
|1AB798:E89F| db $A6 ; play note D4
|1AB799:E8A0| db $A6 ; play note D4
|1AB79A:E8A1| db $A6 ; play note D4
|1AB79B:E8A2| db $A6 ; play note D4
|1AB79C:E8A3| db $A6 ; play note D4
|1AB79D:E8A4| db $A6 ; play note D4
|1AB79E:E8A5| db $A6 ; play note D4
|1AB79F:E8A6| db $A6 ; play note D4
|1AB7A0:E8A7| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E8A8:
|1AB7A1:E8A8| db $A4 ; play note C4
|1AB7A2:E8A9| db $A4 ; play note C4
|1AB7A3:E8AA| db $A4 ; play note C4
|1AB7A4:E8AB| db $A4 ; play note C4
|1AB7A5:E8AC| db $A4 ; play note C4
|1AB7A6:E8AD| db $A4 ; play note C4
|1AB7A7:E8AE| db $A4 ; play note C4
|1AB7A8:E8AF| db $A4 ; play note C4
|1AB7A9:E8B0| db $A4 ; play note C4
|1AB7AA:E8B1| db $A4 ; play note C4
|1AB7AB:E8B2| db $A4 ; play note C4
|1AB7AC:E8B3| db $A4 ; play note C4
|1AB7AD:E8B4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E8B5:
|1AB7AE:E8B5| db $A2 ; play note A#3
|1AB7AF:E8B6| db $A2 ; play note A#3
|1AB7B0:E8B7| db $A2 ; play note A#3
|1AB7B1:E8B8| db $A2 ; play note A#3
|1AB7B2:E8B9| db $A2 ; play note A#3
|1AB7B3:E8BA| db $A2 ; play note A#3
|1AB7B4:E8BB| db $A2 ; play note A#3
|1AB7B5:E8BC| db $A2 ; play note A#3
|1AB7B6:E8BD| db $A2 ; play note A#3
|1AB7B7:E8BE| db $A2 ; play note A#3
|1AB7B8:E8BF| db $A2 ; play note A#3
|1AB7B9:E8C0| db $A2 ; play note A#3
|1AB7BA:E8C1| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E8C2:
|1AB7BB:E8C2| db $A1 ; play note A3
|1AB7BC:E8C3| db $A1 ; play note A3
|1AB7BD:E8C4| db $A1 ; play note A3
|1AB7BE:E8C5| db $A1 ; play note A3
|1AB7BF:E8C6| db $A1 ; play note A3
|1AB7C0:E8C7| db $A1 ; play note A3
|1AB7C1:E8C8| db $A1 ; play note A3
|1AB7C2:E8C9| db $A1 ; play note A3
|1AB7C3:E8CA| db $A1 ; play note A3
|1AB7C4:E8CB| db $A1 ; play note A3
|1AB7C5:E8CC| db $A1 ; play note A3
|1AB7C6:E8CD| db $A1 ; play note A3
|1AB7C7:E8CE| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song06_Sub_E8CF:
|1AB7C8:E8CF| db $A7 ; play note D#4
|1AB7C9:E8D0| db $A7 ; play note D#4
|1AB7CA:E8D1| db $A7 ; play note D#4
|1AB7CB:E8D2| db $A7 ; play note D#4
|1AB7CC:E8D3| db $A7 ; play note D#4
|1AB7CD:E8D4| db $A7 ; play note D#4
|1AB7CE:E8D5| db $A7 ; play note D#4
|1AB7CF:E8D6| db $A7 ; play note D#4
|1AB7D0:E8D7| db $A7 ; play note D#4
|1AB7D1:E8D8| db $A7 ; play note D#4
|1AB7D2:E8D9| db $A7 ; play note D#4
|1AB7D3:E8DA| db $A7 ; play note D#4
|1AB7D4:E8DB| db $00 ; End

;===================================================================================================

Song07_KakarikoVillage:
|1AB7D5:E8DC| dw Song07_Segment0

Song07_Loop:
|1AB7D7:E8DE| dw Song07_Segment1
|1AB7D9:E8E0| dw Song07_Segment2
|1AB7DB:E8E2| dw Song07_Segment1
|1AB7DD:E8E4| dw Song07_Segment3
|1AB7DF:E8E6| dw Song07_Segment4
|1AB7E1:E8E8| dw Song07_Segment5
|1AB7E3:E8EA| dw Song07_Segment6
|1AB7E5:E8EC| dw $00FF, Song07_Loop ; Loop point
|1AB7E9:E8F0| dw $0000

Song07_Segment1:
|1AB7EB:E8F2| dw Song07_Segment1_Track0
|1AB7ED:E8F4| dw Song07_Segment1_Track1
|1AB7EF:E8F6| dw Song07_Segment1_Track2
|1AB7F1:E8F8| dw Song07_Segment1_Track3
|1AB7F3:E8FA| dw Song07_Segment1_Track4
|1AB7F5:E8FC| dw Song07_Segment1_Track5
|1AB7F7:E8FE| dw $0000
|1AB7F9:E900| dw $0000

Song07_Segment2:
|1AB7FB:E902| dw Song07_Segment2_Track0
|1AB7FD:E904| dw Song07_Segment2_Track1
|1AB7FF:E906| dw Song07_Segment2_Track2
|1AB801:E908| dw Song07_Segment2_Track3
|1AB803:E90A| dw Song07_Segment2_Track4
|1AB805:E90C| dw Song07_Segment2_Track5
|1AB807:E90E| dw $0000
|1AB809:E910| dw $0000

Song07_Segment3:
|1AB80B:E912| dw Song07_Segment3_Track0
|1AB80D:E914| dw Song07_Segment3_Track1
|1AB80F:E916| dw Song07_Segment3_Track2
|1AB811:E918| dw Song07_Segment3_Track3
|1AB813:E91A| dw Song07_Segment3_Track4
|1AB815:E91C| dw Song07_Segment3_Track5
|1AB817:E91E| dw $0000
|1AB819:E920| dw $0000

Song07_Segment4:
|1AB81B:E922| dw Song07_Segment4_Track0
|1AB81D:E924| dw Song07_Segment4_Track1
|1AB81F:E926| dw Song07_Segment4_Track2
|1AB821:E928| dw Song07_Segment4_Track3
|1AB823:E92A| dw $0000
|1AB825:E92C| dw Song07_Segment4_Track5
|1AB827:E92E| dw $0000
|1AB829:E930| dw $0000

Song07_Segment5:
|1AB82B:E932| dw Song07_Segment5_Track0
|1AB82D:E934| dw Song07_Segment5_Track1
|1AB82F:E936| dw Song07_Segment5_Track2
|1AB831:E938| dw Song07_Segment5_Track3
|1AB833:E93A| dw $0000
|1AB835:E93C| dw Song07_Segment5_Track5
|1AB837:E93E| dw $0000
|1AB839:E940| dw $0000

Song07_Segment0:
|1AB83B:E942| dw Song07_Segment0_Track0
|1AB83D:E944| dw Song07_Segment0_Track1
|1AB83F:E946| dw Song07_Segment0_Track2
|1AB841:E948| dw Song07_Segment0_Track3
|1AB843:E94A| dw Song07_Segment0_Track4
|1AB845:E94C| dw Song07_Segment0_Track5
|1AB847:E94E| dw $0000
|1AB849:E950| dw $0000

Song07_Segment6:
|1AB84B:E952| dw Song07_Segment6_Track0
|1AB84D:E954| dw Song07_Segment6_Track1
|1AB84F:E956| dw Song07_Segment6_Track2
|1AB851:E958| dw Song07_Segment6_Track3
|1AB853:E95A| dw Song07_Segment6_Track4
|1AB855:E95C| dw Song07_Segment6_Track5
|1AB857:E95E| dw $0000
|1AB859:E960| dw $0000

;---------------------------------------------------------------------------------------------------

Song07_Segment1_Track0:
|1AB85B:E962| db $EF : dw Song07_Sub_ECDD : db $01 ; call segment subroutine
|1AB85F:E966| db $48, $6D ; duration, params
|1AB861:E968| db $B5 ; play note F5
|1AB862:E969| db $30 ; duration
|1AB863:E96A| db $C8 ; sustain current note
|1AB864:E96B| db $18, $7D ; duration, params
|1AB866:E96D| db $A9 ; play note F4
|1AB867:E96E| db $EF : dw Song07_Sub_ECDD : db $01 ; call segment subroutine
|1AB86B:E972| db $48, $6D ; duration, params
|1AB86D:E974| db $B5 ; play note F5
|1AB86E:E975| db $30 ; duration
|1AB86F:E976| db $C8 ; sustain current note
|1AB870:E977| db $18, $7D ; duration, params
|1AB872:E979| db $B5 ; play note F5
|1AB873:E97A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Segment1_Track1:
|1AB874:E97B| db $22, $6D ; duration, params
|1AB876:E97D| db $96 ; play note A#2
|1AB877:E97E| db $24 ; duration
|1AB878:E97F| db $A6 ; play note D4
|1AB879:E980| db $93 ; play note G2
|1AB87A:E981| db $A2 ; play note A#3
|1AB87B:E982| db $98 ; play note C3
|1AB87C:E983| db $A9 ; play note F4
|1AB87D:E984| db $91 ; play note F2
|1AB87E:E985| db $A7 ; play note D#4
|1AB87F:E986| db $96 ; play note A#2
|1AB880:E987| db $A6 ; play note D4
|1AB881:E988| db $93 ; play note G2
|1AB882:E989| db $A2 ; play note A#3
|1AB883:E98A| db $98 ; play note C3
|1AB884:E98B| db $A9 ; play note F4
|1AB885:E98C| db $91 ; play note F2
|1AB886:E98D| db $26 ; duration
|1AB887:E98E| db $A7 ; play note D#4

;---------------------------------------------------------------------------------------------------

Song07_Segment1_Track2:
|1AB888:E98F| db $EF : dw Song07_Sub_ECEA : db $01 ; call segment subroutine
|1AB88C:E993| db $0C ; duration
|1AB88D:E994| db $C9 ; rest
|1AB88E:E995| db $24 ; duration
|1AB88F:E996| db $9A ; play note D3
|1AB890:E997| db $18 ; duration
|1AB891:E998| db $9F ; play note G3
|1AB892:E999| db $0C ; duration
|1AB893:E99A| db $C9 ; rest
|1AB894:E99B| db $24 ; duration
|1AB895:E99C| db $9F ; play note G3
|1AB896:E99D| db $18 ; duration
|1AB897:E99E| db $A2 ; play note A#3
|1AB898:E99F| db $0C ; duration
|1AB899:E9A0| db $C9 ; rest
|1AB89A:E9A1| db $24 ; duration
|1AB89B:E9A2| db $9D ; play note F3
|1AB89C:E9A3| db $18 ; duration
|1AB89D:E9A4| db $A4 ; play note C4
|1AB89E:E9A5| db $0C ; duration
|1AB89F:E9A6| db $C9 ; rest
|1AB8A0:E9A7| db $24 ; duration
|1AB8A1:E9A8| db $9D ; play note F3
|1AB8A2:E9A9| db $18 ; duration
|1AB8A3:E9AA| db $A2 ; play note A#3
|1AB8A4:E9AB| db $EF : dw Song07_Sub_ECFC : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song07_Segment1_Track3:
|1AB8A8:E9AF| db $EF : dw Song07_Sub_ED0F : db $01 ; call segment subroutine
|1AB8AC:E9B3| db $18 ; duration
|1AB8AD:E9B4| db $C9 ; rest
|1AB8AE:E9B5| db $24 ; duration
|1AB8AF:E9B6| db $9F ; play note G3
|1AB8B0:E9B7| db $0C ; duration
|1AB8B1:E9B8| db $9A ; play note D3
|1AB8B2:E9B9| db $18 ; duration
|1AB8B3:E9BA| db $C9 ; rest
|1AB8B4:E9BB| db $24 ; duration
|1AB8B5:E9BC| db $A2 ; play note A#3
|1AB8B6:E9BD| db $0C ; duration
|1AB8B7:E9BE| db $9F ; play note G3
|1AB8B8:E9BF| db $18 ; duration
|1AB8B9:E9C0| db $C9 ; rest
|1AB8BA:E9C1| db $24 ; duration
|1AB8BB:E9C2| db $A4 ; play note C4
|1AB8BC:E9C3| db $0C ; duration
|1AB8BD:E9C4| db $A1 ; play note A3
|1AB8BE:E9C5| db $18 ; duration
|1AB8BF:E9C6| db $C9 ; rest
|1AB8C0:E9C7| db $24 ; duration
|1AB8C1:E9C8| db $A2 ; play note A#3
|1AB8C2:E9C9| db $0C ; duration
|1AB8C3:E9CA| db $9D ; play note F3
|1AB8C4:E9CB| db $EF : dw Song07_Sub_ED21 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song07_Segment1_Track4:
|1AB8C8:E9CF| db $E0, $16 ; set instrument - flute
|1AB8CA:E9D1| db $ED, $C8 ; set channel volume
|1AB8CC:E9D3| db $E3, $14, $14, $14 ; enable vibrato
|1AB8D0:E9D7| db $EF : dw Song07_Sub_ECDD : db $01 ; call segment subroutine
|1AB8D4:E9DB| db $48, $6D ; duration, params
|1AB8D6:E9DD| db $B5 ; play note F5
|1AB8D7:E9DE| db $30 ; duration
|1AB8D8:E9DF| db $C8 ; sustain current note
|1AB8D9:E9E0| db $18, $7D ; duration, params
|1AB8DB:E9E2| db $A9 ; play note F4
|1AB8DC:E9E3| db $EF : dw Song07_Sub_ECDD : db $01 ; call segment subroutine
|1AB8E0:E9E7| db $48, $6D ; duration, params
|1AB8E2:E9E9| db $B5 ; play note F5
|1AB8E3:E9EA| db $30 ; duration
|1AB8E4:E9EB| db $C8 ; sustain current note
|1AB8E5:E9EC| db $E0, $0E ; set instrument - chimes
|1AB8E7:E9EE| db $18, $7D ; duration, params
|1AB8E9:E9F0| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song07_Segment1_Track5:
|1AB8EA:E9F1| db $E0, $0A ; set instrument - strings B
|1AB8EC:E9F3| db $ED, $A0 ; set channel volume
|1AB8EE:E9F5| db $E3, $1E, $14, $14 ; enable vibrato
|1AB8F2:E9F9| db $08 ; duration
|1AB8F3:E9FA| db $C9 ; rest
|1AB8F4:E9FB| db $30, $6D ; duration, params
|1AB8F6:E9FD| db $AE ; play note A#4
|1AB8F7:E9FE| db $18, $7D ; duration, params
|1AB8F9:EA00| db $A9 ; play note F4
|1AB8FA:EA01| db $30, $6D ; duration, params
|1AB8FC:EA03| db $B2 ; play note D5
|1AB8FD:EA04| db $18, $7D ; duration, params
|1AB8FF:EA06| db $AE ; play note A#4
|1AB900:EA07| db $48, $6D ; duration, params
|1AB902:EA09| db $B5 ; play note F5
|1AB903:EA0A| db $30 ; duration
|1AB904:EA0B| db $C8 ; sustain current note
|1AB905:EA0C| db $18, $7D ; duration, params
|1AB907:EA0E| db $A9 ; play note F4
|1AB908:EA0F| db $EF : dw Song07_Sub_ECDD : db $01 ; call segment subroutine
|1AB90C:EA13| db $48, $6D ; duration, params
|1AB90E:EA15| db $B5 ; play note F5
|1AB90F:EA16| db $30 ; duration
|1AB910:EA17| db $C8 ; sustain current note
|1AB911:EA18| db $10, $7D ; duration, params
|1AB913:EA1A| db $B5 ; play note F5

;---------------------------------------------------------------------------------------------------

Song07_Segment2_Track0:
|1AB914:EA1B| db $48, $6D ; duration, params
|1AB916:EA1D| db $B7 ; play note G5
|1AB917:EA1E| db $30 ; duration
|1AB918:EA1F| db $AD ; play note A4
|1AB919:EA20| db $18, $7D ; duration, params
|1AB91B:EA22| db $B7 ; play note G5
|1AB91C:EA23| db $48, $6D ; duration, params
|1AB91E:EA25| db $B5 ; play note F5
|1AB91F:EA26| db $B2 ; play note D5
|1AB920:EA27| db $B2 ; play note D5
|1AB921:EA28| db $EF : dw Song07_Sub_ED34 : db $01 ; call segment subroutine
|1AB925:EA2C| db $30 ; duration
|1AB926:EA2D| db $C8 ; sustain current note
|1AB927:EA2E| db $18, $7D ; duration, params
|1AB929:EA30| db $A9 ; play note F4
|1AB92A:EA31| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Segment2_Track1:
|1AB92B:EA32| db $22, $6D ; duration, params
|1AB92D:EA34| db $8F ; play note D#2
|1AB92E:EA35| db $24 ; duration
|1AB92F:EA36| db $9F ; play note G3
|1AB930:EA37| db $91 ; play note F2
|1AB931:EA38| db $9D ; play note F3
|1AB932:EA39| db $96 ; play note A#2
|1AB933:EA3A| db $9D ; play note F3
|1AB934:EA3B| db $93 ; play note G2
|1AB935:EA3C| db $9A ; play note D3
|1AB936:EA3D| db $98 ; play note C3
|1AB937:EA3E| db $9F ; play note G3
|1AB938:EA3F| db $91 ; play note F2
|1AB939:EA40| db $98 ; play note C3
|1AB93A:EA41| db $96 ; play note A#2
|1AB93B:EA42| db $9D ; play note F3
|1AB93C:EA43| db $96 ; play note A#2
|1AB93D:EA44| db $26 ; duration
|1AB93E:EA45| db $9D ; play note F3

;---------------------------------------------------------------------------------------------------

Song07_Segment2_Track2:
|1AB93F:EA46| db $EF : dw Song07_Sub_ED3D : db $01 ; call segment subroutine
|1AB943:EA4A| db $0C ; duration
|1AB944:EA4B| db $C9 ; rest
|1AB945:EA4C| db $24 ; duration
|1AB946:EA4D| db $9A ; play note D3
|1AB947:EA4E| db $18 ; duration
|1AB948:EA4F| db $A2 ; play note A#3
|1AB949:EA50| db $EF : dw Song07_Sub_ED59 : db $01 ; call segment subroutine
|1AB94D:EA54| db $0C ; duration
|1AB94E:EA55| db $C9 ; rest
|1AB94F:EA56| db $24 ; duration
|1AB950:EA57| db $9D ; play note F3
|1AB951:EA58| db $1A ; duration
|1AB952:EA59| db $A2 ; play note A#3

;---------------------------------------------------------------------------------------------------

Song07_Segment2_Track3:
|1AB953:EA5A| db $EF : dw Song07_Sub_ED6C : db $01 ; call segment subroutine
|1AB957:EA5E| db $18 ; duration
|1AB958:EA5F| db $C9 ; rest
|1AB959:EA60| db $24 ; duration
|1AB95A:EA61| db $A2 ; play note A#3
|1AB95B:EA62| db $0C ; duration
|1AB95C:EA63| db $9D ; play note F3
|1AB95D:EA64| db $18 ; duration
|1AB95E:EA65| db $C9 ; rest
|1AB95F:EA66| db $24 ; duration
|1AB960:EA67| db $A2 ; play note A#3
|1AB961:EA68| db $0C ; duration
|1AB962:EA69| db $9A ; play note D3
|1AB963:EA6A| db $EF : dw Song07_Sub_ED82 : db $01 ; call segment subroutine
|1AB967:EA6E| db $18 ; duration
|1AB968:EA6F| db $C9 ; rest
|1AB969:EA70| db $24 ; duration
|1AB96A:EA71| db $A2 ; play note A#3
|1AB96B:EA72| db $0E ; duration
|1AB96C:EA73| db $9D ; play note F3

;---------------------------------------------------------------------------------------------------

Song07_Segment2_Track4:
|1AB96D:EA74| db $48, $6D ; duration, params
|1AB96F:EA76| db $AB ; play note G4
|1AB970:EA77| db $30 ; duration
|1AB971:EA78| db $A1 ; play note A3
|1AB972:EA79| db $18 ; duration
|1AB973:EA7A| db $AB ; play note G4
|1AB974:EA7B| db $48 ; duration
|1AB975:EA7C| db $A9 ; play note F4
|1AB976:EA7D| db $A6 ; play note D4
|1AB977:EA7E| db $A6 ; play note D4
|1AB978:EA7F| db $30 ; duration
|1AB979:EA80| db $A6 ; play note D4
|1AB97A:EA81| db $18 ; duration
|1AB97B:EA82| db $A4 ; play note C4
|1AB97C:EA83| db $48 ; duration
|1AB97D:EA84| db $A2 ; play note A#3
|1AB97E:EA85| db $30 ; duration
|1AB97F:EA86| db $C8 ; sustain current note
|1AB980:EA87| db $E0, $16 ; set instrument - flute
|1AB982:EA89| db $18, $7D ; duration, params
|1AB984:EA8B| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song07_Segment2_Track5:
|1AB985:EA8C| db $EF : dw Song07_Sub_ED95 : db $01 ; call segment subroutine
|1AB989:EA90| db $30 ; duration
|1AB98A:EA91| db $AD ; play note A4
|1AB98B:EA92| db $18, $7D ; duration, params
|1AB98D:EA94| db $B7 ; play note G5
|1AB98E:EA95| db $48, $6D ; duration, params
|1AB990:EA97| db $B5 ; play note F5
|1AB991:EA98| db $B2 ; play note D5
|1AB992:EA99| db $B2 ; play note D5
|1AB993:EA9A| db $EF : dw Song07_Sub_ED34 : db $01 ; call segment subroutine
|1AB997:EA9E| db $30 ; duration
|1AB998:EA9F| db $C8 ; sustain current note
|1AB999:EAA0| db $10, $7D ; duration, params
|1AB99B:EAA2| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song07_Segment3_Track0:
|1AB99C:EAA3| db $48, $6D ; duration, params
|1AB99E:EAA5| db $B7 ; play note G5
|1AB99F:EAA6| db $30 ; duration
|1AB9A0:EAA7| db $AD ; play note A4
|1AB9A1:EAA8| db $18, $7D ; duration, params
|1AB9A3:EAAA| db $B7 ; play note G5
|1AB9A4:EAAB| db $48, $6D ; duration, params
|1AB9A6:EAAD| db $B5 ; play note F5
|1AB9A7:EAAE| db $B2 ; play note D5
|1AB9A8:EAAF| db $B2 ; play note D5
|1AB9A9:EAB0| db $EF : dw Song07_Sub_ED34 : db $01 ; call segment subroutine
|1AB9AD:EAB4| db $30 ; duration
|1AB9AE:EAB5| db $C8 ; sustain current note
|1AB9AF:EAB6| db $18, $7D ; duration, params
|1AB9B1:EAB8| db $AE ; play note A#4
|1AB9B2:EAB9| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Segment3_Track1:
|1AB9B3:EABA| db $22, $6D ; duration, params
|1AB9B5:EABC| db $8F ; play note D#2
|1AB9B6:EABD| db $24 ; duration
|1AB9B7:EABE| db $9F ; play note G3
|1AB9B8:EABF| db $91 ; play note F2
|1AB9B9:EAC0| db $9D ; play note F3
|1AB9BA:EAC1| db $96 ; play note A#2
|1AB9BB:EAC2| db $9D ; play note F3
|1AB9BC:EAC3| db $93 ; play note G2
|1AB9BD:EAC4| db $9A ; play note D3
|1AB9BE:EAC5| db $98 ; play note C3
|1AB9BF:EAC6| db $9F ; play note G3
|1AB9C0:EAC7| db $91 ; play note F2
|1AB9C1:EAC8| db $98 ; play note C3
|1AB9C2:EAC9| db $96 ; play note A#2
|1AB9C3:EACA| db $9D ; play note F3
|1AB9C4:EACB| db $96 ; play note A#2
|1AB9C5:EACC| db $26 ; duration
|1AB9C6:EACD| db $9D ; play note F3

;---------------------------------------------------------------------------------------------------

Song07_Segment3_Track2:
|1AB9C7:EACE| db $EF : dw Song07_Sub_ED3D : db $01 ; call segment subroutine
|1AB9CB:EAD2| db $0C ; duration
|1AB9CC:EAD3| db $C9 ; rest
|1AB9CD:EAD4| db $24 ; duration
|1AB9CE:EAD5| db $9A ; play note D3
|1AB9CF:EAD6| db $18 ; duration
|1AB9D0:EAD7| db $A2 ; play note A#3
|1AB9D1:EAD8| db $EF : dw Song07_Sub_ED59 : db $01 ; call segment subroutine
|1AB9D5:EADC| db $0C ; duration
|1AB9D6:EADD| db $C9 ; rest
|1AB9D7:EADE| db $24 ; duration
|1AB9D8:EADF| db $9D ; play note F3
|1AB9D9:EAE0| db $1A ; duration
|1AB9DA:EAE1| db $A2 ; play note A#3

;---------------------------------------------------------------------------------------------------

Song07_Segment3_Track3:
|1AB9DB:EAE2| db $EF : dw Song07_Sub_ED6C : db $01 ; call segment subroutine
|1AB9DF:EAE6| db $18 ; duration
|1AB9E0:EAE7| db $C9 ; rest
|1AB9E1:EAE8| db $24 ; duration
|1AB9E2:EAE9| db $A2 ; play note A#3
|1AB9E3:EAEA| db $0C ; duration
|1AB9E4:EAEB| db $9D ; play note F3
|1AB9E5:EAEC| db $18 ; duration
|1AB9E6:EAED| db $C9 ; rest
|1AB9E7:EAEE| db $24 ; duration
|1AB9E8:EAEF| db $A2 ; play note A#3
|1AB9E9:EAF0| db $0C ; duration
|1AB9EA:EAF1| db $9A ; play note D3
|1AB9EB:EAF2| db $EF : dw Song07_Sub_ED82 : db $01 ; call segment subroutine
|1AB9EF:EAF6| db $18 ; duration
|1AB9F0:EAF7| db $C9 ; rest
|1AB9F1:EAF8| db $24 ; duration
|1AB9F2:EAF9| db $A2 ; play note A#3
|1AB9F3:EAFA| db $0E ; duration
|1AB9F4:EAFB| db $9D ; play note F3

;---------------------------------------------------------------------------------------------------

Song07_Segment3_Track4:
|1AB9F5:EAFC| db $48, $6D ; duration, params
|1AB9F7:EAFE| db $AB ; play note G4
|1AB9F8:EAFF| db $30 ; duration
|1AB9F9:EB00| db $A1 ; play note A3
|1AB9FA:EB01| db $18 ; duration
|1AB9FB:EB02| db $AB ; play note G4
|1AB9FC:EB03| db $48 ; duration
|1AB9FD:EB04| db $A9 ; play note F4
|1AB9FE:EB05| db $A6 ; play note D4
|1AB9FF:EB06| db $A6 ; play note D4
|1ABA00:EB07| db $30 ; duration
|1ABA01:EB08| db $A6 ; play note D4
|1ABA02:EB09| db $18 ; duration
|1ABA03:EB0A| db $A4 ; play note C4
|1ABA04:EB0B| db $48 ; duration
|1ABA05:EB0C| db $A2 ; play note A#3
|1ABA06:EB0D| db $30 ; duration
|1ABA07:EB0E| db $C8 ; sustain current note
|1ABA08:EB0F| db $E0, $16 ; set instrument - flute
|1ABA0A:EB11| db $18 ; duration
|1ABA0B:EB12| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song07_Segment3_Track5:
|1ABA0C:EB13| db $EF : dw Song07_Sub_ED95 : db $01 ; call segment subroutine
|1ABA10:EB17| db $30 ; duration
|1ABA11:EB18| db $AD ; play note A4
|1ABA12:EB19| db $18, $7D ; duration, params
|1ABA14:EB1B| db $B7 ; play note G5
|1ABA15:EB1C| db $48, $6D ; duration, params
|1ABA17:EB1E| db $B5 ; play note F5
|1ABA18:EB1F| db $B2 ; play note D5
|1ABA19:EB20| db $B2 ; play note D5
|1ABA1A:EB21| db $EF : dw Song07_Sub_ED34 : db $01 ; call segment subroutine
|1ABA1E:EB25| db $30 ; duration
|1ABA1F:EB26| db $C8 ; sustain current note
|1ABA20:EB27| db $10, $7D ; duration, params
|1ABA22:EB29| db $AE ; play note A#4

;---------------------------------------------------------------------------------------------------

Song07_Segment4_Track0:
|1ABA23:EB2A| db $48, $6D ; duration, params
|1ABA25:EB2C| db $AE ; play note A#4
|1ABA26:EB2D| db $30 ; duration
|1ABA27:EB2E| db $AD ; play note A4
|1ABA28:EB2F| db $18, $7D ; duration, params
|1ABA2A:EB31| db $B0 ; play note C5
|1ABA2B:EB32| db $48, $6D ; duration, params
|1ABA2D:EB34| db $AE ; play note A#4
|1ABA2E:EB35| db $A9 ; play note F4
|1ABA2F:EB36| db $30 ; duration
|1ABA30:EB37| db $A7 ; play note D#4
|1ABA31:EB38| db $18 ; duration
|1ABA32:EB39| db $A6 ; play note D4
|1ABA33:EB3A| db $30 ; duration
|1ABA34:EB3B| db $A7 ; play note D#4
|1ABA35:EB3C| db $18, $7D ; duration, params
|1ABA37:EB3E| db $A9 ; play note F4
|1ABA38:EB3F| db $48, $6D ; duration, params
|1ABA3A:EB41| db $A6 ; play note D4
|1ABA3B:EB42| db $30 ; duration
|1ABA3C:EB43| db $C8 ; sustain current note
|1ABA3D:EB44| db $18, $7D ; duration, params
|1ABA3F:EB46| db $AE ; play note A#4
|1ABA40:EB47| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Segment4_Track1:
|1ABA41:EB48| db $24, $6D ; duration, params
|1ABA43:EB4A| db $8F ; play note D#2
|1ABA44:EB4B| db $9F ; play note G3
|1ABA45:EB4C| db $8F ; play note D#2
|1ABA46:EB4D| db $9F ; play note G3
|1ABA47:EB4E| db $8E ; play note D2
|1ABA48:EB4F| db $9D ; play note F3
|1ABA49:EB50| db $8E ; play note D2
|1ABA4A:EB51| db $9D ; play note F3
|1ABA4B:EB52| db $98 ; play note C3
|1ABA4C:EB53| db $9F ; play note G3
|1ABA4D:EB54| db $91 ; play note F2
|1ABA4E:EB55| db $98 ; play note C3
|1ABA4F:EB56| db $96 ; play note A#2
|1ABA50:EB57| db $9D ; play note F3
|1ABA51:EB58| db $94 ; play note G#2
|1ABA52:EB59| db $9D ; play note F3

;---------------------------------------------------------------------------------------------------

Song07_Segment4_Track2:
|1ABA53:EB5A| db $EF : dw Song07_Sub_EDA3 : db $01 ; call segment subroutine
|1ABA57:EB5E| db $EF : dw Song07_Sub_EDB9 : db $02 ; call segment subroutine
|1ABA5B:EB62| db $EF : dw Song07_Sub_ED59 : db $01 ; call segment subroutine
|1ABA5F:EB66| db $0C ; duration
|1ABA60:EB67| db $C9 ; rest
|1ABA61:EB68| db $24 ; duration
|1ABA62:EB69| db $9D ; play note F3
|1ABA63:EB6A| db $18 ; duration
|1ABA64:EB6B| db $A0 ; play note G#3

;---------------------------------------------------------------------------------------------------

Song07_Segment4_Track3:
|1ABA65:EB6C| db $EF : dw Song07_Sub_EDC0 : db $01 ; call segment subroutine
|1ABA69:EB70| db $18 ; duration
|1ABA6A:EB71| db $C9 ; rest
|1ABA6B:EB72| db $24 ; duration
|1ABA6C:EB73| db $A2 ; play note A#3
|1ABA6D:EB74| db $0C ; duration
|1ABA6E:EB75| db $9F ; play note G3
|1ABA6F:EB76| db $EF : dw Song07_Sub_EDD0 : db $02 ; call segment subroutine
|1ABA73:EB7A| db $EF : dw Song07_Sub_ED82 : db $01 ; call segment subroutine
|1ABA77:EB7E| db $18 ; duration
|1ABA78:EB7F| db $C9 ; rest
|1ABA79:EB80| db $24 ; duration
|1ABA7A:EB81| db $A0 ; play note G#3
|1ABA7B:EB82| db $0C ; duration
|1ABA7C:EB83| db $9D ; play note F3

;---------------------------------------------------------------------------------------------------

Song07_Segment4_Track5:
|1ABA7D:EB84| db $EF : dw Song07_Sub_EDD7 : db $01 ; call segment subroutine
|1ABA81:EB88| db $30 ; duration
|1ABA82:EB89| db $AD ; play note A4
|1ABA83:EB8A| db $18, $7D ; duration, params
|1ABA85:EB8C| db $B0 ; play note C5
|1ABA86:EB8D| db $48, $6D ; duration, params
|1ABA88:EB8F| db $AE ; play note A#4
|1ABA89:EB90| db $A9 ; play note F4
|1ABA8A:EB91| db $30 ; duration
|1ABA8B:EB92| db $A7 ; play note D#4
|1ABA8C:EB93| db $18 ; duration
|1ABA8D:EB94| db $A6 ; play note D4
|1ABA8E:EB95| db $30 ; duration
|1ABA8F:EB96| db $A7 ; play note D#4
|1ABA90:EB97| db $18, $7D ; duration, params
|1ABA92:EB99| db $A9 ; play note F4
|1ABA93:EB9A| db $48, $6D ; duration, params
|1ABA95:EB9C| db $A6 ; play note D4
|1ABA96:EB9D| db $30 ; duration
|1ABA97:EB9E| db $C8 ; sustain current note
|1ABA98:EB9F| db $10, $7D ; duration, params
|1ABA9A:EBA1| db $AE ; play note A#4

;---------------------------------------------------------------------------------------------------

Song07_Segment5_Track0:
|1ABA9B:EBA2| db $48, $6D ; duration, params
|1ABA9D:EBA4| db $AE ; play note A#4
|1ABA9E:EBA5| db $30 ; duration
|1ABA9F:EBA6| db $AD ; play note A4
|1ABAA0:EBA7| db $18, $7D ; duration, params
|1ABAA2:EBA9| db $B0 ; play note C5
|1ABAA3:EBAA| db $30, $6D ; duration, params
|1ABAA5:EBAC| db $AE ; play note A#4
|1ABAA6:EBAD| db $18, $7D ; duration, params
|1ABAA8:EBAF| db $A9 ; play note F4
|1ABAA9:EBB0| db $48, $6D ; duration, params
|1ABAAB:EBB2| db $B5 ; play note F5
|1ABAAC:EBB3| db $B3 ; play note D#5
|1ABAAD:EBB4| db $EF : dw Song07_Sub_ED34 : db $01 ; call segment subroutine
|1ABAB1:EBB8| db $C8 ; sustain current note
|1ABAB2:EBB9| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Segment5_Track1:
|1ABAB3:EBBA| db $24, $6D ; duration, params
|1ABAB5:EBBC| db $8F ; play note D#2
|1ABAB6:EBBD| db $9F ; play note G3
|1ABAB7:EBBE| db $8F ; play note D#2
|1ABAB8:EBBF| db $9F ; play note G3
|1ABAB9:EBC0| db $8E ; play note D2
|1ABABA:EBC1| db $9D ; play note F3
|1ABABB:EBC2| db $8E ; play note D2
|1ABABC:EBC3| db $9D ; play note F3
|1ABABD:EBC4| db $98 ; play note C3
|1ABABE:EBC5| db $9F ; play note G3
|1ABABF:EBC6| db $91 ; play note F2
|1ABAC0:EBC7| db $98 ; play note C3
|1ABAC1:EBC8| db $96 ; play note A#2
|1ABAC2:EBC9| db $9D ; play note F3
|1ABAC3:EBCA| db $96 ; play note A#2
|1ABAC4:EBCB| db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song07_Segment5_Track2:
|1ABAC5:EBCC| db $EF : dw Song07_Sub_EDA3 : db $01 ; call segment subroutine
|1ABAC9:EBD0| db $EF : dw Song07_Sub_EDB9 : db $02 ; call segment subroutine
|1ABACD:EBD4| db $EF : dw Song07_Sub_ED59 : db $01 ; call segment subroutine
|1ABAD1:EBD8| db $0C ; duration
|1ABAD2:EBD9| db $C9 ; rest
|1ABAD3:EBDA| db $24 ; duration
|1ABAD4:EBDB| db $9D ; play note F3
|1ABAD5:EBDC| db $18 ; duration
|1ABAD6:EBDD| db $A2 ; play note A#3

;---------------------------------------------------------------------------------------------------

Song07_Segment5_Track3:
|1ABAD7:EBDE| db $EF : dw Song07_Sub_EDC0 : db $01 ; call segment subroutine
|1ABADB:EBE2| db $18 ; duration
|1ABADC:EBE3| db $C9 ; rest
|1ABADD:EBE4| db $24 ; duration
|1ABADE:EBE5| db $A2 ; play note A#3
|1ABADF:EBE6| db $0C ; duration
|1ABAE0:EBE7| db $9F ; play note G3
|1ABAE1:EBE8| db $EF : dw Song07_Sub_EDD0 : db $02 ; call segment subroutine
|1ABAE5:EBEC| db $EF : dw Song07_Sub_ED82 : db $01 ; call segment subroutine
|1ABAE9:EBF0| db $18 ; duration
|1ABAEA:EBF1| db $C9 ; rest
|1ABAEB:EBF2| db $24 ; duration
|1ABAEC:EBF3| db $A2 ; play note A#3
|1ABAED:EBF4| db $0C ; duration
|1ABAEE:EBF5| db $9D ; play note F3

;---------------------------------------------------------------------------------------------------

Song07_Segment5_Track5:
|1ABAEF:EBF6| db $EF : dw Song07_Sub_EDD7 : db $01 ; call segment subroutine
|1ABAF3:EBFA| db $30 ; duration
|1ABAF4:EBFB| db $AD ; play note A4
|1ABAF5:EBFC| db $18, $7D ; duration, params
|1ABAF7:EBFE| db $B0 ; play note C5
|1ABAF8:EBFF| db $30, $6D ; duration, params
|1ABAFA:EC01| db $AE ; play note A#4
|1ABAFB:EC02| db $18, $7D ; duration, params
|1ABAFD:EC04| db $A9 ; play note F4
|1ABAFE:EC05| db $48, $6D ; duration, params
|1ABB00:EC07| db $B5 ; play note F5
|1ABB01:EC08| db $B3 ; play note D#5
|1ABB02:EC09| db $EF : dw Song07_Sub_ED34 : db $01 ; call segment subroutine
|1ABB06:EC0D| db $40 ; duration
|1ABB07:EC0E| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song07_Segment0_Track0:
|1ABB08:EC0F| db $FA, $18 ; set base percussion sample
|1ABB0A:EC11| db $E5, $B4 ; set song volume
|1ABB0C:EC13| db $E7, $15 ; set song tempo
|1ABB0E:EC15| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1ABB12:EC19| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1ABB16:EC1D| db $F8, $1E, $0A, $0A ; initiate gradual echo volume change
|1ABB1A:EC21| db $E1, $0F ; set panning - leaning left
|1ABB1C:EC23| db $ED, $C8 ; set channel volume
|1ABB1E:EC25| db $E0, $0A ; set instrument - strings B
|1ABB20:EC27| db $E3, $1E, $14, $14 ; enable vibrato
|1ABB24:EC2B| db $48 ; duration
|1ABB25:EC2C| db $C9 ; rest
|1ABB26:EC2D| db $C9 ; rest
|1ABB27:EC2E| db $EF : dw Song07_Sub_EDE5 : db $01 ; call segment subroutine
|1ABB2B:EC32| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Segment0_Track1:
|1ABB2C:EC33| db $E1, $05 ; set panning - leaning right
|1ABB2E:EC35| db $ED, $C8 ; set channel volume
|1ABB30:EC37| db $E0, $09 ; set instrument - strings A
|1ABB32:EC39| db $E3, $1E, $14, $14 ; enable vibrato
|1ABB36:EC3D| db $22, $6D ; duration, params
|1ABB38:EC3F| db $96 ; play note A#2
|1ABB39:EC40| db $24 ; duration
|1ABB3A:EC41| db $A6 ; play note D4
|1ABB3B:EC42| db $93 ; play note G2
|1ABB3C:EC43| db $A2 ; play note A#3
|1ABB3D:EC44| db $98 ; play note C3
|1ABB3E:EC45| db $A9 ; play note F4
|1ABB3F:EC46| db $91 ; play note F2
|1ABB40:EC47| db $26 ; duration
|1ABB41:EC48| db $A7 ; play note D#4

;---------------------------------------------------------------------------------------------------

Song07_Segment0_Track2:
|1ABB42:EC49| db $EF : dw Song07_Sub_ECEA : db $01 ; call segment subroutine
|1ABB46:EC4D| db $EF : dw Song07_Sub_ECFC : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song07_Segment0_Track3:
|1ABB4A:EC51| db $EF : dw Song07_Sub_ED0F : db $01 ; call segment subroutine
|1ABB4E:EC55| db $EF : dw Song07_Sub_ED21 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song07_Segment0_Track4:
|1ABB52:EC59| db $E0, $16 ; set instrument - flute
|1ABB54:EC5B| db $ED, $C8 ; set channel volume
|1ABB56:EC5D| db $E3, $14, $14, $14 ; enable vibrato
|1ABB5A:EC61| db $48 ; duration
|1ABB5B:EC62| db $C9 ; rest
|1ABB5C:EC63| db $C9 ; rest
|1ABB5D:EC64| db $EF : dw Song07_Sub_EDE5 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song07_Segment0_Track5:
|1ABB61:EC68| db $EF : dw Song07_Sub_EDEC : db $01 ; call segment subroutine
|1ABB65:EC6C| db $48 ; duration
|1ABB66:EC6D| db $C9 ; rest
|1ABB67:EC6E| db $C9 ; rest
|1ABB68:EC6F| db $30 ; duration
|1ABB69:EC70| db $C9 ; rest
|1ABB6A:EC71| db $10, $7D ; duration, params
|1ABB6C:EC73| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song07_Segment6_Track0:
|1ABB6D:EC74| db $E1, $0F ; set panning - leaning left
|1ABB6F:EC76| db $ED, $C8 ; set channel volume
|1ABB71:EC78| db $E0, $0A ; set instrument - strings B
|1ABB73:EC7A| db $E3, $1E, $14, $14 ; enable vibrato
|1ABB77:EC7E| db $48 ; duration
|1ABB78:EC7F| db $C9 ; rest
|1ABB79:EC80| db $EF : dw Song07_Sub_EDE5 : db $01 ; call segment subroutine
|1ABB7D:EC84| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Segment6_Track1:
|1ABB7E:EC85| db $E1, $05 ; set panning - leaning right
|1ABB80:EC87| db $ED, $C8 ; set channel volume
|1ABB82:EC89| db $E0, $09 ; set instrument - strings A
|1ABB84:EC8B| db $E3, $1E, $14, $14 ; enable vibrato
|1ABB88:EC8F| db $22, $6D ; duration, params
|1ABB8A:EC91| db $93 ; play note G2
|1ABB8B:EC92| db $24 ; duration
|1ABB8C:EC93| db $A2 ; play note A#3
|1ABB8D:EC94| db $98 ; play note C3
|1ABB8E:EC95| db $A9 ; play note F4
|1ABB8F:EC96| db $91 ; play note F2
|1ABB90:EC97| db $26 ; duration
|1ABB91:EC98| db $A7 ; play note D#4

;---------------------------------------------------------------------------------------------------

Song07_Segment6_Track2:
|1ABB92:EC99| db $E1, $0D ; set panning - leaning left
|1ABB94:EC9B| db $E0, $09 ; set instrument - strings A
|1ABB96:EC9D| db $ED, $B4 ; set channel volume
|1ABB98:EC9F| db $E3, $1E, $14, $14 ; enable vibrato
|1ABB9C:ECA3| db $0A ; duration
|1ABB9D:ECA4| db $C9 ; rest
|1ABB9E:ECA5| db $24, $7D ; duration, params
|1ABBA0:ECA7| db $9A ; play note D3
|1ABBA1:ECA8| db $18 ; duration
|1ABBA2:ECA9| db $9F ; play note G3
|1ABBA3:ECAA| db $EF : dw Song07_Sub_EDF7 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song07_Segment6_Track3:
|1ABBA7:ECAE| db $E1, $0B ; set panning - leaning left
|1ABBA9:ECB0| db $E0, $09 ; set instrument - strings A
|1ABBAB:ECB2| db $ED, $B4 ; set channel volume
|1ABBAD:ECB4| db $E3, $1E, $14, $14 ; enable vibrato
|1ABBB1:ECB8| db $16 ; duration
|1ABBB2:ECB9| db $C9 ; rest
|1ABBB3:ECBA| db $24, $7D ; duration, params
|1ABBB5:ECBC| db $9F ; play note G3
|1ABBB6:ECBD| db $0C ; duration
|1ABBB7:ECBE| db $9A ; play note D3
|1ABBB8:ECBF| db $EF : dw Song07_Sub_EE04 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song07_Segment6_Track4:
|1ABBBC:ECC3| db $E0, $16 ; set instrument - flute
|1ABBBE:ECC5| db $ED, $C8 ; set channel volume
|1ABBC0:ECC7| db $E3, $14, $14, $14 ; enable vibrato
|1ABBC4:ECCB| db $48 ; duration
|1ABBC5:ECCC| db $C9 ; rest
|1ABBC6:ECCD| db $EF : dw Song07_Sub_EDE5 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song07_Segment6_Track5:
|1ABBCA:ECD1| db $EF : dw Song07_Sub_EDEC : db $01 ; call segment subroutine
|1ABBCE:ECD5| db $48 ; duration
|1ABBCF:ECD6| db $C9 ; rest
|1ABBD0:ECD7| db $30 ; duration
|1ABBD1:ECD8| db $C9 ; rest
|1ABBD2:ECD9| db $10, $7D ; duration, params
|1ABBD4:ECDB| db $A9 ; play note F4
|1ABBD5:ECDC| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_ECDD:
|1ABBD6:ECDD| db $30, $6D ; duration, params
|1ABBD8:ECDF| db $AE ; play note A#4
|1ABBD9:ECE0| db $18, $7D ; duration, params
|1ABBDB:ECE2| db $A9 ; play note F4
|1ABBDC:ECE3| db $30, $6D ; duration, params
|1ABBDE:ECE5| db $B2 ; play note D5
|1ABBDF:ECE6| db $18, $7D ; duration, params
|1ABBE1:ECE8| db $AE ; play note A#4
|1ABBE2:ECE9| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_ECEA:
|1ABBE3:ECEA| db $E1, $0D ; set panning - leaning left
|1ABBE5:ECEC| db $E0, $09 ; set instrument - strings A
|1ABBE7:ECEE| db $ED, $B4 ; set channel volume
|1ABBE9:ECF0| db $E3, $1E, $14, $14 ; enable vibrato
|1ABBED:ECF4| db $0A ; duration
|1ABBEE:ECF5| db $C9 ; rest
|1ABBEF:ECF6| db $24, $7D ; duration, params
|1ABBF1:ECF8| db $9D ; play note F3
|1ABBF2:ECF9| db $18 ; duration
|1ABBF3:ECFA| db $A2 ; play note A#3
|1ABBF4:ECFB| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_ECFC:
|1ABBF5:ECFC| db $0C ; duration
|1ABBF6:ECFD| db $C9 ; rest
|1ABBF7:ECFE| db $24 ; duration
|1ABBF8:ECFF| db $9A ; play note D3
|1ABBF9:ED00| db $18 ; duration
|1ABBFA:ED01| db $9F ; play note G3
|1ABBFB:ED02| db $0C ; duration
|1ABBFC:ED03| db $C9 ; rest
|1ABBFD:ED04| db $24 ; duration
|1ABBFE:ED05| db $9F ; play note G3
|1ABBFF:ED06| db $18 ; duration
|1ABC00:ED07| db $A2 ; play note A#3
|1ABC01:ED08| db $0C ; duration
|1ABC02:ED09| db $C9 ; rest
|1ABC03:ED0A| db $24 ; duration
|1ABC04:ED0B| db $9D ; play note F3
|1ABC05:ED0C| db $1A ; duration
|1ABC06:ED0D| db $A4 ; play note C4
|1ABC07:ED0E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_ED0F:
|1ABC08:ED0F| db $E1, $0B ; set panning - leaning left
|1ABC0A:ED11| db $E0, $09 ; set instrument - strings A
|1ABC0C:ED13| db $ED, $B4 ; set channel volume
|1ABC0E:ED15| db $E3, $1E, $14, $14 ; enable vibrato
|1ABC12:ED19| db $16 ; duration
|1ABC13:ED1A| db $C9 ; rest
|1ABC14:ED1B| db $24, $7D ; duration, params
|1ABC16:ED1D| db $A2 ; play note A#3
|1ABC17:ED1E| db $0C ; duration
|1ABC18:ED1F| db $9D ; play note F3
|1ABC19:ED20| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_ED21:
|1ABC1A:ED21| db $18 ; duration
|1ABC1B:ED22| db $C9 ; rest
|1ABC1C:ED23| db $24 ; duration
|1ABC1D:ED24| db $9F ; play note G3
|1ABC1E:ED25| db $0C ; duration
|1ABC1F:ED26| db $9A ; play note D3
|1ABC20:ED27| db $18 ; duration
|1ABC21:ED28| db $C9 ; rest
|1ABC22:ED29| db $24 ; duration
|1ABC23:ED2A| db $A2 ; play note A#3
|1ABC24:ED2B| db $0C ; duration
|1ABC25:ED2C| db $9F ; play note G3
|1ABC26:ED2D| db $18 ; duration
|1ABC27:ED2E| db $C9 ; rest
|1ABC28:ED2F| db $24 ; duration
|1ABC29:ED30| db $A4 ; play note C4
|1ABC2A:ED31| db $0E ; duration
|1ABC2B:ED32| db $A1 ; play note A3
|1ABC2C:ED33| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_ED34:
|1ABC2D:ED34| db $30 ; duration
|1ABC2E:ED35| db $B2 ; play note D5
|1ABC2F:ED36| db $18, $7D ; duration, params
|1ABC31:ED38| db $B0 ; play note C5
|1ABC32:ED39| db $48, $6D ; duration, params
|1ABC34:ED3B| db $AE ; play note A#4
|1ABC35:ED3C| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_ED3D:
|1ABC36:ED3D| db $E0, $09 ; set instrument - strings A
|1ABC38:ED3F| db $ED, $B4 ; set channel volume
|1ABC3A:ED41| db $E3, $1E, $14, $14 ; enable vibrato
|1ABC3E:ED45| db $0A ; duration
|1ABC3F:ED46| db $C9 ; rest
|1ABC40:ED47| db $24, $7D ; duration, params
|1ABC42:ED49| db $96 ; play note A#2
|1ABC43:ED4A| db $18 ; duration
|1ABC44:ED4B| db $A2 ; play note A#3
|1ABC45:ED4C| db $0C ; duration
|1ABC46:ED4D| db $C9 ; rest
|1ABC47:ED4E| db $24 ; duration
|1ABC48:ED4F| db $98 ; play note C3
|1ABC49:ED50| db $18 ; duration
|1ABC4A:ED51| db $A1 ; play note A3
|1ABC4B:ED52| db $0C ; duration
|1ABC4C:ED53| db $C9 ; rest
|1ABC4D:ED54| db $24 ; duration
|1ABC4E:ED55| db $9D ; play note F3
|1ABC4F:ED56| db $18 ; duration
|1ABC50:ED57| db $A2 ; play note A#3
|1ABC51:ED58| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_ED59:
|1ABC52:ED59| db $0C ; duration
|1ABC53:ED5A| db $C9 ; rest
|1ABC54:ED5B| db $24 ; duration
|1ABC55:ED5C| db $9F ; play note G3
|1ABC56:ED5D| db $18 ; duration
|1ABC57:ED5E| db $A2 ; play note A#3
|1ABC58:ED5F| db $0C ; duration
|1ABC59:ED60| db $C9 ; rest
|1ABC5A:ED61| db $24 ; duration
|1ABC5B:ED62| db $98 ; play note C3
|1ABC5C:ED63| db $18 ; duration
|1ABC5D:ED64| db $A1 ; play note A3
|1ABC5E:ED65| db $0C ; duration
|1ABC5F:ED66| db $C9 ; rest
|1ABC60:ED67| db $24 ; duration
|1ABC61:ED68| db $9D ; play note F3
|1ABC62:ED69| db $18 ; duration
|1ABC63:ED6A| db $A2 ; play note A#3
|1ABC64:ED6B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_ED6C:
|1ABC65:ED6C| db $E0, $09 ; set instrument - strings A
|1ABC67:ED6E| db $ED, $B4 ; set channel volume
|1ABC69:ED70| db $E3, $1E, $14, $14 ; enable vibrato
|1ABC6D:ED74| db $16 ; duration
|1ABC6E:ED75| db $C9 ; rest
|1ABC6F:ED76| db $24, $7D ; duration, params
|1ABC71:ED78| db $A2 ; play note A#3
|1ABC72:ED79| db $0C ; duration
|1ABC73:ED7A| db $9F ; play note G3
|1ABC74:ED7B| db $18 ; duration
|1ABC75:ED7C| db $C9 ; rest
|1ABC76:ED7D| db $24 ; duration
|1ABC77:ED7E| db $A1 ; play note A3
|1ABC78:ED7F| db $0C ; duration
|1ABC79:ED80| db $9D ; play note F3
|1ABC7A:ED81| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_ED82:
|1ABC7B:ED82| db $18 ; duration
|1ABC7C:ED83| db $C9 ; rest
|1ABC7D:ED84| db $24 ; duration
|1ABC7E:ED85| db $A2 ; play note A#3
|1ABC7F:ED86| db $0C ; duration
|1ABC80:ED87| db $9F ; play note G3
|1ABC81:ED88| db $18 ; duration
|1ABC82:ED89| db $C9 ; rest
|1ABC83:ED8A| db $24 ; duration
|1ABC84:ED8B| db $A1 ; play note A3
|1ABC85:ED8C| db $0C ; duration
|1ABC86:ED8D| db $98 ; play note C3
|1ABC87:ED8E| db $18 ; duration
|1ABC88:ED8F| db $C9 ; rest
|1ABC89:ED90| db $24 ; duration
|1ABC8A:ED91| db $A2 ; play note A#3
|1ABC8B:ED92| db $0C ; duration
|1ABC8C:ED93| db $9D ; play note F3
|1ABC8D:ED94| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_ED95:
|1ABC8E:ED95| db $E0, $0A ; set instrument - strings B
|1ABC90:ED97| db $ED, $A0 ; set channel volume
|1ABC92:ED99| db $E3, $1E, $14, $14 ; enable vibrato
|1ABC96:ED9D| db $08 ; duration
|1ABC97:ED9E| db $C9 ; rest
|1ABC98:ED9F| db $48, $6D ; duration, params
|1ABC9A:EDA1| db $B7 ; play note G5
|1ABC9B:EDA2| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_EDA3:
|1ABC9C:EDA3| db $E0, $09 ; set instrument - strings A
|1ABC9E:EDA5| db $ED, $B4 ; set channel volume
|1ABCA0:EDA7| db $E3, $1E, $14, $14 ; enable vibrato
|1ABCA4:EDAB| db $0C ; duration
|1ABCA5:EDAC| db $C9 ; rest
|1ABCA6:EDAD| db $24, $7D ; duration, params
|1ABCA8:EDAF| db $96 ; play note A#2
|1ABCA9:EDB0| db $18 ; duration
|1ABCAA:EDB1| db $A2 ; play note A#3
|1ABCAB:EDB2| db $0C ; duration
|1ABCAC:EDB3| db $C9 ; rest
|1ABCAD:EDB4| db $24 ; duration
|1ABCAE:EDB5| db $96 ; play note A#2
|1ABCAF:EDB6| db $18 ; duration
|1ABCB0:EDB7| db $A2 ; play note A#3
|1ABCB1:EDB8| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_EDB9:
|1ABCB2:EDB9| db $0C ; duration
|1ABCB3:EDBA| db $C9 ; rest
|1ABCB4:EDBB| db $24 ; duration
|1ABCB5:EDBC| db $9D ; play note F3
|1ABCB6:EDBD| db $18 ; duration
|1ABCB7:EDBE| db $A2 ; play note A#3
|1ABCB8:EDBF| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_EDC0:
|1ABCB9:EDC0| db $E0, $09 ; set instrument - strings A
|1ABCBB:EDC2| db $ED, $B4 ; set channel volume
|1ABCBD:EDC4| db $E3, $1E, $14, $14 ; enable vibrato
|1ABCC1:EDC8| db $18 ; duration
|1ABCC2:EDC9| db $C9 ; rest
|1ABCC3:EDCA| db $24, $7D ; duration, params
|1ABCC5:EDCC| db $A2 ; play note A#3
|1ABCC6:EDCD| db $0C ; duration
|1ABCC7:EDCE| db $9F ; play note G3
|1ABCC8:EDCF| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_EDD0:
|1ABCC9:EDD0| db $18 ; duration
|1ABCCA:EDD1| db $C9 ; rest
|1ABCCB:EDD2| db $24 ; duration
|1ABCCC:EDD3| db $A2 ; play note A#3
|1ABCCD:EDD4| db $0C ; duration
|1ABCCE:EDD5| db $9D ; play note F3
|1ABCCF:EDD6| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_EDD7:
|1ABCD0:EDD7| db $E0, $0A ; set instrument - strings B
|1ABCD2:EDD9| db $ED, $A0 ; set channel volume
|1ABCD4:EDDB| db $E3, $1E, $14, $14 ; enable vibrato
|1ABCD8:EDDF| db $08 ; duration
|1ABCD9:EDE0| db $C9 ; rest
|1ABCDA:EDE1| db $48, $6D ; duration, params
|1ABCDC:EDE3| db $AE ; play note A#4
|1ABCDD:EDE4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_EDE5:
|1ABCDE:EDE5| db $C9 ; rest
|1ABCDF:EDE6| db $30 ; duration
|1ABCE0:EDE7| db $C9 ; rest
|1ABCE1:EDE8| db $18, $7D ; duration, params
|1ABCE3:EDEA| db $A9 ; play note F4
|1ABCE4:EDEB| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_EDEC:
|1ABCE5:EDEC| db $E0, $0A ; set instrument - strings B
|1ABCE7:EDEE| db $ED, $A0 ; set channel volume
|1ABCE9:EDF0| db $E3, $1E, $14, $14 ; enable vibrato
|1ABCED:EDF4| db $50 ; duration
|1ABCEE:EDF5| db $C9 ; rest
|1ABCEF:EDF6| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_EDF7:
|1ABCF0:EDF7| db $0C ; duration
|1ABCF1:EDF8| db $C9 ; rest
|1ABCF2:EDF9| db $24 ; duration
|1ABCF3:EDFA| db $9F ; play note G3
|1ABCF4:EDFB| db $18 ; duration
|1ABCF5:EDFC| db $A2 ; play note A#3
|1ABCF6:EDFD| db $0C ; duration
|1ABCF7:EDFE| db $C9 ; rest
|1ABCF8:EDFF| db $24 ; duration
|1ABCF9:EE00| db $9D ; play note F3
|1ABCFA:EE01| db $1A ; duration
|1ABCFB:EE02| db $A4 ; play note C4
|1ABCFC:EE03| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song07_Sub_EE04:
|1ABCFD:EE04| db $18 ; duration
|1ABCFE:EE05| db $C9 ; rest
|1ABCFF:EE06| db $24 ; duration
|1ABD00:EE07| db $A2 ; play note A#3
|1ABD01:EE08| db $0C ; duration
|1ABD02:EE09| db $9F ; play note G3
|1ABD03:EE0A| db $18 ; duration
|1ABD04:EE0B| db $C9 ; rest
|1ABD05:EE0C| db $24 ; duration
|1ABD06:EE0D| db $A4 ; play note C4
|1ABD07:EE0E| db $0E ; duration
|1ABD08:EE0F| db $A1 ; play note A3
|1ABD09:EE10| db $00 ; End

;===================================================================================================

Song08_MirrorWarp:
|1ABD0A:EE11| dw Song08_Segment0
|1ABD0C:EE13| dw $0000 ; Song end

Song08_Segment0:
|1ABD0E:EE15| dw Song08_Segment0_Track0
|1ABD10:EE17| dw Song08_Segment0_Track1
|1ABD12:EE19| dw Song08_Segment0_Track2
|1ABD14:EE1B| dw Song08_Segment0_Track3
|1ABD16:EE1D| dw Song08_Segment0_Track4
|1ABD18:EE1F| dw Song08_Segment0_Track5
|1ABD1A:EE21| dw Song08_Segment0_Track6
|1ABD1C:EE23| dw $0000

;---------------------------------------------------------------------------------------------------

Song08_Segment0_Track0:
|1ABD1E:EE25| db $FA, $19 ; set base percussion sample
|1ABD20:EE27| db $E5, $82 ; set song volume
|1ABD22:EE29| db $E6, $46, $A0 ; initiate gradual song volume change
|1ABD25:EE2C| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1ABD29:EE30| db $F7, $02, $50, $02 ; configure EDL, EFB, FIR
|1ABD2D:EE34| db $F8, $60, $64, $64 ; initiate gradual echo volume change
|1ABD31:EE38| db $E7, $19 ; set song tempo
|1ABD33:EE3A| db $ED, $C8 ; set channel volume
|1ABD35:EE3C| db $E3, $00, $0A, $64 ; enable vibrato
|1ABD39:EE40| db $E0, $06 ; set instrument - wobbly lead
|1ABD3B:EE42| db $E1, $14 ; set panning - leaning left
|1ABD3D:EE44| db $E2, $C0, $00 ; initiate gradual panning change
|1ABD40:EE47| db $60, $7D ; duration, params
|1ABD42:EE49| db $98 ; play note C3
|1ABD43:EE4A| db $F9, $30, $18, $A9 ; slide to note
|1ABD47:EE4E| db $E6, $60, $64 ; initiate gradual song volume change
|1ABD4A:EE51| db $F8, $60, $00, $00 ; initiate gradual echo volume change
|1ABD4E:EE55| db $C8 ; sustain current note
|1ABD4F:EE56| db $F9, $18, $18, $98 ; slide to note
|1ABD53:EE5A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song08_Segment0_Track1:
|1ABD54:EE5B| db $ED, $C8 ; set channel volume
|1ABD56:EE5D| db $E3, $00, $0A, $64 ; enable vibrato
|1ABD5A:EE61| db $E0, $06 ; set instrument - wobbly lead
|1ABD5C:EE63| db $E1, $00 ; set panning - leaning right
|1ABD5E:EE65| db $E2, $C0, $14 ; initiate gradual panning change
|1ABD61:EE68| db $60, $7D ; duration, params
|1ABD63:EE6A| db $93 ; play note G2
|1ABD64:EE6B| db $F9, $32, $18, $A4 ; slide to note
|1ABD68:EE6F| db $C8 ; sustain current note
|1ABD69:EE70| db $F9, $18, $18, $93 ; slide to note

;---------------------------------------------------------------------------------------------------

Song08_Segment0_Track2:
|1ABD6D:EE74| db $ED, $C8 ; set channel volume
|1ABD6F:EE76| db $E0, $0F ; set instrument - harp
|1ABD71:EE78| db $E1, $14 ; set panning - leaning left
|1ABD73:EE7A| db $E2, $60, $00 ; initiate gradual panning change
|1ABD76:EE7D| db $06, $7D ; duration, params
|1ABD78:EE7F| db $BE ; play note D6
|1ABD79:EE80| db $12, $7B ; duration, params
|1ABD7B:EE82| db $BE ; play note D6
|1ABD7C:EE83| db $06, $7D ; duration, params
|1ABD7E:EE85| db $BE ; play note D6
|1ABD7F:EE86| db $12, $7B ; duration, params
|1ABD81:EE88| db $BE ; play note D6
|1ABD82:EE89| db $06, $7D ; duration, params
|1ABD84:EE8B| db $BE ; play note D6
|1ABD85:EE8C| db $12, $7B ; duration, params
|1ABD87:EE8E| db $BE ; play note D6
|1ABD88:EE8F| db $06, $7D ; duration, params
|1ABD8A:EE91| db $BE ; play note D6
|1ABD8B:EE92| db $12, $7B ; duration, params
|1ABD8D:EE94| db $BE ; play note D6
|1ABD8E:EE95| db $E2, $60, $14 ; initiate gradual panning change
|1ABD91:EE98| db $06, $7D ; duration, params
|1ABD93:EE9A| db $BE ; play note D6
|1ABD94:EE9B| db $12, $7B ; duration, params
|1ABD96:EE9D| db $BE ; play note D6
|1ABD97:EE9E| db $06, $7D ; duration, params
|1ABD99:EEA0| db $BE ; play note D6
|1ABD9A:EEA1| db $12, $7B ; duration, params
|1ABD9C:EEA3| db $BE ; play note D6
|1ABD9D:EEA4| db $06, $7D ; duration, params
|1ABD9F:EEA6| db $BE ; play note D6
|1ABDA0:EEA7| db $12, $7B ; duration, params
|1ABDA2:EEA9| db $BE ; play note D6
|1ABDA3:EEAA| db $06, $7D ; duration, params
|1ABDA5:EEAC| db $BE ; play note D6
|1ABDA6:EEAD| db $12, $7B ; duration, params
|1ABDA8:EEAF| db $BE ; play note D6

;---------------------------------------------------------------------------------------------------

Song08_Segment0_Track3:
|1ABDA9:EEB0| db $ED, $FA ; set channel volume
|1ABDAB:EEB2| db $E0, $0A ; set instrument - strings B
|1ABDAD:EEB4| db $E1, $00 ; set panning - leaning right
|1ABDAF:EEB6| db $30, $7D ; duration, params
|1ABDB1:EEB8| db $97 ; play note B2
|1ABDB2:EEB9| db $F9, $00, $30, $9A ; slide to note
|1ABDB6:EEBD| db $C8 ; sustain current note
|1ABDB7:EEBE| db $F9, $00, $30, $97 ; slide to note
|1ABDBB:EEC2| db $97 ; play note B2
|1ABDBC:EEC3| db $F9, $00, $30, $9A ; slide to note
|1ABDC0:EEC7| db $C8 ; sustain current note
|1ABDC1:EEC8| db $F9, $00, $30, $97 ; slide to note

;---------------------------------------------------------------------------------------------------

Song08_Segment0_Track4:
|1ABDC5:EECC| db $ED, $C8 ; set channel volume
|1ABDC7:EECE| db $E0, $01 ; set instrument - rain
|1ABDC9:EED0| db $E1, $0F ; set panning - leaning left
|1ABDCB:EED2| db $18, $7D ; duration, params
|1ABDCD:EED4| db $93 ; play note G2
|1ABDCE:EED5| db $F9, $00, $18, $98 ; slide to note
|1ABDD2:EED9| db $E1, $05 ; set panning - leaning right
|1ABDD4:EEDB| db $95 ; play note A2
|1ABDD5:EEDC| db $F9, $00, $20, $B0 ; slide to note
|1ABDD9:EEE0| db $E1, $0F ; set panning - leaning left
|1ABDDB:EEE2| db $97 ; play note B2
|1ABDDC:EEE3| db $F9, $00, $18, $BC ; slide to note
|1ABDE0:EEE7| db $E1, $05 ; set panning - leaning right
|1ABDE2:EEE9| db $99 ; play note C#3
|1ABDE3:EEEA| db $F9, $00, $18, $C3 ; slide to note
|1ABDE7:EEEE| db $E1, $0F ; set panning - leaning left
|1ABDE9:EEF0| db $98 ; play note C3
|1ABDEA:EEF1| db $F9, $00, $18, $BC ; slide to note
|1ABDEE:EEF5| db $E1, $05 ; set panning - leaning right
|1ABDF0:EEF7| db $96 ; play note A#2
|1ABDF1:EEF8| db $F9, $00, $18, $B7 ; slide to note
|1ABDF5:EEFC| db $E1, $0F ; set panning - leaning left
|1ABDF7:EEFE| db $94 ; play note G#2
|1ABDF8:EEFF| db $F9, $00, $18, $AB ; slide to note
|1ABDFC:EF03| db $E1, $05 ; set panning - leaning right
|1ABDFE:EF05| db $92 ; play note F#2
|1ABDFF:EF06| db $F9, $00, $18, $9F ; slide to note

;---------------------------------------------------------------------------------------------------

Song08_Segment0_Track5:
|1ABE03:EF0A| db $ED, $C8 ; set channel volume
|1ABE05:EF0C| db $E0, $0F ; set instrument - harp
|1ABE07:EF0E| db $E1, $00 ; set panning - leaning right
|1ABE09:EF10| db $E2, $30, $14 ; initiate gradual panning change
|1ABE0C:EF13| db $06, $7D ; duration, params
|1ABE0E:EF15| db $B4 ; play note E5
|1ABE0F:EF16| db $B9 ; play note A5
|1ABE10:EF17| db $AB ; play note G4
|1ABE11:EF18| db $BE ; play note D6
|1ABE12:EF19| db $BC ; play note C6
|1ABE13:EF1A| db $C0 ; play note E6
|1ABE14:EF1B| db $BE ; play note D6
|1ABE15:EF1C| db $BC ; play note C6
|1ABE16:EF1D| db $E2, $30, $00 ; initiate gradual panning change
|1ABE19:EF20| db $B9 ; play note A5
|1ABE1A:EF21| db $B7 ; play note G5
|1ABE1B:EF22| db $BB ; play note B5
|1ABE1C:EF23| db $B9 ; play note A5
|1ABE1D:EF24| db $B7 ; play note G5
|1ABE1E:EF25| db $B2 ; play note D5
|1ABE1F:EF26| db $B0 ; play note C5
|1ABE20:EF27| db $AD ; play note A4
|1ABE21:EF28| db $E2, $30, $14 ; initiate gradual panning change
|1ABE24:EF2B| db $AB ; play note G4
|1ABE25:EF2C| db $A8 ; play note E4
|1ABE26:EF2D| db $AD ; play note A4
|1ABE27:EF2E| db $A8 ; play note E4
|1ABE28:EF2F| db $A6 ; play note D4
|1ABE29:EF30| db $A6 ; play note D4
|1ABE2A:EF31| db $A4 ; play note C4
|1ABE2B:EF32| db $A1 ; play note A3
|1ABE2C:EF33| db $E2, $30, $00 ; initiate gradual panning change
|1ABE2F:EF36| db $9F ; play note G3
|1ABE30:EF37| db $9C ; play note E3
|1ABE31:EF38| db $9A ; play note D3
|1ABE32:EF39| db $9E ; play note F#3
|1ABE33:EF3A| db $9B ; play note D#3
|1ABE34:EF3B| db $97 ; play note B2
|1ABE35:EF3C| db $96 ; play note A#2
|1ABE36:EF3D| db $94 ; play note G#2

;---------------------------------------------------------------------------------------------------

Song08_Segment0_Track6:
|1ABE37:EF3E| db $ED, $C8 ; set channel volume
|1ABE39:EF40| db $E0, $09 ; set instrument - strings A
|1ABE3B:EF42| db $18, $7D ; duration, params
|1ABE3D:EF44| db $AB ; play note G4
|1ABE3E:EF45| db $F9, $00, $18, $98 ; slide to note
|1ABE42:EF49| db $AB ; play note G4
|1ABE43:EF4A| db $F9, $00, $20, $98 ; slide to note
|1ABE47:EF4E| db $AB ; play note G4
|1ABE48:EF4F| db $F9, $00, $18, $98 ; slide to note
|1ABE4C:EF53| db $AB ; play note G4
|1ABE4D:EF54| db $F9, $00, $18, $98 ; slide to note
|1ABE51:EF58| db $AB ; play note G4
|1ABE52:EF59| db $F9, $00, $18, $98 ; slide to note
|1ABE56:EF5D| db $AB ; play note G4
|1ABE57:EF5E| db $F9, $00, $18, $98 ; slide to note
|1ABE5B:EF62| db $AB ; play note G4
|1ABE5C:EF63| db $F9, $00, $18, $98 ; slide to note
|1ABE60:EF67| db $AB ; play note G4
|1ABE61:EF68| db $F9, $00, $18, $98 ; slide to note
|1ABE65:EF6C| db $00 ; End

;===================================================================================================

Song09_DarkWorld:
|1ABE66:EF6D| dw Song09_Segment0

Song09_Loop:
|1ABE68:EF6F| dw Song09_Segment1
|1ABE6A:EF71| dw Song09_Segment2
|1ABE6C:EF73| dw Song09_Segment3
|1ABE6E:EF75| dw Song09_Segment4
|1ABE70:EF77| dw Song09_Segment5
|1ABE72:EF79| dw Song09_Segment6
|1ABE74:EF7B| dw Song09_Segment7
|1ABE76:EF7D| dw $00FF, Song09_Loop ; Loop point
|1ABE7A:EF81| dw $0000

Song09_Segment1:
|1ABE7C:EF83| dw Song09_Segment1_Track0
|1ABE7E:EF85| dw Song09_Segment1_Track1
|1ABE80:EF87| dw Song09_Segment1_Track2
|1ABE82:EF89| dw Song09_Segment1_Track3
|1ABE84:EF8B| dw Song09_Segment1_Track4
|1ABE86:EF8D| dw Song09_Segment1_Track5
|1ABE88:EF8F| dw Song09_Segment1_Track6
|1ABE8A:EF91| dw Song09_Segment1_Track7

Song09_Segment3:
|1ABE8C:EF93| dw Song09_Segment3_Track0
|1ABE8E:EF95| dw Song09_Segment3_Track1
|1ABE90:EF97| dw Song09_Segment3_Track2
|1ABE92:EF99| dw Song09_Segment3_Track3
|1ABE94:EF9B| dw Song09_Segment3_Track4
|1ABE96:EF9D| dw Song09_Segment3_Track5
|1ABE98:EF9F| dw $0000
|1ABE9A:EFA1| dw Song09_Segment3_Track7

Song09_Segment4:
|1ABE9C:EFA3| dw Song09_Segment4_Track0
|1ABE9E:EFA5| dw Song09_Segment4_Track1
|1ABEA0:EFA7| dw Song09_Segment4_Track2
|1ABEA2:EFA9| dw Song09_Segment4_Track3
|1ABEA4:EFAB| dw Song09_Segment4_Track4
|1ABEA6:EFAD| dw Song09_Segment4_Track5
|1ABEA8:EFAF| dw Song09_Segment4_Track6
|1ABEAA:EFB1| dw Song09_Segment4_Track7

Song09_Segment5:
|1ABEAC:EFB3| dw Song09_Segment5_Track0
|1ABEAE:EFB5| dw Song09_Segment5_Track1
|1ABEB0:EFB7| dw Song09_Segment5_Track2
|1ABEB2:EFB9| dw Song09_Segment5_Track3
|1ABEB4:EFBB| dw Song09_Segment5_Track4
|1ABEB6:EFBD| dw $0000
|1ABEB8:EFBF| dw $0000
|1ABEBA:EFC1| dw Song09_Segment5_Track7

Song09_Segment0:
|1ABEBC:EFC3| dw Song09_Segment0_Track0
|1ABEBE:EFC5| dw Song09_Segment0_Track1
|1ABEC0:EFC7| dw Song09_Segment0_Track2
|1ABEC2:EFC9| dw Song09_Segment0_Track3
|1ABEC4:EFCB| dw Song09_Segment0_Track4
|1ABEC6:EFCD| dw Song09_Segment0_Track5
|1ABEC8:EFCF| dw $0000
|1ABECA:EFD1| dw $0000

Song09_Segment2:
|1ABECC:EFD3| dw Song09_Segment2_Track0
|1ABECE:EFD5| dw Song09_Segment2_Track1
|1ABED0:EFD7| dw Song09_Segment2_Track2
|1ABED2:EFD9| dw Song09_Segment2_Track3
|1ABED4:EFDB| dw Song09_Segment2_Track4
|1ABED6:EFDD| dw Song09_Segment2_Track5
|1ABED8:EFDF| dw Song09_Segment2_Track6
|1ABEDA:EFE1| dw Song09_Segment2_Track7

Song09_Segment6:
|1ABEDC:EFE3| dw Song09_Segment6_Track0
|1ABEDE:EFE5| dw Song09_Segment6_Track1
|1ABEE0:EFE7| dw Song09_Segment6_Track2
|1ABEE2:EFE9| dw Song09_Segment6_Track3
|1ABEE4:EFEB| dw Song09_Segment6_Track4
|1ABEE6:EFED| dw Song09_Segment6_Track5
|1ABEE8:EFEF| dw $0000
|1ABEEA:EFF1| dw Song09_Segment6_Track7

Song09_Segment7:
|1ABEEC:EFF3| dw Song09_Segment7_Track0
|1ABEEE:EFF5| dw Song09_Segment7_Track1
|1ABEF0:EFF7| dw Song09_Segment7_Track2
|1ABEF2:EFF9| dw Song09_Segment7_Track3
|1ABEF4:EFFB| dw Song09_Segment7_Track4
|1ABEF6:EFFD| dw Song09_Segment7_Track5
|1ABEF8:EFFF| dw $0000
|1ABEFA:F001| dw $0000

;---------------------------------------------------------------------------------------------------

Song09_Segment1_Track0:
|1ABEFC:F003| db $EF : dw Song09_Sub_F556 : db $01 ; call segment subroutine
|1ABF00:F007| db $EF : dw Song09_Sub_F568 : db $01 ; call segment subroutine
|1ABF04:F00B| db $54 ; duration
|1ABF05:F00C| db $C9 ; rest
|1ABF06:F00D| db $0C ; duration
|1ABF07:F00E| db $A4 ; play note C4
|1ABF08:F00F| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Segment1_Track1:
|1ABF09:F010| db $E0, $14 ; set instrument - snare B
|1ABF0B:F012| db $ED, $A0 ; set channel volume
|1ABF0D:F014| db $EF : dw Song09_Sub_F57F : db $06 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment1_Track2:
|1ABF11:F018| db $EF : dw Song09_Sub_F598 : db $01 ; call segment subroutine
|1ABF15:F01C| db $18, $3D ; duration, params
|1ABF17:F01E| db $91 ; play note F2
|1ABF18:F01F| db $91 ; play note F2
|1ABF19:F020| db $91 ; play note F2
|1ABF1A:F021| db $0C ; duration
|1ABF1B:F022| db $C9 ; rest
|1ABF1C:F023| db $91 ; play note F2
|1ABF1D:F024| db $18 ; duration
|1ABF1E:F025| db $94 ; play note G#2
|1ABF1F:F026| db $94 ; play note G#2
|1ABF20:F027| db $94 ; play note G#2
|1ABF21:F028| db $0C ; duration
|1ABF22:F029| db $C9 ; rest
|1ABF23:F02A| db $0C, $5D ; duration, params
|1ABF25:F02C| db $94 ; play note G#2
|1ABF26:F02D| db $18, $3D ; duration, params
|1ABF28:F02F| db $96 ; play note A#2
|1ABF29:F030| db $96 ; play note A#2
|1ABF2A:F031| db $96 ; play note A#2
|1ABF2B:F032| db $0C ; duration
|1ABF2C:F033| db $C9 ; rest
|1ABF2D:F034| db $96 ; play note A#2
|1ABF2E:F035| db $EF : dw Song09_Sub_F5A7 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment1_Track3:
|1ABF32:F039| db $EF : dw Song09_Sub_F5B9 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment1_Track4:
|1ABF36:F03D| db $EF : dw Song09_Sub_F616 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment1_Track5:
|1ABF3A:F041| db $EF : dw Song09_Sub_F673 : db $01 ; call segment subroutine
|1ABF3E:F045| db $54 ; duration
|1ABF3F:F046| db $C9 ; rest
|1ABF40:F047| db $0C ; duration
|1ABF41:F048| db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song09_Segment1_Track6:
|1ABF42:F049| db $E0, $09 ; set instrument - strings A
|1ABF44:F04B| db $ED, $78 ; set channel volume
|1ABF46:F04D| db $E1, $08 ; set panning - leaning right
|1ABF48:F04F| db $60 ; duration
|1ABF49:F050| db $C9 ; rest
|1ABF4A:F051| db $C9 ; rest
|1ABF4B:F052| db $C9 ; rest
|1ABF4C:F053| db $C9 ; rest
|1ABF4D:F054| db $54 ; duration
|1ABF4E:F055| db $C9 ; rest
|1ABF4F:F056| db $06, $6D ; duration, params
|1ABF51:F058| db $B0 ; play note C5
|1ABF52:F059| db $B7 ; play note G5
|1ABF53:F05A| db $54 ; duration
|1ABF54:F05B| db $B2 ; play note D5
|1ABF55:F05C| db $06 ; duration
|1ABF56:F05D| db $AE ; play note A#4
|1ABF57:F05E| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song09_Segment1_Track7:
|1ABF58:F05F| db $EF : dw Song09_Sub_F69B : db $01 ; call segment subroutine
|1ABF5C:F063| db $EF : dw Song09_Sub_F568 : db $01 ; call segment subroutine
|1ABF60:F067| db $58 ; duration
|1ABF61:F068| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song09_Segment3_Track0:
|1ABF62:F069| db $E0, $0A ; set instrument - strings B
|1ABF64:F06B| db $ED, $C8 ; set channel volume
|1ABF66:F06D| db $E1, $0E ; set panning - leaning left
|1ABF68:F06F| db $E3, $18, $1C, $18 ; enable vibrato
|1ABF6C:F073| db $48, $6D ; duration, params
|1ABF6E:F075| db $AE ; play note A#4
|1ABF6F:F076| db $0C ; duration
|1ABF70:F077| db $AB ; play note G4
|1ABF71:F078| db $AE ; play note A#4
|1ABF72:F079| db $EF : dw Song09_Sub_F6AF : db $01 ; call segment subroutine
|1ABF76:F07D| db $06 ; duration
|1ABF77:F07E| db $A9 ; play note F4
|1ABF78:F07F| db $A7 ; play note D#4
|1ABF79:F080| db $48 ; duration
|1ABF7A:F081| db $A6 ; play note D4
|1ABF7B:F082| db $06 ; duration
|1ABF7C:F083| db $AB ; play note G4
|1ABF7D:F084| db $AD ; play note A4
|1ABF7E:F085| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Segment3_Track1:
|1ABF7F:F086| db $E0, $14 ; set instrument - snare B
|1ABF81:F088| db $ED, $A0 ; set channel volume
|1ABF83:F08A| db $EF : dw Song09_Sub_F6BD : db $04 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment3_Track2:
|1ABF87:F08E| db $EF : dw Song09_Sub_F6D5 : db $01 ; call segment subroutine
|1ABF8B:F092| db $0C ; duration
|1ABF8C:F093| db $94 ; play note G#2
|1ABF8D:F094| db $18 ; duration
|1ABF8E:F095| db $94 ; play note G#2
|1ABF8F:F096| db $0C ; duration
|1ABF90:F097| db $94 ; play note G#2
|1ABF91:F098| db $94 ; play note G#2
|1ABF92:F099| db $94 ; play note G#2
|1ABF93:F09A| db $08 ; duration
|1ABF94:F09B| db $94 ; play note G#2
|1ABF95:F09C| db $94 ; play note G#2
|1ABF96:F09D| db $94 ; play note G#2
|1ABF97:F09E| db $0C ; duration
|1ABF98:F09F| db $96 ; play note A#2
|1ABF99:F0A0| db $18 ; duration
|1ABF9A:F0A1| db $96 ; play note A#2
|1ABF9B:F0A2| db $0C ; duration
|1ABF9C:F0A3| db $96 ; play note A#2
|1ABF9D:F0A4| db $96 ; play note A#2
|1ABF9E:F0A5| db $96 ; play note A#2
|1ABF9F:F0A6| db $08 ; duration
|1ABFA0:F0A7| db $96 ; play note A#2
|1ABFA1:F0A8| db $96 ; play note A#2
|1ABFA2:F0A9| db $96 ; play note A#2

;---------------------------------------------------------------------------------------------------

Song09_Segment3_Track3:
|1ABFA3:F0AA| db $E0, $11 ; set instrument - trumpet
|1ABFA5:F0AC| db $ED, $C8 ; set channel volume
|1ABFA7:F0AE| db $E1, $07 ; set panning - leaning right
|1ABFA9:F0B0| db $0C ; duration
|1ABFAA:F0B1| db $C9 ; rest
|1ABFAB:F0B2| db $0C, $3D ; duration, params
|1ABFAD:F0B4| db $A2 ; play note A#3
|1ABFAE:F0B5| db $A2 ; play note A#3
|1ABFAF:F0B6| db $06, $3B ; duration, params
|1ABFB1:F0B8| db $A2 ; play note A#3
|1ABFB2:F0B9| db $06, $5B ; duration, params
|1ABFB4:F0BB| db $A2 ; play note A#3
|1ABFB5:F0BC| db $0C ; duration
|1ABFB6:F0BD| db $A2 ; play note A#3
|1ABFB7:F0BE| db $A2 ; play note A#3
|1ABFB8:F0BF| db $08 ; duration
|1ABFB9:F0C0| db $A2 ; play note A#3
|1ABFBA:F0C1| db $A2 ; play note A#3
|1ABFBB:F0C2| db $A2 ; play note A#3
|1ABFBC:F0C3| db $0C ; duration
|1ABFBD:F0C4| db $C9 ; rest
|1ABFBE:F0C5| db $0C, $3D ; duration, params
|1ABFC0:F0C7| db $A4 ; play note C4
|1ABFC1:F0C8| db $A4 ; play note C4
|1ABFC2:F0C9| db $06, $3B ; duration, params
|1ABFC4:F0CB| db $A4 ; play note C4
|1ABFC5:F0CC| db $06, $3D ; duration, params
|1ABFC7:F0CE| db $A4 ; play note C4
|1ABFC8:F0CF| db $0C ; duration
|1ABFC9:F0D0| db $A4 ; play note C4
|1ABFCA:F0D1| db $A4 ; play note C4
|1ABFCB:F0D2| db $08 ; duration
|1ABFCC:F0D3| db $A4 ; play note C4
|1ABFCD:F0D4| db $A4 ; play note C4
|1ABFCE:F0D5| db $A4 ; play note C4
|1ABFCF:F0D6| db $0C ; duration
|1ABFD0:F0D7| db $C9 ; rest
|1ABFD1:F0D8| db $A4 ; play note C4
|1ABFD2:F0D9| db $A4 ; play note C4
|1ABFD3:F0DA| db $06, $3B ; duration, params
|1ABFD5:F0DC| db $A4 ; play note C4
|1ABFD6:F0DD| db $06, $5B ; duration, params
|1ABFD8:F0DF| db $A4 ; play note C4
|1ABFD9:F0E0| db $0C ; duration
|1ABFDA:F0E1| db $A4 ; play note C4
|1ABFDB:F0E2| db $A4 ; play note C4
|1ABFDC:F0E3| db $08 ; duration
|1ABFDD:F0E4| db $A4 ; play note C4
|1ABFDE:F0E5| db $A4 ; play note C4
|1ABFDF:F0E6| db $A4 ; play note C4
|1ABFE0:F0E7| db $0C ; duration
|1ABFE1:F0E8| db $C9 ; rest
|1ABFE2:F0E9| db $0C, $3D ; duration, params
|1ABFE4:F0EB| db $A6 ; play note D4
|1ABFE5:F0EC| db $A6 ; play note D4
|1ABFE6:F0ED| db $06, $3B ; duration, params
|1ABFE8:F0EF| db $A6 ; play note D4
|1ABFE9:F0F0| db $06, $3D ; duration, params
|1ABFEB:F0F2| db $A6 ; play note D4
|1ABFEC:F0F3| db $0C ; duration
|1ABFED:F0F4| db $A6 ; play note D4
|1ABFEE:F0F5| db $A6 ; play note D4
|1ABFEF:F0F6| db $08 ; duration
|1ABFF0:F0F7| db $A6 ; play note D4
|1ABFF1:F0F8| db $A6 ; play note D4
|1ABFF2:F0F9| db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song09_Segment3_Track4:
|1ABFF3:F0FA| db $EF : dw Song09_Sub_F6F3 : db $01 ; call segment subroutine
|1ABFF7:F0FE| db $0C ; duration
|1ABFF8:F0FF| db $C9 ; rest
|1ABFF9:F100| db $A0 ; play note G#3
|1ABFFA:F101| db $A0 ; play note G#3
|1ABFFB:F102| db $06, $3B ; duration, params
|1ABFFD:F104| db $A0 ; play note G#3
|1ABFFE:F105| db $06, $5B ; duration, params
|1AC000:F107| db $A0 ; play note G#3
|1AC001:F108| db $0C ; duration
|1AC002:F109| db $A0 ; play note G#3
|1AC003:F10A| db $A0 ; play note G#3
|1AC004:F10B| db $08 ; duration
|1AC005:F10C| db $A0 ; play note G#3
|1AC006:F10D| db $A0 ; play note G#3
|1AC007:F10E| db $A0 ; play note G#3
|1AC008:F10F| db $0C ; duration
|1AC009:F110| db $C9 ; rest
|1AC00A:F111| db $0C, $3D ; duration, params
|1AC00C:F113| db $9D ; play note F3
|1AC00D:F114| db $9D ; play note F3
|1AC00E:F115| db $06, $3B ; duration, params
|1AC010:F117| db $9D ; play note F3
|1AC011:F118| db $06, $3D ; duration, params
|1AC013:F11A| db $9D ; play note F3
|1AC014:F11B| db $0C ; duration
|1AC015:F11C| db $9D ; play note F3
|1AC016:F11D| db $9D ; play note F3
|1AC017:F11E| db $08 ; duration
|1AC018:F11F| db $9D ; play note F3
|1AC019:F120| db $9D ; play note F3
|1AC01A:F121| db $9D ; play note F3

;---------------------------------------------------------------------------------------------------

Song09_Segment3_Track5:
|1AC01B:F122| db $E0, $16 ; set instrument - flute
|1AC01D:F124| db $ED, $B4 ; set channel volume
|1AC01F:F126| db $E1, $08 ; set panning - leaning right
|1AC021:F128| db $E3, $18, $1C, $18 ; enable vibrato
|1AC025:F12C| db $48, $6D ; duration, params
|1AC027:F12E| db $AE ; play note A#4
|1AC028:F12F| db $0C ; duration
|1AC029:F130| db $AB ; play note G4
|1AC02A:F131| db $AE ; play note A#4
|1AC02B:F132| db $EF : dw Song09_Sub_F6AF : db $01 ; call segment subroutine
|1AC02F:F136| db $06 ; duration
|1AC030:F137| db $A9 ; play note F4
|1AC031:F138| db $A7 ; play note D#4
|1AC032:F139| db $48 ; duration
|1AC033:F13A| db $A6 ; play note D4
|1AC034:F13B| db $06 ; duration
|1AC035:F13C| db $AB ; play note G4
|1AC036:F13D| db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song09_Segment3_Track7:
|1AC037:F13E| db $02 ; duration
|1AC038:F13F| db $C9 ; rest
|1AC039:F140| db $06, $6D ; duration, params
|1AC03B:F142| db $AD ; play note A4
|1AC03C:F143| db $48 ; duration
|1AC03D:F144| db $AE ; play note A#4
|1AC03E:F145| db $0C ; duration
|1AC03F:F146| db $AB ; play note G4
|1AC040:F147| db $AE ; play note A#4
|1AC041:F148| db $EF : dw Song09_Sub_F6AF : db $01 ; call segment subroutine
|1AC045:F14C| db $06 ; duration
|1AC046:F14D| db $A9 ; play note F4
|1AC047:F14E| db $A7 ; play note D#4
|1AC048:F14F| db $48 ; duration
|1AC049:F150| db $A6 ; play note D4
|1AC04A:F151| db $04 ; duration
|1AC04B:F152| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song09_Segment4_Track0:
|1AC04C:F153| db $E0, $0A ; set instrument - strings B
|1AC04E:F155| db $ED, $C8 ; set channel volume
|1AC050:F157| db $E1, $0E ; set panning - leaning left
|1AC052:F159| db $E3, $18, $1C, $18 ; enable vibrato
|1AC056:F15D| db $EF : dw Song09_Sub_F720 : db $01 ; call segment subroutine
|1AC05A:F161| db $C9 ; rest
|1AC05B:F162| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Segment4_Track1:
|1AC05C:F163| db $E0, $14 ; set instrument - snare B
|1AC05E:F165| db $ED, $A0 ; set channel volume
|1AC060:F167| db $EF : dw Song09_Sub_F6BD : db $06 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment4_Track2:
|1AC064:F16B| db $EF : dw Song09_Sub_F6D5 : db $01 ; call segment subroutine
|1AC068:F16F| db $0C ; duration
|1AC069:F170| db $90 ; play note E2
|1AC06A:F171| db $18 ; duration
|1AC06B:F172| db $90 ; play note E2
|1AC06C:F173| db $0C ; duration
|1AC06D:F174| db $90 ; play note E2
|1AC06E:F175| db $90 ; play note E2
|1AC06F:F176| db $90 ; play note E2
|1AC070:F177| db $08 ; duration
|1AC071:F178| db $90 ; play note E2
|1AC072:F179| db $90 ; play note E2
|1AC073:F17A| db $90 ; play note E2
|1AC074:F17B| db $0C ; duration
|1AC075:F17C| db $8E ; play note D2
|1AC076:F17D| db $18 ; duration
|1AC077:F17E| db $8E ; play note D2
|1AC078:F17F| db $0C ; duration
|1AC079:F180| db $8E ; play note D2
|1AC07A:F181| db $8E ; play note D2
|1AC07B:F182| db $8E ; play note D2
|1AC07C:F183| db $08 ; duration
|1AC07D:F184| db $8E ; play note D2
|1AC07E:F185| db $8E ; play note D2
|1AC07F:F186| db $8E ; play note D2
|1AC080:F187| db $EF : dw Song09_Sub_F738 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment4_Track3:
|1AC084:F18B| db $E0, $11 ; set instrument - trumpet
|1AC086:F18D| db $ED, $C8 ; set channel volume
|1AC088:F18F| db $E1, $07 ; set panning - leaning right
|1AC08A:F191| db $0C ; duration
|1AC08B:F192| db $C9 ; rest
|1AC08C:F193| db $0C, $3D ; duration, params
|1AC08E:F195| db $A2 ; play note A#3
|1AC08F:F196| db $A2 ; play note A#3
|1AC090:F197| db $06, $3B ; duration, params
|1AC092:F199| db $A2 ; play note A#3
|1AC093:F19A| db $06, $5B ; duration, params
|1AC095:F19C| db $A2 ; play note A#3
|1AC096:F19D| db $0C ; duration
|1AC097:F19E| db $A2 ; play note A#3
|1AC098:F19F| db $A2 ; play note A#3
|1AC099:F1A0| db $08 ; duration
|1AC09A:F1A1| db $A2 ; play note A#3
|1AC09B:F1A2| db $A2 ; play note A#3
|1AC09C:F1A3| db $A2 ; play note A#3
|1AC09D:F1A4| db $0C ; duration
|1AC09E:F1A5| db $C9 ; rest
|1AC09F:F1A6| db $0C, $3D ; duration, params
|1AC0A1:F1A8| db $A4 ; play note C4
|1AC0A2:F1A9| db $A4 ; play note C4
|1AC0A3:F1AA| db $06, $3B ; duration, params
|1AC0A5:F1AC| db $A4 ; play note C4
|1AC0A6:F1AD| db $06, $3D ; duration, params
|1AC0A8:F1AF| db $A4 ; play note C4
|1AC0A9:F1B0| db $0C ; duration
|1AC0AA:F1B1| db $A4 ; play note C4
|1AC0AB:F1B2| db $A4 ; play note C4
|1AC0AC:F1B3| db $08 ; duration
|1AC0AD:F1B4| db $A4 ; play note C4
|1AC0AE:F1B5| db $A4 ; play note C4
|1AC0AF:F1B6| db $A4 ; play note C4
|1AC0B0:F1B7| db $0C ; duration
|1AC0B1:F1B8| db $C9 ; rest
|1AC0B2:F1B9| db $A5 ; play note C#4
|1AC0B3:F1BA| db $A5 ; play note C#4
|1AC0B4:F1BB| db $06, $3B ; duration, params
|1AC0B6:F1BD| db $A5 ; play note C#4
|1AC0B7:F1BE| db $06, $5B ; duration, params
|1AC0B9:F1C0| db $A5 ; play note C#4
|1AC0BA:F1C1| db $0C ; duration
|1AC0BB:F1C2| db $A5 ; play note C#4
|1AC0BC:F1C3| db $A5 ; play note C#4
|1AC0BD:F1C4| db $08 ; duration
|1AC0BE:F1C5| db $A5 ; play note C#4
|1AC0BF:F1C6| db $A5 ; play note C#4
|1AC0C0:F1C7| db $A5 ; play note C#4
|1AC0C1:F1C8| db $0C ; duration
|1AC0C2:F1C9| db $C9 ; rest
|1AC0C3:F1CA| db $0C, $3D ; duration, params
|1AC0C5:F1CC| db $A1 ; play note A3
|1AC0C6:F1CD| db $A1 ; play note A3
|1AC0C7:F1CE| db $06, $3B ; duration, params
|1AC0C9:F1D0| db $A1 ; play note A3
|1AC0CA:F1D1| db $06, $3D ; duration, params
|1AC0CC:F1D3| db $A1 ; play note A3
|1AC0CD:F1D4| db $0C ; duration
|1AC0CE:F1D5| db $A1 ; play note A3
|1AC0CF:F1D6| db $A1 ; play note A3
|1AC0D0:F1D7| db $08 ; duration
|1AC0D1:F1D8| db $A1 ; play note A3
|1AC0D2:F1D9| db $A1 ; play note A3
|1AC0D3:F1DA| db $A1 ; play note A3
|1AC0D4:F1DB| db $0C ; duration
|1AC0D5:F1DC| db $C9 ; rest
|1AC0D6:F1DD| db $A2 ; play note A#3
|1AC0D7:F1DE| db $A2 ; play note A#3
|1AC0D8:F1DF| db $06, $3B ; duration, params
|1AC0DA:F1E1| db $A2 ; play note A#3
|1AC0DB:F1E2| db $06, $3D ; duration, params
|1AC0DD:F1E4| db $A2 ; play note A#3
|1AC0DE:F1E5| db $0C ; duration
|1AC0DF:F1E6| db $A4 ; play note C4
|1AC0E0:F1E7| db $24 ; duration
|1AC0E1:F1E8| db $A4 ; play note C4
|1AC0E2:F1E9| db $0C ; duration
|1AC0E3:F1EA| db $C9 ; rest
|1AC0E4:F1EB| db $A6 ; play note D4
|1AC0E5:F1EC| db $A6 ; play note D4
|1AC0E6:F1ED| db $06, $3B ; duration, params
|1AC0E8:F1EF| db $A6 ; play note D4
|1AC0E9:F1F0| db $06, $3D ; duration, params
|1AC0EB:F1F2| db $A6 ; play note D4
|1AC0EC:F1F3| db $0C ; duration
|1AC0ED:F1F4| db $A4 ; play note C4
|1AC0EE:F1F5| db $24 ; duration
|1AC0EF:F1F6| db $A4 ; play note C4

;---------------------------------------------------------------------------------------------------

Song09_Segment4_Track4:
|1AC0F0:F1F7| db $EF : dw Song09_Sub_F6F3 : db $01 ; call segment subroutine
|1AC0F4:F1FB| db $0C ; duration
|1AC0F5:F1FC| db $C9 ; rest
|1AC0F6:F1FD| db $9F ; play note G3
|1AC0F7:F1FE| db $9F ; play note G3
|1AC0F8:F1FF| db $06, $3B ; duration, params
|1AC0FA:F201| db $9F ; play note G3
|1AC0FB:F202| db $06, $5B ; duration, params
|1AC0FD:F204| db $9F ; play note G3
|1AC0FE:F205| db $0C ; duration
|1AC0FF:F206| db $9F ; play note G3
|1AC100:F207| db $9F ; play note G3
|1AC101:F208| db $08 ; duration
|1AC102:F209| db $9F ; play note G3
|1AC103:F20A| db $9F ; play note G3
|1AC104:F20B| db $9F ; play note G3
|1AC105:F20C| db $0C ; duration
|1AC106:F20D| db $C9 ; rest
|1AC107:F20E| db $0C, $3D ; duration, params
|1AC109:F210| db $9E ; play note F#3
|1AC10A:F211| db $9E ; play note F#3
|1AC10B:F212| db $06, $3B ; duration, params
|1AC10D:F214| db $9E ; play note F#3
|1AC10E:F215| db $06, $3D ; duration, params
|1AC110:F217| db $9E ; play note F#3
|1AC111:F218| db $0C ; duration
|1AC112:F219| db $9E ; play note F#3
|1AC113:F21A| db $9E ; play note F#3
|1AC114:F21B| db $08 ; duration
|1AC115:F21C| db $9E ; play note F#3
|1AC116:F21D| db $9E ; play note F#3
|1AC117:F21E| db $9E ; play note F#3
|1AC118:F21F| db $0C ; duration
|1AC119:F220| db $C9 ; rest
|1AC11A:F221| db $A6 ; play note D4
|1AC11B:F222| db $A6 ; play note D4
|1AC11C:F223| db $06, $3B ; duration, params
|1AC11E:F225| db $A6 ; play note D4
|1AC11F:F226| db $06, $5B ; duration, params
|1AC121:F228| db $A6 ; play note D4
|1AC122:F229| db $0C ; duration
|1AC123:F22A| db $A8 ; play note E4
|1AC124:F22B| db $24 ; duration
|1AC125:F22C| db $A8 ; play note E4
|1AC126:F22D| db $0C ; duration
|1AC127:F22E| db $C9 ; rest
|1AC128:F22F| db $0C, $3D ; duration, params
|1AC12A:F231| db $A9 ; play note F4
|1AC12B:F232| db $A9 ; play note F4
|1AC12C:F233| db $06, $3B ; duration, params
|1AC12E:F235| db $A9 ; play note F4
|1AC12F:F236| db $06, $5B ; duration, params
|1AC131:F238| db $A9 ; play note F4
|1AC132:F239| db $0C ; duration
|1AC133:F23A| db $A8 ; play note E4
|1AC134:F23B| db $24 ; duration
|1AC135:F23C| db $A8 ; play note E4

;---------------------------------------------------------------------------------------------------

Song09_Segment4_Track5:
|1AC136:F23D| db $E0, $16 ; set instrument - flute
|1AC138:F23F| db $ED, $A0 ; set channel volume
|1AC13A:F241| db $E1, $08 ; set panning - leaning right
|1AC13C:F243| db $E3, $18, $1C, $18 ; enable vibrato
|1AC140:F247| db $EF : dw Song09_Sub_F720 : db $01 ; call segment subroutine
|1AC144:F24B| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song09_Segment4_Track6:
|1AC145:F24C| db $E0, $12 ; set instrument - horn
|1AC147:F24E| db $ED, $8C ; set channel volume
|1AC149:F250| db $E1, $0A ; set panning - balanced
|1AC14B:F252| db $E3, $18, $1C, $18 ; enable vibrato
|1AC14F:F256| db $48, $6D ; duration, params
|1AC151:F258| db $AB ; play note G4
|1AC152:F259| db $0C ; duration
|1AC153:F25A| db $A7 ; play note D#4
|1AC154:F25B| db $AB ; play note G4
|1AC155:F25C| db $06 ; duration
|1AC156:F25D| db $A9 ; play note F4
|1AC157:F25E| db $AB ; play note G4
|1AC158:F25F| db $54 ; duration
|1AC159:F260| db $AD ; play note A4
|1AC15A:F261| db $48 ; duration
|1AC15B:F262| db $AB ; play note G4
|1AC15C:F263| db $0C ; duration
|1AC15D:F264| db $AA ; play note F#4
|1AC15E:F265| db $AB ; play note G4
|1AC15F:F266| db $06 ; duration
|1AC160:F267| db $AA ; play note F#4
|1AC161:F268| db $A9 ; play note F4
|1AC162:F269| db $54 ; duration
|1AC163:F26A| db $AA ; play note F#4
|1AC164:F26B| db $60 ; duration
|1AC165:F26C| db $A6 ; play note D4
|1AC166:F26D| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song09_Segment4_Track7:
|1AC167:F26E| db $02 ; duration
|1AC168:F26F| db $C9 ; rest
|1AC169:F270| db $06, $6D ; duration, params
|1AC16B:F272| db $AD ; play note A4
|1AC16C:F273| db $48 ; duration
|1AC16D:F274| db $AE ; play note A#4
|1AC16E:F275| db $0C ; duration
|1AC16F:F276| db $AB ; play note G4
|1AC170:F277| db $AE ; play note A#4
|1AC171:F278| db $EF : dw Song09_Sub_F745 : db $01 ; call segment subroutine
|1AC175:F27C| db $58 ; duration
|1AC176:F27D| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song09_Segment5_Track0:
|1AC177:F27E| db $E0, $0A ; set instrument - strings B
|1AC179:F280| db $ED, $C8 ; set channel volume
|1AC17B:F282| db $E1, $0E ; set panning - leaning left
|1AC17D:F284| db $E3, $18, $1C, $18 ; enable vibrato
|1AC181:F288| db $06, $6D ; duration, params
|1AC183:F28A| db $B0 ; play note C5
|1AC184:F28B| db $AB ; play note G4
|1AC185:F28C| db $A9 ; play note F4
|1AC186:F28D| db $36 ; duration
|1AC187:F28E| db $AB ; play note G4
|1AC188:F28F| db $18 ; duration
|1AC189:F290| db $B0 ; play note C5
|1AC18A:F291| db $EF : dw Song09_Sub_F757 : db $01 ; call segment subroutine
|1AC18E:F295| db $06 ; duration
|1AC18F:F296| db $AD ; play note A4
|1AC190:F297| db $A7 ; play note D#4
|1AC191:F298| db $A6 ; play note D4
|1AC192:F299| db $4E ; duration
|1AC193:F29A| db $A7 ; play note D#4
|1AC194:F29B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Segment5_Track1:
|1AC195:F29C| db $E0, $14 ; set instrument - snare B
|1AC197:F29E| db $ED, $A0 ; set channel volume
|1AC199:F2A0| db $EF : dw Song09_Sub_F766 : db $04 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment5_Track2:
|1AC19D:F2A4| db $E0, $18 ; set instrument - piano
|1AC19F:F2A6| db $ED, $C8 ; set channel volume
|1AC1A1:F2A8| db $18, $7D ; duration, params
|1AC1A3:F2AA| db $94 ; play note G#2
|1AC1A4:F2AB| db $0C ; duration
|1AC1A5:F2AC| db $C9 ; rest
|1AC1A6:F2AD| db $18 ; duration
|1AC1A7:F2AE| db $94 ; play note G#2
|1AC1A8:F2AF| db $0C ; duration
|1AC1A9:F2B0| db $94 ; play note G#2
|1AC1AA:F2B1| db $08 ; duration
|1AC1AB:F2B2| db $94 ; play note G#2
|1AC1AC:F2B3| db $94 ; play note G#2
|1AC1AD:F2B4| db $94 ; play note G#2
|1AC1AE:F2B5| db $18 ; duration
|1AC1AF:F2B6| db $93 ; play note G2
|1AC1B0:F2B7| db $0C ; duration
|1AC1B1:F2B8| db $C9 ; rest
|1AC1B2:F2B9| db $18 ; duration
|1AC1B3:F2BA| db $93 ; play note G2
|1AC1B4:F2BB| db $0C ; duration
|1AC1B5:F2BC| db $93 ; play note G2
|1AC1B6:F2BD| db $08 ; duration
|1AC1B7:F2BE| db $93 ; play note G2
|1AC1B8:F2BF| db $93 ; play note G2
|1AC1B9:F2C0| db $93 ; play note G2
|1AC1BA:F2C1| db $18 ; duration
|1AC1BB:F2C2| db $92 ; play note F#2
|1AC1BC:F2C3| db $0C ; duration
|1AC1BD:F2C4| db $C9 ; rest
|1AC1BE:F2C5| db $18 ; duration
|1AC1BF:F2C6| db $92 ; play note F#2
|1AC1C0:F2C7| db $0C ; duration
|1AC1C1:F2C8| db $92 ; play note F#2
|1AC1C2:F2C9| db $08 ; duration
|1AC1C3:F2CA| db $92 ; play note F#2
|1AC1C4:F2CB| db $92 ; play note F#2
|1AC1C5:F2CC| db $92 ; play note F#2
|1AC1C6:F2CD| db $18 ; duration
|1AC1C7:F2CE| db $91 ; play note F2
|1AC1C8:F2CF| db $0C ; duration
|1AC1C9:F2D0| db $C9 ; rest
|1AC1CA:F2D1| db $18 ; duration
|1AC1CB:F2D2| db $91 ; play note F2
|1AC1CC:F2D3| db $0C ; duration
|1AC1CD:F2D4| db $91 ; play note F2
|1AC1CE:F2D5| db $08 ; duration
|1AC1CF:F2D6| db $91 ; play note F2
|1AC1D0:F2D7| db $91 ; play note F2
|1AC1D1:F2D8| db $91 ; play note F2

;---------------------------------------------------------------------------------------------------

Song09_Segment5_Track3:
|1AC1D2:F2D9| db $E0, $12 ; set instrument - horn
|1AC1D4:F2DB| db $ED, $A0 ; set channel volume
|1AC1D6:F2DD| db $18, $3D ; duration, params
|1AC1D8:F2DF| db $A7 ; play note D#4
|1AC1D9:F2E0| db $0C ; duration
|1AC1DA:F2E1| db $C9 ; rest
|1AC1DB:F2E2| db $18 ; duration
|1AC1DC:F2E3| db $A7 ; play note D#4
|1AC1DD:F2E4| db $0C ; duration
|1AC1DE:F2E5| db $A7 ; play note D#4
|1AC1DF:F2E6| db $08 ; duration
|1AC1E0:F2E7| db $A7 ; play note D#4
|1AC1E1:F2E8| db $A7 ; play note D#4
|1AC1E2:F2E9| db $A7 ; play note D#4
|1AC1E3:F2EA| db $18 ; duration
|1AC1E4:F2EB| db $A6 ; play note D4
|1AC1E5:F2EC| db $0C ; duration
|1AC1E6:F2ED| db $C9 ; rest
|1AC1E7:F2EE| db $18 ; duration
|1AC1E8:F2EF| db $A6 ; play note D4
|1AC1E9:F2F0| db $0C ; duration
|1AC1EA:F2F1| db $A6 ; play note D4
|1AC1EB:F2F2| db $08 ; duration
|1AC1EC:F2F3| db $A6 ; play note D4
|1AC1ED:F2F4| db $A6 ; play note D4
|1AC1EE:F2F5| db $A6 ; play note D4
|1AC1EF:F2F6| db $EF : dw Song09_Sub_F779 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment5_Track4:
|1AC1F3:F2FA| db $E0, $12 ; set instrument - horn
|1AC1F5:F2FC| db $ED, $A0 ; set channel volume
|1AC1F7:F2FE| db $18, $3D ; duration, params
|1AC1F9:F300| db $A4 ; play note C4
|1AC1FA:F301| db $0C ; duration
|1AC1FB:F302| db $C9 ; rest
|1AC1FC:F303| db $18 ; duration
|1AC1FD:F304| db $A4 ; play note C4
|1AC1FE:F305| db $0C ; duration
|1AC1FF:F306| db $A4 ; play note C4
|1AC200:F307| db $08 ; duration
|1AC201:F308| db $A4 ; play note C4
|1AC202:F309| db $A4 ; play note C4
|1AC203:F30A| db $A4 ; play note C4
|1AC204:F30B| db $18 ; duration
|1AC205:F30C| db $A2 ; play note A#3
|1AC206:F30D| db $0C ; duration
|1AC207:F30E| db $C9 ; rest
|1AC208:F30F| db $18 ; duration
|1AC209:F310| db $A2 ; play note A#3
|1AC20A:F311| db $0C ; duration
|1AC20B:F312| db $A2 ; play note A#3
|1AC20C:F313| db $08 ; duration
|1AC20D:F314| db $A2 ; play note A#3
|1AC20E:F315| db $A2 ; play note A#3
|1AC20F:F316| db $A2 ; play note A#3
|1AC210:F317| db $18 ; duration
|1AC211:F318| db $A1 ; play note A3
|1AC212:F319| db $0C ; duration
|1AC213:F31A| db $C9 ; rest
|1AC214:F31B| db $18 ; duration
|1AC215:F31C| db $A1 ; play note A3
|1AC216:F31D| db $0C ; duration
|1AC217:F31E| db $A1 ; play note A3
|1AC218:F31F| db $08 ; duration
|1AC219:F320| db $A1 ; play note A3
|1AC21A:F321| db $A1 ; play note A3
|1AC21B:F322| db $A1 ; play note A3
|1AC21C:F323| db $18 ; duration
|1AC21D:F324| db $A0 ; play note G#3
|1AC21E:F325| db $0C ; duration
|1AC21F:F326| db $C9 ; rest
|1AC220:F327| db $18 ; duration
|1AC221:F328| db $A0 ; play note G#3
|1AC222:F329| db $0C ; duration
|1AC223:F32A| db $A0 ; play note G#3
|1AC224:F32B| db $08 ; duration
|1AC225:F32C| db $A0 ; play note G#3
|1AC226:F32D| db $A0 ; play note G#3
|1AC227:F32E| db $A0 ; play note G#3

;---------------------------------------------------------------------------------------------------

Song09_Segment5_Track7:
|1AC228:F32F| db $E0, $0A ; set instrument - strings B
|1AC22A:F331| db $ED, $A0 ; set channel volume
|1AC22C:F333| db $E1, $0C ; set panning - leaning left
|1AC22E:F335| db $E3, $18, $1C, $18 ; enable vibrato
|1AC232:F339| db $05 ; duration
|1AC233:F33A| db $C9 ; rest
|1AC234:F33B| db $06, $6D ; duration, params
|1AC236:F33D| db $B0 ; play note C5
|1AC237:F33E| db $AB ; play note G4
|1AC238:F33F| db $A9 ; play note F4
|1AC239:F340| db $36 ; duration
|1AC23A:F341| db $AB ; play note G4
|1AC23B:F342| db $18 ; duration
|1AC23C:F343| db $B0 ; play note C5
|1AC23D:F344| db $EF : dw Song09_Sub_F757 : db $01 ; call segment subroutine
|1AC241:F348| db $06 ; duration
|1AC242:F349| db $AD ; play note A4
|1AC243:F34A| db $A7 ; play note D#4
|1AC244:F34B| db $A6 ; play note D4
|1AC245:F34C| db $49 ; duration
|1AC246:F34D| db $A7 ; play note D#4

;---------------------------------------------------------------------------------------------------

Song09_Segment0_Track0:
|1AC247:F34E| db $FA, $19 ; set base percussion sample
|1AC249:F350| db $E5, $C8 ; set song volume
|1AC24B:F352| db $E7, $1C ; set song tempo
|1AC24D:F354| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1AC251:F358| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1AC255:F35C| db $F8, $1E, $32, $32 ; initiate gradual echo volume change
|1AC259:F360| db $E0, $0A ; set instrument - strings B
|1AC25B:F362| db $ED, $C8 ; set channel volume
|1AC25D:F364| db $E3, $18, $1C, $18 ; enable vibrato
|1AC261:F368| db $E1, $0E ; set panning - leaning left
|1AC263:F36A| db $60 ; duration
|1AC264:F36B| db $C9 ; rest
|1AC265:F36C| db $C9 ; rest
|1AC266:F36D| db $C9 ; rest
|1AC267:F36E| db $54 ; duration
|1AC268:F36F| db $C9 ; rest
|1AC269:F370| db $0C, $7D ; duration, params
|1AC26B:F372| db $A4 ; play note C4
|1AC26C:F373| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Segment0_Track1:
|1AC26D:F374| db $E0, $14 ; set instrument - snare B
|1AC26F:F376| db $ED, $A0 ; set channel volume
|1AC271:F378| db $EF : dw Song09_Sub_F57F : db $04 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment0_Track2:
|1AC275:F37C| db $EF : dw Song09_Sub_F598 : db $01 ; call segment subroutine
|1AC279:F380| db $18, $3D ; duration, params
|1AC27B:F382| db $8C ; play note C2
|1AC27C:F383| db $8C ; play note C2
|1AC27D:F384| db $8C ; play note C2
|1AC27E:F385| db $0C ; duration
|1AC27F:F386| db $C9 ; rest
|1AC280:F387| db $8C ; play note C2
|1AC281:F388| db $EF : dw Song09_Sub_F5A7 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment0_Track3:
|1AC285:F38C| db $EF : dw Song09_Sub_F786 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment0_Track4:
|1AC289:F390| db $EF : dw Song09_Sub_F7C7 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment0_Track5:
|1AC28D:F394| db $E0, $0A ; set instrument - strings B
|1AC28F:F396| db $ED, $B4 ; set channel volume
|1AC291:F398| db $E1, $0C ; set panning - leaning left
|1AC293:F39A| db $E3, $18, $1C, $18 ; enable vibrato
|1AC297:F39E| db $60 ; duration
|1AC298:F39F| db $C9 ; rest
|1AC299:F3A0| db $C9 ; rest
|1AC29A:F3A1| db $C9 ; rest
|1AC29B:F3A2| db $54 ; duration
|1AC29C:F3A3| db $C9 ; rest
|1AC29D:F3A4| db $0C, $7D ; duration, params
|1AC29F:F3A6| db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song09_Segment2_Track0:
|1AC2A0:F3A7| db $EF : dw Song09_Sub_F556 : db $01 ; call segment subroutine
|1AC2A4:F3AB| db $EF : dw Song09_Sub_F568 : db $01 ; call segment subroutine
|1AC2A8:F3AF| db $54 ; duration
|1AC2A9:F3B0| db $C9 ; rest
|1AC2AA:F3B1| db $06 ; duration
|1AC2AB:F3B2| db $AB ; play note G4
|1AC2AC:F3B3| db $AD ; play note A4
|1AC2AD:F3B4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Segment2_Track1:
|1AC2AE:F3B5| db $E0, $14 ; set instrument - snare B
|1AC2B0:F3B7| db $ED, $A0 ; set channel volume
|1AC2B2:F3B9| db $EF : dw Song09_Sub_F57F : db $06 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment2_Track2:
|1AC2B6:F3BD| db $EF : dw Song09_Sub_F598 : db $01 ; call segment subroutine
|1AC2BA:F3C1| db $18, $3D ; duration, params
|1AC2BC:F3C3| db $91 ; play note F2
|1AC2BD:F3C4| db $91 ; play note F2
|1AC2BE:F3C5| db $91 ; play note F2
|1AC2BF:F3C6| db $0C ; duration
|1AC2C0:F3C7| db $C9 ; rest
|1AC2C1:F3C8| db $91 ; play note F2
|1AC2C2:F3C9| db $18 ; duration
|1AC2C3:F3CA| db $94 ; play note G#2
|1AC2C4:F3CB| db $94 ; play note G#2
|1AC2C5:F3CC| db $94 ; play note G#2
|1AC2C6:F3CD| db $0C ; duration
|1AC2C7:F3CE| db $C9 ; rest
|1AC2C8:F3CF| db $0C, $5D ; duration, params
|1AC2CA:F3D1| db $94 ; play note G#2
|1AC2CB:F3D2| db $18, $3D ; duration, params
|1AC2CD:F3D4| db $96 ; play note A#2
|1AC2CE:F3D5| db $96 ; play note A#2
|1AC2CF:F3D6| db $96 ; play note A#2
|1AC2D0:F3D7| db $0C ; duration
|1AC2D1:F3D8| db $C9 ; rest
|1AC2D2:F3D9| db $96 ; play note A#2
|1AC2D3:F3DA| db $EF : dw Song09_Sub_F5A7 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment2_Track3:
|1AC2D7:F3DE| db $EF : dw Song09_Sub_F5B9 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment2_Track4:
|1AC2DB:F3E2| db $EF : dw Song09_Sub_F616 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment2_Track5:
|1AC2DF:F3E6| db $EF : dw Song09_Sub_F673 : db $01 ; call segment subroutine
|1AC2E3:F3EA| db $54 ; duration
|1AC2E4:F3EB| db $C9 ; rest
|1AC2E5:F3EC| db $06 ; duration
|1AC2E6:F3ED| db $A7 ; play note D#4
|1AC2E7:F3EE| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song09_Segment2_Track6:
|1AC2E8:F3EF| db $E0, $09 ; set instrument - strings A
|1AC2EA:F3F1| db $ED, $78 ; set channel volume
|1AC2EC:F3F3| db $E1, $08 ; set panning - leaning right
|1AC2EE:F3F5| db $30, $6D ; duration, params
|1AC2F0:F3F7| db $B0 ; play note C5
|1AC2F1:F3F8| db $B7 ; play note G5
|1AC2F2:F3F9| db $54 ; duration
|1AC2F3:F3FA| db $B5 ; play note F5
|1AC2F4:F3FB| db $06 ; duration
|1AC2F5:F3FC| db $B3 ; play note D#5
|1AC2F6:F3FD| db $B2 ; play note D5
|1AC2F7:F3FE| db $60 ; duration
|1AC2F8:F3FF| db $B3 ; play note D#5
|1AC2F9:F400| db $5A ; duration
|1AC2FA:F401| db $B2 ; play note D5
|1AC2FB:F402| db $06 ; duration
|1AC2FC:F403| db $B2 ; play note D5
|1AC2FD:F404| db $48 ; duration
|1AC2FE:F405| db $B0 ; play note C5
|1AC2FF:F406| db $06 ; duration
|1AC300:F407| db $B5 ; play note F5
|1AC301:F408| db $B3 ; play note D#5
|1AC302:F409| db $B2 ; play note D5
|1AC303:F40A| db $B0 ; play note C5
|1AC304:F40B| db $EE, $46, $5A ; initiate gradual channel volume change
|1AC307:F40E| db $60, $6B ; duration, params
|1AC309:F410| db $B2 ; play note D5

;---------------------------------------------------------------------------------------------------

Song09_Segment2_Track7:
|1AC30A:F411| db $EF : dw Song09_Sub_F69B : db $01 ; call segment subroutine
|1AC30E:F415| db $EF : dw Song09_Sub_F568 : db $01 ; call segment subroutine
|1AC312:F419| db $54 ; duration
|1AC313:F41A| db $C9 ; rest
|1AC314:F41B| db $04 ; duration
|1AC315:F41C| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song09_Segment6_Track0:
|1AC316:F41D| db $E0, $0A ; set instrument - strings B
|1AC318:F41F| db $ED, $C8 ; set channel volume
|1AC31A:F421| db $E1, $0E ; set panning - leaning left
|1AC31C:F423| db $E3, $18, $1C, $18 ; enable vibrato
|1AC320:F427| db $06, $6D ; duration, params
|1AC322:F429| db $AB ; play note G4
|1AC323:F42A| db $A6 ; play note D4
|1AC324:F42B| db $A5 ; play note C#4
|1AC325:F42C| db $36 ; duration
|1AC326:F42D| db $A6 ; play note D4
|1AC327:F42E| db $18 ; duration
|1AC328:F42F| db $AB ; play note G4
|1AC329:F430| db $EF : dw Song09_Sub_F808 : db $01 ; call segment subroutine
|1AC32D:F434| db $30 ; duration
|1AC32E:F435| db $C8 ; sustain current note
|1AC32F:F436| db $C9 ; rest
|1AC330:F437| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Segment6_Track1:
|1AC331:F438| db $E0, $14 ; set instrument - snare B
|1AC333:F43A| db $ED, $A0 ; set channel volume
|1AC335:F43C| db $EF : dw Song09_Sub_F766 : db $04 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment6_Track2:
|1AC339:F440| db $E0, $18 ; set instrument - piano
|1AC33B:F442| db $ED, $C8 ; set channel volume
|1AC33D:F444| db $18, $7D ; duration, params
|1AC33F:F446| db $90 ; play note E2
|1AC340:F447| db $0C ; duration
|1AC341:F448| db $C9 ; rest
|1AC342:F449| db $18 ; duration
|1AC343:F44A| db $90 ; play note E2
|1AC344:F44B| db $0C ; duration
|1AC345:F44C| db $90 ; play note E2
|1AC346:F44D| db $08 ; duration
|1AC347:F44E| db $90 ; play note E2
|1AC348:F44F| db $90 ; play note E2
|1AC349:F450| db $90 ; play note E2
|1AC34A:F451| db $18 ; duration
|1AC34B:F452| db $8F ; play note D#2
|1AC34C:F453| db $0C ; duration
|1AC34D:F454| db $C9 ; rest
|1AC34E:F455| db $18 ; duration
|1AC34F:F456| db $8F ; play note D#2
|1AC350:F457| db $0C ; duration
|1AC351:F458| db $8F ; play note D#2
|1AC352:F459| db $08 ; duration
|1AC353:F45A| db $8F ; play note D#2
|1AC354:F45B| db $8F ; play note D#2
|1AC355:F45C| db $8F ; play note D#2
|1AC356:F45D| db $18 ; duration
|1AC357:F45E| db $8E ; play note D2
|1AC358:F45F| db $0C ; duration
|1AC359:F460| db $C9 ; rest
|1AC35A:F461| db $18 ; duration
|1AC35B:F462| db $8E ; play note D2
|1AC35C:F463| db $0C ; duration
|1AC35D:F464| db $8E ; play note D2
|1AC35E:F465| db $08 ; duration
|1AC35F:F466| db $8E ; play note D2
|1AC360:F467| db $8E ; play note D2
|1AC361:F468| db $8E ; play note D2
|1AC362:F469| db $18 ; duration
|1AC363:F46A| db $93 ; play note G2
|1AC364:F46B| db $0C ; duration
|1AC365:F46C| db $C9 ; rest
|1AC366:F46D| db $18 ; duration
|1AC367:F46E| db $93 ; play note G2
|1AC368:F46F| db $0C ; duration
|1AC369:F470| db $93 ; play note G2
|1AC36A:F471| db $08 ; duration
|1AC36B:F472| db $93 ; play note G2
|1AC36C:F473| db $93 ; play note G2
|1AC36D:F474| db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song09_Segment6_Track3:
|1AC36E:F475| db $E0, $12 ; set instrument - horn
|1AC370:F477| db $ED, $A0 ; set channel volume
|1AC372:F479| db $18, $3D ; duration, params
|1AC374:F47B| db $A3 ; play note B3
|1AC375:F47C| db $0C ; duration
|1AC376:F47D| db $C9 ; rest
|1AC377:F47E| db $18 ; duration
|1AC378:F47F| db $A3 ; play note B3
|1AC379:F480| db $0C ; duration
|1AC37A:F481| db $A3 ; play note B3
|1AC37B:F482| db $08 ; duration
|1AC37C:F483| db $A3 ; play note B3
|1AC37D:F484| db $A3 ; play note B3
|1AC37E:F485| db $A3 ; play note B3
|1AC37F:F486| db $18 ; duration
|1AC380:F487| db $A2 ; play note A#3
|1AC381:F488| db $0C ; duration
|1AC382:F489| db $C9 ; rest
|1AC383:F48A| db $18 ; duration
|1AC384:F48B| db $A2 ; play note A#3
|1AC385:F48C| db $0C ; duration
|1AC386:F48D| db $A2 ; play note A#3
|1AC387:F48E| db $08 ; duration
|1AC388:F48F| db $A2 ; play note A#3
|1AC389:F490| db $A2 ; play note A#3
|1AC38A:F491| db $A2 ; play note A#3
|1AC38B:F492| db $18 ; duration
|1AC38C:F493| db $A4 ; play note C4
|1AC38D:F494| db $0C ; duration
|1AC38E:F495| db $C9 ; rest
|1AC38F:F496| db $18 ; duration
|1AC390:F497| db $A4 ; play note C4
|1AC391:F498| db $0C ; duration
|1AC392:F499| db $A4 ; play note C4
|1AC393:F49A| db $08 ; duration
|1AC394:F49B| db $A4 ; play note C4
|1AC395:F49C| db $A4 ; play note C4
|1AC396:F49D| db $A4 ; play note C4
|1AC397:F49E| db $18 ; duration
|1AC398:F49F| db $A4 ; play note C4
|1AC399:F4A0| db $0C ; duration
|1AC39A:F4A1| db $C9 ; rest
|1AC39B:F4A2| db $18 ; duration
|1AC39C:F4A3| db $A4 ; play note C4
|1AC39D:F4A4| db $0C ; duration
|1AC39E:F4A5| db $A3 ; play note B3
|1AC39F:F4A6| db $08 ; duration
|1AC3A0:F4A7| db $A3 ; play note B3
|1AC3A1:F4A8| db $A3 ; play note B3
|1AC3A2:F4A9| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song09_Segment6_Track4:
|1AC3A3:F4AA| db $E0, $12 ; set instrument - horn
|1AC3A5:F4AC| db $ED, $A0 ; set channel volume
|1AC3A7:F4AE| db $18, $3D ; duration, params
|1AC3A9:F4B0| db $A0 ; play note G#3
|1AC3AA:F4B1| db $0C ; duration
|1AC3AB:F4B2| db $C9 ; rest
|1AC3AC:F4B3| db $18 ; duration
|1AC3AD:F4B4| db $A0 ; play note G#3
|1AC3AE:F4B5| db $0C ; duration
|1AC3AF:F4B6| db $A0 ; play note G#3
|1AC3B0:F4B7| db $08 ; duration
|1AC3B1:F4B8| db $A0 ; play note G#3
|1AC3B2:F4B9| db $A0 ; play note G#3
|1AC3B3:F4BA| db $A0 ; play note G#3
|1AC3B4:F4BB| db $18 ; duration
|1AC3B5:F4BC| db $9F ; play note G3
|1AC3B6:F4BD| db $0C ; duration
|1AC3B7:F4BE| db $C9 ; rest
|1AC3B8:F4BF| db $18 ; duration
|1AC3B9:F4C0| db $9F ; play note G3
|1AC3BA:F4C1| db $0C ; duration
|1AC3BB:F4C2| db $9F ; play note G3
|1AC3BC:F4C3| db $08 ; duration
|1AC3BD:F4C4| db $9F ; play note G3
|1AC3BE:F4C5| db $9F ; play note G3
|1AC3BF:F4C6| db $9F ; play note G3
|1AC3C0:F4C7| db $18 ; duration
|1AC3C1:F4C8| db $A1 ; play note A3
|1AC3C2:F4C9| db $0C ; duration
|1AC3C3:F4CA| db $C9 ; rest
|1AC3C4:F4CB| db $18 ; duration
|1AC3C5:F4CC| db $A1 ; play note A3
|1AC3C6:F4CD| db $0C ; duration
|1AC3C7:F4CE| db $A1 ; play note A3
|1AC3C8:F4CF| db $08 ; duration
|1AC3C9:F4D0| db $A1 ; play note A3
|1AC3CA:F4D1| db $A1 ; play note A3
|1AC3CB:F4D2| db $A1 ; play note A3
|1AC3CC:F4D3| db $18 ; duration
|1AC3CD:F4D4| db $9F ; play note G3
|1AC3CE:F4D5| db $0C ; duration
|1AC3CF:F4D6| db $C9 ; rest
|1AC3D0:F4D7| db $18 ; duration
|1AC3D1:F4D8| db $9F ; play note G3
|1AC3D2:F4D9| db $0C ; duration
|1AC3D3:F4DA| db $9D ; play note F3
|1AC3D4:F4DB| db $08 ; duration
|1AC3D5:F4DC| db $9D ; play note F3
|1AC3D6:F4DD| db $9D ; play note F3
|1AC3D7:F4DE| db $9D ; play note F3

;---------------------------------------------------------------------------------------------------

Song09_Segment6_Track5:
|1AC3D8:F4DF| db $E0, $12 ; set instrument - horn
|1AC3DA:F4E1| db $ED, $A0 ; set channel volume
|1AC3DC:F4E3| db $E1, $0A ; set panning - balanced
|1AC3DE:F4E5| db $E3, $18, $1C, $18 ; enable vibrato
|1AC3E2:F4E9| db $60 ; duration
|1AC3E3:F4EA| db $C9 ; rest
|1AC3E4:F4EB| db $48 ; duration
|1AC3E5:F4EC| db $C9 ; rest
|1AC3E6:F4ED| db $18, $6D ; duration, params
|1AC3E8:F4EF| db $AB ; play note G4
|1AC3E9:F4F0| db $60 ; duration
|1AC3EA:F4F1| db $AA ; play note F#4
|1AC3EB:F4F2| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song09_Segment6_Track7:
|1AC3EC:F4F3| db $E0, $0A ; set instrument - strings B
|1AC3EE:F4F5| db $ED, $C8 ; set channel volume
|1AC3F0:F4F7| db $E1, $0C ; set panning - leaning left
|1AC3F2:F4F9| db $E3, $18, $1C, $18 ; enable vibrato
|1AC3F6:F4FD| db $05 ; duration
|1AC3F7:F4FE| db $C9 ; rest
|1AC3F8:F4FF| db $06, $6D ; duration, params
|1AC3FA:F501| db $AB ; play note G4
|1AC3FB:F502| db $A6 ; play note D4
|1AC3FC:F503| db $A5 ; play note C#4
|1AC3FD:F504| db $36 ; duration
|1AC3FE:F505| db $A6 ; play note D4
|1AC3FF:F506| db $18 ; duration
|1AC400:F507| db $AB ; play note G4
|1AC401:F508| db $EF : dw Song09_Sub_F808 : db $01 ; call segment subroutine
|1AC405:F50C| db $30 ; duration
|1AC406:F50D| db $C8 ; sustain current note
|1AC407:F50E| db $2B ; duration
|1AC408:F50F| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song09_Segment7_Track0:
|1AC409:F510| db $E0, $0A ; set instrument - strings B
|1AC40B:F512| db $ED, $C8 ; set channel volume
|1AC40D:F514| db $E3, $18, $1C, $18 ; enable vibrato
|1AC411:F518| db $60 ; duration
|1AC412:F519| db $C9 ; rest
|1AC413:F51A| db $C9 ; rest
|1AC414:F51B| db $C9 ; rest
|1AC415:F51C| db $54 ; duration
|1AC416:F51D| db $C9 ; rest
|1AC417:F51E| db $0C, $7D ; duration, params
|1AC419:F520| db $A4 ; play note C4
|1AC41A:F521| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Segment7_Track1:
|1AC41B:F522| db $E0, $14 ; set instrument - snare B
|1AC41D:F524| db $ED, $A0 ; set channel volume
|1AC41F:F526| db $EF : dw Song09_Sub_F57F : db $04 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment7_Track2:
|1AC423:F52A| db $EF : dw Song09_Sub_F598 : db $01 ; call segment subroutine
|1AC427:F52E| db $18, $3D ; duration, params
|1AC429:F530| db $8C ; play note C2
|1AC42A:F531| db $8C ; play note C2
|1AC42B:F532| db $8C ; play note C2
|1AC42C:F533| db $0C ; duration
|1AC42D:F534| db $C9 ; rest
|1AC42E:F535| db $8C ; play note C2
|1AC42F:F536| db $EF : dw Song09_Sub_F5A7 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment7_Track3:
|1AC433:F53A| db $EF : dw Song09_Sub_F786 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment7_Track4:
|1AC437:F53E| db $EF : dw Song09_Sub_F7C7 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song09_Segment7_Track5:
|1AC43B:F542| db $E0, $0A ; set instrument - strings B
|1AC43D:F544| db $ED, $B4 ; set channel volume
|1AC43F:F546| db $E1, $0C ; set panning - leaning left
|1AC441:F548| db $E3, $18, $1C, $18 ; enable vibrato
|1AC445:F54C| db $60 ; duration
|1AC446:F54D| db $C9 ; rest
|1AC447:F54E| db $C9 ; rest
|1AC448:F54F| db $C9 ; rest
|1AC449:F550| db $54 ; duration
|1AC44A:F551| db $C9 ; rest
|1AC44B:F552| db $0C, $7D ; duration, params
|1AC44D:F554| db $9F ; play note G3
|1AC44E:F555| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F556:
|1AC44F:F556| db $E0, $0A ; set instrument - strings B
|1AC451:F558| db $ED, $C8 ; set channel volume
|1AC453:F55A| db $E1, $0E ; set panning - leaning left
|1AC455:F55C| db $E3, $18, $1C, $18 ; enable vibrato
|1AC459:F560| db $3C, $6D ; duration, params
|1AC45B:F562| db $AB ; play note G4
|1AC45C:F563| db $0C ; duration
|1AC45D:F564| db $A4 ; play note C4
|1AC45E:F565| db $AB ; play note G4
|1AC45F:F566| db $B0 ; play note C5
|1AC460:F567| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F568:
|1AC461:F568| db $06 ; duration
|1AC462:F569| db $AD ; play note A4
|1AC463:F56A| db $AE ; play note A#4
|1AC464:F56B| db $4E ; duration
|1AC465:F56C| db $AD ; play note A4
|1AC466:F56D| db $06 ; duration
|1AC467:F56E| db $A9 ; play note F4
|1AC468:F56F| db $18 ; duration
|1AC469:F570| db $AB ; play note G4
|1AC46A:F571| db $3C ; duration
|1AC46B:F572| db $A4 ; play note C4
|1AC46C:F573| db $0C ; duration
|1AC46D:F574| db $A9 ; play note F4
|1AC46E:F575| db $06 ; duration
|1AC46F:F576| db $A6 ; play note D4
|1AC470:F577| db $A7 ; play note D#4
|1AC471:F578| db $4E ; duration
|1AC472:F579| db $A6 ; play note D4
|1AC473:F57A| db $06 ; duration
|1AC474:F57B| db $A2 ; play note A#3
|1AC475:F57C| db $60 ; duration
|1AC476:F57D| db $A4 ; play note C4
|1AC477:F57E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F57F:
|1AC478:F57F| db $0C, $3D ; duration, params
|1AC47A:F581| db $A9 ; play note F4
|1AC47B:F582| db $0C, $37 ; duration, params
|1AC47D:F584| db $A9 ; play note F4
|1AC47E:F585| db $0C, $3D ; duration, params
|1AC480:F587| db $A9 ; play note F4
|1AC481:F588| db $0C, $37 ; duration, params
|1AC483:F58A| db $A9 ; play note F4
|1AC484:F58B| db $0C, $3D ; duration, params
|1AC486:F58D| db $A9 ; play note F4
|1AC487:F58E| db $0C, $37 ; duration, params
|1AC489:F590| db $A9 ; play note F4
|1AC48A:F591| db $06, $39 ; duration, params
|1AC48C:F593| db $A9 ; play note F4
|1AC48D:F594| db $A9 ; play note F4
|1AC48E:F595| db $A9 ; play note F4
|1AC48F:F596| db $A9 ; play note F4
|1AC490:F597| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F598:
|1AC491:F598| db $E0, $18 ; set instrument - piano
|1AC493:F59A| db $ED, $C8 ; set channel volume
|1AC495:F59C| db $18, $3D ; duration, params
|1AC497:F59E| db $8C ; play note C2
|1AC498:F59F| db $8C ; play note C2
|1AC499:F5A0| db $8C ; play note C2
|1AC49A:F5A1| db $0C ; duration
|1AC49B:F5A2| db $C9 ; rest
|1AC49C:F5A3| db $0C, $5D ; duration, params
|1AC49E:F5A5| db $8C ; play note C2
|1AC49F:F5A6| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F5A7:
|1AC4A0:F5A7| db $18 ; duration
|1AC4A1:F5A8| db $8C ; play note C2
|1AC4A2:F5A9| db $8C ; play note C2
|1AC4A3:F5AA| db $8C ; play note C2
|1AC4A4:F5AB| db $0C ; duration
|1AC4A5:F5AC| db $C9 ; rest
|1AC4A6:F5AD| db $0C, $5D ; duration, params
|1AC4A8:F5AF| db $8C ; play note C2
|1AC4A9:F5B0| db $18, $3D ; duration, params
|1AC4AB:F5B2| db $8C ; play note C2
|1AC4AC:F5B3| db $8C ; play note C2
|1AC4AD:F5B4| db $8C ; play note C2
|1AC4AE:F5B5| db $0C ; duration
|1AC4AF:F5B6| db $C9 ; rest
|1AC4B0:F5B7| db $8C ; play note C2
|1AC4B1:F5B8| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F5B9:
|1AC4B2:F5B9| db $E0, $11 ; set instrument - trumpet
|1AC4B4:F5BB| db $ED, $C8 ; set channel volume
|1AC4B6:F5BD| db $E1, $07 ; set panning - leaning right
|1AC4B8:F5BF| db $0C ; duration
|1AC4B9:F5C0| db $C9 ; rest
|1AC4BA:F5C1| db $0C, $3D ; duration, params
|1AC4BC:F5C3| db $9F ; play note G3
|1AC4BD:F5C4| db $9F ; play note G3
|1AC4BE:F5C5| db $06, $3B ; duration, params
|1AC4C0:F5C7| db $9F ; play note G3
|1AC4C1:F5C8| db $9F ; play note G3
|1AC4C2:F5C9| db $0C ; duration
|1AC4C3:F5CA| db $9F ; play note G3
|1AC4C4:F5CB| db $24 ; duration
|1AC4C5:F5CC| db $9F ; play note G3
|1AC4C6:F5CD| db $0C ; duration
|1AC4C7:F5CE| db $C9 ; rest
|1AC4C8:F5CF| db $0C, $3D ; duration, params
|1AC4CA:F5D1| db $A1 ; play note A3
|1AC4CB:F5D2| db $A1 ; play note A3
|1AC4CC:F5D3| db $06, $3B ; duration, params
|1AC4CE:F5D5| db $A1 ; play note A3
|1AC4CF:F5D6| db $06, $3D ; duration, params
|1AC4D1:F5D8| db $A1 ; play note A3
|1AC4D2:F5D9| db $0C ; duration
|1AC4D3:F5DA| db $A1 ; play note A3
|1AC4D4:F5DB| db $24 ; duration
|1AC4D5:F5DC| db $A1 ; play note A3
|1AC4D6:F5DD| db $0C ; duration
|1AC4D7:F5DE| db $C9 ; rest
|1AC4D8:F5DF| db $9F ; play note G3
|1AC4D9:F5E0| db $9F ; play note G3
|1AC4DA:F5E1| db $06, $3B ; duration, params
|1AC4DC:F5E3| db $9F ; play note G3
|1AC4DD:F5E4| db $9F ; play note G3
|1AC4DE:F5E5| db $0C ; duration
|1AC4DF:F5E6| db $9F ; play note G3
|1AC4E0:F5E7| db $24 ; duration
|1AC4E1:F5E8| db $9F ; play note G3
|1AC4E2:F5E9| db $0C ; duration
|1AC4E3:F5EA| db $C9 ; rest
|1AC4E4:F5EB| db $0C, $3D ; duration, params
|1AC4E6:F5ED| db $9D ; play note F3
|1AC4E7:F5EE| db $9D ; play note F3
|1AC4E8:F5EF| db $06, $3B ; duration, params
|1AC4EA:F5F1| db $9D ; play note F3
|1AC4EB:F5F2| db $06, $3D ; duration, params
|1AC4ED:F5F4| db $9D ; play note F3
|1AC4EE:F5F5| db $0C ; duration
|1AC4EF:F5F6| db $9D ; play note F3
|1AC4F0:F5F7| db $24 ; duration
|1AC4F1:F5F8| db $9D ; play note F3
|1AC4F2:F5F9| db $0C ; duration
|1AC4F3:F5FA| db $C9 ; rest
|1AC4F4:F5FB| db $9F ; play note G3
|1AC4F5:F5FC| db $9F ; play note G3
|1AC4F6:F5FD| db $06, $3B ; duration, params
|1AC4F8:F5FF| db $9F ; play note G3
|1AC4F9:F600| db $9F ; play note G3
|1AC4FA:F601| db $0C ; duration
|1AC4FB:F602| db $9F ; play note G3
|1AC4FC:F603| db $24 ; duration
|1AC4FD:F604| db $A1 ; play note A3
|1AC4FE:F605| db $0C ; duration
|1AC4FF:F606| db $C9 ; rest
|1AC500:F607| db $0C, $3D ; duration, params
|1AC502:F609| db $A2 ; play note A#3
|1AC503:F60A| db $A2 ; play note A#3
|1AC504:F60B| db $06, $3B ; duration, params
|1AC506:F60D| db $A2 ; play note A#3
|1AC507:F60E| db $06, $3D ; duration, params
|1AC509:F610| db $A2 ; play note A#3
|1AC50A:F611| db $0C ; duration
|1AC50B:F612| db $A2 ; play note A#3
|1AC50C:F613| db $24 ; duration
|1AC50D:F614| db $A4 ; play note C4
|1AC50E:F615| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F616:
|1AC50F:F616| db $E0, $11 ; set instrument - trumpet
|1AC511:F618| db $ED, $C8 ; set channel volume
|1AC513:F61A| db $E1, $05 ; set panning - leaning right
|1AC515:F61C| db $0C ; duration
|1AC516:F61D| db $C9 ; rest
|1AC517:F61E| db $0C, $3D ; duration, params
|1AC519:F620| db $9B ; play note D#3
|1AC51A:F621| db $9B ; play note D#3
|1AC51B:F622| db $06, $3B ; duration, params
|1AC51D:F624| db $9B ; play note D#3
|1AC51E:F625| db $9B ; play note D#3
|1AC51F:F626| db $0C ; duration
|1AC520:F627| db $9B ; play note D#3
|1AC521:F628| db $24 ; duration
|1AC522:F629| db $9B ; play note D#3
|1AC523:F62A| db $0C ; duration
|1AC524:F62B| db $C9 ; rest
|1AC525:F62C| db $0C, $3D ; duration, params
|1AC527:F62E| db $9D ; play note F3
|1AC528:F62F| db $9D ; play note F3
|1AC529:F630| db $06, $3B ; duration, params
|1AC52B:F632| db $9D ; play note F3
|1AC52C:F633| db $06, $3D ; duration, params
|1AC52E:F635| db $9D ; play note F3
|1AC52F:F636| db $0C ; duration
|1AC530:F637| db $9D ; play note F3
|1AC531:F638| db $24 ; duration
|1AC532:F639| db $9D ; play note F3
|1AC533:F63A| db $0C ; duration
|1AC534:F63B| db $C9 ; rest
|1AC535:F63C| db $9B ; play note D#3
|1AC536:F63D| db $9B ; play note D#3
|1AC537:F63E| db $06, $3B ; duration, params
|1AC539:F640| db $9B ; play note D#3
|1AC53A:F641| db $9B ; play note D#3
|1AC53B:F642| db $0C ; duration
|1AC53C:F643| db $9B ; play note D#3
|1AC53D:F644| db $24 ; duration
|1AC53E:F645| db $9B ; play note D#3
|1AC53F:F646| db $0C ; duration
|1AC540:F647| db $C9 ; rest
|1AC541:F648| db $0C, $3D ; duration, params
|1AC543:F64A| db $9A ; play note D3
|1AC544:F64B| db $9A ; play note D3
|1AC545:F64C| db $06, $3B ; duration, params
|1AC547:F64E| db $9A ; play note D3
|1AC548:F64F| db $06, $3D ; duration, params
|1AC54A:F651| db $9A ; play note D3
|1AC54B:F652| db $0C ; duration
|1AC54C:F653| db $9A ; play note D3
|1AC54D:F654| db $24 ; duration
|1AC54E:F655| db $9A ; play note D3
|1AC54F:F656| db $0C ; duration
|1AC550:F657| db $C9 ; rest
|1AC551:F658| db $9B ; play note D#3
|1AC552:F659| db $9B ; play note D#3
|1AC553:F65A| db $06, $3B ; duration, params
|1AC555:F65C| db $9B ; play note D#3
|1AC556:F65D| db $9B ; play note D#3
|1AC557:F65E| db $0C ; duration
|1AC558:F65F| db $9B ; play note D#3
|1AC559:F660| db $24 ; duration
|1AC55A:F661| db $9D ; play note F3
|1AC55B:F662| db $0C ; duration
|1AC55C:F663| db $C9 ; rest
|1AC55D:F664| db $0C, $3D ; duration, params
|1AC55F:F666| db $9F ; play note G3
|1AC560:F667| db $9F ; play note G3
|1AC561:F668| db $06, $3B ; duration, params
|1AC563:F66A| db $9F ; play note G3
|1AC564:F66B| db $06, $3D ; duration, params
|1AC566:F66D| db $9F ; play note G3
|1AC567:F66E| db $0C ; duration
|1AC568:F66F| db $9F ; play note G3
|1AC569:F670| db $24 ; duration
|1AC56A:F671| db $A1 ; play note A3
|1AC56B:F672| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F673:
|1AC56C:F673| db $E0, $0A ; set instrument - strings B
|1AC56E:F675| db $ED, $B4 ; set channel volume
|1AC570:F677| db $E1, $0C ; set panning - leaning left
|1AC572:F679| db $E3, $18, $1C, $18 ; enable vibrato
|1AC576:F67D| db $3C, $6D ; duration, params
|1AC578:F67F| db $A7 ; play note D#4
|1AC579:F680| db $0C ; duration
|1AC57A:F681| db $9F ; play note G3
|1AC57B:F682| db $A7 ; play note D#4
|1AC57C:F683| db $AB ; play note G4
|1AC57D:F684| db $06 ; duration
|1AC57E:F685| db $A9 ; play note F4
|1AC57F:F686| db $AB ; play note G4
|1AC580:F687| db $4E ; duration
|1AC581:F688| db $A9 ; play note F4
|1AC582:F689| db $06 ; duration
|1AC583:F68A| db $A4 ; play note C4
|1AC584:F68B| db $18 ; duration
|1AC585:F68C| db $A7 ; play note D#4
|1AC586:F68D| db $3C ; duration
|1AC587:F68E| db $A0 ; play note G#3
|1AC588:F68F| db $0C ; duration
|1AC589:F690| db $A4 ; play note C4
|1AC58A:F691| db $06 ; duration
|1AC58B:F692| db $A2 ; play note A#3
|1AC58C:F693| db $A4 ; play note C4
|1AC58D:F694| db $4E ; duration
|1AC58E:F695| db $A2 ; play note A#3
|1AC58F:F696| db $06 ; duration
|1AC590:F697| db $9D ; play note F3
|1AC591:F698| db $60 ; duration
|1AC592:F699| db $9F ; play note G3
|1AC593:F69A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F69B:
|1AC594:F69B| db $E0, $0A ; set instrument - strings B
|1AC596:F69D| db $ED, $A0 ; set channel volume
|1AC598:F69F| db $E1, $0C ; set panning - leaning left
|1AC59A:F6A1| db $E3, $18, $1C, $18 ; enable vibrato
|1AC59E:F6A5| db $08 ; duration
|1AC59F:F6A6| db $C9 ; rest
|1AC5A0:F6A7| db $3C, $6D ; duration, params
|1AC5A2:F6A9| db $AB ; play note G4
|1AC5A3:F6AA| db $0C ; duration
|1AC5A4:F6AB| db $A4 ; play note C4
|1AC5A5:F6AC| db $AB ; play note G4
|1AC5A6:F6AD| db $B0 ; play note C5
|1AC5A7:F6AE| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F6AF:
|1AC5A8:F6AF| db $06 ; duration
|1AC5A9:F6B0| db $AD ; play note A4
|1AC5AA:F6B1| db $AB ; play note G4
|1AC5AB:F6B2| db $48 ; duration
|1AC5AC:F6B3| db $A9 ; play note F4
|1AC5AD:F6B4| db $06 ; duration
|1AC5AE:F6B5| db $A7 ; play note D#4
|1AC5AF:F6B6| db $A9 ; play note F4
|1AC5B0:F6B7| db $48 ; duration
|1AC5B1:F6B8| db $AB ; play note G4
|1AC5B2:F6B9| db $0C ; duration
|1AC5B3:F6BA| db $A4 ; play note C4
|1AC5B4:F6BB| db $AB ; play note G4
|1AC5B5:F6BC| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F6BD:
|1AC5B6:F6BD| db $0C, $3D ; duration, params
|1AC5B8:F6BF| db $A9 ; play note F4
|1AC5B9:F6C0| db $0C, $37 ; duration, params
|1AC5BB:F6C2| db $A9 ; play note F4
|1AC5BC:F6C3| db $0C, $3D ; duration, params
|1AC5BE:F6C5| db $A9 ; play note F4
|1AC5BF:F6C6| db $0C, $37 ; duration, params
|1AC5C1:F6C8| db $A9 ; play note F4
|1AC5C2:F6C9| db $0C, $3D ; duration, params
|1AC5C4:F6CB| db $A9 ; play note F4
|1AC5C5:F6CC| db $0C, $37 ; duration, params
|1AC5C7:F6CE| db $A9 ; play note F4
|1AC5C8:F6CF| db $08, $39 ; duration, params
|1AC5CA:F6D1| db $A9 ; play note F4
|1AC5CB:F6D2| db $A9 ; play note F4
|1AC5CC:F6D3| db $A9 ; play note F4
|1AC5CD:F6D4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F6D5:
|1AC5CE:F6D5| db $E0, $18 ; set instrument - piano
|1AC5D0:F6D7| db $ED, $C8 ; set channel volume
|1AC5D2:F6D9| db $0C, $3D ; duration, params
|1AC5D4:F6DB| db $8F ; play note D#2
|1AC5D5:F6DC| db $18 ; duration
|1AC5D6:F6DD| db $8F ; play note D#2
|1AC5D7:F6DE| db $0C ; duration
|1AC5D8:F6DF| db $8F ; play note D#2
|1AC5D9:F6E0| db $8F ; play note D#2
|1AC5DA:F6E1| db $8F ; play note D#2
|1AC5DB:F6E2| db $08 ; duration
|1AC5DC:F6E3| db $8F ; play note D#2
|1AC5DD:F6E4| db $8F ; play note D#2
|1AC5DE:F6E5| db $8F ; play note D#2
|1AC5DF:F6E6| db $0C ; duration
|1AC5E0:F6E7| db $91 ; play note F2
|1AC5E1:F6E8| db $18 ; duration
|1AC5E2:F6E9| db $91 ; play note F2
|1AC5E3:F6EA| db $0C ; duration
|1AC5E4:F6EB| db $91 ; play note F2
|1AC5E5:F6EC| db $91 ; play note F2
|1AC5E6:F6ED| db $91 ; play note F2
|1AC5E7:F6EE| db $08 ; duration
|1AC5E8:F6EF| db $91 ; play note F2
|1AC5E9:F6F0| db $91 ; play note F2
|1AC5EA:F6F1| db $91 ; play note F2
|1AC5EB:F6F2| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F6F3:
|1AC5EC:F6F3| db $E0, $11 ; set instrument - trumpet
|1AC5EE:F6F5| db $ED, $C8 ; set channel volume
|1AC5F0:F6F7| db $E1, $05 ; set panning - leaning right
|1AC5F2:F6F9| db $0C ; duration
|1AC5F3:F6FA| db $C9 ; rest
|1AC5F4:F6FB| db $0C, $3D ; duration, params
|1AC5F6:F6FD| db $9F ; play note G3
|1AC5F7:F6FE| db $9F ; play note G3
|1AC5F8:F6FF| db $06, $3B ; duration, params
|1AC5FA:F701| db $9F ; play note G3
|1AC5FB:F702| db $06, $5B ; duration, params
|1AC5FD:F704| db $9F ; play note G3
|1AC5FE:F705| db $0C ; duration
|1AC5FF:F706| db $9F ; play note G3
|1AC600:F707| db $9F ; play note G3
|1AC601:F708| db $08 ; duration
|1AC602:F709| db $9F ; play note G3
|1AC603:F70A| db $9F ; play note G3
|1AC604:F70B| db $9F ; play note G3
|1AC605:F70C| db $0C ; duration
|1AC606:F70D| db $C9 ; rest
|1AC607:F70E| db $0C, $3D ; duration, params
|1AC609:F710| db $A1 ; play note A3
|1AC60A:F711| db $A1 ; play note A3
|1AC60B:F712| db $06, $3B ; duration, params
|1AC60D:F714| db $A1 ; play note A3
|1AC60E:F715| db $06, $3D ; duration, params
|1AC610:F717| db $A1 ; play note A3
|1AC611:F718| db $0C ; duration
|1AC612:F719| db $A1 ; play note A3
|1AC613:F71A| db $A1 ; play note A3
|1AC614:F71B| db $08 ; duration
|1AC615:F71C| db $A1 ; play note A3
|1AC616:F71D| db $A1 ; play note A3
|1AC617:F71E| db $A1 ; play note A3
|1AC618:F71F| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F720:
|1AC619:F720| db $48, $6D ; duration, params
|1AC61B:F722| db $AE ; play note A#4
|1AC61C:F723| db $0C ; duration
|1AC61D:F724| db $AB ; play note G4
|1AC61E:F725| db $AE ; play note A#4
|1AC61F:F726| db $06 ; duration
|1AC620:F727| db $AD ; play note A4
|1AC621:F728| db $AE ; play note A#4
|1AC622:F729| db $54 ; duration
|1AC623:F72A| db $B0 ; play note C5
|1AC624:F72B| db $48 ; duration
|1AC625:F72C| db $AE ; play note A#4
|1AC626:F72D| db $0C ; duration
|1AC627:F72E| db $AD ; play note A4
|1AC628:F72F| db $AE ; play note A#4
|1AC629:F730| db $06 ; duration
|1AC62A:F731| db $AD ; play note A4
|1AC62B:F732| db $AC ; play note G#4
|1AC62C:F733| db $54 ; duration
|1AC62D:F734| db $AD ; play note A4
|1AC62E:F735| db $60 ; duration
|1AC62F:F736| db $AB ; play note G4
|1AC630:F737| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F738:
|1AC631:F738| db $0C ; duration
|1AC632:F739| db $93 ; play note G2
|1AC633:F73A| db $18 ; duration
|1AC634:F73B| db $93 ; play note G2
|1AC635:F73C| db $0C ; duration
|1AC636:F73D| db $93 ; play note G2
|1AC637:F73E| db $93 ; play note G2
|1AC638:F73F| db $93 ; play note G2
|1AC639:F740| db $08 ; duration
|1AC63A:F741| db $93 ; play note G2
|1AC63B:F742| db $93 ; play note G2
|1AC63C:F743| db $93 ; play note G2
|1AC63D:F744| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F745:
|1AC63E:F745| db $06 ; duration
|1AC63F:F746| db $AD ; play note A4
|1AC640:F747| db $AE ; play note A#4
|1AC641:F748| db $54 ; duration
|1AC642:F749| db $B0 ; play note C5
|1AC643:F74A| db $48 ; duration
|1AC644:F74B| db $AE ; play note A#4
|1AC645:F74C| db $0C ; duration
|1AC646:F74D| db $AD ; play note A4
|1AC647:F74E| db $AE ; play note A#4
|1AC648:F74F| db $06 ; duration
|1AC649:F750| db $AD ; play note A4
|1AC64A:F751| db $AC ; play note G#4
|1AC64B:F752| db $54 ; duration
|1AC64C:F753| db $AD ; play note A4
|1AC64D:F754| db $60 ; duration
|1AC64E:F755| db $AB ; play note G4
|1AC64F:F756| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F757:
|1AC650:F757| db $06 ; duration
|1AC651:F758| db $AE ; play note A#4
|1AC652:F759| db $AB ; play note G4
|1AC653:F75A| db $A9 ; play note F4
|1AC654:F75B| db $4E ; duration
|1AC655:F75C| db $AB ; play note G4
|1AC656:F75D| db $06 ; duration
|1AC657:F75E| db $AE ; play note A#4
|1AC658:F75F| db $A9 ; play note F4
|1AC659:F760| db $A7 ; play note D#4
|1AC65A:F761| db $36 ; duration
|1AC65B:F762| db $A9 ; play note F4
|1AC65C:F763| db $18 ; duration
|1AC65D:F764| db $AE ; play note A#4
|1AC65E:F765| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F766:
|1AC65F:F766| db $18, $3D ; duration, params
|1AC661:F768| db $A9 ; play note F4
|1AC662:F769| db $06, $37 ; duration, params
|1AC664:F76B| db $A9 ; play note F4
|1AC665:F76C| db $A9 ; play note F4
|1AC666:F76D| db $A9 ; play note F4
|1AC667:F76E| db $A9 ; play note F4
|1AC668:F76F| db $0C, $3D ; duration, params
|1AC66A:F771| db $A9 ; play note F4
|1AC66B:F772| db $A9 ; play note F4
|1AC66C:F773| db $08, $39 ; duration, params
|1AC66E:F775| db $A9 ; play note F4
|1AC66F:F776| db $A9 ; play note F4
|1AC670:F777| db $A9 ; play note F4
|1AC671:F778| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F779:
|1AC672:F779| db $18 ; duration
|1AC673:F77A| db $A4 ; play note C4
|1AC674:F77B| db $0C ; duration
|1AC675:F77C| db $C9 ; rest
|1AC676:F77D| db $18 ; duration
|1AC677:F77E| db $A4 ; play note C4
|1AC678:F77F| db $0C ; duration
|1AC679:F780| db $A4 ; play note C4
|1AC67A:F781| db $08 ; duration
|1AC67B:F782| db $A4 ; play note C4
|1AC67C:F783| db $A4 ; play note C4
|1AC67D:F784| db $A4 ; play note C4
|1AC67E:F785| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F786:
|1AC67F:F786| db $E0, $11 ; set instrument - trumpet
|1AC681:F788| db $ED, $C8 ; set channel volume
|1AC683:F78A| db $E1, $07 ; set panning - leaning right
|1AC685:F78C| db $0C ; duration
|1AC686:F78D| db $C9 ; rest
|1AC687:F78E| db $0C, $3D ; duration, params
|1AC689:F790| db $9F ; play note G3
|1AC68A:F791| db $9F ; play note G3
|1AC68B:F792| db $06, $3B ; duration, params
|1AC68D:F794| db $9F ; play note G3
|1AC68E:F795| db $9F ; play note G3
|1AC68F:F796| db $0C ; duration
|1AC690:F797| db $9F ; play note G3
|1AC691:F798| db $24 ; duration
|1AC692:F799| db $A1 ; play note A3
|1AC693:F79A| db $0C ; duration
|1AC694:F79B| db $C9 ; rest
|1AC695:F79C| db $0C, $3D ; duration, params
|1AC697:F79E| db $A2 ; play note A#3
|1AC698:F79F| db $A2 ; play note A#3
|1AC699:F7A0| db $06, $3B ; duration, params
|1AC69B:F7A2| db $A2 ; play note A#3
|1AC69C:F7A3| db $06, $3D ; duration, params
|1AC69E:F7A5| db $A2 ; play note A#3
|1AC69F:F7A6| db $0C ; duration
|1AC6A0:F7A7| db $A2 ; play note A#3
|1AC6A1:F7A8| db $24 ; duration
|1AC6A2:F7A9| db $A4 ; play note C4
|1AC6A3:F7AA| db $0C ; duration
|1AC6A4:F7AB| db $C9 ; rest
|1AC6A5:F7AC| db $9F ; play note G3
|1AC6A6:F7AD| db $9F ; play note G3
|1AC6A7:F7AE| db $06, $3B ; duration, params
|1AC6A9:F7B0| db $9F ; play note G3
|1AC6AA:F7B1| db $9F ; play note G3
|1AC6AB:F7B2| db $0C ; duration
|1AC6AC:F7B3| db $9F ; play note G3
|1AC6AD:F7B4| db $24 ; duration
|1AC6AE:F7B5| db $A1 ; play note A3
|1AC6AF:F7B6| db $0C ; duration
|1AC6B0:F7B7| db $C9 ; rest
|1AC6B1:F7B8| db $0C, $3D ; duration, params
|1AC6B3:F7BA| db $A2 ; play note A#3
|1AC6B4:F7BB| db $A2 ; play note A#3
|1AC6B5:F7BC| db $06, $3B ; duration, params
|1AC6B7:F7BE| db $A2 ; play note A#3
|1AC6B8:F7BF| db $06, $3D ; duration, params
|1AC6BA:F7C1| db $A2 ; play note A#3
|1AC6BB:F7C2| db $0C ; duration
|1AC6BC:F7C3| db $A2 ; play note A#3
|1AC6BD:F7C4| db $24 ; duration
|1AC6BE:F7C5| db $A4 ; play note C4
|1AC6BF:F7C6| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F7C7:
|1AC6C0:F7C7| db $E0, $11 ; set instrument - trumpet
|1AC6C2:F7C9| db $ED, $C8 ; set channel volume
|1AC6C4:F7CB| db $E1, $05 ; set panning - leaning right
|1AC6C6:F7CD| db $0C ; duration
|1AC6C7:F7CE| db $C9 ; rest
|1AC6C8:F7CF| db $0C, $3D ; duration, params
|1AC6CA:F7D1| db $9B ; play note D#3
|1AC6CB:F7D2| db $9B ; play note D#3
|1AC6CC:F7D3| db $06, $3B ; duration, params
|1AC6CE:F7D5| db $9B ; play note D#3
|1AC6CF:F7D6| db $9B ; play note D#3
|1AC6D0:F7D7| db $0C ; duration
|1AC6D1:F7D8| db $9B ; play note D#3
|1AC6D2:F7D9| db $24 ; duration
|1AC6D3:F7DA| db $9D ; play note F3
|1AC6D4:F7DB| db $0C ; duration
|1AC6D5:F7DC| db $C9 ; rest
|1AC6D6:F7DD| db $0C, $3D ; duration, params
|1AC6D8:F7DF| db $9F ; play note G3
|1AC6D9:F7E0| db $9F ; play note G3
|1AC6DA:F7E1| db $06, $3B ; duration, params
|1AC6DC:F7E3| db $9F ; play note G3
|1AC6DD:F7E4| db $06, $3D ; duration, params
|1AC6DF:F7E6| db $9F ; play note G3
|1AC6E0:F7E7| db $0C ; duration
|1AC6E1:F7E8| db $9F ; play note G3
|1AC6E2:F7E9| db $24 ; duration
|1AC6E3:F7EA| db $A1 ; play note A3
|1AC6E4:F7EB| db $0C ; duration
|1AC6E5:F7EC| db $C9 ; rest
|1AC6E6:F7ED| db $9B ; play note D#3
|1AC6E7:F7EE| db $9B ; play note D#3
|1AC6E8:F7EF| db $06, $3B ; duration, params
|1AC6EA:F7F1| db $9B ; play note D#3
|1AC6EB:F7F2| db $9B ; play note D#3
|1AC6EC:F7F3| db $0C ; duration
|1AC6ED:F7F4| db $9B ; play note D#3
|1AC6EE:F7F5| db $24 ; duration
|1AC6EF:F7F6| db $9D ; play note F3
|1AC6F0:F7F7| db $0C ; duration
|1AC6F1:F7F8| db $C9 ; rest
|1AC6F2:F7F9| db $0C, $3D ; duration, params
|1AC6F4:F7FB| db $9F ; play note G3
|1AC6F5:F7FC| db $9F ; play note G3
|1AC6F6:F7FD| db $06, $3B ; duration, params
|1AC6F8:F7FF| db $9F ; play note G3
|1AC6F9:F800| db $06, $3D ; duration, params
|1AC6FB:F802| db $9F ; play note G3
|1AC6FC:F803| db $0C ; duration
|1AC6FD:F804| db $9F ; play note G3
|1AC6FE:F805| db $24 ; duration
|1AC6FF:F806| db $A1 ; play note A3
|1AC700:F807| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song09_Sub_F808:
|1AC701:F808| db $06 ; duration
|1AC702:F809| db $B0 ; play note C5
|1AC703:F80A| db $AB ; play note G4
|1AC704:F80B| db $A9 ; play note F4
|1AC705:F80C| db $36 ; duration
|1AC706:F80D| db $AB ; play note G4
|1AC707:F80E| db $18 ; duration
|1AC708:F80F| db $B0 ; play note C5
|1AC709:F810| db $60 ; duration
|1AC70A:F811| db $B2 ; play note D5
|1AC70B:F812| db $00 ; End

;===================================================================================================

Song0A_PullingTheMasterSword:
|1AC70C:F813| dw Song0A_Segment0
|1AC70E:F815| dw $0000 ; Song end

Song0A_Segment0:
|1AC710:F817| dw Song0A_Segment0_Track0
|1AC712:F819| dw Song0A_Segment0_Track1
|1AC714:F81B| dw Song0A_Segment0_Track2
|1AC716:F81D| dw Song0A_Segment0_Track3
|1AC718:F81F| dw Song0A_Segment0_Track4
|1AC71A:F821| dw Song0A_Segment0_Track5
|1AC71C:F823| dw $0000
|1AC71E:F825| dw $0000

;---------------------------------------------------------------------------------------------------

Song0A_Segment0_Track0:
|1AC720:F827| db $FA, $18 ; set base percussion sample
|1AC722:F829| db $E5, $B4 ; set song volume
|1AC724:F82B| db $F5, $FF, $28, $28 ; configure EON, EVOLL, EVOLR
|1AC728:F82F| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1AC72C:F833| db $E7, $29 ; set song tempo
|1AC72E:F835| db $E0, $0F ; set instrument - harp
|1AC730:F837| db $ED, $DC ; set channel volume
|1AC732:F839| db $E1, $0A ; set panning - balanced
|1AC734:F83B| db $E2, $BE, $10 ; initiate gradual panning change
|1AC737:F83E| db $30, $7D ; duration, params
|1AC739:F840| db $AB ; play note G4
|1AC73A:F841| db $AB ; play note G4
|1AC73B:F842| db $AB ; play note G4
|1AC73C:F843| db $AB ; play note G4
|1AC73D:F844| db $AB ; play note G4
|1AC73E:F845| db $AB ; play note G4
|1AC73F:F846| db $E0, $09 ; set instrument - strings A
|1AC741:F848| db $E6, $FF, $F0 ; initiate gradual song volume change
|1AC744:F84B| db $E3, $1C, $1A, $1E ; enable vibrato
|1AC748:F84F| db $60 ; duration
|1AC749:F850| db $AC ; play note G#4
|1AC74A:F851| db $AD ; play note A4
|1AC74B:F852| db $AE ; play note A#4
|1AC74C:F853| db $AF ; play note B4
|1AC74D:F854| db $C8 ; sustain current note
|1AC74E:F855| db $C8 ; sustain current note
|1AC74F:F856| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0A_Segment0_Track1:
|1AC750:F857| db $E0, $0F ; set instrument - harp
|1AC752:F859| db $ED, $DC ; set channel volume
|1AC754:F85B| db $E1, $0A ; set panning - balanced
|1AC756:F85D| db $E2, $BE, $0D ; initiate gradual panning change
|1AC759:F860| db $0C ; duration
|1AC75A:F861| db $C9 ; rest
|1AC75B:F862| db $30, $7D ; duration, params
|1AC75D:F864| db $B0 ; play note C5
|1AC75E:F865| db $B0 ; play note C5
|1AC75F:F866| db $B0 ; play note C5
|1AC760:F867| db $B0 ; play note C5
|1AC761:F868| db $B0 ; play note C5
|1AC762:F869| db $24 ; duration
|1AC763:F86A| db $B0 ; play note C5
|1AC764:F86B| db $E0, $09 ; set instrument - strings A
|1AC766:F86D| db $E3, $1A, $1C, $1D ; enable vibrato
|1AC76A:F871| db $60 ; duration
|1AC76B:F872| db $B0 ; play note C5
|1AC76C:F873| db $B1 ; play note C#5
|1AC76D:F874| db $B2 ; play note D5
|1AC76E:F875| db $B3 ; play note D#5
|1AC76F:F876| db $C8 ; sustain current note
|1AC770:F877| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song0A_Segment0_Track2:
|1AC771:F878| db $E0, $0F ; set instrument - harp
|1AC773:F87A| db $ED, $DC ; set channel volume
|1AC775:F87C| db $E1, $0A ; set panning - balanced
|1AC777:F87E| db $E2, $BE, $07 ; initiate gradual panning change
|1AC77A:F881| db $18 ; duration
|1AC77B:F882| db $C9 ; rest
|1AC77C:F883| db $30, $7D ; duration, params
|1AC77E:F885| db $B2 ; play note D5
|1AC77F:F886| db $B2 ; play note D5
|1AC780:F887| db $B2 ; play note D5
|1AC781:F888| db $B2 ; play note D5
|1AC782:F889| db $B2 ; play note D5
|1AC783:F88A| db $18 ; duration
|1AC784:F88B| db $B2 ; play note D5
|1AC785:F88C| db $E0, $09 ; set instrument - strings A
|1AC787:F88E| db $E3, $1A, $1B, $1C ; enable vibrato
|1AC78B:F892| db $60 ; duration
|1AC78C:F893| db $B3 ; play note D#5
|1AC78D:F894| db $B4 ; play note E5
|1AC78E:F895| db $B5 ; play note F5
|1AC78F:F896| db $B6 ; play note F#5
|1AC790:F897| db $C8 ; sustain current note
|1AC791:F898| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song0A_Segment0_Track3:
|1AC792:F899| db $E0, $0F ; set instrument - harp
|1AC794:F89B| db $ED, $DC ; set channel volume
|1AC796:F89D| db $E1, $0A ; set panning - balanced
|1AC798:F89F| db $E2, $BE, $04 ; initiate gradual panning change
|1AC79B:F8A2| db $24 ; duration
|1AC79C:F8A3| db $C9 ; rest
|1AC79D:F8A4| db $30, $7D ; duration, params
|1AC79F:F8A6| db $B7 ; play note G5
|1AC7A0:F8A7| db $B7 ; play note G5
|1AC7A1:F8A8| db $B7 ; play note G5
|1AC7A2:F8A9| db $B7 ; play note G5
|1AC7A3:F8AA| db $B7 ; play note G5
|1AC7A4:F8AB| db $0C ; duration
|1AC7A5:F8AC| db $B7 ; play note G5
|1AC7A6:F8AD| db $E0, $09 ; set instrument - strings A
|1AC7A8:F8AF| db $E3, $1C, $1A, $1E ; enable vibrato
|1AC7AC:F8B3| db $60 ; duration
|1AC7AD:F8B4| db $B8 ; play note G#5
|1AC7AE:F8B5| db $B9 ; play note A5
|1AC7AF:F8B6| db $BA ; play note A#5
|1AC7B0:F8B7| db $BB ; play note B5
|1AC7B1:F8B8| db $C8 ; sustain current note
|1AC7B2:F8B9| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song0A_Segment0_Track4:
|1AC7B3:F8BA| db $E0, $09 ; set instrument - strings A
|1AC7B5:F8BC| db $ED, $DC ; set channel volume
|1AC7B7:F8BE| db $E1, $0A ; set panning - balanced
|1AC7B9:F8C0| db $E2, $BE, $02 ; initiate gradual panning change
|1AC7BC:F8C3| db $E3, $18, $1C, $1A ; enable vibrato
|1AC7C0:F8C7| db $30, $7D ; duration, params
|1AC7C2:F8C9| db $A0 ; play note G#3
|1AC7C3:F8CA| db $A7 ; play note D#4
|1AC7C4:F8CB| db $AB ; play note G4
|1AC7C5:F8CC| db $B0 ; play note C5
|1AC7C6:F8CD| db $60 ; duration
|1AC7C7:F8CE| db $B7 ; play note G5
|1AC7C8:F8CF| db $E0, $09 ; set instrument - strings A
|1AC7CA:F8D1| db $A2 ; play note A#3
|1AC7CB:F8D2| db $A1 ; play note A3
|1AC7CC:F8D3| db $A0 ; play note G#3
|1AC7CD:F8D4| db $9F ; play note G3
|1AC7CE:F8D5| db $C8 ; sustain current note
|1AC7CF:F8D6| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song0A_Segment0_Track5:
|1AC7D0:F8D7| db $E0, $09 ; set instrument - strings A
|1AC7D2:F8D9| db $ED, $B4 ; set channel volume
|1AC7D4:F8DB| db $E1, $0A ; set panning - balanced
|1AC7D6:F8DD| db $E3, $19, $1A, $1C ; enable vibrato
|1AC7DA:F8E1| db $08 ; duration
|1AC7DB:F8E2| db $C9 ; rest
|1AC7DC:F8E3| db $30, $7D ; duration, params
|1AC7DE:F8E5| db $A0 ; play note G#3
|1AC7DF:F8E6| db $A7 ; play note D#4
|1AC7E0:F8E7| db $AB ; play note G4
|1AC7E1:F8E8| db $B0 ; play note C5
|1AC7E2:F8E9| db $58 ; duration
|1AC7E3:F8EA| db $B7 ; play note G5
|1AC7E4:F8EB| db $08 ; duration
|1AC7E5:F8EC| db $C9 ; rest
|1AC7E6:F8ED| db $60 ; duration
|1AC7E7:F8EE| db $B8 ; play note G#5
|1AC7E8:F8EF| db $B9 ; play note A5
|1AC7E9:F8F0| db $BA ; play note A#5
|1AC7EA:F8F1| db $BB ; play note B5
|1AC7EB:F8F2| db $C8 ; sustain current note
|1AC7EC:F8F3| db $58 ; duration
|1AC7ED:F8F4| db $C8 ; sustain current note
|1AC7EE:F8F5| db $00 ; End

;===================================================================================================

Song0C_Fugitive:
|1AC7EF:F8F6| dw Song0C_Segment0

Song0C_Loop:
|1AC7F1:F8F8| dw Song0C_Segment1
|1AC7F3:F8FA| dw Song0C_Segment2
|1AC7F5:F8FC| dw $00FF, Song0C_Loop ; Loop point
|1AC7F9:F900| dw $0000

Song0C_Segment0:
|1AC7FB:F902| dw Song0C_Segment0_Track0
|1AC7FD:F904| dw Song0C_Segment0_Track1
|1AC7FF:F906| dw Song0C_Segment0_Track2
|1AC801:F908| dw Song0C_Segment0_Track3
|1AC803:F90A| dw Song0C_Segment0_Track4
|1AC805:F90C| dw Song0C_Segment0_Track5
|1AC807:F90E| dw $0000
|1AC809:F910| dw $0000

Song0C_Segment1:
|1AC80B:F912| dw Song0C_Segment1_Track0
|1AC80D:F914| dw Song0C_Segment1_Track1
|1AC80F:F916| dw Song0C_Segment1_Track2
|1AC811:F918| dw Song0C_Segment1_Track3
|1AC813:F91A| dw Song0C_Segment1_Track4
|1AC815:F91C| dw Song0C_Segment1_Track5
|1AC817:F91E| dw $0000
|1AC819:F920| dw $0000

Song0C_Segment2:
|1AC81B:F922| dw Song0C_Segment2_Track0
|1AC81D:F924| dw Song0C_Segment2_Track1
|1AC81F:F926| dw Song0C_Segment2_Track2
|1AC821:F928| dw Song0C_Segment2_Track3
|1AC823:F92A| dw Song0C_Segment2_Track4
|1AC825:F92C| dw Song0C_Segment2_Track5
|1AC827:F92E| dw $0000
|1AC829:F930| dw $0000

;---------------------------------------------------------------------------------------------------

Song0C_Segment0_Track0:
|1AC82B:F932| db $FA, $18 ; set base percussion sample
|1AC82D:F934| db $E5, $B4 ; set song volume
|1AC82F:F936| db $F5, $FF, $14, $14 ; configure EON, EVOLL, EVOLR
|1AC833:F93A| db $F7, $02, $0A, $02 ; configure EDL, EFB, FIR
|1AC837:F93E| db $E7, $25 ; set song tempo
|1AC839:F940| db $E0, $0B ; set instrument - trombone
|1AC83B:F942| db $ED, $C8 ; set channel volume
|1AC83D:F944| db $E3, $1A, $18, $14 ; enable vibrato
|1AC841:F948| db $36 ; duration
|1AC842:F949| db $C9 ; rest
|1AC843:F94A| db $2A, $6D ; duration, params
|1AC845:F94C| db $C0 ; play note E6
|1AC846:F94D| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0C_Segment0_Track1:
|1AC847:F94E| db $ED, $C8 ; set channel volume
|1AC849:F950| db $E0, $0B ; set instrument - trombone
|1AC84B:F952| db $E3, $1A, $18, $14 ; enable vibrato
|1AC84F:F956| db $30 ; duration
|1AC850:F957| db $C9 ; rest
|1AC851:F958| db $30, $6D ; duration, params
|1AC853:F95A| db $BA ; play note A#5

;---------------------------------------------------------------------------------------------------

Song0C_Segment0_Track2:
|1AC854:F95B| db $ED, $C8 ; set channel volume
|1AC856:F95D| db $E0, $0B ; set instrument - trombone
|1AC858:F95F| db $E3, $1A, $18, $14 ; enable vibrato
|1AC85C:F963| db $1E ; duration
|1AC85D:F964| db $C9 ; rest
|1AC85E:F965| db $42, $6D ; duration, params
|1AC860:F967| db $B7 ; play note G5

;---------------------------------------------------------------------------------------------------

Song0C_Segment0_Track3:
|1AC861:F968| db $ED, $C8 ; set channel volume
|1AC863:F96A| db $E0, $0B ; set instrument - trombone
|1AC865:F96C| db $E3, $1A, $18, $14 ; enable vibrato
|1AC869:F970| db $18 ; duration
|1AC86A:F971| db $C9 ; rest
|1AC86B:F972| db $48, $6D ; duration, params
|1AC86D:F974| db $B4 ; play note E5

;---------------------------------------------------------------------------------------------------

Song0C_Segment0_Track4:
|1AC86E:F975| db $ED, $C8 ; set channel volume
|1AC870:F977| db $E0, $0B ; set instrument - trombone
|1AC872:F979| db $E3, $1A, $18, $14 ; enable vibrato
|1AC876:F97D| db $06 ; duration
|1AC877:F97E| db $C9 ; rest
|1AC878:F97F| db $5A, $6D ; duration, params
|1AC87A:F981| db $B1 ; play note C#5

;---------------------------------------------------------------------------------------------------

Song0C_Segment0_Track5:
|1AC87B:F982| db $ED, $C8 ; set channel volume
|1AC87D:F984| db $E0, $0B ; set instrument - trombone
|1AC87F:F986| db $E3, $1A, $18, $14 ; enable vibrato
|1AC883:F98A| db $60, $6D ; duration, params
|1AC885:F98C| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song0C_Segment1_Track0:
|1AC886:F98D| db $E7, $2D ; set song tempo
|1AC888:F98F| db $EF : dw Song0C_Sub_FA1A : db $02 ; call segment subroutine
|1AC88C:F993| db $EF : dw Song0C_Sub_FA2F : db $02 ; call segment subroutine
|1AC890:F997| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0C_Segment1_Track1:
|1AC891:F998| db $EF : dw Song0C_Sub_FA44 : db $02 ; call segment subroutine
|1AC895:F99C| db $EF : dw Song0C_Sub_FA59 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0C_Segment1_Track2:
|1AC899:F9A0| db $E0, $11 ; set instrument - trumpet
|1AC89B:F9A2| db $24, $5B ; duration, params
|1AC89D:F9A4| db $9A ; play note D3
|1AC89E:F9A5| db $9A ; play note D3
|1AC89F:F9A6| db $0C ; duration
|1AC8A0:F9A7| db $9A ; play note D3
|1AC8A1:F9A8| db $9A ; play note D3
|1AC8A2:F9A9| db $24 ; duration
|1AC8A3:F9AA| db $9A ; play note D3
|1AC8A4:F9AB| db $9A ; play note D3
|1AC8A5:F9AC| db $0C ; duration
|1AC8A6:F9AD| db $9A ; play note D3
|1AC8A7:F9AE| db $9A ; play note D3
|1AC8A8:F9AF| db $EF : dw Song0C_Sub_FA6E : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0C_Segment1_Track3:
|1AC8AC:F9B3| db $E0, $11 ; set instrument - trumpet
|1AC8AE:F9B5| db $EF : dw Song0C_Sub_FA75 : db $01 ; call segment subroutine
|1AC8B2:F9B9| db $EF : dw Song0C_Sub_FA83 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0C_Segment1_Track4:
|1AC8B6:F9BD| db $E0, $0E ; set instrument - chimes
|1AC8B8:F9BF| db $ED, $78 ; set channel volume
|1AC8BA:F9C1| db $EF : dw Song0C_Sub_FA1A : db $02 ; call segment subroutine
|1AC8BE:F9C5| db $EF : dw Song0C_Sub_FA2F : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0C_Segment1_Track5:
|1AC8C2:F9C9| db $E0, $02 ; set instrument - timpani
|1AC8C4:F9CB| db $EF : dw Song0C_Sub_FA75 : db $01 ; call segment subroutine
|1AC8C8:F9CF| db $EF : dw Song0C_Sub_FA83 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0C_Segment2_Track0:
|1AC8CC:F9D3| db $E7, $2D ; set song tempo
|1AC8CE:F9D5| db $EF : dw Song0C_Sub_FA8A : db $02 ; call segment subroutine
|1AC8D2:F9D9| db $EF : dw Song0C_Sub_FA9F : db $02 ; call segment subroutine
|1AC8D6:F9DD| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0C_Segment2_Track1:
|1AC8D7:F9DE| db $EF : dw Song0C_Sub_FAB4 : db $02 ; call segment subroutine
|1AC8DB:F9E2| db $EF : dw Song0C_Sub_FAC9 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0C_Segment2_Track2:
|1AC8DF:F9E6| db $E0, $11 ; set instrument - trumpet
|1AC8E1:F9E8| db $24, $5B ; duration, params
|1AC8E3:F9EA| db $9C ; play note E3
|1AC8E4:F9EB| db $9C ; play note E3
|1AC8E5:F9EC| db $0C ; duration
|1AC8E6:F9ED| db $9C ; play note E3
|1AC8E7:F9EE| db $9C ; play note E3
|1AC8E8:F9EF| db $24 ; duration
|1AC8E9:F9F0| db $9C ; play note E3
|1AC8EA:F9F1| db $9C ; play note E3
|1AC8EB:F9F2| db $0C ; duration
|1AC8EC:F9F3| db $9C ; play note E3
|1AC8ED:F9F4| db $9C ; play note E3
|1AC8EE:F9F5| db $EF : dw Song0C_Sub_FADE : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0C_Segment2_Track3:
|1AC8F2:F9F9| db $E0, $11 ; set instrument - trumpet
|1AC8F4:F9FB| db $EF : dw Song0C_Sub_FAE5 : db $01 ; call segment subroutine
|1AC8F8:F9FF| db $EF : dw Song0C_Sub_FAF3 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0C_Segment2_Track4:
|1AC8FC:FA03| db $E0, $0E ; set instrument - chimes
|1AC8FE:FA05| db $ED, $78 ; set channel volume
|1AC900:FA07| db $EF : dw Song0C_Sub_FA8A : db $02 ; call segment subroutine
|1AC904:FA0B| db $EF : dw Song0C_Sub_FA9F : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0C_Segment2_Track5:
|1AC908:FA0F| db $E0, $02 ; set instrument - timpani
|1AC90A:FA11| db $EF : dw Song0C_Sub_FAE5 : db $01 ; call segment subroutine
|1AC90E:FA15| db $EF : dw Song0C_Sub_FAF3 : db $02 ; call segment subroutine
|1AC912:FA19| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FA1A:
|1AC913:FA1A| db $0C, $5D ; duration, params
|1AC915:FA1C| db $A7 ; play note D#4
|1AC916:FA1D| db $0C, $59 ; duration, params
|1AC918:FA1F| db $A6 ; play note D4
|1AC919:FA20| db $A7 ; play note D#4
|1AC91A:FA21| db $0C, $5D ; duration, params
|1AC91C:FA23| db $A6 ; play note D4
|1AC91D:FA24| db $0C, $59 ; duration, params
|1AC91F:FA26| db $A7 ; play note D#4
|1AC920:FA27| db $A6 ; play note D4
|1AC921:FA28| db $0C, $5D ; duration, params
|1AC923:FA2A| db $A7 ; play note D#4
|1AC924:FA2B| db $0C, $59 ; duration, params
|1AC926:FA2D| db $A6 ; play note D4
|1AC927:FA2E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FA2F:
|1AC928:FA2F| db $0C, $5D ; duration, params
|1AC92A:FA31| db $A6 ; play note D4
|1AC92B:FA32| db $0C, $59 ; duration, params
|1AC92D:FA34| db $A5 ; play note C#4
|1AC92E:FA35| db $A6 ; play note D4
|1AC92F:FA36| db $0C, $5D ; duration, params
|1AC931:FA38| db $A5 ; play note C#4
|1AC932:FA39| db $0C, $59 ; duration, params
|1AC934:FA3B| db $A6 ; play note D4
|1AC935:FA3C| db $A5 ; play note C#4
|1AC936:FA3D| db $0C, $5D ; duration, params
|1AC938:FA3F| db $A6 ; play note D4
|1AC939:FA40| db $0C, $59 ; duration, params
|1AC93B:FA42| db $A5 ; play note C#4
|1AC93C:FA43| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FA44:
|1AC93D:FA44| db $0C, $5D ; duration, params
|1AC93F:FA46| db $A2 ; play note A#3
|1AC940:FA47| db $0C, $59 ; duration, params
|1AC942:FA49| db $A2 ; play note A#3
|1AC943:FA4A| db $A2 ; play note A#3
|1AC944:FA4B| db $0C, $5D ; duration, params
|1AC946:FA4D| db $A2 ; play note A#3
|1AC947:FA4E| db $0C, $59 ; duration, params
|1AC949:FA50| db $A2 ; play note A#3
|1AC94A:FA51| db $A2 ; play note A#3
|1AC94B:FA52| db $0C, $5D ; duration, params
|1AC94D:FA54| db $A2 ; play note A#3
|1AC94E:FA55| db $0C, $59 ; duration, params
|1AC950:FA57| db $A2 ; play note A#3
|1AC951:FA58| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FA59:
|1AC952:FA59| db $0C, $5D ; duration, params
|1AC954:FA5B| db $A1 ; play note A3
|1AC955:FA5C| db $0C, $59 ; duration, params
|1AC957:FA5E| db $A1 ; play note A3
|1AC958:FA5F| db $A1 ; play note A3
|1AC959:FA60| db $0C, $5D ; duration, params
|1AC95B:FA62| db $A1 ; play note A3
|1AC95C:FA63| db $0C, $59 ; duration, params
|1AC95E:FA65| db $A1 ; play note A3
|1AC95F:FA66| db $A1 ; play note A3
|1AC960:FA67| db $0C, $5D ; duration, params
|1AC962:FA69| db $A1 ; play note A3
|1AC963:FA6A| db $0C, $59 ; duration, params
|1AC965:FA6C| db $A1 ; play note A3
|1AC966:FA6D| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FA6E:
|1AC967:FA6E| db $24 ; duration
|1AC968:FA6F| db $99 ; play note C#3
|1AC969:FA70| db $99 ; play note C#3
|1AC96A:FA71| db $0C ; duration
|1AC96B:FA72| db $99 ; play note C#3
|1AC96C:FA73| db $99 ; play note C#3
|1AC96D:FA74| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FA75:
|1AC96E:FA75| db $24, $5B ; duration, params
|1AC970:FA77| db $93 ; play note G2
|1AC971:FA78| db $93 ; play note G2
|1AC972:FA79| db $0C ; duration
|1AC973:FA7A| db $93 ; play note G2
|1AC974:FA7B| db $93 ; play note G2
|1AC975:FA7C| db $24 ; duration
|1AC976:FA7D| db $93 ; play note G2
|1AC977:FA7E| db $93 ; play note G2
|1AC978:FA7F| db $0C ; duration
|1AC979:FA80| db $93 ; play note G2
|1AC97A:FA81| db $93 ; play note G2
|1AC97B:FA82| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FA83:
|1AC97C:FA83| db $24 ; duration
|1AC97D:FA84| db $92 ; play note F#2
|1AC97E:FA85| db $92 ; play note F#2
|1AC97F:FA86| db $0C ; duration
|1AC980:FA87| db $92 ; play note F#2
|1AC981:FA88| db $92 ; play note F#2
|1AC982:FA89| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FA8A:
|1AC983:FA8A| db $0C, $5D ; duration, params
|1AC985:FA8C| db $A9 ; play note F4
|1AC986:FA8D| db $0C, $59 ; duration, params
|1AC988:FA8F| db $A8 ; play note E4
|1AC989:FA90| db $A9 ; play note F4
|1AC98A:FA91| db $0C, $5D ; duration, params
|1AC98C:FA93| db $A8 ; play note E4
|1AC98D:FA94| db $0C, $59 ; duration, params
|1AC98F:FA96| db $A9 ; play note F4
|1AC990:FA97| db $A8 ; play note E4
|1AC991:FA98| db $0C, $5D ; duration, params
|1AC993:FA9A| db $A9 ; play note F4
|1AC994:FA9B| db $0C, $59 ; duration, params
|1AC996:FA9D| db $A8 ; play note E4
|1AC997:FA9E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FA9F:
|1AC998:FA9F| db $0C, $5D ; duration, params
|1AC99A:FAA1| db $A8 ; play note E4
|1AC99B:FAA2| db $0C, $59 ; duration, params
|1AC99D:FAA4| db $A7 ; play note D#4
|1AC99E:FAA5| db $A8 ; play note E4
|1AC99F:FAA6| db $0C, $5D ; duration, params
|1AC9A1:FAA8| db $A7 ; play note D#4
|1AC9A2:FAA9| db $0C, $59 ; duration, params
|1AC9A4:FAAB| db $A8 ; play note E4
|1AC9A5:FAAC| db $A7 ; play note D#4
|1AC9A6:FAAD| db $0C, $5D ; duration, params
|1AC9A8:FAAF| db $A8 ; play note E4
|1AC9A9:FAB0| db $0C, $59 ; duration, params
|1AC9AB:FAB2| db $A7 ; play note D#4
|1AC9AC:FAB3| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FAB4:
|1AC9AD:FAB4| db $0C, $5D ; duration, params
|1AC9AF:FAB6| db $A4 ; play note C4
|1AC9B0:FAB7| db $0C, $59 ; duration, params
|1AC9B2:FAB9| db $A4 ; play note C4
|1AC9B3:FABA| db $A4 ; play note C4
|1AC9B4:FABB| db $0C, $5D ; duration, params
|1AC9B6:FABD| db $A4 ; play note C4
|1AC9B7:FABE| db $0C, $59 ; duration, params
|1AC9B9:FAC0| db $A4 ; play note C4
|1AC9BA:FAC1| db $A4 ; play note C4
|1AC9BB:FAC2| db $0C, $5D ; duration, params
|1AC9BD:FAC4| db $A4 ; play note C4
|1AC9BE:FAC5| db $0C, $59 ; duration, params
|1AC9C0:FAC7| db $A4 ; play note C4
|1AC9C1:FAC8| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FAC9:
|1AC9C2:FAC9| db $0C, $5D ; duration, params
|1AC9C4:FACB| db $A3 ; play note B3
|1AC9C5:FACC| db $0C, $59 ; duration, params
|1AC9C7:FACE| db $A3 ; play note B3
|1AC9C8:FACF| db $A3 ; play note B3
|1AC9C9:FAD0| db $0C, $5D ; duration, params
|1AC9CB:FAD2| db $A3 ; play note B3
|1AC9CC:FAD3| db $0C, $59 ; duration, params
|1AC9CE:FAD5| db $A3 ; play note B3
|1AC9CF:FAD6| db $A3 ; play note B3
|1AC9D0:FAD7| db $0C, $5D ; duration, params
|1AC9D2:FAD9| db $A3 ; play note B3
|1AC9D3:FADA| db $0C, $59 ; duration, params
|1AC9D5:FADC| db $A3 ; play note B3
|1AC9D6:FADD| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FADE:
|1AC9D7:FADE| db $24 ; duration
|1AC9D8:FADF| db $9B ; play note D#3
|1AC9D9:FAE0| db $9B ; play note D#3
|1AC9DA:FAE1| db $0C ; duration
|1AC9DB:FAE2| db $9B ; play note D#3
|1AC9DC:FAE3| db $9B ; play note D#3
|1AC9DD:FAE4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FAE5:
|1AC9DE:FAE5| db $24, $5B ; duration, params
|1AC9E0:FAE7| db $95 ; play note A2
|1AC9E1:FAE8| db $95 ; play note A2
|1AC9E2:FAE9| db $0C ; duration
|1AC9E3:FAEA| db $95 ; play note A2
|1AC9E4:FAEB| db $95 ; play note A2
|1AC9E5:FAEC| db $24 ; duration
|1AC9E6:FAED| db $95 ; play note A2
|1AC9E7:FAEE| db $95 ; play note A2
|1AC9E8:FAEF| db $0C ; duration
|1AC9E9:FAF0| db $95 ; play note A2
|1AC9EA:FAF1| db $95 ; play note A2
|1AC9EB:FAF2| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FAF3:
|1AC9EC:FAF3| db $24 ; duration
|1AC9ED:FAF4| db $94 ; play note G#2
|1AC9EE:FAF5| db $94 ; play note G#2
|1AC9EF:FAF6| db $0C ; duration
|1AC9F0:FAF7| db $94 ; play note G#2
|1AC9F1:FAF8| db $94 ; play note G#2
|1AC9F2:FAF9| db $00 ; End

;===================================================================================================

Song0F_IntroFanfare:
|1AC9F3:FAFA| dw Song01_Segment1
|1AC9F5:FAFC| dw $0000 ; Song end

Song01_Segment1:
|1AC9F7:FAFE| dw Song01_Segment1_Track0
|1AC9F9:FB00| dw Song01_Segment1_Track1
|1AC9FB:FB02| dw Song01_Segment1_Track2
|1AC9FD:FB04| dw Song01_Segment1_Track3
|1AC9FF:FB06| dw Song01_Segment1_Track4
|1ACA01:FB08| dw Song01_Segment1_Track5
|1ACA03:FB0A| dw Song01_Segment1_Track6
|1ACA05:FB0C| dw Song01_Segment1_Track7

;---------------------------------------------------------------------------------------------------

Song01_Segment1_Track0:
|1ACA07:FB0E| db $FA, $19 ; set base percussion sample
|1ACA09:FB10| db $E5, $C8 ; set song volume
|1ACA0B:FB12| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1ACA0F:FB16| db $F7, $02, $14, $02 ; configure EDL, EFB, FIR
|1ACA13:FB1A| db $F8, $28, $14, $14 ; initiate gradual echo volume change
|1ACA17:FB1E| db $E7, $2B ; set song tempo
|1ACA19:FB20| db $E0, $0B ; set instrument - trombone
|1ACA1B:FB22| db $ED, $C8 ; set channel volume
|1ACA1D:FB24| db $E3, $18, $14, $1A ; enable vibrato
|1ACA21:FB28| db $E1, $0C ; set panning - leaning left
|1ACA23:FB2A| db $18 ; duration
|1ACA24:FB2B| db $C9 ; rest
|1ACA25:FB2C| db $0C, $4D ; duration, params
|1ACA27:FB2E| db $B3 ; play note D#5
|1ACA28:FB2F| db $B8 ; play note G#5
|1ACA29:FB30| db $30, $6D ; duration, params
|1ACA2B:FB32| db $BA ; play note A#5
|1ACA2C:FB33| db $EF : dw Song01_Sub_FD27 : db $02 ; call segment subroutine
|1ACA30:FB37| db $EF : dw Song01_Sub_FD39 : db $01 ; call segment subroutine
|1ACA34:FB3B| db $60 ; duration
|1ACA35:FB3C| db $C8 ; sustain current note
|1ACA36:FB3D| db $C9 ; rest
|1ACA37:FB3E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song01_Segment1_Track1:
|1ACA38:FB3F| db $E0, $0B ; set instrument - trombone
|1ACA3A:FB41| db $ED, $C8 ; set channel volume
|1ACA3C:FB43| db $E3, $18, $14, $1A ; enable vibrato
|1ACA40:FB47| db $E1, $0E ; set panning - leaning left
|1ACA42:FB49| db $18 ; duration
|1ACA43:FB4A| db $C9 ; rest
|1ACA44:FB4B| db $0C, $4D ; duration, params
|1ACA46:FB4D| db $A2 ; play note A#3
|1ACA47:FB4E| db $A7 ; play note D#4
|1ACA48:FB4F| db $30, $6D ; duration, params
|1ACA4A:FB51| db $A9 ; play note F4
|1ACA4B:FB52| db $EF : dw Song01_Sub_FD45 : db $02 ; call segment subroutine
|1ACA4F:FB56| db $C8 ; sustain current note
|1ACA50:FB57| db $AC ; play note G#4
|1ACA51:FB58| db $24 ; duration
|1ACA52:FB59| db $AC ; play note G#4
|1ACA53:FB5A| db $06, $4D ; duration, params
|1ACA55:FB5C| db $AB ; play note G4
|1ACA56:FB5D| db $A9 ; play note F4
|1ACA57:FB5E| db $30, $6D ; duration, params
|1ACA59:FB60| db $AC ; play note G#4
|1ACA5A:FB61| db $60 ; duration
|1ACA5B:FB62| db $C8 ; sustain current note
|1ACA5C:FB63| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song01_Segment1_Track2:
|1ACA5D:FB64| db $E0, $0B ; set instrument - trombone
|1ACA5F:FB66| db $ED, $C8 ; set channel volume
|1ACA61:FB68| db $E3, $18, $14, $1A ; enable vibrato
|1ACA65:FB6C| db $E1, $0A ; set panning - balanced
|1ACA67:FB6E| db $18 ; duration
|1ACA68:FB6F| db $C9 ; rest
|1ACA69:FB70| db $0C, $4D ; duration, params
|1ACA6B:FB72| db $A9 ; play note F4
|1ACA6C:FB73| db $AE ; play note A#4
|1ACA6D:FB74| db $30, $6D ; duration, params
|1ACA6F:FB76| db $B0 ; play note C5
|1ACA70:FB77| db $18 ; duration
|1ACA71:FB78| db $C8 ; sustain current note
|1ACA72:FB79| db $0C, $4D ; duration, params
|1ACA74:FB7B| db $AE ; play note A#4
|1ACA75:FB7C| db $A9 ; play note F4
|1ACA76:FB7D| db $AE ; play note A#4
|1ACA77:FB7E| db $B0 ; play note C5
|1ACA78:FB7F| db $AE ; play note A#4
|1ACA79:FB80| db $A9 ; play note F4
|1ACA7A:FB81| db $AE ; play note A#4
|1ACA7B:FB82| db $A9 ; play note F4
|1ACA7C:FB83| db $AE ; play note A#4
|1ACA7D:FB84| db $C9 ; rest
|1ACA7E:FB85| db $30, $6D ; duration, params
|1ACA80:FB87| db $B0 ; play note C5
|1ACA81:FB88| db $18 ; duration
|1ACA82:FB89| db $C8 ; sustain current note
|1ACA83:FB8A| db $0C, $4D ; duration, params
|1ACA85:FB8C| db $AE ; play note A#4
|1ACA86:FB8D| db $A9 ; play note F4
|1ACA87:FB8E| db $AE ; play note A#4
|1ACA88:FB8F| db $B0 ; play note C5
|1ACA89:FB90| db $AE ; play note A#4
|1ACA8A:FB91| db $A9 ; play note F4
|1ACA8B:FB92| db $AE ; play note A#4
|1ACA8C:FB93| db $A9 ; play note F4
|1ACA8D:FB94| db $AE ; play note A#4
|1ACA8E:FB95| db $C9 ; rest
|1ACA8F:FB96| db $30, $2D ; duration, params
|1ACA91:FB98| db $B0 ; play note C5
|1ACA92:FB99| db $C8 ; sustain current note
|1ACA93:FB9A| db $30, $6D ; duration, params
|1ACA95:FB9C| db $B3 ; play note D#5
|1ACA96:FB9D| db $24 ; duration
|1ACA97:FB9E| db $B3 ; play note D#5
|1ACA98:FB9F| db $06, $4D ; duration, params
|1ACA9A:FBA1| db $B2 ; play note D5
|1ACA9B:FBA2| db $B0 ; play note C5
|1ACA9C:FBA3| db $30, $6D ; duration, params
|1ACA9E:FBA5| db $B3 ; play note D#5
|1ACA9F:FBA6| db $60 ; duration
|1ACAA0:FBA7| db $C8 ; sustain current note
|1ACAA1:FBA8| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song01_Segment1_Track3:
|1ACAA2:FBA9| db $E0, $11 ; set instrument - trumpet
|1ACAA4:FBAB| db $ED, $DC ; set channel volume
|1ACAA6:FBAD| db $E3, $16, $1C, $1A ; enable vibrato
|1ACAAA:FBB1| db $E1, $04 ; set panning - leaning right
|1ACAAC:FBB3| db $48, $6D ; duration, params
|1ACAAE:FBB5| db $94 ; play note G#2
|1ACAAF:FBB6| db $06 ; duration
|1ACAB0:FBB7| db $94 ; play note G#2
|1ACAB1:FBB8| db $94 ; play note G#2
|1ACAB2:FBB9| db $94 ; play note G#2
|1ACAB3:FBBA| db $94 ; play note G#2
|1ACAB4:FBBB| db $30 ; duration
|1ACAB5:FBBC| db $94 ; play note G#2
|1ACAB6:FBBD| db $0C, $3D ; duration, params
|1ACAB8:FBBF| db $94 ; play note G#2
|1ACAB9:FBC0| db $C9 ; rest
|1ACABA:FBC1| db $94 ; play note G#2
|1ACABB:FBC2| db $C9 ; rest
|1ACABC:FBC3| db $48, $6D ; duration, params
|1ACABE:FBC5| db $97 ; play note B2
|1ACABF:FBC6| db $06 ; duration
|1ACAC0:FBC7| db $97 ; play note B2
|1ACAC1:FBC8| db $97 ; play note B2
|1ACAC2:FBC9| db $97 ; play note B2
|1ACAC3:FBCA| db $97 ; play note B2
|1ACAC4:FBCB| db $30 ; duration
|1ACAC5:FBCC| db $97 ; play note B2
|1ACAC6:FBCD| db $0C, $3D ; duration, params
|1ACAC8:FBCF| db $97 ; play note B2
|1ACAC9:FBD0| db $C9 ; rest
|1ACACA:FBD1| db $97 ; play note B2
|1ACACB:FBD2| db $C9 ; rest
|1ACACC:FBD3| db $48, $6D ; duration, params
|1ACACE:FBD5| db $99 ; play note C#3
|1ACACF:FBD6| db $06 ; duration
|1ACAD0:FBD7| db $99 ; play note C#3
|1ACAD1:FBD8| db $99 ; play note C#3
|1ACAD2:FBD9| db $99 ; play note C#3
|1ACAD3:FBDA| db $99 ; play note C#3
|1ACAD4:FBDB| db $30 ; duration
|1ACAD5:FBDC| db $99 ; play note C#3
|1ACAD6:FBDD| db $0C, $3D ; duration, params
|1ACAD8:FBDF| db $99 ; play note C#3
|1ACAD9:FBE0| db $C9 ; rest
|1ACADA:FBE1| db $99 ; play note C#3
|1ACADB:FBE2| db $C9 ; rest
|1ACADC:FBE3| db $60, $6D ; duration, params
|1ACADE:FBE5| db $94 ; play note G#2
|1ACADF:FBE6| db $C8 ; sustain current note
|1ACAE0:FBE7| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song01_Segment1_Track4:
|1ACAE1:FBE8| db $E0, $11 ; set instrument - trumpet
|1ACAE3:FBEA| db $ED, $DC ; set channel volume
|1ACAE5:FBEC| db $E3, $16, $1C, $1A ; enable vibrato
|1ACAE9:FBF0| db $E1, $06 ; set panning - leaning right
|1ACAEB:FBF2| db $48, $6D ; duration, params
|1ACAED:FBF4| db $9B ; play note D#3
|1ACAEE:FBF5| db $06 ; duration
|1ACAEF:FBF6| db $9B ; play note D#3
|1ACAF0:FBF7| db $9B ; play note D#3
|1ACAF1:FBF8| db $9B ; play note D#3
|1ACAF2:FBF9| db $9B ; play note D#3
|1ACAF3:FBFA| db $30 ; duration
|1ACAF4:FBFB| db $9B ; play note D#3
|1ACAF5:FBFC| db $0C, $3D ; duration, params
|1ACAF7:FBFE| db $9B ; play note D#3
|1ACAF8:FBFF| db $C9 ; rest
|1ACAF9:FC00| db $9B ; play note D#3
|1ACAFA:FC01| db $C9 ; rest
|1ACAFB:FC02| db $48, $6D ; duration, params
|1ACAFD:FC04| db $9E ; play note F#3
|1ACAFE:FC05| db $06 ; duration
|1ACAFF:FC06| db $9E ; play note F#3
|1ACB00:FC07| db $9E ; play note F#3
|1ACB01:FC08| db $9E ; play note F#3
|1ACB02:FC09| db $9E ; play note F#3
|1ACB03:FC0A| db $30 ; duration
|1ACB04:FC0B| db $9E ; play note F#3
|1ACB05:FC0C| db $0C, $3D ; duration, params
|1ACB07:FC0E| db $9E ; play note F#3
|1ACB08:FC0F| db $C9 ; rest
|1ACB09:FC10| db $9E ; play note F#3
|1ACB0A:FC11| db $C9 ; rest
|1ACB0B:FC12| db $48, $6D ; duration, params
|1ACB0D:FC14| db $A0 ; play note G#3
|1ACB0E:FC15| db $06 ; duration
|1ACB0F:FC16| db $A0 ; play note G#3
|1ACB10:FC17| db $A0 ; play note G#3
|1ACB11:FC18| db $A0 ; play note G#3
|1ACB12:FC19| db $A0 ; play note G#3
|1ACB13:FC1A| db $30 ; duration
|1ACB14:FC1B| db $A0 ; play note G#3
|1ACB15:FC1C| db $0C, $3D ; duration, params
|1ACB17:FC1E| db $A0 ; play note G#3
|1ACB18:FC1F| db $C9 ; rest
|1ACB19:FC20| db $A0 ; play note G#3
|1ACB1A:FC21| db $C9 ; rest
|1ACB1B:FC22| db $60, $6D ; duration, params
|1ACB1D:FC24| db $9B ; play note D#3
|1ACB1E:FC25| db $C8 ; sustain current note
|1ACB1F:FC26| db $18 ; duration
|1ACB20:FC27| db $C9 ; rest
|1ACB21:FC28| db $C9 ; rest
|1ACB22:FC29| db $C9 ; rest
|1ACB23:FC2A| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song01_Segment1_Track5:
|1ACB24:FC2B| db $E0, $02 ; set instrument - timpani
|1ACB26:FC2D| db $ED, $C8 ; set channel volume
|1ACB28:FC2F| db $60, $7D ; duration, params
|1ACB2A:FC31| db $89 ; play note A1
|1ACB2B:FC32| db $EF : dw Song01_Sub_FD57 : db $01 ; call segment subroutine
|1ACB2F:FC36| db $60, $7D ; duration, params
|1ACB31:FC38| db $89 ; play note A1
|1ACB32:FC39| db $EF : dw Song01_Sub_FD57 : db $01 ; call segment subroutine
|1ACB36:FC3D| db $60, $7D ; duration, params
|1ACB38:FC3F| db $89 ; play note A1
|1ACB39:FC40| db $E0, $13 ; set instrument - snare A
|1ACB3B:FC42| db $ED, $A0 ; set channel volume
|1ACB3D:FC44| db $03, $7F ; duration, params
|1ACB3F:FC46| db $A7 ; play note D#4
|1ACB40:FC47| db $06, $7E ; duration, params
|1ACB42:FC49| db $A7 ; play note D#4
|1ACB43:FC4A| db $06, $79 ; duration, params
|1ACB45:FC4C| db $A7 ; play note D#4
|1ACB46:FC4D| db $A7 ; play note D#4
|1ACB47:FC4E| db $06, $7A ; duration, params
|1ACB49:FC50| db $A7 ; play note D#4
|1ACB4A:FC51| db $A7 ; play note D#4
|1ACB4B:FC52| db $06, $7B ; duration, params
|1ACB4D:FC54| db $A7 ; play note D#4
|1ACB4E:FC55| db $A7 ; play note D#4
|1ACB4F:FC56| db $06, $7C ; duration, params
|1ACB51:FC58| db $A7 ; play note D#4
|1ACB52:FC59| db $A7 ; play note D#4
|1ACB53:FC5A| db $06, $7D ; duration, params
|1ACB55:FC5C| db $A7 ; play note D#4
|1ACB56:FC5D| db $A7 ; play note D#4
|1ACB57:FC5E| db $06, $7E ; duration, params
|1ACB59:FC60| db $A7 ; play note D#4
|1ACB5A:FC61| db $A7 ; play note D#4
|1ACB5B:FC62| db $06, $7F ; duration, params
|1ACB5D:FC64| db $A7 ; play note D#4
|1ACB5E:FC65| db $09 ; duration
|1ACB5F:FC66| db $A7 ; play note D#4
|1ACB60:FC67| db $03 ; duration
|1ACB61:FC68| db $A7 ; play note D#4
|1ACB62:FC69| db $06, $7E ; duration, params
|1ACB64:FC6B| db $A7 ; play note D#4
|1ACB65:FC6C| db $06, $79 ; duration, params
|1ACB67:FC6E| db $A7 ; play note D#4
|1ACB68:FC6F| db $A7 ; play note D#4
|1ACB69:FC70| db $06, $7A ; duration, params
|1ACB6B:FC72| db $A7 ; play note D#4
|1ACB6C:FC73| db $A7 ; play note D#4
|1ACB6D:FC74| db $06, $7B ; duration, params
|1ACB6F:FC76| db $A7 ; play note D#4
|1ACB70:FC77| db $A7 ; play note D#4
|1ACB71:FC78| db $06, $7C ; duration, params
|1ACB73:FC7A| db $A7 ; play note D#4
|1ACB74:FC7B| db $A7 ; play note D#4
|1ACB75:FC7C| db $06, $7D ; duration, params
|1ACB77:FC7E| db $A7 ; play note D#4
|1ACB78:FC7F| db $A7 ; play note D#4
|1ACB79:FC80| db $06, $7E ; duration, params
|1ACB7B:FC82| db $A7 ; play note D#4
|1ACB7C:FC83| db $A7 ; play note D#4
|1ACB7D:FC84| db $06, $7F ; duration, params
|1ACB7F:FC86| db $A7 ; play note D#4
|1ACB80:FC87| db $A7 ; play note D#4
|1ACB81:FC88| db $A7 ; play note D#4
|1ACB82:FC89| db $A7 ; play note D#4
|1ACB83:FC8A| db $A7 ; play note D#4
|1ACB84:FC8B| db $A7 ; play note D#4
|1ACB85:FC8C| db $A7 ; play note D#4
|1ACB86:FC8D| db $A7 ; play note D#4
|1ACB87:FC8E| db $A7 ; play note D#4
|1ACB88:FC8F| db $A7 ; play note D#4
|1ACB89:FC90| db $A7 ; play note D#4
|1ACB8A:FC91| db $A7 ; play note D#4
|1ACB8B:FC92| db $A7 ; play note D#4
|1ACB8C:FC93| db $A7 ; play note D#4
|1ACB8D:FC94| db $A7 ; play note D#4
|1ACB8E:FC95| db $A7 ; play note D#4
|1ACB8F:FC96| db $A7 ; play note D#4
|1ACB90:FC97| db $A7 ; play note D#4
|1ACB91:FC98| db $63 ; duration
|1ACB92:FC99| db $A7 ; play note D#4

;---------------------------------------------------------------------------------------------------

Song01_Segment1_Track6:
|1ACB93:FC9A| db $E0, $0C ; set instrument - cymbal
|1ACB95:FC9C| db $ED, $DC ; set channel volume
|1ACB97:FC9E| db $60, $7D ; duration, params
|1ACB99:FCA0| db $95 ; play note A2
|1ACB9A:FCA1| db $EF : dw Song01_Sub_FD83 : db $01 ; call segment subroutine
|1ACB9E:FCA5| db $60, $7D ; duration, params
|1ACBA0:FCA7| db $95 ; play note A2
|1ACBA1:FCA8| db $EF : dw Song01_Sub_FD83 : db $01 ; call segment subroutine
|1ACBA5:FCAC| db $60, $7D ; duration, params
|1ACBA7:FCAE| db $95 ; play note A2
|1ACBA8:FCAF| db $E0, $13 ; set instrument - snare A
|1ACBAA:FCB1| db $ED, $A0 ; set channel volume
|1ACBAC:FCB3| db $06, $7F ; duration, params
|1ACBAE:FCB5| db $A7 ; play note D#4
|1ACBAF:FCB6| db $06, $7E ; duration, params
|1ACBB1:FCB8| db $A7 ; play note D#4
|1ACBB2:FCB9| db $06, $79 ; duration, params
|1ACBB4:FCBB| db $A7 ; play note D#4
|1ACBB5:FCBC| db $A7 ; play note D#4
|1ACBB6:FCBD| db $06, $7A ; duration, params
|1ACBB8:FCBF| db $A7 ; play note D#4
|1ACBB9:FCC0| db $A7 ; play note D#4
|1ACBBA:FCC1| db $06, $7B ; duration, params
|1ACBBC:FCC3| db $A7 ; play note D#4
|1ACBBD:FCC4| db $A7 ; play note D#4
|1ACBBE:FCC5| db $06, $7C ; duration, params
|1ACBC0:FCC7| db $A7 ; play note D#4
|1ACBC1:FCC8| db $A7 ; play note D#4
|1ACBC2:FCC9| db $06, $7D ; duration, params
|1ACBC4:FCCB| db $A7 ; play note D#4
|1ACBC5:FCCC| db $A7 ; play note D#4
|1ACBC6:FCCD| db $06, $7E ; duration, params
|1ACBC8:FCCF| db $A7 ; play note D#4
|1ACBC9:FCD0| db $A7 ; play note D#4
|1ACBCA:FCD1| db $06, $7F ; duration, params
|1ACBCC:FCD3| db $A7 ; play note D#4
|1ACBCD:FCD4| db $A7 ; play note D#4
|1ACBCE:FCD5| db $A7 ; play note D#4
|1ACBCF:FCD6| db $06, $7E ; duration, params
|1ACBD1:FCD8| db $A7 ; play note D#4
|1ACBD2:FCD9| db $06, $79 ; duration, params
|1ACBD4:FCDB| db $A7 ; play note D#4
|1ACBD5:FCDC| db $A7 ; play note D#4
|1ACBD6:FCDD| db $06, $7A ; duration, params
|1ACBD8:FCDF| db $A7 ; play note D#4
|1ACBD9:FCE0| db $A7 ; play note D#4
|1ACBDA:FCE1| db $06, $7B ; duration, params
|1ACBDC:FCE3| db $A7 ; play note D#4
|1ACBDD:FCE4| db $A7 ; play note D#4
|1ACBDE:FCE5| db $06, $7C ; duration, params
|1ACBE0:FCE7| db $A7 ; play note D#4
|1ACBE1:FCE8| db $A7 ; play note D#4
|1ACBE2:FCE9| db $06, $7D ; duration, params
|1ACBE4:FCEB| db $A7 ; play note D#4
|1ACBE5:FCEC| db $A7 ; play note D#4
|1ACBE6:FCED| db $06, $7E ; duration, params
|1ACBE8:FCEF| db $A7 ; play note D#4
|1ACBE9:FCF0| db $A7 ; play note D#4
|1ACBEA:FCF1| db $06, $7F ; duration, params
|1ACBEC:FCF3| db $A7 ; play note D#4
|1ACBED:FCF4| db $A7 ; play note D#4
|1ACBEE:FCF5| db $A7 ; play note D#4
|1ACBEF:FCF6| db $A7 ; play note D#4
|1ACBF0:FCF7| db $A7 ; play note D#4
|1ACBF1:FCF8| db $A7 ; play note D#4
|1ACBF2:FCF9| db $A7 ; play note D#4
|1ACBF3:FCFA| db $A7 ; play note D#4
|1ACBF4:FCFB| db $A7 ; play note D#4
|1ACBF5:FCFC| db $A7 ; play note D#4
|1ACBF6:FCFD| db $A7 ; play note D#4
|1ACBF7:FCFE| db $A7 ; play note D#4
|1ACBF8:FCFF| db $A7 ; play note D#4
|1ACBF9:FD00| db $A7 ; play note D#4
|1ACBFA:FD01| db $A7 ; play note D#4
|1ACBFB:FD02| db $A7 ; play note D#4
|1ACBFC:FD03| db $A7 ; play note D#4
|1ACBFD:FD04| db $A7 ; play note D#4
|1ACBFE:FD05| db $60 ; duration
|1ACBFF:FD06| db $A7 ; play note D#4

;---------------------------------------------------------------------------------------------------

Song01_Segment1_Track7:
|1ACC00:FD07| db $E0, $0B ; set instrument - trombone
|1ACC02:FD09| db $ED, $A0 ; set channel volume
|1ACC04:FD0B| db $E3, $18, $14, $1A ; enable vibrato
|1ACC08:FD0F| db $E1, $08 ; set panning - leaning right
|1ACC0A:FD11| db $1E ; duration
|1ACC0B:FD12| db $C9 ; rest
|1ACC0C:FD13| db $0C, $4D ; duration, params
|1ACC0E:FD15| db $B3 ; play note D#5
|1ACC0F:FD16| db $B8 ; play note G#5
|1ACC10:FD17| db $30, $6D ; duration, params
|1ACC12:FD19| db $BA ; play note A#5
|1ACC13:FD1A| db $EF : dw Song01_Sub_FD27 : db $02 ; call segment subroutine
|1ACC17:FD1E| db $EF : dw Song01_Sub_FD39 : db $01 ; call segment subroutine
|1ACC1B:FD22| db $5A ; duration
|1ACC1C:FD23| db $C8 ; sustain current note
|1ACC1D:FD24| db $60 ; duration
|1ACC1E:FD25| db $C9 ; rest
|1ACC1F:FD26| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song01_Sub_FD27:
|1ACC20:FD27| db $18 ; duration
|1ACC21:FD28| db $C8 ; sustain current note
|1ACC22:FD29| db $0C, $4D ; duration, params
|1ACC24:FD2B| db $B8 ; play note G#5
|1ACC25:FD2C| db $B3 ; play note D#5
|1ACC26:FD2D| db $B8 ; play note G#5
|1ACC27:FD2E| db $BA ; play note A#5
|1ACC28:FD2F| db $B8 ; play note G#5
|1ACC29:FD30| db $B3 ; play note D#5
|1ACC2A:FD31| db $B8 ; play note G#5
|1ACC2B:FD32| db $B3 ; play note D#5
|1ACC2C:FD33| db $B8 ; play note G#5
|1ACC2D:FD34| db $C9 ; rest
|1ACC2E:FD35| db $30, $6D ; duration, params
|1ACC30:FD37| db $BA ; play note A#5
|1ACC31:FD38| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song01_Sub_FD39:
|1ACC32:FD39| db $C8 ; sustain current note
|1ACC33:FD3A| db $BD ; play note C#6
|1ACC34:FD3B| db $24 ; duration
|1ACC35:FD3C| db $BD ; play note C#6
|1ACC36:FD3D| db $06, $4D ; duration, params
|1ACC38:FD3F| db $BC ; play note C6
|1ACC39:FD40| db $BA ; play note A#5
|1ACC3A:FD41| db $30, $6D ; duration, params
|1ACC3C:FD43| db $BC ; play note C6
|1ACC3D:FD44| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song01_Sub_FD45:
|1ACC3E:FD45| db $18 ; duration
|1ACC3F:FD46| db $C8 ; sustain current note
|1ACC40:FD47| db $0C, $4D ; duration, params
|1ACC42:FD49| db $A7 ; play note D#4
|1ACC43:FD4A| db $A2 ; play note A#3
|1ACC44:FD4B| db $A7 ; play note D#4
|1ACC45:FD4C| db $A9 ; play note F4
|1ACC46:FD4D| db $A7 ; play note D#4
|1ACC47:FD4E| db $A2 ; play note A#3
|1ACC48:FD4F| db $A7 ; play note D#4
|1ACC49:FD50| db $A2 ; play note A#3
|1ACC4A:FD51| db $A7 ; play note D#4
|1ACC4B:FD52| db $C9 ; rest
|1ACC4C:FD53| db $30, $6D ; duration, params
|1ACC4E:FD55| db $A9 ; play note F4
|1ACC4F:FD56| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song01_Sub_FD57:
|1ACC50:FD57| db $E0, $13 ; set instrument - snare A
|1ACC52:FD59| db $ED, $A0 ; set channel volume
|1ACC54:FD5B| db $03, $7F ; duration, params
|1ACC56:FD5D| db $A7 ; play note D#4
|1ACC57:FD5E| db $06, $7E ; duration, params
|1ACC59:FD60| db $A7 ; play note D#4
|1ACC5A:FD61| db $06, $79 ; duration, params
|1ACC5C:FD63| db $A7 ; play note D#4
|1ACC5D:FD64| db $A7 ; play note D#4
|1ACC5E:FD65| db $06, $7A ; duration, params
|1ACC60:FD67| db $A7 ; play note D#4
|1ACC61:FD68| db $A7 ; play note D#4
|1ACC62:FD69| db $06, $7B ; duration, params
|1ACC64:FD6B| db $A7 ; play note D#4
|1ACC65:FD6C| db $A7 ; play note D#4
|1ACC66:FD6D| db $06, $7C ; duration, params
|1ACC68:FD6F| db $A7 ; play note D#4
|1ACC69:FD70| db $A7 ; play note D#4
|1ACC6A:FD71| db $06, $7D ; duration, params
|1ACC6C:FD73| db $A7 ; play note D#4
|1ACC6D:FD74| db $A7 ; play note D#4
|1ACC6E:FD75| db $06, $7E ; duration, params
|1ACC70:FD77| db $A7 ; play note D#4
|1ACC71:FD78| db $A7 ; play note D#4
|1ACC72:FD79| db $06, $7F ; duration, params
|1ACC74:FD7B| db $A7 ; play note D#4
|1ACC75:FD7C| db $09 ; duration
|1ACC76:FD7D| db $A7 ; play note D#4
|1ACC77:FD7E| db $E0, $02 ; set instrument - timpani
|1ACC79:FD80| db $ED, $C8 ; set channel volume
|1ACC7B:FD82| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song01_Sub_FD83:
|1ACC7C:FD83| db $E0, $13 ; set instrument - snare A
|1ACC7E:FD85| db $ED, $A0 ; set channel volume
|1ACC80:FD87| db $06, $7F ; duration, params
|1ACC82:FD89| db $A7 ; play note D#4
|1ACC83:FD8A| db $06, $7E ; duration, params
|1ACC85:FD8C| db $A7 ; play note D#4
|1ACC86:FD8D| db $06, $79 ; duration, params
|1ACC88:FD8F| db $A7 ; play note D#4
|1ACC89:FD90| db $A7 ; play note D#4
|1ACC8A:FD91| db $06, $7A ; duration, params
|1ACC8C:FD93| db $A7 ; play note D#4
|1ACC8D:FD94| db $A7 ; play note D#4
|1ACC8E:FD95| db $06, $7B ; duration, params
|1ACC90:FD97| db $A7 ; play note D#4
|1ACC91:FD98| db $A7 ; play note D#4
|1ACC92:FD99| db $06, $7C ; duration, params
|1ACC94:FD9B| db $A7 ; play note D#4
|1ACC95:FD9C| db $A7 ; play note D#4
|1ACC96:FD9D| db $06, $7D ; duration, params
|1ACC98:FD9F| db $A7 ; play note D#4
|1ACC99:FDA0| db $A7 ; play note D#4
|1ACC9A:FDA1| db $06, $7E ; duration, params
|1ACC9C:FDA3| db $A7 ; play note D#4
|1ACC9D:FDA4| db $A7 ; play note D#4
|1ACC9E:FDA5| db $06, $7F ; duration, params
|1ACCA0:FDA7| db $A7 ; play note D#4
|1ACCA1:FDA8| db $A7 ; play note D#4
|1ACCA2:FDA9| db $E0, $0C ; set instrument - cymbal
|1ACCA4:FDAB| db $ED, $DC ; set channel volume
|1ACCA6:FDAD| db $00 ; End

site *

;===================================================================================================

SongBank_Overworld_Auxiliary:
|1ACCA7| dw $0688, SONG_POINTERS_AUX ; Transfer size, transfer address

site SONG_POINTERS_AUX

;===================================================================================================

Song0D_SkullWoodsMarch:
|1ACCAB:2B00| dw Song0D_Segment0

Song0D_Loop:
|1ACCAD:2B02| dw Song0D_Segment1
|1ACCAF:2B04| dw Song0D_Segment2
|1ACCB1:2B06| dw Song0D_Segment1
|1ACCB3:2B08| dw Song0D_Segment2
|1ACCB5:2B0A| dw Song0D_Segment3
|1ACCB7:2B0C| dw Song0D_Segment4
|1ACCB9:2B0E| dw $00FF, Song0D_Loop ; Loop point
|1ACCBD:2B12| dw $0000

Song0D_Segment1:
|1ACCBF:2B14| dw Song0D_Segment1_Track0
|1ACCC1:2B16| dw Song0D_Segment1_Track1
|1ACCC3:2B18| dw Song0D_Segment1_Track2
|1ACCC5:2B1A| dw Song0D_Segment1_Track3
|1ACCC7:2B1C| dw Song0D_Segment1_Track4
|1ACCC9:2B1E| dw Song0D_Segment1_Track5
|1ACCCB:2B20| dw $0000
|1ACCCD:2B22| dw $0000

Song0D_Segment2:
|1ACCCF:2B24| dw Song0D_Segment2_Track0
|1ACCD1:2B26| dw Song0D_Segment2_Track1
|1ACCD3:2B28| dw Song0D_Segment2_Track2
|1ACCD5:2B2A| dw Song0D_Segment2_Track3
|1ACCD7:2B2C| dw Song0D_Segment2_Track4
|1ACCD9:2B2E| dw Song0D_Segment2_Track5
|1ACCDB:2B30| dw $0000
|1ACCDD:2B32| dw $0000

Song0D_Segment3:
|1ACCDF:2B34| dw Song0D_Segment3_Track0
|1ACCE1:2B36| dw Song0D_Segment3_Track1
|1ACCE3:2B38| dw Song0D_Segment3_Track2
|1ACCE5:2B3A| dw Song0D_Segment3_Track3
|1ACCE7:2B3C| dw Song0D_Segment3_Track4
|1ACCE9:2B3E| dw $0000
|1ACCEB:2B40| dw $0000
|1ACCED:2B42| dw $0000

Song0D_Segment4:
|1ACCEF:2B44| dw Song0D_Segment4_Track0
|1ACCF1:2B46| dw Song0D_Segment4_Track1
|1ACCF3:2B48| dw Song0D_Segment4_Track2
|1ACCF5:2B4A| dw Song0D_Segment4_Track3
|1ACCF7:2B4C| dw Song0D_Segment4_Track4
|1ACCF9:2B4E| dw Song0D_Segment4_Track5
|1ACCFB:2B50| dw $0000
|1ACCFD:2B52| dw $0000

Song0D_Segment0:
|1ACCFF:2B54| dw Song0D_Segment0_Track0
|1ACD01:2B56| dw Song0D_Segment0_Track1
|1ACD03:2B58| dw Song0D_Segment0_Track2
|1ACD05:2B5A| dw Song0D_Segment0_Track3
|1ACD07:2B5C| dw Song0D_Segment0_Track4
|1ACD09:2B5E| dw $0000
|1ACD0B:2B60| dw $0000
|1ACD0D:2B62| dw $0000

;---------------------------------------------------------------------------------------------------

Song0D_Segment1_Track0:
|1ACD0F:2B64| db $E0, $0B ; set instrument - trombone
|1ACD11:2B66| db $ED, $C8 ; set channel volume
|1ACD13:2B68| db $E1, $0A ; set panning - balanced
|1ACD15:2B6A| db $E3, $1A, $1A, $10 ; enable vibrato
|1ACD19:2B6E| db $20, $5D ; duration, params
|1ACD1B:2B70| db $B0 ; play note C5
|1ACD1C:2B71| db $08, $4D ; duration, params
|1ACD1E:2B73| db $AB ; play note G4
|1ACD1F:2B74| db $B3 ; play note D#5
|1ACD20:2B75| db $20, $5D ; duration, params
|1ACD22:2B77| db $B0 ; play note C5
|1ACD23:2B78| db $08, $4D ; duration, params
|1ACD25:2B7A| db $AB ; play note G4
|1ACD26:2B7B| db $B3 ; play note D#5
|1ACD27:2B7C| db $18, $2D ; duration, params
|1ACD29:2B7E| db $B0 ; play note C5
|1ACD2A:2B7F| db $30, $6D ; duration, params
|1ACD2C:2B81| db $AB ; play note G4
|1ACD2D:2B82| db $08, $4F ; duration, params
|1ACD2F:2B84| db $B0 ; play note C5
|1ACD30:2B85| db $B3 ; play note D#5
|1ACD31:2B86| db $B7 ; play note G5
|1ACD32:2B87| db $30, $6F ; duration, params
|1ACD34:2B89| db $BA ; play note A#5
|1ACD35:2B8A| db $20, $6D ; duration, params
|1ACD37:2B8C| db $B8 ; play note G#5
|1ACD38:2B8D| db $08, $4C ; duration, params
|1ACD3A:2B8F| db $B6 ; play note F#5
|1ACD3B:2B90| db $B8 ; play note G#5
|1ACD3C:2B91| db $60, $7C ; duration, params
|1ACD3E:2B93| db $B7 ; play note G5
|1ACD3F:2B94| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0D_Segment1_Track1:
|1ACD40:2B95| db $E0, $02 ; set instrument - timpani
|1ACD42:2B97| db $ED, $B4 ; set channel volume
|1ACD44:2B99| db $E1, $0A ; set panning - balanced
|1ACD46:2B9B| db $EF : dw Song0D_Sub_2EC4 : db $01 ; call segment subroutine
|1ACD4A:2B9F| db $8D ; play note C#2
|1ACD4B:2BA0| db $C9 ; rest
|1ACD4C:2BA1| db $C9 ; rest
|1ACD4D:2BA2| db $8D ; play note C#2
|1ACD4E:2BA3| db $8C ; play note C2
|1ACD4F:2BA4| db $C9 ; rest
|1ACD50:2BA5| db $10 ; duration
|1ACD51:2BA6| db $C9 ; rest
|1ACD52:2BA7| db $08 ; duration
|1ACD53:2BA8| db $8C ; play note C2
|1ACD54:2BA9| db $18 ; duration
|1ACD55:2BAA| db $8F ; play note D#2

;---------------------------------------------------------------------------------------------------

Song0D_Segment1_Track2:
|1ACD56:2BAB| db $EF : dw Song0D_Sub_2ED3 : db $01 ; call segment subroutine
|1ACD5A:2BAF| db $18, $3D ; duration, params
|1ACD5C:2BB1| db $A9 ; play note F4
|1ACD5D:2BB2| db $A9 ; play note F4
|1ACD5E:2BB3| db $A9 ; play note F4
|1ACD5F:2BB4| db $08 ; duration
|1ACD60:2BB5| db $A9 ; play note F4
|1ACD61:2BB6| db $08, $3B ; duration, params
|1ACD63:2BB8| db $A9 ; play note F4
|1ACD64:2BB9| db $08, $3D ; duration, params
|1ACD66:2BBB| db $A9 ; play note F4
|1ACD67:2BBC| db $18 ; duration
|1ACD68:2BBD| db $A9 ; play note F4
|1ACD69:2BBE| db $A9 ; play note F4
|1ACD6A:2BBF| db $A9 ; play note F4
|1ACD6B:2BC0| db $0C, $3B ; duration, params
|1ACD6D:2BC2| db $A9 ; play note F4
|1ACD6E:2BC3| db $06 ; duration
|1ACD6F:2BC4| db $A9 ; play note F4
|1ACD70:2BC5| db $A9 ; play note F4
|1ACD71:2BC6| db $18, $3D ; duration, params
|1ACD73:2BC8| db $A9 ; play note F4
|1ACD74:2BC9| db $A9 ; play note F4
|1ACD75:2BCA| db $A9 ; play note F4
|1ACD76:2BCB| db $08 ; duration
|1ACD77:2BCC| db $A9 ; play note F4
|1ACD78:2BCD| db $08, $3B ; duration, params
|1ACD7A:2BCF| db $A9 ; play note F4
|1ACD7B:2BD0| db $08, $3D ; duration, params
|1ACD7D:2BD2| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song0D_Segment1_Track3:
|1ACD7E:2BD3| db $E0, $11 ; set instrument - trumpet
|1ACD80:2BD5| db $ED, $C8 ; set channel volume
|1ACD82:2BD7| db $EF : dw Song0D_Sub_2EE3 : db $01 ; call segment subroutine
|1ACD86:2BDB| db $18 ; duration
|1ACD87:2BDC| db $8D ; play note C#2
|1ACD88:2BDD| db $8D ; play note C#2
|1ACD89:2BDE| db $8D ; play note C#2
|1ACD8A:2BDF| db $0C ; duration
|1ACD8B:2BE0| db $8D ; play note C#2
|1ACD8C:2BE1| db $06, $5D ; duration, params
|1ACD8E:2BE3| db $8D ; play note C#2
|1ACD8F:2BE4| db $8D ; play note C#2
|1ACD90:2BE5| db $18, $3D ; duration, params
|1ACD92:2BE7| db $8C ; play note C2
|1ACD93:2BE8| db $8C ; play note C2
|1ACD94:2BE9| db $8C ; play note C2
|1ACD95:2BEA| db $08 ; duration
|1ACD96:2BEB| db $8F ; play note D#2
|1ACD97:2BEC| db $8F ; play note D#2
|1ACD98:2BED| db $8F ; play note D#2

;---------------------------------------------------------------------------------------------------

Song0D_Segment1_Track4:
|1ACD99:2BEE| db $E0, $0B ; set instrument - trombone
|1ACD9B:2BF0| db $ED, $A0 ; set channel volume
|1ACD9D:2BF2| db $E1, $0D ; set panning - leaning left
|1ACD9F:2BF4| db $E3, $1C, $1A, $10 ; enable vibrato
|1ACDA3:2BF8| db $20, $5D ; duration, params
|1ACDA5:2BFA| db $A7 ; play note D#4
|1ACDA6:2BFB| db $08, $4D ; duration, params
|1ACDA8:2BFD| db $A4 ; play note C4
|1ACDA9:2BFE| db $AB ; play note G4
|1ACDAA:2BFF| db $20, $5D ; duration, params
|1ACDAC:2C01| db $A7 ; play note D#4
|1ACDAD:2C02| db $08, $4D ; duration, params
|1ACDAF:2C04| db $A4 ; play note C4
|1ACDB0:2C05| db $AB ; play note G4
|1ACDB1:2C06| db $18, $2D ; duration, params
|1ACDB3:2C08| db $A7 ; play note D#4
|1ACDB4:2C09| db $30, $6D ; duration, params
|1ACDB6:2C0B| db $A4 ; play note C4
|1ACDB7:2C0C| db $08, $4F ; duration, params
|1ACDB9:2C0E| db $A7 ; play note D#4
|1ACDBA:2C0F| db $AB ; play note G4
|1ACDBB:2C10| db $B0 ; play note C5
|1ACDBC:2C11| db $30, $6F ; duration, params
|1ACDBE:2C13| db $B3 ; play note D#5
|1ACDBF:2C14| db $20, $6D ; duration, params
|1ACDC1:2C16| db $B1 ; play note C#5
|1ACDC2:2C17| db $08, $4C ; duration, params
|1ACDC4:2C19| db $AF ; play note B4
|1ACDC5:2C1A| db $B1 ; play note C#5
|1ACDC6:2C1B| db $60, $7C ; duration, params
|1ACDC8:2C1D| db $B0 ; play note C5

;---------------------------------------------------------------------------------------------------

Song0D_Segment1_Track5:
|1ACDC9:2C1E| db $E0, $11 ; set instrument - trumpet
|1ACDCB:2C20| db $ED, $B4 ; set channel volume
|1ACDCD:2C22| db $E1, $08 ; set panning - leaning right
|1ACDCF:2C24| db $EF : dw Song0D_Sub_2EF8 : db $01 ; call segment subroutine
|1ACDD3:2C28| db $18 ; duration
|1ACDD4:2C29| db $A0 ; play note G#3
|1ACDD5:2C2A| db $A0 ; play note G#3
|1ACDD6:2C2B| db $A0 ; play note G#3
|1ACDD7:2C2C| db $0C, $3B ; duration, params
|1ACDD9:2C2E| db $A0 ; play note G#3
|1ACDDA:2C2F| db $06, $5B ; duration, params
|1ACDDC:2C31| db $A0 ; play note G#3
|1ACDDD:2C32| db $A0 ; play note G#3
|1ACDDE:2C33| db $18, $3D ; duration, params
|1ACDE0:2C35| db $9F ; play note G3
|1ACDE1:2C36| db $9F ; play note G3
|1ACDE2:2C37| db $9F ; play note G3
|1ACDE3:2C38| db $08, $3B ; duration, params
|1ACDE5:2C3A| db $A2 ; play note A#3
|1ACDE6:2C3B| db $08, $3D ; duration, params
|1ACDE8:2C3D| db $A2 ; play note A#3
|1ACDE9:2C3E| db $A2 ; play note A#3

;---------------------------------------------------------------------------------------------------

Song0D_Segment2_Track0:
|1ACDEA:2C3F| db $20, $5D ; duration, params
|1ACDEC:2C41| db $B0 ; play note C5
|1ACDED:2C42| db $08, $4D ; duration, params
|1ACDEF:2C44| db $AB ; play note G4
|1ACDF0:2C45| db $B3 ; play note D#5
|1ACDF1:2C46| db $20, $5D ; duration, params
|1ACDF3:2C48| db $B0 ; play note C5
|1ACDF4:2C49| db $08, $4D ; duration, params
|1ACDF6:2C4B| db $AB ; play note G4
|1ACDF7:2C4C| db $B3 ; play note D#5
|1ACDF8:2C4D| db $18, $2D ; duration, params
|1ACDFA:2C4F| db $B0 ; play note C5
|1ACDFB:2C50| db $30, $6D ; duration, params
|1ACDFD:2C52| db $AB ; play note G4
|1ACDFE:2C53| db $08, $4D ; duration, params
|1ACE00:2C55| db $AB ; play note G4
|1ACE01:2C56| db $B0 ; play note C5
|1ACE02:2C57| db $B3 ; play note D#5
|1ACE03:2C58| db $20, $7D ; duration, params
|1ACE05:2C5A| db $B7 ; play note G5
|1ACE06:2C5B| db $08, $4D ; duration, params
|1ACE08:2C5D| db $B6 ; play note F#5
|1ACE09:2C5E| db $B8 ; play note G#5
|1ACE0A:2C5F| db $0C, $3D ; duration, params
|1ACE0C:2C61| db $B7 ; play note G5
|1ACE0D:2C62| db $B3 ; play note D#5
|1ACE0E:2C63| db $08, $4D ; duration, params
|1ACE10:2C65| db $AF ; play note B4
|1ACE11:2C66| db $AB ; play note G4
|1ACE12:2C67| db $B3 ; play note D#5
|1ACE13:2C68| db $60, $7D ; duration, params
|1ACE15:2C6A| db $B0 ; play note C5
|1ACE16:2C6B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0D_Segment2_Track1:
|1ACE17:2C6C| db $EF : dw Song0D_Sub_2EC4 : db $01 ; call segment subroutine
|1ACE1B:2C70| db $88 ; play note G#1
|1ACE1C:2C71| db $C9 ; rest
|1ACE1D:2C72| db $C9 ; rest
|1ACE1E:2C73| db $8B ; play note B1
|1ACE1F:2C74| db $8C ; play note C2
|1ACE20:2C75| db $C9 ; rest
|1ACE21:2C76| db $10 ; duration
|1ACE22:2C77| db $C9 ; rest
|1ACE23:2C78| db $08 ; duration
|1ACE24:2C79| db $8C ; play note C2
|1ACE25:2C7A| db $18 ; duration
|1ACE26:2C7B| db $8F ; play note D#2

;---------------------------------------------------------------------------------------------------

Song0D_Segment2_Track2:
|1ACE27:2C7C| db $EF : dw Song0D_Sub_2F11 : db $01 ; call segment subroutine
|1ACE2B:2C80| db $EF : dw Song0D_Sub_2F24 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0D_Segment2_Track3:
|1ACE2F:2C84| db $EF : dw Song0D_Sub_2EE3 : db $01 ; call segment subroutine
|1ACE33:2C88| db $18 ; duration
|1ACE34:2C89| db $88 ; play note G#1
|1ACE35:2C8A| db $88 ; play note G#1
|1ACE36:2C8B| db $88 ; play note G#1
|1ACE37:2C8C| db $0C ; duration
|1ACE38:2C8D| db $8B ; play note B1
|1ACE39:2C8E| db $06, $5D ; duration, params
|1ACE3B:2C90| db $8B ; play note B1
|1ACE3C:2C91| db $8B ; play note B1
|1ACE3D:2C92| db $18, $3D ; duration, params
|1ACE3F:2C94| db $8C ; play note C2
|1ACE40:2C95| db $8C ; play note C2
|1ACE41:2C96| db $8C ; play note C2
|1ACE42:2C97| db $08 ; duration
|1ACE43:2C98| db $8F ; play note D#2
|1ACE44:2C99| db $8F ; play note D#2
|1ACE45:2C9A| db $8F ; play note D#2

;---------------------------------------------------------------------------------------------------

Song0D_Segment2_Track4:
|1ACE46:2C9B| db $20, $5D ; duration, params
|1ACE48:2C9D| db $A7 ; play note D#4
|1ACE49:2C9E| db $08, $4D ; duration, params
|1ACE4B:2CA0| db $A4 ; play note C4
|1ACE4C:2CA1| db $AB ; play note G4
|1ACE4D:2CA2| db $20, $5D ; duration, params
|1ACE4F:2CA4| db $A7 ; play note D#4
|1ACE50:2CA5| db $08, $4D ; duration, params
|1ACE52:2CA7| db $A4 ; play note C4
|1ACE53:2CA8| db $AB ; play note G4
|1ACE54:2CA9| db $18, $2D ; duration, params
|1ACE56:2CAB| db $A7 ; play note D#4
|1ACE57:2CAC| db $30, $6D ; duration, params
|1ACE59:2CAE| db $A4 ; play note C4
|1ACE5A:2CAF| db $08, $4F ; duration, params
|1ACE5C:2CB1| db $A4 ; play note C4
|1ACE5D:2CB2| db $A7 ; play note D#4
|1ACE5E:2CB3| db $AB ; play note G4
|1ACE5F:2CB4| db $20, $6F ; duration, params
|1ACE61:2CB6| db $B0 ; play note C5
|1ACE62:2CB7| db $08, $4D ; duration, params
|1ACE64:2CB9| db $AF ; play note B4
|1ACE65:2CBA| db $B1 ; play note C#5
|1ACE66:2CBB| db $0C, $3D ; duration, params
|1ACE68:2CBD| db $B0 ; play note C5
|1ACE69:2CBE| db $AB ; play note G4
|1ACE6A:2CBF| db $08, $4D ; duration, params
|1ACE6C:2CC1| db $A6 ; play note D4
|1ACE6D:2CC2| db $A3 ; play note B3
|1ACE6E:2CC3| db $A9 ; play note F4
|1ACE6F:2CC4| db $60, $7D ; duration, params
|1ACE71:2CC6| db $A7 ; play note D#4

;---------------------------------------------------------------------------------------------------

Song0D_Segment2_Track5:
|1ACE72:2CC7| db $EF : dw Song0D_Sub_2EF8 : db $01 ; call segment subroutine
|1ACE76:2CCB| db $18 ; duration
|1ACE77:2CCC| db $A4 ; play note C4
|1ACE78:2CCD| db $A4 ; play note C4
|1ACE79:2CCE| db $A4 ; play note C4
|1ACE7A:2CCF| db $0C, $3B ; duration, params
|1ACE7C:2CD1| db $A6 ; play note D4
|1ACE7D:2CD2| db $06, $5B ; duration, params
|1ACE7F:2CD4| db $A6 ; play note D4
|1ACE80:2CD5| db $A6 ; play note D4
|1ACE81:2CD6| db $18, $3D ; duration, params
|1ACE83:2CD8| db $9F ; play note G3
|1ACE84:2CD9| db $9F ; play note G3
|1ACE85:2CDA| db $9F ; play note G3
|1ACE86:2CDB| db $08, $3B ; duration, params
|1ACE88:2CDD| db $A2 ; play note A#3
|1ACE89:2CDE| db $08, $3D ; duration, params
|1ACE8B:2CE0| db $A2 ; play note A#3
|1ACE8C:2CE1| db $A2 ; play note A#3

;---------------------------------------------------------------------------------------------------

Song0D_Segment3_Track0:
|1ACE8D:2CE2| db $E0, $0A ; set instrument - strings B
|1ACE8F:2CE4| db $ED, $C8 ; set channel volume
|1ACE91:2CE6| db $E1, $12 ; set panning - leaning left
|1ACE93:2CE8| db $20, $6D ; duration, params
|1ACE95:2CEA| db $B0 ; play note C5
|1ACE96:2CEB| db $08 ; duration
|1ACE97:2CEC| db $B0 ; play note C5
|1ACE98:2CED| db $B0 ; play note C5
|1ACE99:2CEE| db $18 ; duration
|1ACE9A:2CEF| db $B0 ; play note C5
|1ACE9B:2CF0| db $0C ; duration
|1ACE9C:2CF1| db $AB ; play note G4
|1ACE9D:2CF2| db $B0 ; play note C5
|1ACE9E:2CF3| db $20 ; duration
|1ACE9F:2CF4| db $AE ; play note A#4
|1ACEA0:2CF5| db $08 ; duration
|1ACEA1:2CF6| db $AC ; play note G#4
|1ACEA2:2CF7| db $AB ; play note G4
|1ACEA3:2CF8| db $30 ; duration
|1ACEA4:2CF9| db $AC ; play note G#4
|1ACEA5:2CFA| db $20 ; duration
|1ACEA6:2CFB| db $AE ; play note A#4
|1ACEA7:2CFC| db $08 ; duration
|1ACEA8:2CFD| db $AE ; play note A#4
|1ACEA9:2CFE| db $AE ; play note A#4
|1ACEAA:2CFF| db $18 ; duration
|1ACEAB:2D00| db $AE ; play note A#4
|1ACEAC:2D01| db $0C ; duration
|1ACEAD:2D02| db $A9 ; play note F4
|1ACEAE:2D03| db $AE ; play note A#4
|1ACEAF:2D04| db $20 ; duration
|1ACEB0:2D05| db $AC ; play note G#4
|1ACEB1:2D06| db $08 ; duration
|1ACEB2:2D07| db $AB ; play note G4
|1ACEB3:2D08| db $AA ; play note F#4
|1ACEB4:2D09| db $30 ; duration
|1ACEB5:2D0A| db $AB ; play note G4
|1ACEB6:2D0B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0D_Segment3_Track1:
|1ACEB7:2D0C| db $E0, $0A ; set instrument - strings B
|1ACEB9:2D0E| db $ED, $B4 ; set channel volume
|1ACEBB:2D10| db $E3, $18, $18, $12 ; enable vibrato
|1ACEBF:2D14| db $E1, $0F ; set panning - leaning left
|1ACEC1:2D16| db $30, $7D ; duration, params
|1ACEC3:2D18| db $A8 ; play note E4
|1ACEC4:2D19| db $18 ; duration
|1ACEC5:2D1A| db $A4 ; play note C4
|1ACEC6:2D1B| db $A8 ; play note E4
|1ACEC7:2D1C| db $50 ; duration
|1ACEC8:2D1D| db $A9 ; play note F4
|1ACEC9:2D1E| db $08 ; duration
|1ACECA:2D1F| db $A8 ; play note E4
|1ACECB:2D20| db $A7 ; play note D#4
|1ACECC:2D21| db $30 ; duration
|1ACECD:2D22| db $A6 ; play note D4
|1ACECE:2D23| db $A4 ; play note C4
|1ACECF:2D24| db $48 ; duration
|1ACED0:2D25| db $A2 ; play note A#3
|1ACED1:2D26| db $18 ; duration
|1ACED2:2D27| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song0D_Segment3_Track2:
|1ACED3:2D28| db $E0, $14 ; set instrument - snare B
|1ACED5:2D2A| db $ED, $C8 ; set channel volume
|1ACED7:2D2C| db $EF : dw Song0D_Sub_2F11 : db $01 ; call segment subroutine
|1ACEDB:2D30| db $EF : dw Song0D_Sub_2F24 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0D_Segment3_Track3:
|1ACEDF:2D34| db $E0, $11 ; set instrument - trumpet
|1ACEE1:2D36| db $ED, $C8 ; set channel volume
|1ACEE3:2D38| db $18, $3D ; duration, params
|1ACEE5:2D3A| db $90 ; play note E2
|1ACEE6:2D3B| db $90 ; play note E2
|1ACEE7:2D3C| db $90 ; play note E2
|1ACEE8:2D3D| db $0C ; duration
|1ACEE9:2D3E| db $90 ; play note E2
|1ACEEA:2D3F| db $06 ; duration
|1ACEEB:2D40| db $90 ; play note E2
|1ACEEC:2D41| db $90 ; play note E2
|1ACEED:2D42| db $18 ; duration
|1ACEEE:2D43| db $91 ; play note F2
|1ACEEF:2D44| db $91 ; play note F2
|1ACEF0:2D45| db $91 ; play note F2
|1ACEF1:2D46| db $08 ; duration
|1ACEF2:2D47| db $91 ; play note F2
|1ACEF3:2D48| db $91 ; play note F2
|1ACEF4:2D49| db $91 ; play note F2
|1ACEF5:2D4A| db $18 ; duration
|1ACEF6:2D4B| db $8A ; play note A#1
|1ACEF7:2D4C| db $8A ; play note A#1
|1ACEF8:2D4D| db $8A ; play note A#1
|1ACEF9:2D4E| db $0C ; duration
|1ACEFA:2D4F| db $8A ; play note A#1
|1ACEFB:2D50| db $06 ; duration
|1ACEFC:2D51| db $8A ; play note A#1
|1ACEFD:2D52| db $8A ; play note A#1
|1ACEFE:2D53| db $18 ; duration
|1ACEFF:2D54| db $8F ; play note D#2
|1ACF00:2D55| db $8F ; play note D#2
|1ACF01:2D56| db $8F ; play note D#2
|1ACF02:2D57| db $08 ; duration
|1ACF03:2D58| db $8F ; play note D#2
|1ACF04:2D59| db $8F ; play note D#2
|1ACF05:2D5A| db $8F ; play note D#2

;---------------------------------------------------------------------------------------------------

Song0D_Segment3_Track4:
|1ACF06:2D5B| db $E0, $11 ; set instrument - trumpet
|1ACF08:2D5D| db $E1, $08 ; set panning - leaning right
|1ACF0A:2D5F| db $ED, $B4 ; set channel volume
|1ACF0C:2D61| db $18, $3D ; duration, params
|1ACF0E:2D63| db $9F ; play note G3
|1ACF0F:2D64| db $9F ; play note G3
|1ACF10:2D65| db $9F ; play note G3
|1ACF11:2D66| db $0C ; duration
|1ACF12:2D67| db $9F ; play note G3
|1ACF13:2D68| db $06 ; duration
|1ACF14:2D69| db $9F ; play note G3
|1ACF15:2D6A| db $9F ; play note G3
|1ACF16:2D6B| db $18 ; duration
|1ACF17:2D6C| db $A0 ; play note G#3
|1ACF18:2D6D| db $A0 ; play note G#3
|1ACF19:2D6E| db $A0 ; play note G#3
|1ACF1A:2D6F| db $08 ; duration
|1ACF1B:2D70| db $A0 ; play note G#3
|1ACF1C:2D71| db $A0 ; play note G#3
|1ACF1D:2D72| db $A0 ; play note G#3
|1ACF1E:2D73| db $18 ; duration
|1ACF1F:2D74| db $9D ; play note F3
|1ACF20:2D75| db $9D ; play note F3
|1ACF21:2D76| db $9D ; play note F3
|1ACF22:2D77| db $0C ; duration
|1ACF23:2D78| db $9D ; play note F3
|1ACF24:2D79| db $06 ; duration
|1ACF25:2D7A| db $9D ; play note F3
|1ACF26:2D7B| db $9D ; play note F3
|1ACF27:2D7C| db $18 ; duration
|1ACF28:2D7D| db $9F ; play note G3
|1ACF29:2D7E| db $9F ; play note G3
|1ACF2A:2D7F| db $9F ; play note G3
|1ACF2B:2D80| db $08 ; duration
|1ACF2C:2D81| db $9F ; play note G3
|1ACF2D:2D82| db $9F ; play note G3
|1ACF2E:2D83| db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song0D_Segment4_Track0:
|1ACF2F:2D84| db $20, $6D ; duration, params
|1ACF31:2D86| db $A9 ; play note F4
|1ACF32:2D87| db $08 ; duration
|1ACF33:2D88| db $A9 ; play note F4
|1ACF34:2D89| db $A9 ; play note F4
|1ACF35:2D8A| db $18 ; duration
|1ACF36:2D8B| db $A9 ; play note F4
|1ACF37:2D8C| db $0C ; duration
|1ACF38:2D8D| db $AB ; play note G4
|1ACF39:2D8E| db $0C, $3D ; duration, params
|1ACF3B:2D90| db $AC ; play note G#4
|1ACF3C:2D91| db $20, $6D ; duration, params
|1ACF3E:2D93| db $AB ; play note G4
|1ACF3F:2D94| db $08 ; duration
|1ACF40:2D95| db $A9 ; play note F4
|1ACF41:2D96| db $A8 ; play note E4
|1ACF42:2D97| db $30 ; duration
|1ACF43:2D98| db $A9 ; play note F4
|1ACF44:2D99| db $20 ; duration
|1ACF45:2D9A| db $AB ; play note G4
|1ACF46:2D9B| db $08 ; duration
|1ACF47:2D9C| db $AA ; play note F#4
|1ACF48:2D9D| db $AC ; play note G#4
|1ACF49:2D9E| db $0C ; duration
|1ACF4A:2D9F| db $AB ; play note G4
|1ACF4B:2DA0| db $A7 ; play note D#4
|1ACF4C:2DA1| db $08 ; duration
|1ACF4D:2DA2| db $A3 ; play note B3
|1ACF4E:2DA3| db $9F ; play note G3
|1ACF4F:2DA4| db $A7 ; play note D#4
|1ACF50:2DA5| db $60 ; duration
|1ACF51:2DA6| db $A4 ; play note C4
|1ACF52:2DA7| db $C9 ; rest
|1ACF53:2DA8| db $C9 ; rest
|1ACF54:2DA9| db $C9 ; rest
|1ACF55:2DAA| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0D_Segment4_Track1:
|1ACF56:2DAB| db $54, $7D ; duration, params
|1ACF58:2DAD| db $A4 ; play note C4
|1ACF59:2DAE| db $0C ; duration
|1ACF5A:2DAF| db $A5 ; play note C#4
|1ACF5B:2DB0| db $50 ; duration
|1ACF5C:2DB1| db $A6 ; play note D4
|1ACF5D:2DB2| db $08 ; duration
|1ACF5E:2DB3| db $A5 ; play note C#4
|1ACF5F:2DB4| db $A4 ; play note C4
|1ACF60:2DB5| db $30 ; duration
|1ACF61:2DB6| db $A3 ; play note B3
|1ACF62:2DB7| db $9F ; play note G3
|1ACF63:2DB8| db $60 ; duration
|1ACF64:2DB9| db $9F ; play note G3
|1ACF65:2DBA| db $C9 ; rest
|1ACF66:2DBB| db $C9 ; rest
|1ACF67:2DBC| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song0D_Segment4_Track2:
|1ACF68:2DBD| db $EF : dw Song0D_Sub_2F11 : db $01 ; call segment subroutine
|1ACF6C:2DC1| db $EF : dw Song0D_Sub_2F36 : db $02 ; call segment subroutine
|1ACF70:2DC5| db $18 ; duration
|1ACF71:2DC6| db $A9 ; play note F4
|1ACF72:2DC7| db $A9 ; play note F4
|1ACF73:2DC8| db $A9 ; play note F4
|1ACF74:2DC9| db $08, $3B ; duration, params
|1ACF76:2DCB| db $A9 ; play note F4
|1ACF77:2DCC| db $08, $3D ; duration, params
|1ACF79:2DCE| db $A9 ; play note F4
|1ACF7A:2DCF| db $A9 ; play note F4
|1ACF7B:2DD0| db $EF : dw Song0D_Sub_2F40 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0D_Segment4_Track3:
|1ACF7F:2DD4| db $18, $3D ; duration, params
|1ACF81:2DD6| db $88 ; play note G#1
|1ACF82:2DD7| db $88 ; play note G#1
|1ACF83:2DD8| db $88 ; play note G#1
|1ACF84:2DD9| db $0C ; duration
|1ACF85:2DDA| db $88 ; play note G#1
|1ACF86:2DDB| db $06 ; duration
|1ACF87:2DDC| db $88 ; play note G#1
|1ACF88:2DDD| db $88 ; play note G#1
|1ACF89:2DDE| db $18 ; duration
|1ACF8A:2DDF| db $8E ; play note D2
|1ACF8B:2DE0| db $8E ; play note D2
|1ACF8C:2DE1| db $8E ; play note D2
|1ACF8D:2DE2| db $08 ; duration
|1ACF8E:2DE3| db $8E ; play note D2
|1ACF8F:2DE4| db $8E ; play note D2
|1ACF90:2DE5| db $8E ; play note D2
|1ACF91:2DE6| db $18 ; duration
|1ACF92:2DE7| db $93 ; play note G2
|1ACF93:2DE8| db $93 ; play note G2
|1ACF94:2DE9| db $93 ; play note G2
|1ACF95:2DEA| db $0C ; duration
|1ACF96:2DEB| db $93 ; play note G2
|1ACF97:2DEC| db $06 ; duration
|1ACF98:2DED| db $93 ; play note G2
|1ACF99:2DEE| db $93 ; play note G2
|1ACF9A:2DEF| db $18 ; duration
|1ACF9B:2DF0| db $8C ; play note C2
|1ACF9C:2DF1| db $8C ; play note C2
|1ACF9D:2DF2| db $8C ; play note C2
|1ACF9E:2DF3| db $0C ; duration
|1ACF9F:2DF4| db $8F ; play note D#2
|1ACFA0:2DF5| db $06 ; duration
|1ACFA1:2DF6| db $8F ; play note D#2
|1ACFA2:2DF7| db $8F ; play note D#2
|1ACFA3:2DF8| db $18 ; duration
|1ACFA4:2DF9| db $8C ; play note C2
|1ACFA5:2DFA| db $8C ; play note C2
|1ACFA6:2DFB| db $8C ; play note C2
|1ACFA7:2DFC| db $08 ; duration
|1ACFA8:2DFD| db $8F ; play note D#2
|1ACFA9:2DFE| db $8F ; play note D#2
|1ACFAA:2DFF| db $8F ; play note D#2
|1ACFAB:2E00| db $EF : dw Song0D_Sub_2F57 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0D_Segment4_Track4:
|1ACFAF:2E04| db $18, $3D ; duration, params
|1ACFB1:2E06| db $9B ; play note D#3
|1ACFB2:2E07| db $9B ; play note D#3
|1ACFB3:2E08| db $9B ; play note D#3
|1ACFB4:2E09| db $0C ; duration
|1ACFB5:2E0A| db $9B ; play note D#3
|1ACFB6:2E0B| db $06 ; duration
|1ACFB7:2E0C| db $9B ; play note D#3
|1ACFB8:2E0D| db $9B ; play note D#3
|1ACFB9:2E0E| db $18 ; duration
|1ACFBA:2E0F| db $9D ; play note F3
|1ACFBB:2E10| db $9D ; play note F3
|1ACFBC:2E11| db $9D ; play note F3
|1ACFBD:2E12| db $08 ; duration
|1ACFBE:2E13| db $9D ; play note F3
|1ACFBF:2E14| db $9D ; play note F3
|1ACFC0:2E15| db $9D ; play note F3
|1ACFC1:2E16| db $18 ; duration
|1ACFC2:2E17| db $9D ; play note F3
|1ACFC3:2E18| db $9D ; play note F3
|1ACFC4:2E19| db $9D ; play note F3
|1ACFC5:2E1A| db $0C ; duration
|1ACFC6:2E1B| db $9D ; play note F3
|1ACFC7:2E1C| db $06 ; duration
|1ACFC8:2E1D| db $9D ; play note F3
|1ACFC9:2E1E| db $9D ; play note F3
|1ACFCA:2E1F| db $18 ; duration
|1ACFCB:2E20| db $9F ; play note G3
|1ACFCC:2E21| db $9F ; play note G3
|1ACFCD:2E22| db $9F ; play note G3
|1ACFCE:2E23| db $0C ; duration
|1ACFCF:2E24| db $A2 ; play note A#3
|1ACFD0:2E25| db $06 ; duration
|1ACFD1:2E26| db $A2 ; play note A#3
|1ACFD2:2E27| db $A2 ; play note A#3
|1ACFD3:2E28| db $18 ; duration
|1ACFD4:2E29| db $9F ; play note G3
|1ACFD5:2E2A| db $9F ; play note G3
|1ACFD6:2E2B| db $9F ; play note G3
|1ACFD7:2E2C| db $08, $3B ; duration, params
|1ACFD9:2E2E| db $A2 ; play note A#3
|1ACFDA:2E2F| db $08, $3D ; duration, params
|1ACFDC:2E31| db $A2 ; play note A#3
|1ACFDD:2E32| db $A2 ; play note A#3
|1ACFDE:2E33| db $EF : dw Song0D_Sub_2F6B : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0D_Segment4_Track5:
|1ACFE2:2E37| db $E0, $02 ; set instrument - timpani
|1ACFE4:2E39| db $ED, $B4 ; set channel volume
|1ACFE6:2E3B| db $E1, $0A ; set panning - balanced
|1ACFE8:2E3D| db $60 ; duration
|1ACFE9:2E3E| db $C9 ; rest
|1ACFEA:2E3F| db $C9 ; rest
|1ACFEB:2E40| db $C9 ; rest
|1ACFEC:2E41| db $EF : dw Song0D_Sub_2F83 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0D_Segment0_Track0:
|1ACFF0:2E45| db $FA, $19 ; set base percussion sample
|1ACFF2:2E47| db $E5, $AA ; set song volume
|1ACFF4:2E49| db $E7, $1C ; set song tempo
|1ACFF6:2E4B| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1ACFFA:2E4F| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1ACFFE:2E53| db $F8, $1E, $32, $32 ; initiate gradual echo volume change
|1AD002:2E57| db $E0, $11 ; set instrument - trumpet
|1AD004:2E59| db $ED, $C8 ; set channel volume
|1AD006:2E5B| db $EF : dw Song0D_Sub_2EE3 : db $01 ; call segment subroutine
|1AD00A:2E5F| db $EF : dw Song0D_Sub_2F57 : db $01 ; call segment subroutine
|1AD00E:2E63| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0D_Segment0_Track1:
|1AD00F:2E64| db $E0, $02 ; set instrument - timpani
|1AD011:2E66| db $ED, $B4 ; set channel volume
|1AD013:2E68| db $EF : dw Song0D_Sub_2F83 : db $01 ; call segment subroutine

Song0D_Segment0_Track2:
|1AD017:2E6C| db $EF : dw Song0D_Sub_2ED3 : db $01 ; call segment subroutine
|1AD01B:2E70| db $18, $3D ; duration, params
|1AD01D:2E72| db $A9 ; play note F4
|1AD01E:2E73| db $A9 ; play note F4
|1AD01F:2E74| db $A9 ; play note F4
|1AD020:2E75| db $08, $3B ; duration, params
|1AD022:2E77| db $A9 ; play note F4
|1AD023:2E78| db $08, $3D ; duration, params
|1AD025:2E7A| db $A9 ; play note F4
|1AD026:2E7B| db $A9 ; play note F4
|1AD027:2E7C| db $EF : dw Song0D_Sub_2F40 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0D_Segment0_Track3:
|1AD02B:2E80| db $E0, $11 ; set instrument - trumpet
|1AD02D:2E82| db $ED, $C8 ; set channel volume
|1AD02F:2E84| db $E1, $05 ; set panning - leaning right
|1AD031:2E86| db $EF : dw Song0D_Sub_2EF8 : db $01 ; call segment subroutine
|1AD035:2E8A| db $EF : dw Song0D_Sub_2F6B : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0D_Segment0_Track4:
|1AD039:2E8E| db $E0, $11 ; set instrument - trumpet
|1AD03B:2E90| db $ED, $C8 ; set channel volume
|1AD03D:2E92| db $E1, $08 ; set panning - leaning right
|1AD03F:2E94| db $18, $3D ; duration, params
|1AD041:2E96| db $9B ; play note D#3
|1AD042:2E97| db $9B ; play note D#3
|1AD043:2E98| db $9B ; play note D#3
|1AD044:2E99| db $0C, $3B ; duration, params
|1AD046:2E9B| db $9E ; play note F#3
|1AD047:2E9C| db $06, $5B ; duration, params
|1AD049:2E9E| db $9E ; play note F#3
|1AD04A:2E9F| db $9E ; play note F#3
|1AD04B:2EA0| db $18, $3D ; duration, params
|1AD04D:2EA2| db $9B ; play note D#3
|1AD04E:2EA3| db $9B ; play note D#3
|1AD04F:2EA4| db $9B ; play note D#3
|1AD050:2EA5| db $08, $3B ; duration, params
|1AD052:2EA7| db $9E ; play note F#3
|1AD053:2EA8| db $08, $3D ; duration, params
|1AD055:2EAA| db $9E ; play note F#3
|1AD056:2EAB| db $9E ; play note F#3
|1AD057:2EAC| db $18 ; duration
|1AD058:2EAD| db $9B ; play note D#3
|1AD059:2EAE| db $9B ; play note D#3
|1AD05A:2EAF| db $9B ; play note D#3
|1AD05B:2EB0| db $0C, $3B ; duration, params
|1AD05D:2EB2| db $9E ; play note F#3
|1AD05E:2EB3| db $06, $5B ; duration, params
|1AD060:2EB5| db $9E ; play note F#3
|1AD061:2EB6| db $9E ; play note F#3
|1AD062:2EB7| db $18, $3D ; duration, params
|1AD064:2EB9| db $9B ; play note D#3
|1AD065:2EBA| db $9B ; play note D#3
|1AD066:2EBB| db $9B ; play note D#3
|1AD067:2EBC| db $08, $3B ; duration, params
|1AD069:2EBE| db $9E ; play note F#3
|1AD06A:2EBF| db $08, $3D ; duration, params
|1AD06C:2EC1| db $9E ; play note F#3
|1AD06D:2EC2| db $9E ; play note F#3
|1AD06E:2EC3| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2EC4:
|1AD06F:2EC4| db $18, $7D ; duration, params
|1AD071:2EC6| db $8C ; play note C2
|1AD072:2EC7| db $C9 ; rest
|1AD073:2EC8| db $C9 ; rest
|1AD074:2EC9| db $8F ; play note D#2
|1AD075:2ECA| db $8C ; play note C2
|1AD076:2ECB| db $C9 ; rest
|1AD077:2ECC| db $10 ; duration
|1AD078:2ECD| db $C9 ; rest
|1AD079:2ECE| db $08 ; duration
|1AD07A:2ECF| db $8C ; play note C2
|1AD07B:2ED0| db $18 ; duration
|1AD07C:2ED1| db $8F ; play note D#2
|1AD07D:2ED2| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2ED3:
|1AD07E:2ED3| db $E0, $14 ; set instrument - snare B
|1AD080:2ED5| db $ED, $C8 ; set channel volume
|1AD082:2ED7| db $18, $3D ; duration, params
|1AD084:2ED9| db $A9 ; play note F4
|1AD085:2EDA| db $A9 ; play note F4
|1AD086:2EDB| db $A9 ; play note F4
|1AD087:2EDC| db $0C, $3B ; duration, params
|1AD089:2EDE| db $A9 ; play note F4
|1AD08A:2EDF| db $06 ; duration
|1AD08B:2EE0| db $A9 ; play note F4
|1AD08C:2EE1| db $A9 ; play note F4
|1AD08D:2EE2| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2EE3:
|1AD08E:2EE3| db $18, $3D ; duration, params
|1AD090:2EE5| db $8C ; play note C2
|1AD091:2EE6| db $8C ; play note C2
|1AD092:2EE7| db $8C ; play note C2
|1AD093:2EE8| db $0C ; duration
|1AD094:2EE9| db $8F ; play note D#2
|1AD095:2EEA| db $06, $5D ; duration, params
|1AD097:2EEC| db $8F ; play note D#2
|1AD098:2EED| db $8F ; play note D#2
|1AD099:2EEE| db $18, $3D ; duration, params
|1AD09B:2EF0| db $8C ; play note C2
|1AD09C:2EF1| db $8C ; play note C2
|1AD09D:2EF2| db $8C ; play note C2
|1AD09E:2EF3| db $08 ; duration
|1AD09F:2EF4| db $8F ; play note D#2
|1AD0A0:2EF5| db $8F ; play note D#2
|1AD0A1:2EF6| db $8F ; play note D#2
|1AD0A2:2EF7| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2EF8:
|1AD0A3:2EF8| db $18, $3D ; duration, params
|1AD0A5:2EFA| db $9F ; play note G3
|1AD0A6:2EFB| db $9F ; play note G3
|1AD0A7:2EFC| db $9F ; play note G3
|1AD0A8:2EFD| db $0C, $3B ; duration, params
|1AD0AA:2EFF| db $A2 ; play note A#3
|1AD0AB:2F00| db $06, $5B ; duration, params
|1AD0AD:2F02| db $A2 ; play note A#3
|1AD0AE:2F03| db $A2 ; play note A#3
|1AD0AF:2F04| db $18, $3D ; duration, params
|1AD0B1:2F06| db $9F ; play note G3
|1AD0B2:2F07| db $9F ; play note G3
|1AD0B3:2F08| db $9F ; play note G3
|1AD0B4:2F09| db $08, $3B ; duration, params
|1AD0B6:2F0B| db $A2 ; play note A#3
|1AD0B7:2F0C| db $08, $3D ; duration, params
|1AD0B9:2F0E| db $A2 ; play note A#3
|1AD0BA:2F0F| db $A2 ; play note A#3
|1AD0BB:2F10| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2F11:
|1AD0BC:2F11| db $18, $3D ; duration, params
|1AD0BE:2F13| db $A9 ; play note F4
|1AD0BF:2F14| db $A9 ; play note F4
|1AD0C0:2F15| db $A9 ; play note F4
|1AD0C1:2F16| db $0C ; duration
|1AD0C2:2F17| db $A9 ; play note F4
|1AD0C3:2F18| db $06 ; duration
|1AD0C4:2F19| db $A9 ; play note F4
|1AD0C5:2F1A| db $A9 ; play note F4
|1AD0C6:2F1B| db $18 ; duration
|1AD0C7:2F1C| db $A9 ; play note F4
|1AD0C8:2F1D| db $A9 ; play note F4
|1AD0C9:2F1E| db $A9 ; play note F4
|1AD0CA:2F1F| db $08 ; duration
|1AD0CB:2F20| db $A9 ; play note F4
|1AD0CC:2F21| db $A9 ; play note F4
|1AD0CD:2F22| db $A9 ; play note F4
|1AD0CE:2F23| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2F24:
|1AD0CF:2F24| db $18 ; duration
|1AD0D0:2F25| db $A9 ; play note F4
|1AD0D1:2F26| db $A9 ; play note F4
|1AD0D2:2F27| db $A9 ; play note F4
|1AD0D3:2F28| db $0C ; duration
|1AD0D4:2F29| db $A9 ; play note F4
|1AD0D5:2F2A| db $06 ; duration
|1AD0D6:2F2B| db $A9 ; play note F4
|1AD0D7:2F2C| db $A9 ; play note F4
|1AD0D8:2F2D| db $18 ; duration
|1AD0D9:2F2E| db $A9 ; play note F4
|1AD0DA:2F2F| db $A9 ; play note F4
|1AD0DB:2F30| db $A9 ; play note F4
|1AD0DC:2F31| db $08 ; duration
|1AD0DD:2F32| db $A9 ; play note F4
|1AD0DE:2F33| db $A9 ; play note F4
|1AD0DF:2F34| db $A9 ; play note F4
|1AD0E0:2F35| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2F36:
|1AD0E1:2F36| db $18 ; duration
|1AD0E2:2F37| db $A9 ; play note F4
|1AD0E3:2F38| db $A9 ; play note F4
|1AD0E4:2F39| db $A9 ; play note F4
|1AD0E5:2F3A| db $0C ; duration
|1AD0E6:2F3B| db $A9 ; play note F4
|1AD0E7:2F3C| db $06 ; duration
|1AD0E8:2F3D| db $A9 ; play note F4
|1AD0E9:2F3E| db $A9 ; play note F4
|1AD0EA:2F3F| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2F40:
|1AD0EB:2F40| db $18 ; duration
|1AD0EC:2F41| db $A9 ; play note F4
|1AD0ED:2F42| db $A9 ; play note F4
|1AD0EE:2F43| db $A9 ; play note F4
|1AD0EF:2F44| db $0C, $3B ; duration, params
|1AD0F1:2F46| db $A9 ; play note F4
|1AD0F2:2F47| db $06 ; duration
|1AD0F3:2F48| db $A9 ; play note F4
|1AD0F4:2F49| db $A9 ; play note F4
|1AD0F5:2F4A| db $18, $3D ; duration, params
|1AD0F7:2F4C| db $A9 ; play note F4
|1AD0F8:2F4D| db $A9 ; play note F4
|1AD0F9:2F4E| db $A9 ; play note F4
|1AD0FA:2F4F| db $08, $3B ; duration, params
|1AD0FC:2F51| db $A9 ; play note F4
|1AD0FD:2F52| db $08, $3D ; duration, params
|1AD0FF:2F54| db $A9 ; play note F4
|1AD100:2F55| db $A9 ; play note F4
|1AD101:2F56| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2F57:
|1AD102:2F57| db $18 ; duration
|1AD103:2F58| db $8C ; play note C2
|1AD104:2F59| db $8C ; play note C2
|1AD105:2F5A| db $8C ; play note C2
|1AD106:2F5B| db $0C ; duration
|1AD107:2F5C| db $8F ; play note D#2
|1AD108:2F5D| db $06, $5D ; duration, params
|1AD10A:2F5F| db $8F ; play note D#2
|1AD10B:2F60| db $8F ; play note D#2
|1AD10C:2F61| db $18, $3D ; duration, params
|1AD10E:2F63| db $8C ; play note C2
|1AD10F:2F64| db $8C ; play note C2
|1AD110:2F65| db $8C ; play note C2
|1AD111:2F66| db $08 ; duration
|1AD112:2F67| db $8F ; play note D#2
|1AD113:2F68| db $8F ; play note D#2
|1AD114:2F69| db $8F ; play note D#2
|1AD115:2F6A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2F6B:
|1AD116:2F6B| db $18 ; duration
|1AD117:2F6C| db $9F ; play note G3
|1AD118:2F6D| db $9F ; play note G3
|1AD119:2F6E| db $9F ; play note G3
|1AD11A:2F6F| db $0C, $3B ; duration, params
|1AD11C:2F71| db $A2 ; play note A#3
|1AD11D:2F72| db $06, $5B ; duration, params
|1AD11F:2F74| db $A2 ; play note A#3
|1AD120:2F75| db $A2 ; play note A#3
|1AD121:2F76| db $18, $3D ; duration, params
|1AD123:2F78| db $9F ; play note G3
|1AD124:2F79| db $9F ; play note G3
|1AD125:2F7A| db $9F ; play note G3
|1AD126:2F7B| db $08, $3B ; duration, params
|1AD128:2F7D| db $A2 ; play note A#3
|1AD129:2F7E| db $08, $3D ; duration, params
|1AD12B:2F80| db $A2 ; play note A#3
|1AD12C:2F81| db $A2 ; play note A#3
|1AD12D:2F82| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2F83:
|1AD12E:2F83| db $18, $7D ; duration, params
|1AD130:2F85| db $8C ; play note C2
|1AD131:2F86| db $8C ; play note C2
|1AD132:2F87| db $8C ; play note C2
|1AD133:2F88| db $08 ; duration
|1AD134:2F89| db $8F ; play note D#2
|1AD135:2F8A| db $8F ; play note D#2
|1AD136:2F8B| db $8F ; play note D#2
|1AD137:2F8C| db $18 ; duration
|1AD138:2F8D| db $8C ; play note C2
|1AD139:2F8E| db $8C ; play note C2
|1AD13A:2F8F| db $10 ; duration
|1AD13B:2F90| db $8C ; play note C2
|1AD13C:2F91| db $08 ; duration
|1AD13D:2F92| db $8C ; play note C2
|1AD13E:2F93| db $18 ; duration
|1AD13F:2F94| db $8F ; play note D#2
|1AD140:2F95| db $8C ; play note C2
|1AD141:2F96| db $8C ; play note C2
|1AD142:2F97| db $8C ; play note C2
|1AD143:2F98| db $08 ; duration
|1AD144:2F99| db $8F ; play note D#2
|1AD145:2F9A| db $8F ; play note D#2
|1AD146:2F9B| db $8F ; play note D#2
|1AD147:2F9C| db $18 ; duration
|1AD148:2F9D| db $8C ; play note C2
|1AD149:2F9E| db $8C ; play note C2
|1AD14A:2F9F| db $10 ; duration
|1AD14B:2FA0| db $8C ; play note C2
|1AD14C:2FA1| db $08 ; duration
|1AD14D:2FA2| db $8C ; play note C2
|1AD14E:2FA3| db $18 ; duration
|1AD14F:2FA4| db $8F ; play note D#2
|1AD150:2FA5| db $00 ; End

;===================================================================================================

Song0E_MinigameTheme:
|1AD151:2FA6| dw Song0E_Segment0

Song0E_Loop:
|1AD153:2FA8| dw Song0E_Segment1
|1AD155:2FAA| dw Song0E_Segment1
|1AD157:2FAC| dw Song0E_Segment2
|1AD159:2FAE| dw Song0E_Segment2
|1AD15B:2FB0| dw Song0E_Segment3
|1AD15D:2FB2| dw Song0E_Segment3
|1AD15F:2FB4| dw $00FF, Song0E_Loop ; Loop point
|1AD163:2FB8| dw $0000

Song0E_Segment1:
|1AD165:2FBA| dw Song0E_Segment1_Track0
|1AD167:2FBC| dw Song0E_Segment1_Track1
|1AD169:2FBE| dw Song0E_Segment1_Track2
|1AD16B:2FC0| dw Song0E_Segment1_Track3
|1AD16D:2FC2| dw $0000
|1AD16F:2FC4| dw $0000
|1AD171:2FC6| dw $0000
|1AD173:2FC8| dw $0000

Song0E_Segment3:
|1AD175:2FCA| dw Song0E_Segment3_Track0
|1AD177:2FCC| dw Song0E_Segment3_Track1
|1AD179:2FCE| dw Song0E_Segment3_Track2
|1AD17B:2FD0| dw Song0E_Segment3_Track3
|1AD17D:2FD2| dw Song0E_Segment3_Track4
|1AD17F:2FD4| dw $0000
|1AD181:2FD6| dw $0000
|1AD183:2FD8| dw $0000

Song0E_Segment2:
|1AD185:2FDA| dw Song0E_Segment2_Track0
|1AD187:2FDC| dw Song0E_Segment2_Track1
|1AD189:2FDE| dw Song0E_Segment2_Track2
|1AD18B:2FE0| dw Song0E_Segment2_Track3
|1AD18D:2FE2| dw $0000
|1AD18F:2FE4| dw $0000
|1AD191:2FE6| dw $0000
|1AD193:2FE8| dw $0000

Song0E_Segment0:
|1AD195:2FEA| dw Song0E_Segment0_Track0
|1AD197:2FEC| dw Song0E_Segment0_Track1
|1AD199:2FEE| dw Song0E_Segment0_Track2
|1AD19B:2FF0| dw Song0E_Segment0_Track3
|1AD19D:2FF2| dw Song0E_Segment0_Track4
|1AD19F:2FF4| dw $0000
|1AD1A1:2FF6| dw $0000
|1AD1A3:2FF8| dw $0000

;---------------------------------------------------------------------------------------------------

Song0E_Segment1_Track0:
|1AD1A5:2FFA| db $E0, $16 ; set instrument - flute
|1AD1A7:2FFC| db $ED, $FA ; set channel volume
|1AD1A9:2FFE| db $EF : dw Song0E_Sub_313C : db $01 ; call segment subroutine
|1AD1AD:3002| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0E_Segment1_Track1:
|1AD1AE:3003| db $E0, $18 ; set instrument - piano
|1AD1B0:3005| db $ED, $C8 ; set channel volume
|1AD1B2:3007| db $0C, $5D ; duration, params
|1AD1B4:3009| db $94 ; play note G#2
|1AD1B5:300A| db $A0 ; play note G#3
|1AD1B6:300B| db $94 ; play note G#2
|1AD1B7:300C| db $A0 ; play note G#3
|1AD1B8:300D| db $92 ; play note F#2
|1AD1B9:300E| db $9E ; play note F#3
|1AD1BA:300F| db $92 ; play note F#2
|1AD1BB:3010| db $9E ; play note F#3
|1AD1BC:3011| db $94 ; play note G#2
|1AD1BD:3012| db $A0 ; play note G#3
|1AD1BE:3013| db $94 ; play note G#2
|1AD1BF:3014| db $A0 ; play note G#3
|1AD1C0:3015| db $92 ; play note F#2
|1AD1C1:3016| db $9E ; play note F#3
|1AD1C2:3017| db $92 ; play note F#2
|1AD1C3:3018| db $9E ; play note F#3

;---------------------------------------------------------------------------------------------------

Song0E_Segment1_Track2:
|1AD1C4:3019| db $E0, $0A ; set instrument - strings B
|1AD1C6:301B| db $ED, $C8 ; set channel volume
|1AD1C8:301D| db $EF : dw Song0E_Sub_313C : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0E_Segment1_Track3:
|1AD1CC:3021| db $E0, $18 ; set instrument - piano
|1AD1CE:3023| db $ED, $C8 ; set channel volume
|1AD1D0:3025| db $0C ; duration
|1AD1D1:3026| db $C9 ; rest
|1AD1D2:3027| db $0C, $5D ; duration, params
|1AD1D4:3029| db $9B ; play note D#3
|1AD1D5:302A| db $C9 ; rest
|1AD1D6:302B| db $9B ; play note D#3
|1AD1D7:302C| db $C9 ; rest
|1AD1D8:302D| db $9B ; play note D#3
|1AD1D9:302E| db $C9 ; rest
|1AD1DA:302F| db $9B ; play note D#3
|1AD1DB:3030| db $C9 ; rest
|1AD1DC:3031| db $9B ; play note D#3
|1AD1DD:3032| db $C9 ; rest
|1AD1DE:3033| db $9B ; play note D#3
|1AD1DF:3034| db $C9 ; rest
|1AD1E0:3035| db $9B ; play note D#3
|1AD1E1:3036| db $C9 ; rest
|1AD1E2:3037| db $9B ; play note D#3

;---------------------------------------------------------------------------------------------------

Song0E_Segment3_Track0:
|1AD1E3:3038| db $E0, $18 ; set instrument - piano
|1AD1E5:303A| db $ED, $FA ; set channel volume
|1AD1E7:303C| db $EF : dw Song0E_Sub_3150 : db $01 ; call segment subroutine
|1AD1EB:3040| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0E_Segment3_Track1:
|1AD1EC:3041| db $E0, $18 ; set instrument - piano
|1AD1EE:3043| db $ED, $C8 ; set channel volume
|1AD1F0:3045| db $18, $5D ; duration, params
|1AD1F2:3047| db $94 ; play note G#2
|1AD1F3:3048| db $94 ; play note G#2
|1AD1F4:3049| db $24 ; duration
|1AD1F5:304A| db $92 ; play note F#2
|1AD1F6:304B| db $0C ; duration
|1AD1F7:304C| db $94 ; play note G#2
|1AD1F8:304D| db $18 ; duration
|1AD1F9:304E| db $C8 ; sustain current note
|1AD1FA:304F| db $94 ; play note G#2
|1AD1FB:3050| db $30 ; duration
|1AD1FC:3051| db $92 ; play note F#2
|1AD1FD:3052| db $18 ; duration
|1AD1FE:3053| db $90 ; play note E2
|1AD1FF:3054| db $90 ; play note E2
|1AD200:3055| db $24 ; duration
|1AD201:3056| db $8E ; play note D2
|1AD202:3057| db $0C ; duration
|1AD203:3058| db $90 ; play note E2
|1AD204:3059| db $18 ; duration
|1AD205:305A| db $C8 ; sustain current note
|1AD206:305B| db $90 ; play note E2
|1AD207:305C| db $30 ; duration
|1AD208:305D| db $8E ; play note D2

;---------------------------------------------------------------------------------------------------

Song0E_Segment3_Track2:
|1AD209:305E| db $E0, $12 ; set instrument - horn
|1AD20B:3060| db $ED, $C8 ; set channel volume
|1AD20D:3062| db $EF : dw Song0E_Sub_3150 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0E_Segment3_Track3:
|1AD211:3066| db $E0, $18 ; set instrument - piano
|1AD213:3068| db $ED, $C8 ; set channel volume
|1AD215:306A| db $18, $5D ; duration, params
|1AD217:306C| db $A0 ; play note G#3
|1AD218:306D| db $A0 ; play note G#3
|1AD219:306E| db $24 ; duration
|1AD21A:306F| db $9E ; play note F#3
|1AD21B:3070| db $0C ; duration
|1AD21C:3071| db $A0 ; play note G#3
|1AD21D:3072| db $18 ; duration
|1AD21E:3073| db $C8 ; sustain current note
|1AD21F:3074| db $A0 ; play note G#3
|1AD220:3075| db $30 ; duration
|1AD221:3076| db $9E ; play note F#3
|1AD222:3077| db $18 ; duration
|1AD223:3078| db $9C ; play note E3
|1AD224:3079| db $9C ; play note E3
|1AD225:307A| db $24 ; duration
|1AD226:307B| db $9A ; play note D3
|1AD227:307C| db $0C ; duration
|1AD228:307D| db $9C ; play note E3
|1AD229:307E| db $18 ; duration
|1AD22A:307F| db $C8 ; sustain current note
|1AD22B:3080| db $9C ; play note E3
|1AD22C:3081| db $30 ; duration
|1AD22D:3082| db $9A ; play note D3

;---------------------------------------------------------------------------------------------------

Song0E_Segment3_Track4:
|1AD22E:3083| db $E0, $18 ; set instrument - piano
|1AD230:3085| db $ED, $C8 ; set channel volume
|1AD232:3087| db $18, $5D ; duration, params
|1AD234:3089| db $9B ; play note D#3
|1AD235:308A| db $9B ; play note D#3
|1AD236:308B| db $24 ; duration
|1AD237:308C| db $99 ; play note C#3
|1AD238:308D| db $0C ; duration
|1AD239:308E| db $9B ; play note D#3
|1AD23A:308F| db $18 ; duration
|1AD23B:3090| db $C8 ; sustain current note
|1AD23C:3091| db $9B ; play note D#3
|1AD23D:3092| db $30 ; duration
|1AD23E:3093| db $99 ; play note C#3
|1AD23F:3094| db $18 ; duration
|1AD240:3095| db $97 ; play note B2
|1AD241:3096| db $97 ; play note B2
|1AD242:3097| db $24 ; duration
|1AD243:3098| db $95 ; play note A2
|1AD244:3099| db $0C ; duration
|1AD245:309A| db $97 ; play note B2
|1AD246:309B| db $18 ; duration
|1AD247:309C| db $C8 ; sustain current note
|1AD248:309D| db $97 ; play note B2
|1AD249:309E| db $30 ; duration
|1AD24A:309F| db $95 ; play note A2

;---------------------------------------------------------------------------------------------------

Song0E_Segment2_Track0:
|1AD24B:30A0| db $E0, $16 ; set instrument - flute
|1AD24D:30A2| db $ED, $FA ; set channel volume
|1AD24F:30A4| db $EF : dw Song0E_Sub_3174 : db $01 ; call segment subroutine
|1AD253:30A8| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0E_Segment2_Track1:
|1AD254:30A9| db $E0, $18 ; set instrument - piano
|1AD256:30AB| db $ED, $C8 ; set channel volume
|1AD258:30AD| db $0C, $5D ; duration, params
|1AD25A:30AF| db $90 ; play note E2
|1AD25B:30B0| db $9C ; play note E3
|1AD25C:30B1| db $90 ; play note E2
|1AD25D:30B2| db $9C ; play note E3
|1AD25E:30B3| db $8E ; play note D2
|1AD25F:30B4| db $9A ; play note D3
|1AD260:30B5| db $8E ; play note D2
|1AD261:30B6| db $9A ; play note D3
|1AD262:30B7| db $90 ; play note E2
|1AD263:30B8| db $9C ; play note E3
|1AD264:30B9| db $90 ; play note E2
|1AD265:30BA| db $9C ; play note E3
|1AD266:30BB| db $8E ; play note D2
|1AD267:30BC| db $9A ; play note D3
|1AD268:30BD| db $8E ; play note D2
|1AD269:30BE| db $9A ; play note D3

;---------------------------------------------------------------------------------------------------

Song0E_Segment2_Track2:
|1AD26A:30BF| db $E0, $0A ; set instrument - strings B
|1AD26C:30C1| db $ED, $C8 ; set channel volume
|1AD26E:30C3| db $EF : dw Song0E_Sub_3174 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song0E_Segment2_Track3:
|1AD272:30C7| db $E0, $18 ; set instrument - piano
|1AD274:30C9| db $ED, $C8 ; set channel volume
|1AD276:30CB| db $0C ; duration
|1AD277:30CC| db $C9 ; rest
|1AD278:30CD| db $0C, $5D ; duration, params
|1AD27A:30CF| db $97 ; play note B2
|1AD27B:30D0| db $C9 ; rest
|1AD27C:30D1| db $97 ; play note B2
|1AD27D:30D2| db $C9 ; rest
|1AD27E:30D3| db $97 ; play note B2
|1AD27F:30D4| db $C9 ; rest
|1AD280:30D5| db $97 ; play note B2
|1AD281:30D6| db $C9 ; rest
|1AD282:30D7| db $97 ; play note B2
|1AD283:30D8| db $C9 ; rest
|1AD284:30D9| db $97 ; play note B2
|1AD285:30DA| db $C9 ; rest
|1AD286:30DB| db $97 ; play note B2
|1AD287:30DC| db $C9 ; rest
|1AD288:30DD| db $97 ; play note B2

;---------------------------------------------------------------------------------------------------

Song0E_Segment0_Track0:
|1AD289:30DE| db $FA, $19 ; set base percussion sample
|1AD28B:30E0| db $E5, $B4 ; set song volume
|1AD28D:30E2| db $E7, $27 ; set song tempo
|1AD28F:30E4| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1AD293:30E8| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1AD297:30EC| db $F8, $28, $32, $32 ; initiate gradual echo volume change
|1AD29B:30F0| db $E0, $16 ; set instrument - flute
|1AD29D:30F2| db $ED, $FA ; set channel volume
|1AD29F:30F4| db $0C, $5D ; duration, params
|1AD2A1:30F6| db $B0 ; play note C5
|1AD2A2:30F7| db $AE ; play note A#4
|1AD2A3:30F8| db $B0 ; play note C5
|1AD2A4:30F9| db $AE ; play note A#4
|1AD2A5:30FA| db $B0 ; play note C5
|1AD2A6:30FB| db $AE ; play note A#4
|1AD2A7:30FC| db $B5 ; play note F5
|1AD2A8:30FD| db $B3 ; play note D#5
|1AD2A9:30FE| db $30 ; duration
|1AD2AA:30FF| db $C8 ; sustain current note
|1AD2AB:3100| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0E_Segment0_Track1:
|1AD2AC:3101| db $E0, $18 ; set instrument - piano
|1AD2AE:3103| db $ED, $C8 ; set channel volume
|1AD2B0:3105| db $18, $5D ; duration, params
|1AD2B2:3107| db $94 ; play note G#2
|1AD2B3:3108| db $94 ; play note G#2
|1AD2B4:3109| db $92 ; play note F#2
|1AD2B5:310A| db $0C ; duration
|1AD2B6:310B| db $92 ; play note F#2
|1AD2B7:310C| db $92 ; play note F#2
|1AD2B8:310D| db $30 ; duration
|1AD2B9:310E| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song0E_Segment0_Track2:
|1AD2BA:310F| db $E0, $12 ; set instrument - horn
|1AD2BC:3111| db $ED, $C8 ; set channel volume
|1AD2BE:3113| db $0C, $5D ; duration, params
|1AD2C0:3115| db $B0 ; play note C5
|1AD2C1:3116| db $AE ; play note A#4
|1AD2C2:3117| db $B0 ; play note C5
|1AD2C3:3118| db $AE ; play note A#4
|1AD2C4:3119| db $B0 ; play note C5
|1AD2C5:311A| db $AE ; play note A#4
|1AD2C6:311B| db $B5 ; play note F5
|1AD2C7:311C| db $B3 ; play note D#5
|1AD2C8:311D| db $30 ; duration
|1AD2C9:311E| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song0E_Segment0_Track3:
|1AD2CA:311F| db $E0, $18 ; set instrument - piano
|1AD2CC:3121| db $ED, $C8 ; set channel volume
|1AD2CE:3123| db $18, $5D ; duration, params
|1AD2D0:3125| db $A0 ; play note G#3
|1AD2D1:3126| db $A0 ; play note G#3
|1AD2D2:3127| db $9E ; play note F#3
|1AD2D3:3128| db $0C ; duration
|1AD2D4:3129| db $9E ; play note F#3
|1AD2D5:312A| db $9E ; play note F#3
|1AD2D6:312B| db $30 ; duration
|1AD2D7:312C| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song0E_Segment0_Track4:
|1AD2D8:312D| db $E0, $18 ; set instrument - piano
|1AD2DA:312F| db $ED, $C8 ; set channel volume
|1AD2DC:3131| db $18, $5D ; duration, params
|1AD2DE:3133| db $9B ; play note D#3
|1AD2DF:3134| db $9B ; play note D#3
|1AD2E0:3135| db $99 ; play note C#3
|1AD2E1:3136| db $0C ; duration
|1AD2E2:3137| db $99 ; play note C#3
|1AD2E3:3138| db $99 ; play note C#3
|1AD2E4:3139| db $30 ; duration
|1AD2E5:313A| db $C8 ; sustain current note
|1AD2E6:313B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0E_Sub_313C:
|1AD2E7:313C| db $0C, $5D ; duration, params
|1AD2E9:313E| db $A9 ; play note F4
|1AD2EA:313F| db $B0 ; play note C5
|1AD2EB:3140| db $B5 ; play note F5
|1AD2EC:3141| db $A9 ; play note F4
|1AD2ED:3142| db $AE ; play note A#4
|1AD2EE:3143| db $B3 ; play note D#5
|1AD2EF:3144| db $A9 ; play note F4
|1AD2F0:3145| db $B0 ; play note C5
|1AD2F1:3146| db $B5 ; play note F5
|1AD2F2:3147| db $A9 ; play note F4
|1AD2F3:3148| db $AE ; play note A#4
|1AD2F4:3149| db $B3 ; play note D#5
|1AD2F5:314A| db $18 ; duration
|1AD2F6:314B| db $C9 ; rest
|1AD2F7:314C| db $0C ; duration
|1AD2F8:314D| db $B0 ; play note C5
|1AD2F9:314E| db $C9 ; rest
|1AD2FA:314F| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0E_Sub_3150:
|1AD2FB:3150| db $0C, $5D ; duration, params
|1AD2FD:3152| db $B0 ; play note C5
|1AD2FE:3153| db $AE ; play note A#4
|1AD2FF:3154| db $B0 ; play note C5
|1AD300:3155| db $AE ; play note A#4
|1AD301:3156| db $AA ; play note F#4
|1AD302:3157| db $A8 ; play note E4
|1AD303:3158| db $C9 ; rest
|1AD304:3159| db $B0 ; play note C5
|1AD305:315A| db $C9 ; rest
|1AD306:315B| db $AE ; play note A#4
|1AD307:315C| db $B0 ; play note C5
|1AD308:315D| db $AE ; play note A#4
|1AD309:315E| db $AA ; play note F#4
|1AD30A:315F| db $A8 ; play note E4
|1AD30B:3160| db $18 ; duration
|1AD30C:3161| db $C9 ; rest
|1AD30D:3162| db $0C ; duration
|1AD30E:3163| db $AE ; play note A#4
|1AD30F:3164| db $AC ; play note G#4
|1AD310:3165| db $AE ; play note A#4
|1AD311:3166| db $AC ; play note G#4
|1AD312:3167| db $A8 ; play note E4
|1AD313:3168| db $A6 ; play note D4
|1AD314:3169| db $C9 ; rest
|1AD315:316A| db $AE ; play note A#4
|1AD316:316B| db $C9 ; rest
|1AD317:316C| db $AC ; play note G#4
|1AD318:316D| db $AE ; play note A#4
|1AD319:316E| db $AC ; play note G#4
|1AD31A:316F| db $A8 ; play note E4
|1AD31B:3170| db $A6 ; play note D4
|1AD31C:3171| db $18 ; duration
|1AD31D:3172| db $C9 ; rest
|1AD31E:3173| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song0E_Sub_3174:
|1AD31F:3174| db $0C, $5D ; duration, params
|1AD321:3176| db $A8 ; play note E4
|1AD322:3177| db $AC ; play note G#4
|1AD323:3178| db $B2 ; play note D5
|1AD324:3179| db $A6 ; play note D4
|1AD325:317A| db $AA ; play note F#4
|1AD326:317B| db $B0 ; play note C5
|1AD327:317C| db $A8 ; play note E4
|1AD328:317D| db $AC ; play note G#4
|1AD329:317E| db $B2 ; play note D5
|1AD32A:317F| db $A6 ; play note D4
|1AD32B:3180| db $AA ; play note F#4
|1AD32C:3181| db $B0 ; play note C5
|1AD32D:3182| db $18 ; duration
|1AD32E:3183| db $C9 ; rest
|1AD32F:3184| db $0C ; duration
|1AD330:3185| db $AE ; play note A#4
|1AD331:3186| db $C9 ; rest
|1AD332:3187| db $00 ; End

;===================================================================================================

site *

|1AD333| dw $0000, SPC_ENGINE ; end of transfer

;===================================================================================================
; FREE ROM: 0x49
; including garbage
;===================================================================================================
GARBAGE_1AD337:
|1AD337| db $77, $00, $00, $00, $00, $01, $FF, $00, $00

NULL_1AD340:
|1AD340| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AD348| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AD350| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AD358| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AD360| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AD368| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AD370| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AD378| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

SongBank_Credits_Main:
|1AD380| dw $1060, SONG_POINTERS ; Transfer size, transfer address

site SONG_POINTERS
|1AD384:D000| dw $0000
|1AD386:D002| dw $0000
|1AD388:D004| dw $0000
|1AD38A:D006| dw $0000
|1AD38C:D008| dw $0000
|1AD38E:D00A| dw $0000
|1AD390:D00C| dw $0000
|1AD392:D00E| dw $0000
|1AD394:D010| dw $0000
|1AD396:D012| dw $0000
|1AD398:D014| dw $0000
|1AD39A:D016| dw $0000
|1AD39C:D018| dw $0000
|1AD39E:D01A| dw $0000
|1AD3A0:D01C| dw $0000
|1AD3A2:D01E| dw $0000
|1AD3A4:D020| dw $0000
|1AD3A6:D022| dw $0000
|1AD3A8:D024| dw $0000
|1AD3AA:D026| dw $0000
|1AD3AC:D028| dw $0000
|1AD3AE:D02A| dw $0000
|1AD3B0:D02C| dw $0000
|1AD3B2:D02E| dw $0000
|1AD3B4:D030| dw $0000
|1AD3B6:D032| dw $0000
|1AD3B8:D034| dw $0000
|1AD3BA:D036| dw $0000
|1AD3BC:D038| dw $0000
|1AD3BE:D03A| dw $0000
|1AD3C0:D03C| dw $0000
|1AD3C2:D03E| dw Song20_TriforceRoom
|1AD3C4:D040| dw Song21_EndingTheme
|1AD3C6:D042| dw Song22_Credits
|1AD3C8:D044| dw $0000

;===================================================================================================

Song20_TriforceRoom:
|1AD3CA:D046| dw Song20_Segment0

Song20_Loop:
|1AD3CC:D048| dw Song20_Segment1
|1AD3CE:D04A| dw Song20_Segment1
|1AD3D0:D04C| dw Song20_Segment2
|1AD3D2:D04E| dw Song20_Segment3
|1AD3D4:D050| dw $00FF, Song20_Loop ; Loop point
|1AD3D8:D054| dw $0000

Song20_Segment1:
|1AD3DA:D056| dw Song20_Segment1_Track0
|1AD3DC:D058| dw Song20_Segment1_Track1
|1AD3DE:D05A| dw Song20_Segment1_Track2
|1AD3E0:D05C| dw Song20_Segment1_Track3
|1AD3E2:D05E| dw Song20_Segment1_Track4
|1AD3E4:D060| dw Song20_Segment1_Track5
|1AD3E6:D062| dw $0000
|1AD3E8:D064| dw $0000

Song20_Segment0:
|1AD3EA:D066| dw Song20_Segment0_Track0
|1AD3EC:D068| dw Song20_Segment0_Track1
|1AD3EE:D06A| dw Song20_Segment0_Track2
|1AD3F0:D06C| dw Song20_Segment0_Track3
|1AD3F2:D06E| dw Song20_Segment0_Track4
|1AD3F4:D070| dw $0000
|1AD3F6:D072| dw $0000
|1AD3F8:D074| dw $0000

Song20_Segment2:
|1AD3FA:D076| dw Song20_Segment2_Track0
|1AD3FC:D078| dw Song20_Segment2_Track1
|1AD3FE:D07A| dw Song20_Segment2_Track2
|1AD400:D07C| dw Song20_Segment2_Track3
|1AD402:D07E| dw Song20_Segment2_Track4
|1AD404:D080| dw Song20_Segment2_Track5
|1AD406:D082| dw $0000
|1AD408:D084| dw $0000

Song20_Segment3:
|1AD40A:D086| dw Song20_Segment3_Track0
|1AD40C:D088| dw Song20_Segment3_Track1
|1AD40E:D08A| dw Song20_Segment3_Track2
|1AD410:D08C| dw Song20_Segment3_Track3
|1AD412:D08E| dw Song20_Segment3_Track4
|1AD414:D090| dw Song20_Segment3_Track5
|1AD416:D092| dw $0000
|1AD418:D094| dw $0000

;---------------------------------------------------------------------------------------------------

Song20_Segment1_Track0:
|1AD41A:D096| db $E5, $78 ; set song volume
|1AD41C:D098| db $E6, $8C, $C8 ; initiate gradual song volume change
|1AD41F:D09B| db $E1, $10 ; set panning - leaning left
|1AD421:D09D| db $E7, $17 ; set song tempo
|1AD423:D09F| db $ED, $A0 ; set channel volume
|1AD425:D0A1| db $18, $7D ; duration, params
|1AD427:D0A3| db $B4 ; play note E5
|1AD428:D0A4| db $38 ; duration
|1AD429:D0A5| db $AF ; play note B4
|1AD42A:D0A6| db $08 ; duration
|1AD42B:D0A7| db $AD ; play note A4
|1AD42C:D0A8| db $AF ; play note B4
|1AD42D:D0A9| db $EF : dw Song20_Sub_D2E3 : db $01 ; call segment subroutine
|1AD431:D0AD| db $60 ; duration
|1AD432:D0AE| db $A8 ; play note E4
|1AD433:D0AF| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song20_Segment1_Track1:
|1AD434:D0B0| db $E1, $06 ; set panning - leaning right
|1AD436:D0B2| db $60, $7D ; duration, params
|1AD438:D0B4| db $8C ; play note C2
|1AD439:D0B5| db $48 ; duration
|1AD43A:D0B6| db $91 ; play note F2
|1AD43B:D0B7| db $8C ; play note C2
|1AD43C:D0B8| db $60 ; duration
|1AD43D:D0B9| db $91 ; play note F2

;---------------------------------------------------------------------------------------------------

Song20_Segment1_Track2:
|1AD43E:D0BA| db $ED, $78 ; set channel volume
|1AD440:D0BC| db $E1, $08 ; set panning - leaning right
|1AD442:D0BE| db $08 ; duration
|1AD443:D0BF| db $C9 ; rest
|1AD444:D0C0| db $18, $7D ; duration, params
|1AD446:D0C2| db $B4 ; play note E5
|1AD447:D0C3| db $38 ; duration
|1AD448:D0C4| db $AF ; play note B4
|1AD449:D0C5| db $08 ; duration
|1AD44A:D0C6| db $AD ; play note A4
|1AD44B:D0C7| db $AF ; play note B4
|1AD44C:D0C8| db $EF : dw Song20_Sub_D2E3 : db $01 ; call segment subroutine
|1AD450:D0CC| db $58 ; duration
|1AD451:D0CD| db $A8 ; play note E4

;---------------------------------------------------------------------------------------------------

Song20_Segment1_Track3:
|1AD452:D0CE| db $0C ; duration
|1AD453:D0CF| db $C9 ; rest
|1AD454:D0D0| db $54, $7D ; duration, params
|1AD456:D0D2| db $93 ; play note G2
|1AD457:D0D3| db $0C ; duration
|1AD458:D0D4| db $C8 ; sustain current note
|1AD459:D0D5| db $3C ; duration
|1AD45A:D0D6| db $98 ; play note C3
|1AD45B:D0D7| db $0C ; duration
|1AD45C:D0D8| db $C8 ; sustain current note
|1AD45D:D0D9| db $3C ; duration
|1AD45E:D0DA| db $93 ; play note G2
|1AD45F:D0DB| db $0C ; duration
|1AD460:D0DC| db $C8 ; sustain current note
|1AD461:D0DD| db $54 ; duration
|1AD462:D0DE| db $98 ; play note C3

;---------------------------------------------------------------------------------------------------

Song20_Segment1_Track4:
|1AD463:D0DF| db $18 ; duration
|1AD464:D0E0| db $C9 ; rest
|1AD465:D0E1| db $48, $7D ; duration, params
|1AD467:D0E3| db $98 ; play note C3
|1AD468:D0E4| db $18 ; duration
|1AD469:D0E5| db $C8 ; sustain current note
|1AD46A:D0E6| db $30 ; duration
|1AD46B:D0E7| db $9D ; play note F3
|1AD46C:D0E8| db $18 ; duration
|1AD46D:D0E9| db $C8 ; sustain current note
|1AD46E:D0EA| db $30 ; duration
|1AD46F:D0EB| db $98 ; play note C3
|1AD470:D0EC| db $18 ; duration
|1AD471:D0ED| db $C8 ; sustain current note
|1AD472:D0EE| db $48 ; duration
|1AD473:D0EF| db $9D ; play note F3

;---------------------------------------------------------------------------------------------------

Song20_Segment1_Track5:
|1AD474:D0F0| db $E0, $18 ; set instrument - piano
|1AD476:D0F2| db $ED, $DC ; set channel volume
|1AD478:D0F4| db $E1, $0A ; set panning - balanced
|1AD47A:D0F6| db $18, $5D ; duration, params
|1AD47C:D0F8| db $B4 ; play note E5
|1AD47D:D0F9| db $38 ; duration
|1AD47E:D0FA| db $AF ; play note B4
|1AD47F:D0FB| db $08 ; duration
|1AD480:D0FC| db $AD ; play note A4
|1AD481:D0FD| db $AF ; play note B4
|1AD482:D0FE| db $EF : dw Song20_Sub_D2E3 : db $01 ; call segment subroutine
|1AD486:D102| db $60 ; duration
|1AD487:D103| db $A8 ; play note E4

;---------------------------------------------------------------------------------------------------

Song20_Segment0_Track0:
|1AD488:D104| db $FA, $19 ; set base percussion sample
|1AD48A:D106| db $E5, $B4 ; set song volume
|1AD48C:D108| db $F5, $FF, $28, $28 ; configure EON, EVOLL, EVOLR
|1AD490:D10C| db $F7, $02, $50, $02 ; configure EDL, EFB, FIR
|1AD494:D110| db $E7, $19 ; set song tempo
|1AD496:D112| db $E8, $64, $25 ; initiate gradual tempo change
|1AD499:D115| db $E0, $0A ; set instrument - strings B
|1AD49B:D117| db $ED, $C8 ; set channel volume
|1AD49D:D119| db $E1, $02 ; set panning - leaning right
|1AD49F:D11B| db $E3, $1A, $1C, $18 ; enable vibrato
|1AD4A3:D11F| db $20 ; duration
|1AD4A4:D120| db $C9 ; rest
|1AD4A5:D121| db $28, $7D ; duration, params
|1AD4A7:D123| db $A3 ; play note B3
|1AD4A8:D124| db $18 ; duration
|1AD4A9:D125| db $AD ; play note A4
|1AD4AA:D126| db $10 ; duration
|1AD4AB:D127| db $C8 ; sustain current note
|1AD4AC:D128| db $28 ; duration
|1AD4AD:D129| db $B5 ; play note F5
|1AD4AE:D12A| db $BE ; play note D6
|1AD4AF:D12B| db $50 ; duration
|1AD4B0:D12C| db $C8 ; sustain current note
|1AD4B1:D12D| db $10 ; duration
|1AD4B2:D12E| db $C9 ; rest
|1AD4B3:D12F| db $E6, $5A, $78 ; initiate gradual song volume change
|1AD4B6:D132| db $60 ; duration
|1AD4B7:D133| db $C9 ; rest
|1AD4B8:D134| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song20_Segment0_Track1:
|1AD4B9:D135| db $E0, $0A ; set instrument - strings B
|1AD4BB:D137| db $ED, $B4 ; set channel volume
|1AD4BD:D139| db $E1, $12 ; set panning - leaning left
|1AD4BF:D13B| db $E3, $1A, $1C, $18 ; enable vibrato
|1AD4C3:D13F| db $28, $7D ; duration, params
|1AD4C5:D141| db $93 ; play note G2
|1AD4C6:D142| db $A6 ; play note D4
|1AD4C7:D143| db $10 ; duration
|1AD4C8:D144| db $AF ; play note B4
|1AD4C9:D145| db $18 ; duration
|1AD4CA:D146| db $C8 ; sustain current note
|1AD4CB:D147| db $28 ; duration
|1AD4CC:D148| db $B9 ; play note A5
|1AD4CD:D149| db $20 ; duration
|1AD4CE:D14A| db $C1 ; play note F6
|1AD4CF:D14B| db $60 ; duration
|1AD4D0:D14C| db $C8 ; sustain current note
|1AD4D1:D14D| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song20_Segment0_Track2:
|1AD4D2:D14E| db $E0, $0A ; set instrument - strings B
|1AD4D4:D150| db $ED, $B4 ; set channel volume
|1AD4D6:D152| db $E1, $0E ; set panning - leaning left
|1AD4D8:D154| db $E3, $18, $1A, $1C ; enable vibrato
|1AD4DC:D158| db $08 ; duration
|1AD4DD:D159| db $C9 ; rest
|1AD4DE:D15A| db $28, $7D ; duration, params
|1AD4E0:D15C| db $9A ; play note D3
|1AD4E1:D15D| db $A9 ; play note F4
|1AD4E2:D15E| db $08 ; duration
|1AD4E3:D15F| db $B2 ; play note D5
|1AD4E4:D160| db $20 ; duration
|1AD4E5:D161| db $C8 ; sustain current note
|1AD4E6:D162| db $40 ; duration
|1AD4E7:D163| db $B5 ; play note F5
|1AD4E8:D164| db $30 ; duration
|1AD4E9:D165| db $C8 ; sustain current note
|1AD4EA:D166| db $C9 ; rest
|1AD4EB:D167| db $60 ; duration
|1AD4EC:D168| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song20_Segment0_Track3:
|1AD4ED:D169| db $E0, $0A ; set instrument - strings B
|1AD4EF:D16B| db $ED, $B4 ; set channel volume
|1AD4F1:D16D| db $E1, $0A ; set panning - balanced
|1AD4F3:D16F| db $E3, $18, $1C, $1A ; enable vibrato
|1AD4F7:D173| db $10 ; duration
|1AD4F8:D174| db $C9 ; rest
|1AD4F9:D175| db $28, $7D ; duration, params
|1AD4FB:D177| db $9D ; play note F3
|1AD4FC:D178| db $AD ; play note A4
|1AD4FD:D179| db $AF ; play note B4
|1AD4FE:D17A| db $38 ; duration
|1AD4FF:D17B| db $B9 ; play note A5
|1AD500:D17C| db $40 ; duration
|1AD501:D17D| db $C8 ; sustain current note
|1AD502:D17E| db $20 ; duration
|1AD503:D17F| db $C9 ; rest
|1AD504:D180| db $60 ; duration
|1AD505:D181| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song20_Segment0_Track4:
|1AD506:D182| db $E0, $0A ; set instrument - strings B
|1AD508:D184| db $ED, $B4 ; set channel volume
|1AD50A:D186| db $E1, $06 ; set panning - leaning right
|1AD50C:D188| db $E3, $1E, $18, $1C ; enable vibrato
|1AD510:D18C| db $18 ; duration
|1AD511:D18D| db $C9 ; rest
|1AD512:D18E| db $28, $7D ; duration, params
|1AD514:D190| db $A1 ; play note A3
|1AD515:D191| db $20 ; duration
|1AD516:D192| db $A9 ; play note F4
|1AD517:D193| db $08 ; duration
|1AD518:D194| db $C8 ; sustain current note
|1AD519:D195| db $28 ; duration
|1AD51A:D196| db $B2 ; play note D5
|1AD51B:D197| db $30 ; duration
|1AD51C:D198| db $BB ; play note B5
|1AD51D:D199| db $48 ; duration
|1AD51E:D19A| db $C8 ; sustain current note
|1AD51F:D19B| db $18 ; duration
|1AD520:D19C| db $C9 ; rest
|1AD521:D19D| db $60 ; duration
|1AD522:D19E| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song20_Segment2_Track0:
|1AD523:D19F| db $18, $7D ; duration, params
|1AD525:D1A1| db $B0 ; play note C5
|1AD526:D1A2| db $38 ; duration
|1AD527:D1A3| db $AB ; play note G4
|1AD528:D1A4| db $08 ; duration
|1AD529:D1A5| db $A9 ; play note F4
|1AD52A:D1A6| db $AB ; play note G4
|1AD52B:D1A7| db $EF : dw Song20_Sub_D2EE : db $01 ; call segment subroutine
|1AD52F:D1AB| db $60 ; duration
|1AD530:D1AC| db $A8 ; play note E4
|1AD531:D1AD| db $48 ; duration
|1AD532:D1AE| db $C8 ; sustain current note
|1AD533:D1AF| db $18 ; duration
|1AD534:D1B0| db $A8 ; play note E4
|1AD535:D1B1| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song20_Segment2_Track1:
|1AD536:D1B2| db $E1, $06 ; set panning - leaning right
|1AD538:D1B4| db $60, $7D ; duration, params
|1AD53A:D1B6| db $94 ; play note G#2
|1AD53B:D1B7| db $48 ; duration
|1AD53C:D1B8| db $99 ; play note C#3
|1AD53D:D1B9| db $94 ; play note G#2
|1AD53E:D1BA| db $99 ; play note C#3
|1AD53F:D1BB| db $60 ; duration
|1AD540:D1BC| db $98 ; play note C3
|1AD541:D1BD| db $98 ; play note C3

;---------------------------------------------------------------------------------------------------

Song20_Segment2_Track2:
|1AD542:D1BE| db $ED, $8C ; set channel volume
|1AD544:D1C0| db $E1, $08 ; set panning - leaning right
|1AD546:D1C2| db $08 ; duration
|1AD547:D1C3| db $C9 ; rest
|1AD548:D1C4| db $18, $7D ; duration, params
|1AD54A:D1C6| db $B0 ; play note C5
|1AD54B:D1C7| db $38 ; duration
|1AD54C:D1C8| db $AB ; play note G4
|1AD54D:D1C9| db $08 ; duration
|1AD54E:D1CA| db $A9 ; play note F4
|1AD54F:D1CB| db $AB ; play note G4
|1AD550:D1CC| db $EF : dw Song20_Sub_D2EE : db $01 ; call segment subroutine
|1AD554:D1D0| db $60 ; duration
|1AD555:D1D1| db $A8 ; play note E4
|1AD556:D1D2| db $48 ; duration
|1AD557:D1D3| db $C8 ; sustain current note
|1AD558:D1D4| db $10 ; duration
|1AD559:D1D5| db $A8 ; play note E4

;---------------------------------------------------------------------------------------------------

Song20_Segment2_Track3:
|1AD55A:D1D6| db $0C ; duration
|1AD55B:D1D7| db $C9 ; rest
|1AD55C:D1D8| db $54, $7D ; duration, params
|1AD55E:D1DA| db $9B ; play note D#3
|1AD55F:D1DB| db $0C ; duration
|1AD560:D1DC| db $C8 ; sustain current note
|1AD561:D1DD| db $3C ; duration
|1AD562:D1DE| db $A0 ; play note G#3
|1AD563:D1DF| db $0C ; duration
|1AD564:D1E0| db $C8 ; sustain current note
|1AD565:D1E1| db $3C ; duration
|1AD566:D1E2| db $9B ; play note D#3
|1AD567:D1E3| db $0C ; duration
|1AD568:D1E4| db $C8 ; sustain current note
|1AD569:D1E5| db $3C ; duration
|1AD56A:D1E6| db $A0 ; play note G#3
|1AD56B:D1E7| db $0C ; duration
|1AD56C:D1E8| db $C9 ; rest
|1AD56D:D1E9| db $54 ; duration
|1AD56E:D1EA| db $9F ; play note G3
|1AD56F:D1EB| db $0C ; duration
|1AD570:D1EC| db $C8 ; sustain current note
|1AD571:D1ED| db $54 ; duration
|1AD572:D1EE| db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song20_Segment2_Track4:
|1AD573:D1EF| db $18 ; duration
|1AD574:D1F0| db $C9 ; rest
|1AD575:D1F1| db $48, $7D ; duration, params
|1AD577:D1F3| db $A0 ; play note G#3
|1AD578:D1F4| db $18 ; duration
|1AD579:D1F5| db $C8 ; sustain current note
|1AD57A:D1F6| db $30 ; duration
|1AD57B:D1F7| db $A5 ; play note C#4
|1AD57C:D1F8| db $18 ; duration
|1AD57D:D1F9| db $C8 ; sustain current note
|1AD57E:D1FA| db $30 ; duration
|1AD57F:D1FB| db $A0 ; play note G#3
|1AD580:D1FC| db $18 ; duration
|1AD581:D1FD| db $C8 ; sustain current note
|1AD582:D1FE| db $30 ; duration
|1AD583:D1FF| db $A5 ; play note C#4
|1AD584:D200| db $18 ; duration
|1AD585:D201| db $C9 ; rest
|1AD586:D202| db $48 ; duration
|1AD587:D203| db $A4 ; play note C4
|1AD588:D204| db $18 ; duration
|1AD589:D205| db $C8 ; sustain current note
|1AD58A:D206| db $48 ; duration
|1AD58B:D207| db $A4 ; play note C4

;---------------------------------------------------------------------------------------------------

Song20_Segment2_Track5:
|1AD58C:D208| db $18, $7D ; duration, params
|1AD58E:D20A| db $B0 ; play note C5
|1AD58F:D20B| db $38 ; duration
|1AD590:D20C| db $AB ; play note G4
|1AD591:D20D| db $08 ; duration
|1AD592:D20E| db $A9 ; play note F4
|1AD593:D20F| db $AB ; play note G4
|1AD594:D210| db $EF : dw Song20_Sub_D2EE : db $01 ; call segment subroutine
|1AD598:D214| db $60 ; duration
|1AD599:D215| db $A8 ; play note E4
|1AD59A:D216| db $48 ; duration
|1AD59B:D217| db $C8 ; sustain current note
|1AD59C:D218| db $18 ; duration
|1AD59D:D219| db $A8 ; play note E4

;---------------------------------------------------------------------------------------------------

Song20_Segment3_Track0:
|1AD59E:D21A| db $30, $7D ; duration, params
|1AD5A0:D21C| db $A6 ; play note D4
|1AD5A1:D21D| db $18 ; duration
|1AD5A2:D21E| db $AD ; play note A4
|1AD5A3:D21F| db $30 ; duration
|1AD5A4:D220| db $AB ; play note G4
|1AD5A5:D221| db $18 ; duration
|1AD5A6:D222| db $A4 ; play note C4
|1AD5A7:D223| db $30 ; duration
|1AD5A8:D224| db $A4 ; play note C4
|1AD5A9:D225| db $18 ; duration
|1AD5AA:D226| db $AB ; play note G4
|1AD5AB:D227| db $30 ; duration
|1AD5AC:D228| db $A6 ; play note D4
|1AD5AD:D229| db $18 ; duration
|1AD5AE:D22A| db $A8 ; play note E4
|1AD5AF:D22B| db $30 ; duration
|1AD5B0:D22C| db $A6 ; play note D4
|1AD5B1:D22D| db $18 ; duration
|1AD5B2:D22E| db $AD ; play note A4
|1AD5B3:D22F| db $30 ; duration
|1AD5B4:D230| db $AB ; play note G4
|1AD5B5:D231| db $18 ; duration
|1AD5B6:D232| db $A4 ; play note C4
|1AD5B7:D233| db $E8, $48, $25 ; initiate gradual tempo change
|1AD5BA:D236| db $0C ; duration
|1AD5BB:D237| db $A5 ; play note C#4
|1AD5BC:D238| db $A7 ; play note D#4
|1AD5BD:D239| db $A9 ; play note F4
|1AD5BE:D23A| db $AA ; play note F#4
|1AD5BF:D23B| db $AC ; play note G#4
|1AD5C0:D23C| db $AE ; play note A#4
|1AD5C1:D23D| db $E8, $48, $19 ; initiate gradual tempo change
|1AD5C4:D240| db $A9 ; play note F4
|1AD5C5:D241| db $AB ; play note G4
|1AD5C6:D242| db $AD ; play note A4
|1AD5C7:D243| db $AF ; play note B4
|1AD5C8:D244| db $B0 ; play note C5
|1AD5C9:D245| db $B2 ; play note D5
|1AD5CA:D246| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song20_Segment3_Track1:
|1AD5CB:D247| db $48, $7D ; duration, params
|1AD5CD:D249| db $96 ; play note A#2
|1AD5CE:D24A| db $95 ; play note A2
|1AD5CF:D24B| db $94 ; play note G#2
|1AD5D0:D24C| db $93 ; play note G2
|1AD5D1:D24D| db $96 ; play note A#2
|1AD5D2:D24E| db $95 ; play note A2
|1AD5D3:D24F| db $94 ; play note G#2
|1AD5D4:D250| db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song20_Segment3_Track2:
|1AD5D5:D251| db $08 ; duration
|1AD5D6:D252| db $C9 ; rest
|1AD5D7:D253| db $30, $7D ; duration, params
|1AD5D9:D255| db $A6 ; play note D4
|1AD5DA:D256| db $18 ; duration
|1AD5DB:D257| db $AD ; play note A4
|1AD5DC:D258| db $30 ; duration
|1AD5DD:D259| db $AB ; play note G4
|1AD5DE:D25A| db $18 ; duration
|1AD5DF:D25B| db $A4 ; play note C4
|1AD5E0:D25C| db $30 ; duration
|1AD5E1:D25D| db $A4 ; play note C4
|1AD5E2:D25E| db $18 ; duration
|1AD5E3:D25F| db $AB ; play note G4
|1AD5E4:D260| db $30 ; duration
|1AD5E5:D261| db $A6 ; play note D4
|1AD5E6:D262| db $18 ; duration
|1AD5E7:D263| db $A8 ; play note E4
|1AD5E8:D264| db $30 ; duration
|1AD5E9:D265| db $A6 ; play note D4
|1AD5EA:D266| db $18 ; duration
|1AD5EB:D267| db $AD ; play note A4
|1AD5EC:D268| db $30 ; duration
|1AD5ED:D269| db $AB ; play note G4
|1AD5EE:D26A| db $18 ; duration
|1AD5EF:D26B| db $A4 ; play note C4
|1AD5F0:D26C| db $0C ; duration
|1AD5F1:D26D| db $A5 ; play note C#4
|1AD5F2:D26E| db $A7 ; play note D#4
|1AD5F3:D26F| db $A9 ; play note F4
|1AD5F4:D270| db $AA ; play note F#4
|1AD5F5:D271| db $AC ; play note G#4
|1AD5F6:D272| db $AE ; play note A#4
|1AD5F7:D273| db $A9 ; play note F4
|1AD5F8:D274| db $AB ; play note G4
|1AD5F9:D275| db $AD ; play note A4
|1AD5FA:D276| db $AF ; play note B4
|1AD5FB:D277| db $B0 ; play note C5
|1AD5FC:D278| db $04 ; duration
|1AD5FD:D279| db $B2 ; play note D5

;---------------------------------------------------------------------------------------------------

Song20_Segment3_Track3:
|1AD5FE:D27A| db $0C ; duration
|1AD5FF:D27B| db $C9 ; rest
|1AD600:D27C| db $3C, $7D ; duration, params
|1AD602:D27E| db $9D ; play note F3
|1AD603:D27F| db $0C ; duration
|1AD604:D280| db $C9 ; rest
|1AD605:D281| db $3C ; duration
|1AD606:D282| db $9C ; play note E3
|1AD607:D283| db $0C ; duration
|1AD608:D284| db $C9 ; rest
|1AD609:D285| db $3C ; duration
|1AD60A:D286| db $9B ; play note D#3
|1AD60B:D287| db $0C ; duration
|1AD60C:D288| db $C9 ; rest
|1AD60D:D289| db $3C ; duration
|1AD60E:D28A| db $9A ; play note D3
|1AD60F:D28B| db $0C ; duration
|1AD610:D28C| db $C9 ; rest
|1AD611:D28D| db $3C ; duration
|1AD612:D28E| db $9D ; play note F3
|1AD613:D28F| db $0C ; duration
|1AD614:D290| db $C9 ; rest
|1AD615:D291| db $3C ; duration
|1AD616:D292| db $9C ; play note E3
|1AD617:D293| db $0C ; duration
|1AD618:D294| db $C9 ; rest
|1AD619:D295| db $3C ; duration
|1AD61A:D296| db $9B ; play note D#3
|1AD61B:D297| db $0C ; duration
|1AD61C:D298| db $C9 ; rest
|1AD61D:D299| db $3C ; duration
|1AD61E:D29A| db $9A ; play note D3

;---------------------------------------------------------------------------------------------------

Song20_Segment3_Track4:
|1AD61F:D29B| db $18 ; duration
|1AD620:D29C| db $C9 ; rest
|1AD621:D29D| db $30, $7D ; duration, params
|1AD623:D29F| db $A2 ; play note A#3
|1AD624:D2A0| db $18 ; duration
|1AD625:D2A1| db $C9 ; rest
|1AD626:D2A2| db $30 ; duration
|1AD627:D2A3| db $A1 ; play note A3
|1AD628:D2A4| db $18 ; duration
|1AD629:D2A5| db $C9 ; rest
|1AD62A:D2A6| db $30 ; duration
|1AD62B:D2A7| db $A0 ; play note G#3
|1AD62C:D2A8| db $18 ; duration
|1AD62D:D2A9| db $C9 ; rest
|1AD62E:D2AA| db $30 ; duration
|1AD62F:D2AB| db $9F ; play note G3
|1AD630:D2AC| db $18 ; duration
|1AD631:D2AD| db $C9 ; rest
|1AD632:D2AE| db $30 ; duration
|1AD633:D2AF| db $A2 ; play note A#3
|1AD634:D2B0| db $18 ; duration
|1AD635:D2B1| db $C9 ; rest
|1AD636:D2B2| db $30 ; duration
|1AD637:D2B3| db $A1 ; play note A3
|1AD638:D2B4| db $18 ; duration
|1AD639:D2B5| db $C9 ; rest
|1AD63A:D2B6| db $30 ; duration
|1AD63B:D2B7| db $A0 ; play note G#3
|1AD63C:D2B8| db $18 ; duration
|1AD63D:D2B9| db $C9 ; rest
|1AD63E:D2BA| db $30 ; duration
|1AD63F:D2BB| db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song20_Segment3_Track5:
|1AD640:D2BC| db $30, $7D ; duration, params
|1AD642:D2BE| db $A6 ; play note D4
|1AD643:D2BF| db $18 ; duration
|1AD644:D2C0| db $AD ; play note A4
|1AD645:D2C1| db $30 ; duration
|1AD646:D2C2| db $AB ; play note G4
|1AD647:D2C3| db $18 ; duration
|1AD648:D2C4| db $A4 ; play note C4
|1AD649:D2C5| db $30 ; duration
|1AD64A:D2C6| db $A4 ; play note C4
|1AD64B:D2C7| db $18 ; duration
|1AD64C:D2C8| db $AB ; play note G4
|1AD64D:D2C9| db $30 ; duration
|1AD64E:D2CA| db $A6 ; play note D4
|1AD64F:D2CB| db $18 ; duration
|1AD650:D2CC| db $A8 ; play note E4
|1AD651:D2CD| db $30 ; duration
|1AD652:D2CE| db $A6 ; play note D4
|1AD653:D2CF| db $18 ; duration
|1AD654:D2D0| db $AD ; play note A4
|1AD655:D2D1| db $30 ; duration
|1AD656:D2D2| db $AB ; play note G4
|1AD657:D2D3| db $18 ; duration
|1AD658:D2D4| db $A4 ; play note C4
|1AD659:D2D5| db $0C ; duration
|1AD65A:D2D6| db $A5 ; play note C#4
|1AD65B:D2D7| db $A7 ; play note D#4
|1AD65C:D2D8| db $A9 ; play note F4
|1AD65D:D2D9| db $AA ; play note F#4
|1AD65E:D2DA| db $AC ; play note G#4
|1AD65F:D2DB| db $AE ; play note A#4
|1AD660:D2DC| db $A9 ; play note F4
|1AD661:D2DD| db $AB ; play note G4
|1AD662:D2DE| db $AD ; play note A4
|1AD663:D2DF| db $AF ; play note B4
|1AD664:D2E0| db $B0 ; play note C5
|1AD665:D2E1| db $B2 ; play note D5
|1AD666:D2E2| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song20_Sub_D2E3:
|1AD667:D2E3| db $18 ; duration
|1AD668:D2E4| db $A8 ; play note E4
|1AD669:D2E5| db $A6 ; play note D4
|1AD66A:D2E6| db $A8 ; play note E4
|1AD66B:D2E7| db $B4 ; play note E5
|1AD66C:D2E8| db $24 ; duration
|1AD66D:D2E9| db $AF ; play note B4
|1AD66E:D2EA| db $06 ; duration
|1AD66F:D2EB| db $AD ; play note A4
|1AD670:D2EC| db $AF ; play note B4
|1AD671:D2ED| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song20_Sub_D2EE:
|1AD672:D2EE| db $18 ; duration
|1AD673:D2EF| db $A4 ; play note C4
|1AD674:D2F0| db $A2 ; play note A#3
|1AD675:D2F1| db $A4 ; play note C4
|1AD676:D2F2| db $B0 ; play note C5
|1AD677:D2F3| db $24 ; duration
|1AD678:D2F4| db $AB ; play note G4
|1AD679:D2F5| db $06 ; duration
|1AD67A:D2F6| db $A9 ; play note F4
|1AD67B:D2F7| db $AB ; play note G4
|1AD67C:D2F8| db $30 ; duration
|1AD67D:D2F9| db $A4 ; play note C4
|1AD67E:D2FA| db $18 ; duration
|1AD67F:D2FB| db $A9 ; play note F4
|1AD680:D2FC| db $00 ; End

;===================================================================================================

Song22_Credits:
|1AD681:D2FD| dw Song22_Segment0
|1AD683:D2FF| dw Song22_Segment1
|1AD685:D301| dw Song22_Segment2
|1AD687:D303| dw Song22_Segment3
|1AD689:D305| dw Song22_Segment4
|1AD68B:D307| dw Song22_Segment5
|1AD68D:D309| dw Song22_Segment6
|1AD68F:D30B| dw Song22_Segment7
|1AD691:D30D| dw Song22_Segment8
|1AD693:D30F| dw $0000 ; Song end

Song22_Segment5:
|1AD695:D311| dw Song22_Segment5_Track0
|1AD697:D313| dw Song22_Segment5_Track1
|1AD699:D315| dw Song22_Segment5_Track2
|1AD69B:D317| dw Song22_Segment5_Track3
|1AD69D:D319| dw Song22_Segment5_Track4
|1AD69F:D31B| dw Song22_Segment5_Track5
|1AD6A1:D31D| dw Song22_Segment5_Track6
|1AD6A3:D31F| dw Song22_Segment5_Track7

Song22_Segment6:
|1AD6A5:D321| dw Song22_Segment6_Track0
|1AD6A7:D323| dw Song22_Segment6_Track1
|1AD6A9:D325| dw Song22_Segment6_Track2
|1AD6AB:D327| dw Song22_Segment6_Track3
|1AD6AD:D329| dw $0000
|1AD6AF:D32B| dw Song22_Segment6_Track5
|1AD6B1:D32D| dw Song22_Segment6_Track6
|1AD6B3:D32F| dw Song22_Segment6_Track7

Song22_Segment0:
|1AD6B5:D331| dw Song22_Segment0_Track0
|1AD6B7:D333| dw Song22_Segment0_Track1
|1AD6B9:D335| dw Song22_Segment0_Track2
|1AD6BB:D337| dw Song22_Segment0_Track3
|1AD6BD:D339| dw Song22_Segment0_Track4
|1AD6BF:D33B| dw $0000
|1AD6C1:D33D| dw $0000
|1AD6C3:D33F| dw $0000

Song22_Segment1:
|1AD6C5:D341| dw Song22_Segment1_Track0
|1AD6C7:D343| dw Song22_Segment1_Track1
|1AD6C9:D345| dw Song22_Segment1_Track2
|1AD6CB:D347| dw Song22_Segment1_Track3
|1AD6CD:D349| dw Song22_Segment1_Track4
|1AD6CF:D34B| dw Song22_Segment1_Track5
|1AD6D1:D34D| dw $0000
|1AD6D3:D34F| dw $0000

Song22_Segment2:
|1AD6D5:D351| dw Song22_Segment2_Track0
|1AD6D7:D353| dw Song22_Segment2_Track1
|1AD6D9:D355| dw Song22_Segment2_Track2
|1AD6DB:D357| dw Song22_Segment2_Track3
|1AD6DD:D359| dw Song22_Segment2_Track4
|1AD6DF:D35B| dw Song22_Segment2_Track5
|1AD6E1:D35D| dw $0000
|1AD6E3:D35F| dw Song22_Segment2_Track7

Song22_Segment3:
|1AD6E5:D361| dw Song22_Segment3_Track0
|1AD6E7:D363| dw Song22_Segment3_Track1
|1AD6E9:D365| dw Song22_Segment3_Track2
|1AD6EB:D367| dw Song22_Segment3_Track3
|1AD6ED:D369| dw Song22_Segment3_Track4
|1AD6EF:D36B| dw Song22_Segment3_Track5
|1AD6F1:D36D| dw Song22_Segment3_Track6
|1AD6F3:D36F| dw Song22_Segment3_Track7

Song22_Segment4:
|1AD6F5:D371| dw Song22_Segment4_Track0
|1AD6F7:D373| dw Song22_Segment4_Track1
|1AD6F9:D375| dw Song22_Segment4_Track2
|1AD6FB:D377| dw Song22_Segment4_Track3
|1AD6FD:D379| dw Song22_Segment4_Track4
|1AD6FF:D37B| dw Song22_Segment4_Track5
|1AD701:D37D| dw $0000
|1AD703:D37F| dw Song22_Segment4_Track7

Song22_Segment7:
|1AD705:D381| dw Song22_Segment7_Track0
|1AD707:D383| dw Song22_Segment7_Track1
|1AD709:D385| dw Song22_Segment7_Track2
|1AD70B:D387| dw Song22_Segment7_Track3
|1AD70D:D389| dw Song22_Segment7_Track4
|1AD70F:D38B| dw Song22_Segment7_Track5
|1AD711:D38D| dw Song22_Segment7_Track6
|1AD713:D38F| dw Song22_Segment7_Track7

Song22_Segment8:
|1AD715:D391| dw Song22_Segment8_Track0
|1AD717:D393| dw Song22_Segment8_Track1
|1AD719:D395| dw Song22_Segment8_Track2
|1AD71B:D397| dw Song22_Segment8_Track3
|1AD71D:D399| dw Song22_Segment8_Track4
|1AD71F:D39B| dw Song22_Segment8_Track5
|1AD721:D39D| dw Song22_Segment8_Track6
|1AD723:D39F| dw Song22_Segment8_Track7

;---------------------------------------------------------------------------------------------------

Song22_Segment5_Track0:
|1AD725:D3A1| db $18, $7D ; duration, params
|1AD727:D3A3| db $A4 ; play note C4
|1AD728:D3A4| db $2A, $6D ; duration, params
|1AD72A:D3A6| db $9F ; play note G3
|1AD72B:D3A7| db $06, $4D ; duration, params
|1AD72D:D3A9| db $A4 ; play note C4
|1AD72E:D3AA| db $06, $5D ; duration, params
|1AD730:D3AC| db $A4 ; play note C4
|1AD731:D3AD| db $06, $4D ; duration, params
|1AD733:D3AF| db $A6 ; play note D4
|1AD734:D3B0| db $06, $5D ; duration, params
|1AD736:D3B2| db $A8 ; play note E4
|1AD737:D3B3| db $06, $4D ; duration, params
|1AD739:D3B5| db $A9 ; play note F4
|1AD73A:D3B6| db $30, $6D ; duration, params
|1AD73C:D3B8| db $AB ; play note G4
|1AD73D:D3B9| db $0C ; duration
|1AD73E:D3BA| db $C8 ; sustain current note
|1AD73F:D3BB| db $0C, $2D ; duration, params
|1AD741:D3BD| db $AB ; play note G4
|1AD742:D3BE| db $08, $7D ; duration, params
|1AD744:D3C0| db $AB ; play note G4
|1AD745:D3C1| db $08, $5D ; duration, params
|1AD747:D3C3| db $AC ; play note G#4
|1AD748:D3C4| db $AE ; play note A#4
|1AD749:D3C5| db $EF : dw Song22_Sub_DCDB : db $01 ; call segment subroutine
|1AD74D:D3C9| db $EF : dw Song22_Sub_DCF6 : db $01 ; call segment subroutine
|1AD751:D3CD| db $EF : dw Song22_Sub_DD1B : db $01 ; call segment subroutine
|1AD755:D3D1| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Segment5_Track1:
|1AD756:D3D2| db $60, $5D ; duration, params
|1AD758:D3D4| db $8C ; play note C2
|1AD759:D3D5| db $96 ; play note A#2
|1AD75A:D3D6| db $94 ; play note G#2
|1AD75B:D3D7| db $8F ; play note D#2
|1AD75C:D3D8| db $30, $59 ; duration, params
|1AD75E:D3DA| db $8D ; play note C#2
|1AD75F:D3DB| db $8D ; play note C#2
|1AD760:D3DC| db $8C ; play note C2
|1AD761:D3DD| db $8C ; play note C2
|1AD762:D3DE| db $30, $5D ; duration, params
|1AD764:D3E0| db $8E ; play note D2
|1AD765:D3E1| db $8E ; play note D2
|1AD766:D3E2| db $93 ; play note G2
|1AD767:D3E3| db $30, $4D ; duration, params
|1AD769:D3E5| db $97 ; play note B2

;---------------------------------------------------------------------------------------------------

Song22_Segment5_Track2:
|1AD76A:D3E6| db $0C ; duration
|1AD76B:D3E7| db $C9 ; rest
|1AD76C:D3E8| db $54, $7D ; duration, params
|1AD76E:D3EA| db $93 ; play note G2
|1AD76F:D3EB| db $0C ; duration
|1AD770:D3EC| db $C9 ; rest
|1AD771:D3ED| db $54 ; duration
|1AD772:D3EE| db $9D ; play note F3
|1AD773:D3EF| db $0C ; duration
|1AD774:D3F0| db $C9 ; rest
|1AD775:D3F1| db $54 ; duration
|1AD776:D3F2| db $9B ; play note D#3
|1AD777:D3F3| db $0C ; duration
|1AD778:D3F4| db $C9 ; rest
|1AD779:D3F5| db $54 ; duration
|1AD77A:D3F6| db $96 ; play note A#2
|1AD77B:D3F7| db $0C ; duration
|1AD77C:D3F8| db $C9 ; rest
|1AD77D:D3F9| db $54 ; duration
|1AD77E:D3FA| db $94 ; play note G#2
|1AD77F:D3FB| db $0C ; duration
|1AD780:D3FC| db $C9 ; rest
|1AD781:D3FD| db $54 ; duration
|1AD782:D3FE| db $93 ; play note G2
|1AD783:D3FF| db $EF : dw Song22_Sub_DD3F : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song22_Segment5_Track3:
|1AD787:D403| db $18 ; duration
|1AD788:D404| db $C9 ; rest
|1AD789:D405| db $48, $7D ; duration, params
|1AD78B:D407| db $98 ; play note C3
|1AD78C:D408| db $18 ; duration
|1AD78D:D409| db $C9 ; rest
|1AD78E:D40A| db $48 ; duration
|1AD78F:D40B| db $A2 ; play note A#3
|1AD790:D40C| db $18 ; duration
|1AD791:D40D| db $C9 ; rest
|1AD792:D40E| db $48 ; duration
|1AD793:D40F| db $A0 ; play note G#3
|1AD794:D410| db $18 ; duration
|1AD795:D411| db $C9 ; rest
|1AD796:D412| db $48 ; duration
|1AD797:D413| db $9B ; play note D#3
|1AD798:D414| db $18 ; duration
|1AD799:D415| db $C9 ; rest
|1AD79A:D416| db $48 ; duration
|1AD79B:D417| db $99 ; play note C#3
|1AD79C:D418| db $18 ; duration
|1AD79D:D419| db $C9 ; rest
|1AD79E:D41A| db $48 ; duration
|1AD79F:D41B| db $98 ; play note C3
|1AD7A0:D41C| db $18 ; duration
|1AD7A1:D41D| db $C9 ; rest
|1AD7A2:D41E| db $48 ; duration
|1AD7A3:D41F| db $9A ; play note D3
|1AD7A4:D420| db $18 ; duration
|1AD7A5:D421| db $C9 ; rest
|1AD7A6:D422| db $48 ; duration
|1AD7A7:D423| db $9A ; play note D3

;---------------------------------------------------------------------------------------------------

Song22_Segment5_Track4:
|1AD7A8:D424| db $18 ; duration
|1AD7A9:D425| db $C9 ; rest
|1AD7AA:D426| db $48, $7D ; duration, params
|1AD7AC:D428| db $9C ; play note E3
|1AD7AD:D429| db $18 ; duration
|1AD7AE:D42A| db $C9 ; rest
|1AD7AF:D42B| db $48 ; duration
|1AD7B0:D42C| db $A6 ; play note D4
|1AD7B1:D42D| db $18 ; duration
|1AD7B2:D42E| db $C9 ; rest
|1AD7B3:D42F| db $48 ; duration
|1AD7B4:D430| db $A4 ; play note C4
|1AD7B5:D431| db $18 ; duration
|1AD7B6:D432| db $C9 ; rest
|1AD7B7:D433| db $48 ; duration
|1AD7B8:D434| db $9F ; play note G3
|1AD7B9:D435| db $18 ; duration
|1AD7BA:D436| db $C9 ; rest
|1AD7BB:D437| db $48 ; duration
|1AD7BC:D438| db $9D ; play note F3
|1AD7BD:D439| db $18 ; duration
|1AD7BE:D43A| db $C9 ; rest
|1AD7BF:D43B| db $48 ; duration
|1AD7C0:D43C| db $9B ; play note D#3
|1AD7C1:D43D| db $18 ; duration
|1AD7C2:D43E| db $C9 ; rest
|1AD7C3:D43F| db $48 ; duration
|1AD7C4:D440| db $9E ; play note F#3
|1AD7C5:D441| db $18 ; duration
|1AD7C6:D442| db $C9 ; rest
|1AD7C7:D443| db $48 ; duration
|1AD7C8:D444| db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song22_Segment5_Track5:
|1AD7C9:D445| db $E1, $0A ; set panning - balanced
|1AD7CB:D447| db $E0, $09 ; set instrument - strings A
|1AD7CD:D449| db $E3, $13, $36, $28 ; enable vibrato
|1AD7D1:D44D| db $60 ; duration
|1AD7D2:D44E| db $C9 ; rest
|1AD7D3:D44F| db $C9 ; rest
|1AD7D4:D450| db $C9 ; rest
|1AD7D5:D451| db $48 ; duration
|1AD7D6:D452| db $C9 ; rest
|1AD7D7:D453| db $ED, $B4 ; set channel volume
|1AD7D9:D455| db $18, $4D ; duration, params
|1AD7DB:D457| db $A2 ; play note A#3
|1AD7DC:D458| db $EF : dw Song22_Sub_DD48 : db $01 ; call segment subroutine
|1AD7E0:D45C| db $0C, $2B ; duration, params
|1AD7E2:D45E| db $9E ; play note F#3
|1AD7E3:D45F| db $06 ; duration
|1AD7E4:D460| db $9E ; play note F#3
|1AD7E5:D461| db $9F ; play note G3
|1AD7E6:D462| db $30, $6D ; duration, params
|1AD7E8:D464| db $A1 ; play note A3
|1AD7E9:D465| db $18 ; duration
|1AD7EA:D466| db $A4 ; play note C4
|1AD7EB:D467| db $0C ; duration
|1AD7EC:D468| db $A3 ; play note B3
|1AD7ED:D469| db $06, $4D ; duration, params
|1AD7EF:D46B| db $A3 ; play note B3
|1AD7F0:D46C| db $A3 ; play note B3
|1AD7F1:D46D| db $0C, $4E ; duration, params
|1AD7F3:D46F| db $A3 ; play note B3
|1AD7F4:D470| db $06 ; duration
|1AD7F5:D471| db $A3 ; play note B3
|1AD7F6:D472| db $A3 ; play note B3
|1AD7F7:D473| db $0C ; duration
|1AD7F8:D474| db $A3 ; play note B3
|1AD7F9:D475| db $06, $4F ; duration, params
|1AD7FB:D477| db $A3 ; play note B3
|1AD7FC:D478| db $A3 ; play note B3
|1AD7FD:D479| db $0C ; duration
|1AD7FE:D47A| db $A3 ; play note B3
|1AD7FF:D47B| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song22_Segment5_Track6:
|1AD800:D47C| db $ED, $C8 ; set channel volume
|1AD802:D47E| db $E0, $11 ; set instrument - trumpet
|1AD804:D480| db $E1, $0A ; set panning - balanced
|1AD806:D482| db $0C ; duration
|1AD807:D483| db $C9 ; rest
|1AD808:D484| db $54 ; duration
|1AD809:D485| db $C9 ; rest
|1AD80A:D486| db $60 ; duration
|1AD80B:D487| db $C9 ; rest
|1AD80C:D488| db $54 ; duration
|1AD80D:D489| db $C9 ; rest
|1AD80E:D48A| db $0C ; duration
|1AD80F:D48B| db $C9 ; rest
|1AD810:D48C| db $60 ; duration
|1AD811:D48D| db $C9 ; rest
|1AD812:D48E| db $EF : dw Song22_Sub_DD6D : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song22_Segment5_Track7:
|1AD816:D492| db $ED, $78 ; set channel volume
|1AD818:D494| db $E1, $0C ; set panning - leaning left
|1AD81A:D496| db $E0, $0A ; set instrument - strings B
|1AD81C:D498| db $E3, $11, $35, $27 ; enable vibrato
|1AD820:D49C| db $04 ; duration
|1AD821:D49D| db $C9 ; rest
|1AD822:D49E| db $0C, $4D ; duration, params
|1AD824:D4A0| db $A4 ; play note C4
|1AD825:D4A1| db $C8 ; sustain current note
|1AD826:D4A2| db $2A, $6D ; duration, params
|1AD828:D4A4| db $9F ; play note G3
|1AD829:D4A5| db $06, $4D ; duration, params
|1AD82B:D4A7| db $A4 ; play note C4
|1AD82C:D4A8| db $06, $5D ; duration, params
|1AD82E:D4AA| db $A4 ; play note C4
|1AD82F:D4AB| db $06, $4D ; duration, params
|1AD831:D4AD| db $A6 ; play note D4
|1AD832:D4AE| db $06, $5D ; duration, params
|1AD834:D4B0| db $A8 ; play note E4
|1AD835:D4B1| db $06, $4D ; duration, params
|1AD837:D4B3| db $A9 ; play note F4
|1AD838:D4B4| db $EF : dw Song22_Sub_DDC5 : db $01 ; call segment subroutine
|1AD83C:D4B8| db $EF : dw Song22_Sub_DCF6 : db $01 ; call segment subroutine
|1AD840:D4BC| db $EF : dw Song22_Sub_DDED : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song22_Segment6_Track0:
|1AD844:D4C0| db $0C, $4D ; duration, params
|1AD846:D4C2| db $A4 ; play note C4
|1AD847:D4C3| db $C8 ; sustain current note
|1AD848:D4C4| db $2A, $6D ; duration, params
|1AD84A:D4C6| db $9F ; play note G3
|1AD84B:D4C7| db $06, $4D ; duration, params
|1AD84D:D4C9| db $A4 ; play note C4
|1AD84E:D4CA| db $06, $5D ; duration, params
|1AD850:D4CC| db $A4 ; play note C4
|1AD851:D4CD| db $06, $4D ; duration, params
|1AD853:D4CF| db $A6 ; play note D4
|1AD854:D4D0| db $06, $5D ; duration, params
|1AD856:D4D2| db $A8 ; play note E4
|1AD857:D4D3| db $06, $4D ; duration, params
|1AD859:D4D5| db $A9 ; play note F4
|1AD85A:D4D6| db $30, $6D ; duration, params
|1AD85C:D4D8| db $AB ; play note G4
|1AD85D:D4D9| db $0C ; duration
|1AD85E:D4DA| db $C9 ; rest
|1AD85F:D4DB| db $0C, $2D ; duration, params
|1AD861:D4DD| db $AB ; play note G4
|1AD862:D4DE| db $08, $7D ; duration, params
|1AD864:D4E0| db $AB ; play note G4
|1AD865:D4E1| db $08, $5D ; duration, params
|1AD867:D4E3| db $AC ; play note G#4
|1AD868:D4E4| db $AE ; play note A#4
|1AD869:D4E5| db $EF : dw Song22_Sub_DE0F : db $01 ; call segment subroutine
|1AD86D:D4E9| db $EF : dw Song22_Sub_DD1B : db $01 ; call segment subroutine
|1AD871:D4ED| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Segment6_Track1:
|1AD872:D4EE| db $60, $5D ; duration, params
|1AD874:D4F0| db $8C ; play note C2
|1AD875:D4F1| db $96 ; play note A#2
|1AD876:D4F2| db $60, $4D ; duration, params
|1AD878:D4F4| db $94 ; play note G#2
|1AD879:D4F5| db $93 ; play note G2
|1AD87A:D4F6| db $08, $7B ; duration, params
|1AD87C:D4F8| db $92 ; play note F#2
|1AD87D:D4F9| db $98 ; play note C3
|1AD87E:D4FA| db $9B ; play note D#3
|1AD87F:D4FB| db $9E ; play note F#3
|1AD880:D4FC| db $A4 ; play note C4
|1AD881:D4FD| db $A7 ; play note D#4
|1AD882:D4FE| db $30 ; duration
|1AD883:D4FF| db $AA ; play note F#4
|1AD884:D500| db $18 ; duration
|1AD885:D501| db $AB ; play note G4
|1AD886:D502| db $08 ; duration
|1AD887:D503| db $93 ; play note G2
|1AD888:D504| db $93 ; play note G2
|1AD889:D505| db $93 ; play note G2
|1AD88A:D506| db $30 ; duration
|1AD88B:D507| db $93 ; play note G2
|1AD88C:D508| db $08 ; duration
|1AD88D:D509| db $92 ; play note F#2
|1AD88E:D50A| db $98 ; play note C3
|1AD88F:D50B| db $9B ; play note D#3
|1AD890:D50C| db $9E ; play note F#3
|1AD891:D50D| db $A4 ; play note C4
|1AD892:D50E| db $A7 ; play note D#4
|1AD893:D50F| db $30 ; duration
|1AD894:D510| db $AA ; play note F#4
|1AD895:D511| db $18 ; duration
|1AD896:D512| db $AB ; play note G4
|1AD897:D513| db $08 ; duration
|1AD898:D514| db $93 ; play note G2
|1AD899:D515| db $93 ; play note G2
|1AD89A:D516| db $93 ; play note G2
|1AD89B:D517| db $30 ; duration
|1AD89C:D518| db $93 ; play note G2
|1AD89D:D519| db $60, $4D ; duration, params
|1AD89F:D51B| db $8D ; play note C#2
|1AD8A0:D51C| db $8C ; play note C2
|1AD8A1:D51D| db $8E ; play note D2
|1AD8A2:D51E| db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song22_Segment6_Track2:
|1AD8A3:D51F| db $ED, $C8 ; set channel volume
|1AD8A5:D521| db $E0, $11 ; set instrument - trumpet
|1AD8A7:D523| db $E1, $0A ; set panning - balanced
|1AD8A9:D525| db $E3, $08, $32, $1E ; enable vibrato
|1AD8AD:D529| db $0C, $5D ; duration, params
|1AD8AF:D52B| db $98 ; play note C3
|1AD8B0:D52C| db $06, $4D ; duration, params
|1AD8B2:D52E| db $98 ; play note C3
|1AD8B3:D52F| db $98 ; play note C3
|1AD8B4:D530| db $0C ; duration
|1AD8B5:D531| db $98 ; play note C3
|1AD8B6:D532| db $06 ; duration
|1AD8B7:D533| db $98 ; play note C3
|1AD8B8:D534| db $98 ; play note C3
|1AD8B9:D535| db $0C ; duration
|1AD8BA:D536| db $98 ; play note C3
|1AD8BB:D537| db $06 ; duration
|1AD8BC:D538| db $98 ; play note C3
|1AD8BD:D539| db $98 ; play note C3
|1AD8BE:D53A| db $0C ; duration
|1AD8BF:D53B| db $98 ; play note C3
|1AD8C0:D53C| db $06 ; duration
|1AD8C1:D53D| db $98 ; play note C3
|1AD8C2:D53E| db $98 ; play note C3
|1AD8C3:D53F| db $0C, $5D ; duration, params
|1AD8C5:D541| db $96 ; play note A#2
|1AD8C6:D542| db $06, $4D ; duration, params
|1AD8C8:D544| db $96 ; play note A#2
|1AD8C9:D545| db $96 ; play note A#2
|1AD8CA:D546| db $0C ; duration
|1AD8CB:D547| db $96 ; play note A#2
|1AD8CC:D548| db $06 ; duration
|1AD8CD:D549| db $96 ; play note A#2
|1AD8CE:D54A| db $96 ; play note A#2
|1AD8CF:D54B| db $0C ; duration
|1AD8D0:D54C| db $96 ; play note A#2
|1AD8D1:D54D| db $06 ; duration
|1AD8D2:D54E| db $96 ; play note A#2
|1AD8D3:D54F| db $96 ; play note A#2
|1AD8D4:D550| db $0C ; duration
|1AD8D5:D551| db $96 ; play note A#2
|1AD8D6:D552| db $06 ; duration
|1AD8D7:D553| db $96 ; play note A#2
|1AD8D8:D554| db $96 ; play note A#2
|1AD8D9:D555| db $0C ; duration
|1AD8DA:D556| db $94 ; play note G#2
|1AD8DB:D557| db $06 ; duration
|1AD8DC:D558| db $94 ; play note G#2
|1AD8DD:D559| db $94 ; play note G#2
|1AD8DE:D55A| db $0C ; duration
|1AD8DF:D55B| db $94 ; play note G#2
|1AD8E0:D55C| db $06 ; duration
|1AD8E1:D55D| db $94 ; play note G#2
|1AD8E2:D55E| db $94 ; play note G#2
|1AD8E3:D55F| db $0C ; duration
|1AD8E4:D560| db $94 ; play note G#2
|1AD8E5:D561| db $06 ; duration
|1AD8E6:D562| db $94 ; play note G#2
|1AD8E7:D563| db $94 ; play note G#2
|1AD8E8:D564| db $0C ; duration
|1AD8E9:D565| db $94 ; play note G#2
|1AD8EA:D566| db $06 ; duration
|1AD8EB:D567| db $94 ; play note G#2
|1AD8EC:D568| db $94 ; play note G#2
|1AD8ED:D569| db $0C ; duration
|1AD8EE:D56A| db $93 ; play note G2
|1AD8EF:D56B| db $06 ; duration
|1AD8F0:D56C| db $93 ; play note G2
|1AD8F1:D56D| db $93 ; play note G2
|1AD8F2:D56E| db $0C ; duration
|1AD8F3:D56F| db $93 ; play note G2
|1AD8F4:D570| db $06 ; duration
|1AD8F5:D571| db $93 ; play note G2
|1AD8F6:D572| db $93 ; play note G2
|1AD8F7:D573| db $0C ; duration
|1AD8F8:D574| db $93 ; play note G2
|1AD8F9:D575| db $06 ; duration
|1AD8FA:D576| db $93 ; play note G2
|1AD8FB:D577| db $93 ; play note G2
|1AD8FC:D578| db $0C ; duration
|1AD8FD:D579| db $93 ; play note G2
|1AD8FE:D57A| db $06 ; duration
|1AD8FF:D57B| db $93 ; play note G2
|1AD900:D57C| db $93 ; play note G2
|1AD901:D57D| db $EF : dw Song22_Sub_DE3C : db $02 ; call segment subroutine
|1AD905:D581| db $0C ; duration
|1AD906:D582| db $99 ; play note C#3
|1AD907:D583| db $06 ; duration
|1AD908:D584| db $99 ; play note C#3
|1AD909:D585| db $99 ; play note C#3
|1AD90A:D586| db $0C ; duration
|1AD90B:D587| db $99 ; play note C#3
|1AD90C:D588| db $06 ; duration
|1AD90D:D589| db $99 ; play note C#3
|1AD90E:D58A| db $99 ; play note C#3
|1AD90F:D58B| db $0C ; duration
|1AD910:D58C| db $99 ; play note C#3
|1AD911:D58D| db $06 ; duration
|1AD912:D58E| db $99 ; play note C#3
|1AD913:D58F| db $99 ; play note C#3
|1AD914:D590| db $0C ; duration
|1AD915:D591| db $99 ; play note C#3
|1AD916:D592| db $06 ; duration
|1AD917:D593| db $99 ; play note C#3
|1AD918:D594| db $99 ; play note C#3
|1AD919:D595| db $0C ; duration
|1AD91A:D596| db $98 ; play note C3
|1AD91B:D597| db $06 ; duration
|1AD91C:D598| db $98 ; play note C3
|1AD91D:D599| db $98 ; play note C3
|1AD91E:D59A| db $0C ; duration
|1AD91F:D59B| db $98 ; play note C3
|1AD920:D59C| db $06 ; duration
|1AD921:D59D| db $98 ; play note C3
|1AD922:D59E| db $98 ; play note C3
|1AD923:D59F| db $0C ; duration
|1AD924:D5A0| db $98 ; play note C3
|1AD925:D5A1| db $06 ; duration
|1AD926:D5A2| db $98 ; play note C3
|1AD927:D5A3| db $98 ; play note C3
|1AD928:D5A4| db $0C ; duration
|1AD929:D5A5| db $98 ; play note C3
|1AD92A:D5A6| db $06 ; duration
|1AD92B:D5A7| db $98 ; play note C3
|1AD92C:D5A8| db $98 ; play note C3
|1AD92D:D5A9| db $0C ; duration
|1AD92E:D5AA| db $9A ; play note D3
|1AD92F:D5AB| db $06 ; duration
|1AD930:D5AC| db $9A ; play note D3
|1AD931:D5AD| db $9A ; play note D3
|1AD932:D5AE| db $0C ; duration
|1AD933:D5AF| db $9A ; play note D3
|1AD934:D5B0| db $06 ; duration
|1AD935:D5B1| db $9A ; play note D3
|1AD936:D5B2| db $9A ; play note D3
|1AD937:D5B3| db $0C ; duration
|1AD938:D5B4| db $9A ; play note D3
|1AD939:D5B5| db $06 ; duration
|1AD93A:D5B6| db $9A ; play note D3
|1AD93B:D5B7| db $9A ; play note D3
|1AD93C:D5B8| db $0C ; duration
|1AD93D:D5B9| db $9A ; play note D3
|1AD93E:D5BA| db $06 ; duration
|1AD93F:D5BB| db $9A ; play note D3
|1AD940:D5BC| db $9A ; play note D3
|1AD941:D5BD| db $0C ; duration
|1AD942:D5BE| db $93 ; play note G2
|1AD943:D5BF| db $06 ; duration
|1AD944:D5C0| db $93 ; play note G2
|1AD945:D5C1| db $93 ; play note G2
|1AD946:D5C2| db $0C ; duration
|1AD947:D5C3| db $93 ; play note G2
|1AD948:D5C4| db $06 ; duration
|1AD949:D5C5| db $93 ; play note G2
|1AD94A:D5C6| db $93 ; play note G2
|1AD94B:D5C7| db $0C ; duration
|1AD94C:D5C8| db $93 ; play note G2
|1AD94D:D5C9| db $06 ; duration
|1AD94E:D5CA| db $93 ; play note G2
|1AD94F:D5CB| db $93 ; play note G2
|1AD950:D5CC| db $0C ; duration
|1AD951:D5CD| db $95 ; play note A2
|1AD952:D5CE| db $97 ; play note B2

;---------------------------------------------------------------------------------------------------

Song22_Segment6_Track3:
|1AD953:D5CF| db $ED, $3C ; set channel volume
|1AD955:D5D1| db $EE, $FF, $78 ; initiate gradual channel volume change
|1AD958:D5D4| db $E0, $13 ; set instrument - snare A
|1AD95A:D5D6| db $E1, $0A ; set panning - balanced
|1AD95C:D5D8| db $EF : dw Song22_Sub_DE67 : db $0C ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song22_Segment6_Track5:
|1AD960:D5DC| db $0C, $4D ; duration, params
|1AD962:D5DE| db $9C ; play note E3
|1AD963:D5DF| db $C9 ; rest
|1AD964:D5E0| db $2A, $6D ; duration, params
|1AD966:D5E2| db $98 ; play note C3
|1AD967:D5E3| db $06, $4D ; duration, params
|1AD969:D5E5| db $9C ; play note E3
|1AD96A:D5E6| db $06, $5D ; duration, params
|1AD96C:D5E8| db $9C ; play note E3
|1AD96D:D5E9| db $06, $4D ; duration, params
|1AD96F:D5EB| db $9D ; play note F3
|1AD970:D5EC| db $06, $5D ; duration, params
|1AD972:D5EE| db $9F ; play note G3
|1AD973:D5EF| db $06, $4D ; duration, params
|1AD975:D5F1| db $A1 ; play note A3
|1AD976:D5F2| db $30, $6D ; duration, params
|1AD978:D5F4| db $A2 ; play note A#3
|1AD979:D5F5| db $0C ; duration
|1AD97A:D5F6| db $C9 ; rest
|1AD97B:D5F7| db $0C, $2D ; duration, params
|1AD97D:D5F9| db $A2 ; play note A#3
|1AD97E:D5FA| db $08, $5D ; duration, params
|1AD980:D5FC| db $A2 ; play note A#3
|1AD981:D5FD| db $A4 ; play note C4
|1AD982:D5FE| db $A6 ; play note D4
|1AD983:D5FF| db $48, $5B ; duration, params
|1AD985:D601| db $A7 ; play note D#4
|1AD986:D602| db $18 ; duration
|1AD987:D603| db $AA ; play note F#4
|1AD988:D604| db $0C ; duration
|1AD989:D605| db $A9 ; play note F4
|1AD98A:D606| db $C9 ; rest
|1AD98B:D607| db $30 ; duration
|1AD98C:D608| db $A6 ; play note D4
|1AD98D:D609| db $18 ; duration
|1AD98E:D60A| db $A3 ; play note B3
|1AD98F:D60B| db $48 ; duration
|1AD990:D60C| db $A4 ; play note C4
|1AD991:D60D| db $18 ; duration
|1AD992:D60E| db $A7 ; play note D#4
|1AD993:D60F| db $0C ; duration
|1AD994:D610| db $A6 ; play note D4
|1AD995:D611| db $C9 ; rest
|1AD996:D612| db $30 ; duration
|1AD997:D613| db $A3 ; play note B3
|1AD998:D614| db $18 ; duration
|1AD999:D615| db $A3 ; play note B3
|1AD99A:D616| db $48 ; duration
|1AD99B:D617| db $A4 ; play note C4
|1AD99C:D618| db $18 ; duration
|1AD99D:D619| db $A7 ; play note D#4
|1AD99E:D61A| db $0C ; duration
|1AD99F:D61B| db $A6 ; play note D4
|1AD9A0:D61C| db $C9 ; rest
|1AD9A1:D61D| db $30 ; duration
|1AD9A2:D61E| db $A3 ; play note B3
|1AD9A3:D61F| db $18 ; duration
|1AD9A4:D620| db $9F ; play note G3
|1AD9A5:D621| db $48 ; duration
|1AD9A6:D622| db $A0 ; play note G#3
|1AD9A7:D623| db $18 ; duration
|1AD9A8:D624| db $A5 ; play note C#4
|1AD9A9:D625| db $0C ; duration
|1AD9AA:D626| db $A4 ; play note C4
|1AD9AB:D627| db $C9 ; rest
|1AD9AC:D628| db $30 ; duration
|1AD9AD:D629| db $9F ; play note G3
|1AD9AE:D62A| db $18 ; duration
|1AD9AF:D62B| db $9B ; play note D#3
|1AD9B0:D62C| db $EF : dw Song22_Sub_DE7E : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song22_Segment6_Track6:
|1AD9B4:D630| db $E1, $06 ; set panning - leaning right
|1AD9B6:D632| db $E0, $16 ; set instrument - flute
|1AD9B8:D634| db $ED, $B4 ; set channel volume
|1AD9BA:D636| db $E3, $12, $34, $1C ; enable vibrato
|1AD9BE:D63A| db $EF : dw Song22_Sub_DE9F : db $01 ; call segment subroutine
|1AD9C2:D63E| db $30 ; duration
|1AD9C3:D63F| db $9F ; play note G3
|1AD9C4:D640| db $A3 ; play note B3
|1AD9C5:D641| db $EF : dw Song22_Sub_DEBC : db $02 ; call segment subroutine
|1AD9C9:D645| db $18 ; duration
|1AD9CA:D646| db $A0 ; play note G#3
|1AD9CB:D647| db $0C ; duration
|1AD9CC:D648| db $A0 ; play note G#3
|1AD9CD:D649| db $06 ; duration
|1AD9CE:D64A| db $A0 ; play note G#3
|1AD9CF:D64B| db $9F ; play note G3
|1AD9D0:D64C| db $30 ; duration
|1AD9D1:D64D| db $A0 ; play note G#3
|1AD9D2:D64E| db $18 ; duration
|1AD9D3:D64F| db $9F ; play note G3
|1AD9D4:D650| db $0C ; duration
|1AD9D5:D651| db $9F ; play note G3
|1AD9D6:D652| db $06 ; duration
|1AD9D7:D653| db $9F ; play note G3
|1AD9D8:D654| db $9D ; play note F3
|1AD9D9:D655| db $30 ; duration
|1AD9DA:D656| db $9F ; play note G3
|1AD9DB:D657| db $18 ; duration
|1AD9DC:D658| db $9E ; play note F#3
|1AD9DD:D659| db $0C ; duration
|1AD9DE:D65A| db $9E ; play note F#3
|1AD9DF:D65B| db $06 ; duration
|1AD9E0:D65C| db $9E ; play note F#3
|1AD9E1:D65D| db $9F ; play note G3
|1AD9E2:D65E| db $0C ; duration
|1AD9E3:D65F| db $A1 ; play note A3
|1AD9E4:D660| db $06 ; duration
|1AD9E5:D661| db $A1 ; play note A3
|1AD9E6:D662| db $A3 ; play note B3
|1AD9E7:D663| db $0C ; duration
|1AD9E8:D664| db $A4 ; play note C4
|1AD9E9:D665| db $A6 ; play note D4
|1AD9EA:D666| db $30, $77 ; duration, params
|1AD9EC:D668| db $A3 ; play note B3
|1AD9ED:D669| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song22_Segment6_Track7:
|1AD9EE:D66A| db $04 ; duration
|1AD9EF:D66B| db $C9 ; rest
|1AD9F0:D66C| db $0C, $4D ; duration, params
|1AD9F2:D66E| db $A4 ; play note C4
|1AD9F3:D66F| db $C9 ; rest
|1AD9F4:D670| db $2A, $6D ; duration, params
|1AD9F6:D672| db $9F ; play note G3
|1AD9F7:D673| db $06, $4D ; duration, params
|1AD9F9:D675| db $A4 ; play note C4
|1AD9FA:D676| db $06, $5D ; duration, params
|1AD9FC:D678| db $A4 ; play note C4
|1AD9FD:D679| db $06, $4D ; duration, params
|1AD9FF:D67B| db $A6 ; play note D4
|1ADA00:D67C| db $06, $5D ; duration, params
|1ADA02:D67E| db $A8 ; play note E4
|1ADA03:D67F| db $06, $4D ; duration, params
|1ADA05:D681| db $A9 ; play note F4
|1ADA06:D682| db $30, $6D ; duration, params
|1ADA08:D684| db $AB ; play note G4
|1ADA09:D685| db $0C ; duration
|1ADA0A:D686| db $C9 ; rest
|1ADA0B:D687| db $0C, $2D ; duration, params
|1ADA0D:D689| db $AB ; play note G4
|1ADA0E:D68A| db $08, $5D ; duration, params
|1ADA10:D68C| db $AB ; play note G4
|1ADA11:D68D| db $AC ; play note G#4
|1ADA12:D68E| db $AE ; play note A#4
|1ADA13:D68F| db $EF : dw Song22_Sub_DE0F : db $01 ; call segment subroutine
|1ADA17:D693| db $EF : dw Song22_Sub_DDED : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song22_Segment0_Track0:
|1ADA1B:D697| db $FA, $19 ; set base percussion sample
|1ADA1D:D699| db $F5, $FF, $1E, $1E ; configure EON, EVOLL, EVOLR
|1ADA21:D69D| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1ADA25:D6A1| db $E7, $0E ; set song tempo
|1ADA27:D6A3| db $E5, $64 ; set song volume
|1ADA29:D6A5| db $E6, $FF, $B4 ; initiate gradual song volume change
|1ADA2C:D6A8| db $E0, $0A ; set instrument - strings B
|1ADA2E:D6AA| db $ED, $B4 ; set channel volume
|1ADA30:D6AC| db $E1, $0E ; set panning - leaning left
|1ADA32:D6AE| db $E3, $12, $40, $1C ; enable vibrato
|1ADA36:D6B2| db $60 ; duration
|1ADA37:D6B3| db $C9 ; rest
|1ADA38:D6B4| db $C9 ; rest
|1ADA39:D6B5| db $C9 ; rest
|1ADA3A:D6B6| db $C9 ; rest
|1ADA3B:D6B7| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Segment0_Track1:
|1ADA3C:D6B8| db $ED, $DC ; set channel volume
|1ADA3E:D6BA| db $E1, $04 ; set panning - leaning right
|1ADA40:D6BC| db $E0, $0A ; set instrument - strings B
|1ADA42:D6BE| db $E3, $18, $34, $18 ; enable vibrato
|1ADA46:D6C2| db $60, $7D ; duration, params
|1ADA48:D6C4| db $8C ; play note C2
|1ADA49:D6C5| db $8C ; play note C2
|1ADA4A:D6C6| db $8C ; play note C2
|1ADA4B:D6C7| db $8C ; play note C2

;---------------------------------------------------------------------------------------------------

Song22_Segment0_Track2:
|1ADA4C:D6C8| db $ED, $E6 ; set channel volume
|1ADA4E:D6CA| db $E1, $07 ; set panning - leaning right
|1ADA50:D6CC| db $E0, $0A ; set instrument - strings B
|1ADA52:D6CE| db $E3, $1C, $34, $19 ; enable vibrato
|1ADA56:D6D2| db $0C ; duration
|1ADA57:D6D3| db $C9 ; rest
|1ADA58:D6D4| db $54, $7D ; duration, params
|1ADA5A:D6D6| db $93 ; play note G2
|1ADA5B:D6D7| db $0C ; duration
|1ADA5C:D6D8| db $C9 ; rest
|1ADA5D:D6D9| db $54 ; duration
|1ADA5E:D6DA| db $95 ; play note A2
|1ADA5F:D6DB| db $0C ; duration
|1ADA60:D6DC| db $C9 ; rest
|1ADA61:D6DD| db $54 ; duration
|1ADA62:D6DE| db $93 ; play note G2
|1ADA63:D6DF| db $0C ; duration
|1ADA64:D6E0| db $C9 ; rest
|1ADA65:D6E1| db $54 ; duration
|1ADA66:D6E2| db $95 ; play note A2

;---------------------------------------------------------------------------------------------------

Song22_Segment0_Track3:
|1ADA67:D6E3| db $ED, $C8 ; set channel volume
|1ADA69:D6E5| db $E1, $0A ; set panning - balanced
|1ADA6B:D6E7| db $E0, $0A ; set instrument - strings B
|1ADA6D:D6E9| db $E3, $16, $36, $16 ; enable vibrato
|1ADA71:D6ED| db $18 ; duration
|1ADA72:D6EE| db $C9 ; rest
|1ADA73:D6EF| db $48, $7D ; duration, params
|1ADA75:D6F1| db $9C ; play note E3
|1ADA76:D6F2| db $18 ; duration
|1ADA77:D6F3| db $C9 ; rest
|1ADA78:D6F4| db $48 ; duration
|1ADA79:D6F5| db $9D ; play note F3
|1ADA7A:D6F6| db $EF : dw Song22_Sub_DEC4 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song22_Segment0_Track4:
|1ADA7E:D6FA| db $ED, $C8 ; set channel volume
|1ADA80:D6FC| db $E1, $0A ; set panning - balanced
|1ADA82:D6FE| db $E0, $0A ; set instrument - strings B
|1ADA84:D700| db $E3, $19, $42, $1A ; enable vibrato
|1ADA88:D704| db $18 ; duration
|1ADA89:D705| db $C9 ; rest
|1ADA8A:D706| db $48, $7D ; duration, params
|1ADA8C:D708| db $9F ; play note G3
|1ADA8D:D709| db $18 ; duration
|1ADA8E:D70A| db $C9 ; rest
|1ADA8F:D70B| db $48 ; duration
|1ADA90:D70C| db $A1 ; play note A3
|1ADA91:D70D| db $EF : dw Song22_Sub_DECD : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song22_Segment1_Track0:
|1ADA95:D711| db $24, $7D ; duration, params
|1ADA97:D713| db $A6 ; play note D4
|1ADA98:D714| db $0C ; duration
|1ADA99:D715| db $A4 ; play note C4
|1ADA9A:D716| db $24 ; duration
|1ADA9B:D717| db $9F ; play note G3
|1ADA9C:D718| db $0C ; duration
|1ADA9D:D719| db $A4 ; play note C4
|1ADA9E:D71A| db $EF : dw Song22_Sub_DED6 : db $01 ; call segment subroutine
|1ADAA2:D71E| db $24 ; duration
|1ADAA3:D71F| db $A6 ; play note D4
|1ADAA4:D720| db $06 ; duration
|1ADAA5:D721| db $A8 ; play note E4
|1ADAA6:D722| db $36 ; duration
|1ADAA7:D723| db $A8 ; play note E4
|1ADAA8:D724| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Segment1_Track1:
|1ADAA9:D725| db $60, $7D ; duration, params
|1ADAAB:D727| db $8C ; play note C2
|1ADAAC:D728| db $90 ; play note E2
|1ADAAD:D729| db $91 ; play note F2
|1ADAAE:D72A| db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song22_Segment1_Track2:
|1ADAAF:D72B| db $EF : dw Song22_Sub_DEE5 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song22_Segment1_Track3:
|1ADAB3:D72F| db $18 ; duration
|1ADAB4:D730| db $C9 ; rest
|1ADAB5:D731| db $48, $7D ; duration, params
|1ADAB7:D733| db $9C ; play note E3
|1ADAB8:D734| db $EF : dw Song22_Sub_DEC4 : db $01 ; call segment subroutine
|1ADABC:D738| db $18 ; duration
|1ADABD:D739| db $C9 ; rest
|1ADABE:D73A| db $48 ; duration
|1ADABF:D73B| db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song22_Segment1_Track4:
|1ADAC0:D73C| db $EF : dw Song22_Sub_DEF7 : db $01 ; call segment subroutine
|1ADAC4:D740| db $18 ; duration
|1ADAC5:D741| db $C9 ; rest
|1ADAC6:D742| db $48 ; duration
|1ADAC7:D743| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song22_Segment1_Track5:
|1ADAC8:D744| db $E0, $0A ; set instrument - strings B
|1ADACA:D746| db $ED, $78 ; set channel volume
|1ADACC:D748| db $E1, $0C ; set panning - leaning left
|1ADACE:D74A| db $E3, $14, $40, $1C ; enable vibrato
|1ADAD2:D74E| db $04 ; duration
|1ADAD3:D74F| db $C9 ; rest
|1ADAD4:D750| db $24, $7D ; duration, params
|1ADAD6:D752| db $A6 ; play note D4
|1ADAD7:D753| db $0C ; duration
|1ADAD8:D754| db $A4 ; play note C4
|1ADAD9:D755| db $24 ; duration
|1ADADA:D756| db $9F ; play note G3
|1ADADB:D757| db $0C ; duration
|1ADADC:D758| db $A4 ; play note C4
|1ADADD:D759| db $EF : dw Song22_Sub_DED6 : db $01 ; call segment subroutine
|1ADAE1:D75D| db $24 ; duration
|1ADAE2:D75E| db $A6 ; play note D4
|1ADAE3:D75F| db $06 ; duration
|1ADAE4:D760| db $A8 ; play note E4
|1ADAE5:D761| db $32 ; duration
|1ADAE6:D762| db $A8 ; play note E4

;---------------------------------------------------------------------------------------------------

Song22_Segment2_Track0:
|1ADAE7:D763| db $ED, $78 ; set channel volume
|1ADAE9:D765| db $EE, $50, $B4 ; initiate gradual channel volume change
|1ADAEC:D768| db $EF : dw Song22_Sub_DF05 : db $01 ; call segment subroutine
|1ADAF0:D76C| db $EF : dw Song22_Sub_DF21 : db $01 ; call segment subroutine
|1ADAF4:D770| db $24 ; duration
|1ADAF5:D771| db $B4 ; play note E5
|1ADAF6:D772| db $06 ; duration
|1ADAF7:D773| db $B2 ; play note D5
|1ADAF8:D774| db $2A ; duration
|1ADAF9:D775| db $B2 ; play note D5
|1ADAFA:D776| db $0C ; duration
|1ADAFB:D777| db $AF ; play note B4
|1ADAFC:D778| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Segment2_Track1:
|1ADAFD:D779| db $60, $7D ; duration, params
|1ADAFF:D77B| db $8C ; play note C2
|1ADB00:D77C| db $90 ; play note E2
|1ADB01:D77D| db $91 ; play note F2
|1ADB02:D77E| db $93 ; play note G2
|1ADB03:D77F| db $8C ; play note C2
|1ADB04:D780| db $90 ; play note E2
|1ADB05:D781| db $91 ; play note F2
|1ADB06:D782| db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song22_Segment2_Track2:
|1ADB07:D783| db $EF : dw Song22_Sub_DEE5 : db $01 ; call segment subroutine
|1ADB0B:D787| db $0C ; duration
|1ADB0C:D788| db $C9 ; rest
|1ADB0D:D789| db $54 ; duration
|1ADB0E:D78A| db $93 ; play note G2
|1ADB0F:D78B| db $EF : dw Song22_Sub_DF44 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song22_Segment2_Track3:
|1ADB13:D78F| db $18 ; duration
|1ADB14:D790| db $C9 ; rest
|1ADB15:D791| db $48, $7D ; duration, params
|1ADB17:D793| db $9C ; play note E3
|1ADB18:D794| db $EF : dw Song22_Sub_DEC4 : db $01 ; call segment subroutine
|1ADB1C:D798| db $18 ; duration
|1ADB1D:D799| db $C9 ; rest
|1ADB1E:D79A| db $48 ; duration
|1ADB1F:D79B| db $9F ; play note G3
|1ADB20:D79C| db $18 ; duration
|1ADB21:D79D| db $C9 ; rest
|1ADB22:D79E| db $48 ; duration
|1ADB23:D79F| db $9C ; play note E3
|1ADB24:D7A0| db $EF : dw Song22_Sub_DEC4 : db $01 ; call segment subroutine
|1ADB28:D7A4| db $18 ; duration
|1ADB29:D7A5| db $C9 ; rest
|1ADB2A:D7A6| db $48 ; duration
|1ADB2B:D7A7| db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song22_Segment2_Track4:
|1ADB2C:D7A8| db $EF : dw Song22_Sub_DEF7 : db $01 ; call segment subroutine
|1ADB30:D7AC| db $18 ; duration
|1ADB31:D7AD| db $C9 ; rest
|1ADB32:D7AE| db $48 ; duration
|1ADB33:D7AF| db $A3 ; play note B3
|1ADB34:D7B0| db $18 ; duration
|1ADB35:D7B1| db $C9 ; rest
|1ADB36:D7B2| db $48 ; duration
|1ADB37:D7B3| db $9F ; play note G3
|1ADB38:D7B4| db $18 ; duration
|1ADB39:D7B5| db $C9 ; rest
|1ADB3A:D7B6| db $48 ; duration
|1ADB3B:D7B7| db $9F ; play note G3
|1ADB3C:D7B8| db $18 ; duration
|1ADB3D:D7B9| db $C9 ; rest
|1ADB3E:D7BA| db $48, $6D ; duration, params
|1ADB40:D7BC| db $A1 ; play note A3
|1ADB41:D7BD| db $18 ; duration
|1ADB42:D7BE| db $C9 ; rest
|1ADB43:D7BF| db $48, $7D ; duration, params
|1ADB45:D7C1| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song22_Segment2_Track5:
|1ADB46:D7C2| db $ED, $50 ; set channel volume
|1ADB48:D7C4| db $EE, $50, $78 ; initiate gradual channel volume change
|1ADB4B:D7C7| db $EF : dw Song22_Sub_DF51 : db $01 ; call segment subroutine
|1ADB4F:D7CB| db $EF : dw Song22_Sub_DF21 : db $01 ; call segment subroutine
|1ADB53:D7CF| db $24 ; duration
|1ADB54:D7D0| db $B4 ; play note E5
|1ADB55:D7D1| db $06 ; duration
|1ADB56:D7D2| db $B2 ; play note D5
|1ADB57:D7D3| db $2A ; duration
|1ADB58:D7D4| db $B2 ; play note D5
|1ADB59:D7D5| db $08 ; duration
|1ADB5A:D7D6| db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song22_Segment2_Track7:
|1ADB5B:D7D7| db $E1, $08 ; set panning - leaning right
|1ADB5D:D7D9| db $ED, $50 ; set channel volume
|1ADB5F:D7DB| db $E0, $0A ; set instrument - strings B
|1ADB61:D7DD| db $18 ; duration
|1ADB62:D7DE| db $C9 ; rest
|1ADB63:D7DF| db $48 ; duration
|1ADB64:D7E0| db $C9 ; rest
|1ADB65:D7E1| db $60 ; duration
|1ADB66:D7E2| db $C9 ; rest
|1ADB67:D7E3| db $48 ; duration
|1ADB68:D7E4| db $C9 ; rest
|1ADB69:D7E5| db $18 ; duration
|1ADB6A:D7E6| db $C9 ; rest
|1ADB6B:D7E7| db $60 ; duration
|1ADB6C:D7E8| db $C9 ; rest
|1ADB6D:D7E9| db $EE, $3C, $8C ; initiate gradual channel volume change
|1ADB70:D7EC| db $30, $7D ; duration, params
|1ADB72:D7EE| db $AB ; play note G4
|1ADB73:D7EF| db $18 ; duration
|1ADB74:D7F0| db $A8 ; play note E4
|1ADB75:D7F1| db $08 ; duration
|1ADB76:D7F2| db $A4 ; play note C4
|1ADB77:D7F3| db $A3 ; play note B3
|1ADB78:D7F4| db $A1 ; play note A3
|1ADB79:D7F5| db $24 ; duration
|1ADB7A:D7F6| db $A3 ; play note B3
|1ADB7B:D7F7| db $06 ; duration
|1ADB7C:D7F8| db $A4 ; play note C4
|1ADB7D:D7F9| db $26 ; duration
|1ADB7E:D7FA| db $A3 ; play note B3
|1ADB7F:D7FB| db $08 ; duration
|1ADB80:D7FC| db $A4 ; play note C4
|1ADB81:D7FD| db $A6 ; play note D4
|1ADB82:D7FE| db $48 ; duration
|1ADB83:D7FF| db $A9 ; play note F4
|1ADB84:D800| db $08 ; duration
|1ADB85:D801| db $A4 ; play note C4
|1ADB86:D802| db $A6 ; play note D4
|1ADB87:D803| db $A8 ; play note E4
|1ADB88:D804| db $54 ; duration
|1ADB89:D805| db $AB ; play note G4
|1ADB8A:D806| db $0C ; duration
|1ADB8B:D807| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song22_Segment3_Track0:
|1ADB8C:D808| db $EF : dw Song22_Sub_DF6F : db $01 ; call segment subroutine
|1ADB90:D80C| db $EF : dw Song22_Sub_DF9B : db $01 ; call segment subroutine
|1ADB94:D810| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Segment3_Track1:
|1ADB95:D811| db $60, $7D ; duration, params
|1ADB97:D813| db $95 ; play note A2
|1ADB98:D814| db $90 ; play note E2
|1ADB99:D815| db $91 ; play note F2
|1ADB9A:D816| db $93 ; play note G2
|1ADB9B:D817| db $95 ; play note A2
|1ADB9C:D818| db $91 ; play note F2
|1ADB9D:D819| db $8E ; play note D2
|1ADB9E:D81A| db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song22_Segment3_Track2:
|1ADB9F:D81B| db $0C ; duration
|1ADBA0:D81C| db $C9 ; rest
|1ADBA1:D81D| db $54, $7D ; duration, params
|1ADBA3:D81F| db $98 ; play note C3
|1ADBA4:D820| db $EF : dw Song22_Sub_DF44 : db $01 ; call segment subroutine
|1ADBA8:D824| db $0C ; duration
|1ADBA9:D825| db $C9 ; rest
|1ADBAA:D826| db $54 ; duration
|1ADBAB:D827| db $98 ; play note C3
|1ADBAC:D828| db $0C ; duration
|1ADBAD:D829| db $C9 ; rest
|1ADBAE:D82A| db $54 ; duration
|1ADBAF:D82B| db $95 ; play note A2
|1ADBB0:D82C| db $EF : dw Song22_Sub_DD3F : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song22_Segment3_Track3:
|1ADBB4:D830| db $18 ; duration
|1ADBB5:D831| db $C9 ; rest
|1ADBB6:D832| db $48, $7D ; duration, params
|1ADBB8:D834| db $9C ; play note E3
|1ADBB9:D835| db $EF : dw Song22_Sub_DEC4 : db $01 ; call segment subroutine
|1ADBBD:D839| db $18 ; duration
|1ADBBE:D83A| db $C9 ; rest
|1ADBBF:D83B| db $48 ; duration
|1ADBC0:D83C| db $9F ; play note G3
|1ADBC1:D83D| db $EF : dw Song22_Sub_DEC4 : db $01 ; call segment subroutine
|1ADBC5:D841| db $18 ; duration
|1ADBC6:D842| db $C9 ; rest
|1ADBC7:D843| db $48 ; duration
|1ADBC8:D844| db $9D ; play note F3
|1ADBC9:D845| db $18 ; duration
|1ADBCA:D846| db $C9 ; rest
|1ADBCB:D847| db $48 ; duration
|1ADBCC:D848| db $9F ; play note G3


;---------------------------------------------------------------------------------------------------

Song22_Segment3_Track4:
|1ADBCD:D849| db $18 ; duration
|1ADBCE:D84A| db $C9 ; rest
|1ADBCF:D84B| db $48, $7D ; duration, params
|1ADBD1:D84D| db $A1 ; play note A3
|1ADBD2:D84E| db $18 ; duration
|1ADBD3:D84F| db $C9 ; rest
|1ADBD4:D850| db $48, $6D ; duration, params
|1ADBD6:D852| db $9F ; play note G3
|1ADBD7:D853| db $18 ; duration
|1ADBD8:D854| db $C9 ; rest
|1ADBD9:D855| db $48, $7D ; duration, params
|1ADBDB:D857| db $A1 ; play note A3
|1ADBDC:D858| db $18 ; duration
|1ADBDD:D859| db $C9 ; rest
|1ADBDE:D85A| db $48 ; duration
|1ADBDF:D85B| db $A3 ; play note B3
|1ADBE0:D85C| db $EF : dw Song22_Sub_DFB6 : db $03 ; call segment subroutine
|1ADBE4:D860| db $18 ; duration
|1ADBE5:D861| db $C9 ; rest
|1ADBE6:D862| db $48 ; duration
|1ADBE7:D863| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song22_Segment3_Track5:
|1ADBE8:D864| db $04 ; duration
|1ADBE9:D865| db $C9 ; rest
|1ADBEA:D866| db $2A, $7D ; duration, params
|1ADBEC:D868| db $B0 ; play note C5
|1ADBED:D869| db $06 ; duration
|1ADBEE:D86A| db $AF ; play note B4
|1ADBEF:D86B| db $2A ; duration
|1ADBF0:D86C| db $B2 ; play note D5
|1ADBF1:D86D| db $06 ; duration
|1ADBF2:D86E| db $AF ; play note B4
|1ADBF3:D86F| db $EF : dw Song22_Sub_DFBB : db $01 ; call segment subroutine
|1ADBF7:D873| db $2A ; duration
|1ADBF8:D874| db $B0 ; play note C5
|1ADBF9:D875| db $06 ; duration
|1ADBFA:D876| db $AD ; play note A4
|1ADBFB:D877| db $2A ; duration
|1ADBFC:D878| db $B2 ; play note D5
|1ADBFD:D879| db $06 ; duration
|1ADBFE:D87A| db $B0 ; play note C5
|1ADBFF:D87B| db $2A ; duration
|1ADC00:D87C| db $B4 ; play note E5
|1ADC01:D87D| db $06 ; duration
|1ADC02:D87E| db $B2 ; play note D5
|1ADC03:D87F| db $18 ; duration
|1ADC04:D880| db $B2 ; play note D5
|1ADC05:D881| db $08 ; duration
|1ADC06:D882| db $B0 ; play note C5
|1ADC07:D883| db $AF ; play note B4
|1ADC08:D884| db $AD ; play note A4
|1ADC09:D885| db $24 ; duration
|1ADC0A:D886| db $B0 ; play note C5
|1ADC0B:D887| db $06 ; duration
|1ADC0C:D888| db $AF ; play note B4
|1ADC0D:D889| db $32 ; duration
|1ADC0E:D88A| db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song22_Segment3_Track6:
|1ADC0F:D88B| db $E0, $16 ; set instrument - flute
|1ADC11:D88D| db $ED, $C8 ; set channel volume
|1ADC13:D88F| db $E1, $0A ; set panning - balanced
|1ADC15:D891| db $E3, $12, $44, $16 ; enable vibrato
|1ADC19:D895| db $EF : dw Song22_Sub_DF6F : db $01 ; call segment subroutine
|1ADC1D:D899| db $EF : dw Song22_Sub_DF9B : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song22_Segment3_Track7:
|1ADC21:D89D| db $30, $7D ; duration, params
|1ADC23:D89F| db $A8 ; play note E4
|1ADC24:D8A0| db $A9 ; play note F4
|1ADC25:D8A1| db $A8 ; play note E4
|1ADC26:D8A2| db $A6 ; play note D4
|1ADC27:D8A3| db $48 ; duration
|1ADC28:D8A4| db $A4 ; play note C4
|1ADC29:D8A5| db $08 ; duration
|1ADC2A:D8A6| db $A9 ; play note F4
|1ADC2B:D8A7| db $A8 ; play note E4
|1ADC2C:D8A8| db $A6 ; play note D4
|1ADC2D:D8A9| db $30 ; duration
|1ADC2E:D8AA| db $A4 ; play note C4
|1ADC2F:D8AB| db $A3 ; play note B3
|1ADC30:D8AC| db $EF : dw Song22_Sub_DFDE : db $02 ; call segment subroutine
|1ADC34:D8B0| db $2A ; duration
|1ADC35:D8B1| db $A6 ; play note D4
|1ADC36:D8B2| db $06 ; duration
|1ADC37:D8B3| db $A8 ; play note E4
|1ADC38:D8B4| db $30 ; duration
|1ADC39:D8B5| db $A9 ; play note F4
|1ADC3A:D8B6| db $AB ; play note G4
|1ADC3B:D8B7| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song22_Segment4_Track0:
|1ADC3C:D8B8| db $EF : dw Song22_Sub_DF05 : db $01 ; call segment subroutine
|1ADC40:D8BC| db $EF : dw Song22_Sub_DFE7 : db $01 ; call segment subroutine
|1ADC44:D8C0| db $60 ; duration
|1ADC45:D8C1| db $A8 ; play note E4
|1ADC46:D8C2| db $60, $38 ; duration, params
|1ADC48:D8C4| db $C8 ; sustain current note
|1ADC49:D8C5| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Segment4_Track1:
|1ADC4A:D8C6| db $60, $7D ; duration, params
|1ADC4C:D8C8| db $8C ; play note C2
|1ADC4D:D8C9| db $90 ; play note E2
|1ADC4E:D8CA| db $91 ; play note F2
|1ADC4F:D8CB| db $93 ; play note G2
|1ADC50:D8CC| db $94 ; play note G#2
|1ADC51:D8CD| db $96 ; play note A#2
|1ADC52:D8CE| db $8C ; play note C2
|1ADC53:D8CF| db $8C ; play note C2

;---------------------------------------------------------------------------------------------------

Song22_Segment4_Track2:
|1ADC54:D8D0| db $EF : dw Song22_Sub_DEE5 : db $01 ; call segment subroutine
|1ADC58:D8D4| db $0C ; duration
|1ADC59:D8D5| db $C9 ; rest
|1ADC5A:D8D6| db $54 ; duration
|1ADC5B:D8D7| db $98 ; play note C3
|1ADC5C:D8D8| db $0C ; duration
|1ADC5D:D8D9| db $C9 ; rest
|1ADC5E:D8DA| db $54 ; duration
|1ADC5F:D8DB| db $9A ; play note D3
|1ADC60:D8DC| db $0C ; duration
|1ADC61:D8DD| db $C9 ; rest
|1ADC62:D8DE| db $54 ; duration
|1ADC63:D8DF| db $93 ; play note G2
|1ADC64:D8E0| db $0C ; duration
|1ADC65:D8E1| db $C9 ; rest
|1ADC66:D8E2| db $54 ; duration
|1ADC67:D8E3| db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song22_Segment4_Track3:
|1ADC68:D8E4| db $18 ; duration
|1ADC69:D8E5| db $C9 ; rest
|1ADC6A:D8E6| db $48, $7D ; duration, params
|1ADC6C:D8E8| db $9C ; play note E3
|1ADC6D:D8E9| db $EF : dw Song22_Sub_DEC4 : db $01 ; call segment subroutine
|1ADC71:D8ED| db $18 ; duration
|1ADC72:D8EE| db $C9 ; rest
|1ADC73:D8EF| db $48 ; duration
|1ADC74:D8F0| db $9F ; play note G3
|1ADC75:D8F1| db $18 ; duration
|1ADC76:D8F2| db $C9 ; rest
|1ADC77:D8F3| db $48 ; duration
|1ADC78:D8F4| db $9B ; play note D#3
|1ADC79:D8F5| db $18 ; duration
|1ADC7A:D8F6| db $C9 ; rest
|1ADC7B:D8F7| db $48 ; duration
|1ADC7C:D8F8| db $9D ; play note F3
|1ADC7D:D8F9| db $18 ; duration
|1ADC7E:D8FA| db $C9 ; rest
|1ADC7F:D8FB| db $48 ; duration
|1ADC80:D8FC| db $9C ; play note E3
|1ADC81:D8FD| db $18 ; duration
|1ADC82:D8FE| db $C9 ; rest
|1ADC83:D8FF| db $48 ; duration
|1ADC84:D900| db $9C ; play note E3

;---------------------------------------------------------------------------------------------------

Song22_Segment4_Track4:
|1ADC85:D901| db $EF : dw Song22_Sub_DEF7 : db $01 ; call segment subroutine
|1ADC89:D905| db $18 ; duration
|1ADC8A:D906| db $C9 ; rest
|1ADC8B:D907| db $48 ; duration
|1ADC8C:D908| db $A3 ; play note B3
|1ADC8D:D909| db $18 ; duration
|1ADC8E:D90A| db $C9 ; rest
|1ADC8F:D90B| db $48 ; duration
|1ADC90:D90C| db $A0 ; play note G#3
|1ADC91:D90D| db $18 ; duration
|1ADC92:D90E| db $C9 ; rest
|1ADC93:D90F| db $48 ; duration
|1ADC94:D910| db $A2 ; play note A#3
|1ADC95:D911| db $18 ; duration
|1ADC96:D912| db $C9 ; rest
|1ADC97:D913| db $48 ; duration
|1ADC98:D914| db $9F ; play note G3
|1ADC99:D915| db $18 ; duration
|1ADC9A:D916| db $C9 ; rest
|1ADC9B:D917| db $48 ; duration
|1ADC9C:D918| db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song22_Segment4_Track5:
|1ADC9D:D919| db $EF : dw Song22_Sub_DF51 : db $01 ; call segment subroutine
|1ADCA1:D91D| db $EF : dw Song22_Sub_DFE7 : db $01 ; call segment subroutine
|1ADCA5:D921| db $60 ; duration
|1ADCA6:D922| db $A8 ; play note E4
|1ADCA7:D923| db $5C, $38 ; duration, params
|1ADCA9:D925| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song22_Segment4_Track7:
|1ADCAA:D926| db $30, $7D ; duration, params
|1ADCAC:D928| db $AB ; play note G4
|1ADCAD:D929| db $18 ; duration
|1ADCAE:D92A| db $A8 ; play note E4
|1ADCAF:D92B| db $08 ; duration
|1ADCB0:D92C| db $A4 ; play note C4
|1ADCB1:D92D| db $A3 ; play note B3
|1ADCB2:D92E| db $A1 ; play note A3
|1ADCB3:D92F| db $24 ; duration
|1ADCB4:D930| db $A3 ; play note B3
|1ADCB5:D931| db $06 ; duration
|1ADCB6:D932| db $A4 ; play note C4
|1ADCB7:D933| db $26 ; duration
|1ADCB8:D934| db $A3 ; play note B3
|1ADCB9:D935| db $08 ; duration
|1ADCBA:D936| db $A6 ; play note D4
|1ADCBB:D937| db $A8 ; play note E4
|1ADCBC:D938| db $30 ; duration
|1ADCBD:D939| db $A9 ; play note F4
|1ADCBE:D93A| db $18 ; duration
|1ADCBF:D93B| db $A1 ; play note A3
|1ADCC0:D93C| db $08 ; duration
|1ADCC1:D93D| db $A1 ; play note A3
|1ADCC2:D93E| db $A1 ; play note A3
|1ADCC3:D93F| db $A1 ; play note A3
|1ADCC4:D940| db $60 ; duration
|1ADCC5:D941| db $A3 ; play note B3
|1ADCC6:D942| db $A7 ; play note D#4
|1ADCC7:D943| db $A6 ; play note D4
|1ADCC8:D944| db $A4 ; play note C4
|1ADCC9:D945| db $60, $38 ; duration, params
|1ADCCB:D947| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song22_Segment7_Track0:
|1ADCCC:D948| db $E0, $0B ; set instrument - trombone
|1ADCCE:D94A| db $E1, $08 ; set panning - leaning right
|1ADCD0:D94C| db $E3, $1C, $38, $14 ; enable vibrato
|1ADCD4:D950| db $18, $4D ; duration, params
|1ADCD6:D952| db $B0 ; play note C5
|1ADCD7:D953| db $2A, $6D ; duration, params
|1ADCD9:D955| db $AB ; play note G4
|1ADCDA:D956| db $06, $4D ; duration, params
|1ADCDC:D958| db $B0 ; play note C5
|1ADCDD:D959| db $06, $5D ; duration, params
|1ADCDF:D95B| db $B0 ; play note C5
|1ADCE0:D95C| db $06, $4D ; duration, params
|1ADCE2:D95E| db $B2 ; play note D5
|1ADCE3:D95F| db $06, $5D ; duration, params
|1ADCE5:D961| db $B4 ; play note E5
|1ADCE6:D962| db $06, $4D ; duration, params
|1ADCE8:D964| db $B5 ; play note F5
|1ADCE9:D965| db $30, $6D ; duration, params
|1ADCEB:D967| db $B7 ; play note G5
|1ADCEC:D968| db $0C ; duration
|1ADCED:D969| db $C9 ; rest
|1ADCEE:D96A| db $0C, $2D ; duration, params
|1ADCF0:D96C| db $B7 ; play note G5
|1ADCF1:D96D| db $08, $7D ; duration, params
|1ADCF3:D96F| db $B7 ; play note G5
|1ADCF4:D970| db $08, $5D ; duration, params
|1ADCF6:D972| db $B8 ; play note G#5
|1ADCF7:D973| db $BA ; play note A#5
|1ADCF8:D974| db $30, $6D ; duration, params
|1ADCFA:D976| db $BC ; play note C6
|1ADCFB:D977| db $10 ; duration
|1ADCFC:D978| db $C9 ; rest
|1ADCFD:D979| db $08, $2D ; duration, params
|1ADCFF:D97B| db $BC ; play note C6
|1ADD00:D97C| db $08, $5D ; duration, params
|1ADD02:D97E| db $BC ; play note C6
|1ADD03:D97F| db $08, $6D ; duration, params
|1ADD05:D981| db $BA ; play note A#5
|1ADD06:D982| db $08, $4D ; duration, params
|1ADD08:D984| db $B8 ; play note G#5
|1ADD09:D985| db $BA ; play note A#5
|1ADD0A:D986| db $C9 ; rest
|1ADD0B:D987| db $B8 ; play note G#5
|1ADD0C:D988| db $30, $6D ; duration, params
|1ADD0E:D98A| db $B7 ; play note G5
|1ADD0F:D98B| db $18, $4D ; duration, params
|1ADD11:D98D| db $B7 ; play note G5
|1ADD12:D98E| db $0C, $2D ; duration, params
|1ADD14:D990| db $B5 ; play note F5
|1ADD15:D991| db $06, $5D ; duration, params
|1ADD17:D993| db $B5 ; play note F5
|1ADD18:D994| db $06, $2D ; duration, params
|1ADD1A:D996| db $B7 ; play note G5
|1ADD1B:D997| db $30, $4D ; duration, params
|1ADD1D:D999| db $B8 ; play note G#5
|1ADD1E:D99A| db $0C, $6D ; duration, params
|1ADD20:D99C| db $B7 ; play note G5
|1ADD21:D99D| db $0C, $4D ; duration, params
|1ADD23:D99F| db $B5 ; play note F5
|1ADD24:D9A0| db $0C, $2D ; duration, params
|1ADD26:D9A2| db $B3 ; play note D#5
|1ADD27:D9A3| db $06, $5D ; duration, params
|1ADD29:D9A5| db $B3 ; play note D#5
|1ADD2A:D9A6| db $06, $2D ; duration, params
|1ADD2C:D9A8| db $B5 ; play note F5
|1ADD2D:D9A9| db $30, $4D ; duration, params
|1ADD2F:D9AB| db $B7 ; play note G5
|1ADD30:D9AC| db $0C, $6D ; duration, params
|1ADD32:D9AE| db $B5 ; play note F5
|1ADD33:D9AF| db $0C, $4D ; duration, params
|1ADD35:D9B1| db $B3 ; play note D#5
|1ADD36:D9B2| db $0C, $2D ; duration, params
|1ADD38:D9B4| db $B2 ; play note D5
|1ADD39:D9B5| db $06 ; duration
|1ADD3A:D9B6| db $B2 ; play note D5
|1ADD3B:D9B7| db $B4 ; play note E5
|1ADD3C:D9B8| db $30, $6D ; duration, params
|1ADD3E:D9BA| db $B6 ; play note F#5
|1ADD3F:D9BB| db $18 ; duration
|1ADD40:D9BC| db $B9 ; play note A5
|1ADD41:D9BD| db $0C ; duration
|1ADD42:D9BE| db $B7 ; play note G5
|1ADD43:D9BF| db $06, $3D ; duration, params
|1ADD45:D9C1| db $AB ; play note G4
|1ADD46:D9C2| db $AB ; play note G4
|1ADD47:D9C3| db $0C, $4E ; duration, params
|1ADD49:D9C5| db $AB ; play note G4
|1ADD4A:D9C6| db $06, $3E ; duration, params
|1ADD4C:D9C8| db $AB ; play note G4
|1ADD4D:D9C9| db $AB ; play note G4
|1ADD4E:D9CA| db $0C, $4E ; duration, params
|1ADD50:D9CC| db $AB ; play note G4
|1ADD51:D9CD| db $06, $3F ; duration, params
|1ADD53:D9CF| db $AB ; play note G4
|1ADD54:D9D0| db $AB ; play note G4
|1ADD55:D9D1| db $0C, $4F ; duration, params
|1ADD57:D9D3| db $AB ; play note G4
|1ADD58:D9D4| db $AB ; play note G4
|1ADD59:D9D5| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Segment7_Track1:
|1ADD5A:D9D6| db $30, $7D ; duration, params
|1ADD5C:D9D8| db $8C ; play note C2
|1ADD5D:D9D9| db $8C ; play note C2
|1ADD5E:D9DA| db $96 ; play note A#2
|1ADD5F:D9DB| db $96 ; play note A#2
|1ADD60:D9DC| db $94 ; play note G#2
|1ADD61:D9DD| db $94 ; play note G#2
|1ADD62:D9DE| db $8F ; play note D#2
|1ADD63:D9DF| db $8F ; play note D#2
|1ADD64:D9E0| db $30, $79 ; duration, params
|1ADD66:D9E2| db $8D ; play note C#2
|1ADD67:D9E3| db $8D ; play note C#2
|1ADD68:D9E4| db $8C ; play note C2
|1ADD69:D9E5| db $8C ; play note C2
|1ADD6A:D9E6| db $30, $7D ; duration, params
|1ADD6C:D9E8| db $8E ; play note D2
|1ADD6D:D9E9| db $8E ; play note D2
|1ADD6E:D9EA| db $93 ; play note G2
|1ADD6F:D9EB| db $97 ; play note B2

;---------------------------------------------------------------------------------------------------

Song22_Segment7_Track2:
|1ADD70:D9EC| db $ED, $C8 ; set channel volume
|1ADD72:D9EE| db $E0, $11 ; set instrument - trumpet
|1ADD74:D9F0| db $E1, $0A ; set panning - balanced
|1ADD76:D9F2| db $E3, $08, $1E, $1E ; enable vibrato
|1ADD7A:D9F6| db $0C, $59 ; duration, params
|1ADD7C:D9F8| db $98 ; play note C3
|1ADD7D:D9F9| db $06, $49 ; duration, params
|1ADD7F:D9FB| db $98 ; play note C3
|1ADD80:D9FC| db $98 ; play note C3
|1ADD81:D9FD| db $0C ; duration
|1ADD82:D9FE| db $98 ; play note C3
|1ADD83:D9FF| db $06 ; duration
|1ADD84:DA00| db $98 ; play note C3
|1ADD85:DA01| db $98 ; play note C3
|1ADD86:DA02| db $0C ; duration
|1ADD87:DA03| db $98 ; play note C3
|1ADD88:DA04| db $06 ; duration
|1ADD89:DA05| db $98 ; play note C3
|1ADD8A:DA06| db $98 ; play note C3
|1ADD8B:DA07| db $0C ; duration
|1ADD8C:DA08| db $98 ; play note C3
|1ADD8D:DA09| db $06 ; duration
|1ADD8E:DA0A| db $98 ; play note C3
|1ADD8F:DA0B| db $98 ; play note C3
|1ADD90:DA0C| db $0C, $59 ; duration, params
|1ADD92:DA0E| db $96 ; play note A#2
|1ADD93:DA0F| db $06, $49 ; duration, params
|1ADD95:DA11| db $96 ; play note A#2
|1ADD96:DA12| db $96 ; play note A#2
|1ADD97:DA13| db $0C ; duration
|1ADD98:DA14| db $96 ; play note A#2
|1ADD99:DA15| db $06 ; duration
|1ADD9A:DA16| db $96 ; play note A#2
|1ADD9B:DA17| db $96 ; play note A#2
|1ADD9C:DA18| db $0C ; duration
|1ADD9D:DA19| db $96 ; play note A#2
|1ADD9E:DA1A| db $06 ; duration
|1ADD9F:DA1B| db $96 ; play note A#2
|1ADDA0:DA1C| db $96 ; play note A#2
|1ADDA1:DA1D| db $0C ; duration
|1ADDA2:DA1E| db $96 ; play note A#2
|1ADDA3:DA1F| db $06 ; duration
|1ADDA4:DA20| db $96 ; play note A#2
|1ADDA5:DA21| db $96 ; play note A#2
|1ADDA6:DA22| db $0C, $5D ; duration, params
|1ADDA8:DA24| db $94 ; play note G#2
|1ADDA9:DA25| db $06 ; duration
|1ADDAA:DA26| db $94 ; play note G#2
|1ADDAB:DA27| db $06, $4D ; duration, params
|1ADDAD:DA29| db $94 ; play note G#2
|1ADDAE:DA2A| db $0C ; duration
|1ADDAF:DA2B| db $94 ; play note G#2
|1ADDB0:DA2C| db $06 ; duration
|1ADDB1:DA2D| db $94 ; play note G#2
|1ADDB2:DA2E| db $94 ; play note G#2
|1ADDB3:DA2F| db $0C ; duration
|1ADDB4:DA30| db $94 ; play note G#2
|1ADDB5:DA31| db $06 ; duration
|1ADDB6:DA32| db $94 ; play note G#2
|1ADDB7:DA33| db $94 ; play note G#2
|1ADDB8:DA34| db $0C ; duration
|1ADDB9:DA35| db $94 ; play note G#2
|1ADDBA:DA36| db $06 ; duration
|1ADDBB:DA37| db $94 ; play note G#2
|1ADDBC:DA38| db $94 ; play note G#2
|1ADDBD:DA39| db $0C, $5D ; duration, params
|1ADDBF:DA3B| db $8F ; play note D#2
|1ADDC0:DA3C| db $06 ; duration
|1ADDC1:DA3D| db $8F ; play note D#2
|1ADDC2:DA3E| db $8F ; play note D#2
|1ADDC3:DA3F| db $0C ; duration
|1ADDC4:DA40| db $8F ; play note D#2
|1ADDC5:DA41| db $06 ; duration
|1ADDC6:DA42| db $8F ; play note D#2
|1ADDC7:DA43| db $8F ; play note D#2
|1ADDC8:DA44| db $0C ; duration
|1ADDC9:DA45| db $8F ; play note D#2
|1ADDCA:DA46| db $06 ; duration
|1ADDCB:DA47| db $8F ; play note D#2
|1ADDCC:DA48| db $8F ; play note D#2
|1ADDCD:DA49| db $0C, $4D ; duration, params
|1ADDCF:DA4B| db $8F ; play note D#2
|1ADDD0:DA4C| db $06 ; duration
|1ADDD1:DA4D| db $8F ; play note D#2
|1ADDD2:DA4E| db $8F ; play note D#2
|1ADDD3:DA4F| db $EF : dw Song22_Sub_DD6D : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song22_Segment7_Track3:
|1ADDD7:DA53| db $EF : dw Song22_Sub_E003 : db $08 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song22_Segment7_Track4:
|1ADDDB:DA57| db $ED, $E6 ; set channel volume
|1ADDDD:DA59| db $E1, $07 ; set panning - leaning right
|1ADDDF:DA5B| db $E0, $0A ; set instrument - strings B
|1ADDE1:DA5D| db $E3, $1C, $3B, $19 ; enable vibrato
|1ADDE5:DA61| db $0C ; duration
|1ADDE6:DA62| db $C9 ; rest
|1ADDE7:DA63| db $0C, $7D ; duration, params
|1ADDE9:DA65| db $93 ; play note G2
|1ADDEA:DA66| db $48 ; duration
|1ADDEB:DA67| db $9C ; play note E3
|1ADDEC:DA68| db $0C ; duration
|1ADDED:DA69| db $C9 ; rest
|1ADDEE:DA6A| db $9D ; play note F3
|1ADDEF:DA6B| db $48 ; duration
|1ADDF0:DA6C| db $A6 ; play note D4
|1ADDF1:DA6D| db $0C ; duration
|1ADDF2:DA6E| db $C9 ; rest
|1ADDF3:DA6F| db $9B ; play note D#3
|1ADDF4:DA70| db $48 ; duration
|1ADDF5:DA71| db $A4 ; play note C4
|1ADDF6:DA72| db $0C ; duration
|1ADDF7:DA73| db $C9 ; rest
|1ADDF8:DA74| db $96 ; play note A#2
|1ADDF9:DA75| db $48 ; duration
|1ADDFA:DA76| db $9F ; play note G3
|1ADDFB:DA77| db $0C ; duration
|1ADDFC:DA78| db $C9 ; rest
|1ADDFD:DA79| db $94 ; play note G#2
|1ADDFE:DA7A| db $48 ; duration
|1ADDFF:DA7B| db $9D ; play note F3
|1ADE00:DA7C| db $0C ; duration
|1ADE01:DA7D| db $C9 ; rest
|1ADE02:DA7E| db $93 ; play note G2
|1ADE03:DA7F| db $48 ; duration
|1ADE04:DA80| db $9B ; play note D#3
|1ADE05:DA81| db $0C ; duration
|1ADE06:DA82| db $C9 ; rest
|1ADE07:DA83| db $95 ; play note A2
|1ADE08:DA84| db $48 ; duration
|1ADE09:DA85| db $9E ; play note F#3
|1ADE0A:DA86| db $0C ; duration
|1ADE0B:DA87| db $C9 ; rest
|1ADE0C:DA88| db $97 ; play note B2
|1ADE0D:DA89| db $48 ; duration
|1ADE0E:DA8A| db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song22_Segment7_Track5:
|1ADE0F:DA8B| db $ED, $C8 ; set channel volume
|1ADE11:DA8D| db $E1, $0A ; set panning - balanced
|1ADE13:DA8F| db $E0, $12 ; set instrument - horn
|1ADE15:DA91| db $E3, $13, $3C, $18 ; enable vibrato
|1ADE19:DA95| db $0C, $4D ; duration, params
|1ADE1B:DA97| db $9C ; play note E3
|1ADE1C:DA98| db $C8 ; sustain current note
|1ADE1D:DA99| db $2A, $6D ; duration, params
|1ADE1F:DA9B| db $98 ; play note C3
|1ADE20:DA9C| db $06, $4D ; duration, params
|1ADE22:DA9E| db $9C ; play note E3
|1ADE23:DA9F| db $06, $5D ; duration, params
|1ADE25:DAA1| db $9C ; play note E3
|1ADE26:DAA2| db $06, $4D ; duration, params
|1ADE28:DAA4| db $9D ; play note F3
|1ADE29:DAA5| db $06, $5D ; duration, params
|1ADE2B:DAA7| db $9F ; play note G3
|1ADE2C:DAA8| db $06, $4D ; duration, params
|1ADE2E:DAAA| db $A1 ; play note A3
|1ADE2F:DAAB| db $30, $6D ; duration, params
|1ADE31:DAAD| db $A2 ; play note A#3
|1ADE32:DAAE| db $0C ; duration
|1ADE33:DAAF| db $C8 ; sustain current note
|1ADE34:DAB0| db $0C, $2D ; duration, params
|1ADE36:DAB2| db $A2 ; play note A#3
|1ADE37:DAB3| db $08, $5D ; duration, params
|1ADE39:DAB5| db $A2 ; play note A#3
|1ADE3A:DAB6| db $A4 ; play note C4
|1ADE3B:DAB7| db $A6 ; play note D4
|1ADE3C:DAB8| db $30, $6D ; duration, params
|1ADE3E:DABA| db $A7 ; play note D#4
|1ADE3F:DABB| db $10 ; duration
|1ADE40:DABC| db $C8 ; sustain current note
|1ADE41:DABD| db $08 ; duration
|1ADE42:DABE| db $A7 ; play note D#4
|1ADE43:DABF| db $08, $5D ; duration, params
|1ADE45:DAC1| db $A7 ; play note D#4
|1ADE46:DAC2| db $08, $6D ; duration, params
|1ADE48:DAC4| db $A6 ; play note D4
|1ADE49:DAC5| db $08, $4D ; duration, params
|1ADE4B:DAC7| db $A4 ; play note C4
|1ADE4C:DAC8| db $A6 ; play note D4
|1ADE4D:DAC9| db $C8 ; sustain current note
|1ADE4E:DACA| db $A4 ; play note C4
|1ADE4F:DACB| db $30, $6D ; duration, params
|1ADE51:DACD| db $A2 ; play note A#3
|1ADE52:DACE| db $18, $4D ; duration, params
|1ADE54:DAD0| db $A2 ; play note A#3
|1ADE55:DAD1| db $EF : dw Song22_Sub_DD48 : db $01 ; call segment subroutine
|1ADE59:DAD5| db $EF : dw Song22_Sub_DE7E : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song22_Segment7_Track6:
|1ADE5D:DAD9| db $ED, $B4 ; set channel volume
|1ADE5F:DADB| db $E1, $06 ; set panning - leaning right
|1ADE61:DADD| db $E0, $16 ; set instrument - flute
|1ADE63:DADF| db $E3, $12, $3C, $14 ; enable vibrato
|1ADE67:DAE3| db $EF : dw Song22_Sub_DE9F : db $01 ; call segment subroutine
|1ADE6B:DAE7| db $9F ; play note G3
|1ADE6C:DAE8| db $08 ; duration
|1ADE6D:DAE9| db $C8 ; sustain current note
|1ADE6E:DAEA| db $9F ; play note G3
|1ADE6F:DAEB| db $9D ; play note F3
|1ADE70:DAEC| db $30 ; duration
|1ADE71:DAED| db $9F ; play note G3
|1ADE72:DAEE| db $18, $79 ; duration, params
|1ADE74:DAF0| db $A0 ; play note G#3
|1ADE75:DAF1| db $0C ; duration
|1ADE76:DAF2| db $A0 ; play note G#3
|1ADE77:DAF3| db $06 ; duration
|1ADE78:DAF4| db $A0 ; play note G#3
|1ADE79:DAF5| db $A2 ; play note A#3
|1ADE7A:DAF6| db $30 ; duration
|1ADE7B:DAF7| db $A4 ; play note C4
|1ADE7C:DAF8| db $18 ; duration
|1ADE7D:DAF9| db $9F ; play note G3
|1ADE7E:DAFA| db $0C ; duration
|1ADE7F:DAFB| db $9F ; play note G3
|1ADE80:DAFC| db $06 ; duration
|1ADE81:DAFD| db $9F ; play note G3
|1ADE82:DAFE| db $A0 ; play note G#3
|1ADE83:DAFF| db $30 ; duration
|1ADE84:DB00| db $A2 ; play note A#3
|1ADE85:DB01| db $18, $7B ; duration, params
|1ADE87:DB03| db $9E ; play note F#3
|1ADE88:DB04| db $0C ; duration
|1ADE89:DB05| db $9E ; play note F#3
|1ADE8A:DB06| db $06 ; duration
|1ADE8B:DB07| db $9E ; play note F#3
|1ADE8C:DB08| db $9F ; play note G3
|1ADE8D:DB09| db $0C ; duration
|1ADE8E:DB0A| db $A1 ; play note A3
|1ADE8F:DB0B| db $06 ; duration
|1ADE90:DB0C| db $A1 ; play note A3
|1ADE91:DB0D| db $A3 ; play note B3
|1ADE92:DB0E| db $0C ; duration
|1ADE93:DB0F| db $A4 ; play note C4
|1ADE94:DB10| db $A6 ; play note D4
|1ADE95:DB11| db $30, $77 ; duration, params
|1ADE97:DB13| db $A3 ; play note B3
|1ADE98:DB14| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song22_Segment7_Track7:
|1ADE99:DB15| db $ED, $C8 ; set channel volume
|1ADE9B:DB17| db $E1, $0C ; set panning - leaning left
|1ADE9D:DB19| db $E0, $0A ; set instrument - strings B
|1ADE9F:DB1B| db $E3, $11, $3A, $19 ; enable vibrato
|1ADEA3:DB1F| db $0C, $4D ; duration, params
|1ADEA5:DB21| db $A4 ; play note C4
|1ADEA6:DB22| db $C8 ; sustain current note
|1ADEA7:DB23| db $2A, $6D ; duration, params
|1ADEA9:DB25| db $9F ; play note G3
|1ADEAA:DB26| db $06, $4D ; duration, params
|1ADEAC:DB28| db $A4 ; play note C4
|1ADEAD:DB29| db $06, $5D ; duration, params
|1ADEAF:DB2B| db $A4 ; play note C4
|1ADEB0:DB2C| db $06, $4D ; duration, params
|1ADEB2:DB2E| db $A6 ; play note D4
|1ADEB3:DB2F| db $06, $5D ; duration, params
|1ADEB5:DB31| db $A8 ; play note E4
|1ADEB6:DB32| db $06, $4D ; duration, params
|1ADEB8:DB34| db $A9 ; play note F4
|1ADEB9:DB35| db $EF : dw Song22_Sub_DDC5 : db $01 ; call segment subroutine
|1ADEBD:DB39| db $0C, $2D ; duration, params
|1ADEBF:DB3B| db $A9 ; play note F4
|1ADEC0:DB3C| db $06, $5D ; duration, params
|1ADEC2:DB3E| db $A9 ; play note F4
|1ADEC3:DB3F| db $06, $2D ; duration, params
|1ADEC5:DB41| db $AB ; play note G4
|1ADEC6:DB42| db $30, $4D ; duration, params
|1ADEC8:DB44| db $AC ; play note G#4
|1ADEC9:DB45| db $0C, $6D ; duration, params
|1ADECB:DB47| db $AB ; play note G4
|1ADECC:DB48| db $0C, $4D ; duration, params
|1ADECE:DB4A| db $A9 ; play note F4
|1ADECF:DB4B| db $0C, $2D ; duration, params
|1ADED1:DB4D| db $A7 ; play note D#4
|1ADED2:DB4E| db $06, $5D ; duration, params
|1ADED4:DB50| db $A7 ; play note D#4
|1ADED5:DB51| db $06, $2D ; duration, params
|1ADED7:DB53| db $A9 ; play note F4
|1ADED8:DB54| db $30, $4D ; duration, params
|1ADEDA:DB56| db $AB ; play note G4
|1ADEDB:DB57| db $0C, $6D ; duration, params
|1ADEDD:DB59| db $A9 ; play note F4
|1ADEDE:DB5A| db $0C, $4D ; duration, params
|1ADEE0:DB5C| db $A7 ; play note D#4
|1ADEE1:DB5D| db $0C, $2D ; duration, params
|1ADEE3:DB5F| db $A6 ; play note D4
|1ADEE4:DB60| db $06 ; duration
|1ADEE5:DB61| db $A6 ; play note D4
|1ADEE6:DB62| db $A8 ; play note E4
|1ADEE7:DB63| db $30, $6D ; duration, params
|1ADEE9:DB65| db $AA ; play note F#4
|1ADEEA:DB66| db $18 ; duration
|1ADEEB:DB67| db $AD ; play note A4
|1ADEEC:DB68| db $0C ; duration
|1ADEED:DB69| db $AB ; play note G4
|1ADEEE:DB6A| db $06, $4D ; duration, params
|1ADEF0:DB6C| db $9F ; play note G3
|1ADEF1:DB6D| db $9F ; play note G3
|1ADEF2:DB6E| db $0C, $4E ; duration, params
|1ADEF4:DB70| db $9F ; play note G3
|1ADEF5:DB71| db $06 ; duration
|1ADEF6:DB72| db $9F ; play note G3
|1ADEF7:DB73| db $9F ; play note G3
|1ADEF8:DB74| db $0C ; duration
|1ADEF9:DB75| db $9F ; play note G3
|1ADEFA:DB76| db $06, $4F ; duration, params
|1ADEFC:DB78| db $9F ; play note G3
|1ADEFD:DB79| db $9F ; play note G3
|1ADEFE:DB7A| db $0C ; duration
|1ADEFF:DB7B| db $9F ; play note G3
|1ADF00:DB7C| db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song22_Segment8_Track0:
|1ADF01:DB7D| db $E0, $0B ; set instrument - trombone
|1ADF03:DB7F| db $E1, $08 ; set panning - leaning right
|1ADF05:DB81| db $E3, $1C, $44, $14 ; enable vibrato
|1ADF09:DB85| db $EF : dw Song22_Sub_E019 : db $01 ; call segment subroutine
|1ADF0D:DB89| db $60, $6D ; duration, params
|1ADF0F:DB8B| db $B7 ; play note G5
|1ADF10:DB8C| db $18, $7D ; duration, params
|1ADF12:DB8E| db $B0 ; play note C5
|1ADF13:DB8F| db $AB ; play note G4
|1ADF14:DB90| db $B0 ; play note C5
|1ADF15:DB91| db $AB ; play note G4
|1ADF16:DB92| db $E6, $0C, $A0 ; initiate gradual song volume change
|1ADF19:DB95| db $0C, $6D ; duration, params
|1ADF1B:DB97| db $B0 ; play note C5
|1ADF1C:DB98| db $E6, $54, $F0 ; initiate gradual song volume change
|1ADF1F:DB9B| db $54 ; duration
|1ADF20:DB9C| db $C8 ; sustain current note
|1ADF21:DB9D| db $E6, $18, $78 ; initiate gradual song volume change
|1ADF24:DBA0| db $18 ; duration
|1ADF25:DBA1| db $C8 ; sustain current note
|1ADF26:DBA2| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Segment8_Track1:
|1ADF27:DBA3| db $ED, $FF ; set channel volume
|1ADF29:DBA5| db $E0, $11 ; set instrument - trumpet
|1ADF2B:DBA7| db $E1, $0A ; set panning - balanced
|1ADF2D:DBA9| db $E3, $08, $1E, $1E ; enable vibrato
|1ADF31:DBAD| db $18, $5D ; duration, params
|1ADF33:DBAF| db $98 ; play note C3
|1ADF34:DBB0| db $08, $3B ; duration, params
|1ADF36:DBB2| db $98 ; play note C3
|1ADF37:DBB3| db $98 ; play note C3
|1ADF38:DBB4| db $98 ; play note C3
|1ADF39:DBB5| db $18, $5D ; duration, params
|1ADF3B:DBB7| db $98 ; play note C3
|1ADF3C:DBB8| db $08, $3B ; duration, params
|1ADF3E:DBBA| db $98 ; play note C3
|1ADF3F:DBBB| db $98 ; play note C3
|1ADF40:DBBC| db $98 ; play note C3
|1ADF41:DBBD| db $18, $5D ; duration, params
|1ADF43:DBBF| db $96 ; play note A#2
|1ADF44:DBC0| db $08, $3B ; duration, params
|1ADF46:DBC2| db $96 ; play note A#2
|1ADF47:DBC3| db $96 ; play note A#2
|1ADF48:DBC4| db $96 ; play note A#2
|1ADF49:DBC5| db $18, $5D ; duration, params
|1ADF4B:DBC7| db $96 ; play note A#2
|1ADF4C:DBC8| db $08, $3B ; duration, params
|1ADF4E:DBCA| db $96 ; play note A#2
|1ADF4F:DBCB| db $96 ; play note A#2
|1ADF50:DBCC| db $96 ; play note A#2
|1ADF51:DBCD| db $18, $5D ; duration, params
|1ADF53:DBCF| db $94 ; play note G#2
|1ADF54:DBD0| db $08, $3B ; duration, params
|1ADF56:DBD2| db $94 ; play note G#2
|1ADF57:DBD3| db $94 ; play note G#2
|1ADF58:DBD4| db $94 ; play note G#2
|1ADF59:DBD5| db $18, $5D ; duration, params
|1ADF5B:DBD7| db $94 ; play note G#2
|1ADF5C:DBD8| db $08, $3B ; duration, params
|1ADF5E:DBDA| db $94 ; play note G#2
|1ADF5F:DBDB| db $94 ; play note G#2
|1ADF60:DBDC| db $94 ; play note G#2
|1ADF61:DBDD| db $18, $5B ; duration, params
|1ADF63:DBDF| db $92 ; play note F#2
|1ADF64:DBE0| db $08 ; duration
|1ADF65:DBE1| db $92 ; play note F#2
|1ADF66:DBE2| db $08, $5D ; duration, params
|1ADF68:DBE4| db $92 ; play note F#2
|1ADF69:DBE5| db $08, $5F ; duration, params
|1ADF6B:DBE7| db $92 ; play note F#2
|1ADF6C:DBE8| db $18 ; duration
|1ADF6D:DBE9| db $92 ; play note F#2
|1ADF6E:DBEA| db $08 ; duration
|1ADF6F:DBEB| db $92 ; play note F#2
|1ADF70:DBEC| db $92 ; play note F#2
|1ADF71:DBED| db $92 ; play note F#2
|1ADF72:DBEE| db $18 ; duration
|1ADF73:DBEF| db $90 ; play note E2
|1ADF74:DBF0| db $08 ; duration
|1ADF75:DBF1| db $90 ; play note E2
|1ADF76:DBF2| db $90 ; play note E2
|1ADF77:DBF3| db $90 ; play note E2
|1ADF78:DBF4| db $18 ; duration
|1ADF79:DBF5| db $8D ; play note C#2
|1ADF7A:DBF6| db $08 ; duration
|1ADF7B:DBF7| db $8D ; play note C#2
|1ADF7C:DBF8| db $8D ; play note C#2
|1ADF7D:DBF9| db $8D ; play note C#2
|1ADF7E:DBFA| db $60 ; duration
|1ADF7F:DBFB| db $8C ; play note C2
|1ADF80:DBFC| db $18 ; duration
|1ADF81:DBFD| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song22_Segment8_Track2:
|1ADF82:DBFE| db $E0, $09 ; set instrument - strings A
|1ADF84:DC00| db $E1, $0E ; set panning - leaning left
|1ADF86:DC02| db $E3, $1C, $40, $14 ; enable vibrato
|1ADF8A:DC06| db $ED, $C8 ; set channel volume
|1ADF8C:DC08| db $60 ; duration
|1ADF8D:DC09| db $C9 ; rest
|1ADF8E:DC0A| db $EF : dw Song22_Sub_E019 : db $01 ; call segment subroutine
|1ADF92:DC0E| db $30, $6D ; duration, params
|1ADF94:DC10| db $B7 ; play note G5
|1ADF95:DC11| db $A5 ; play note C#4
|1ADF96:DC12| db $60 ; duration
|1ADF97:DC13| db $A8 ; play note E4
|1ADF98:DC14| db $18 ; duration
|1ADF99:DC15| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song22_Segment8_Track3:
|1ADF9A:DC16| db $EF : dw Song22_Sub_E003 : db $04 ; call segment subroutine
|1ADF9E:DC1A| db $60 ; duration
|1ADF9F:DC1B| db $C9 ; rest
|1ADFA0:DC1C| db $C9 ; rest
|1ADFA1:DC1D| db $18 ; duration
|1ADFA2:DC1E| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song22_Segment8_Track4:
|1ADFA3:DC1F| db $ED, $C8 ; set channel volume
|1ADFA5:DC21| db $E1, $0A ; set panning - balanced
|1ADFA7:DC23| db $E0, $0B ; set instrument - trombone
|1ADFA9:DC25| db $E3, $13, $38, $1A ; enable vibrato
|1ADFAD:DC29| db $0C, $4D ; duration, params
|1ADFAF:DC2B| db $A8 ; play note E4
|1ADFB0:DC2C| db $C8 ; sustain current note
|1ADFB1:DC2D| db $2A, $6D ; duration, params
|1ADFB3:DC2F| db $A4 ; play note C4
|1ADFB4:DC30| db $06, $4D ; duration, params
|1ADFB6:DC32| db $A8 ; play note E4
|1ADFB7:DC33| db $06, $5D ; duration, params
|1ADFB9:DC35| db $A8 ; play note E4
|1ADFBA:DC36| db $06, $4D ; duration, params
|1ADFBC:DC38| db $A9 ; play note F4
|1ADFBD:DC39| db $06, $5D ; duration, params
|1ADFBF:DC3B| db $AB ; play note G4
|1ADFC0:DC3C| db $06, $4D ; duration, params
|1ADFC2:DC3E| db $AD ; play note A4
|1ADFC3:DC3F| db $60, $6D ; duration, params
|1ADFC5:DC41| db $AE ; play note A#4
|1ADFC6:DC42| db $0C, $4D ; duration, params
|1ADFC8:DC44| db $A7 ; play note D#4
|1ADFC9:DC45| db $C8 ; sustain current note
|1ADFCA:DC46| db $2A, $6D ; duration, params
|1ADFCC:DC48| db $A4 ; play note C4
|1ADFCD:DC49| db $06, $4D ; duration, params
|1ADFCF:DC4B| db $A7 ; play note D#4
|1ADFD0:DC4C| db $06, $5D ; duration, params
|1ADFD2:DC4E| db $A7 ; play note D#4
|1ADFD3:DC4F| db $06, $4D ; duration, params
|1ADFD5:DC51| db $A9 ; play note F4
|1ADFD6:DC52| db $06, $5D ; duration, params
|1ADFD8:DC54| db $AB ; play note G4
|1ADFD9:DC55| db $06, $4D ; duration, params
|1ADFDB:DC57| db $AC ; play note G#4
|1ADFDC:DC58| db $60, $6D ; duration, params
|1ADFDE:DC5A| db $B0 ; play note C5
|1ADFDF:DC5B| db $30, $7D ; duration, params
|1ADFE1:DC5D| db $B4 ; play note E5
|1ADFE2:DC5E| db $B5 ; play note F5
|1ADFE3:DC5F| db $60, $6D ; duration, params
|1ADFE5:DC61| db $B4 ; play note E5
|1ADFE6:DC62| db $18 ; duration
|1ADFE7:DC63| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song22_Segment8_Track5:
|1ADFE8:DC64| db $ED, $B4 ; set channel volume
|1ADFEA:DC66| db $E1, $0C ; set panning - leaning left
|1ADFEC:DC68| db $E0, $09 ; set instrument - strings A
|1ADFEE:DC6A| db $E3, $13, $38, $1A ; enable vibrato
|1ADFF2:DC6E| db $60 ; duration
|1ADFF3:DC6F| db $C9 ; rest
|1ADFF4:DC70| db $0C, $4D ; duration, params
|1ADFF6:DC72| db $AB ; play note G4
|1ADFF7:DC73| db $C8 ; sustain current note
|1ADFF8:DC74| db $2A, $6D ; duration, params
|1ADFFA:DC76| db $A6 ; play note D4
|1ADFFB:DC77| db $06, $4D ; duration, params
|1ADFFD:DC79| db $A8 ; play note E4
|1ADFFE:DC7A| db $06, $5D ; duration, params
|1AE000:DC7C| db $A8 ; play note E4
|1AE001:DC7D| db $06, $4D ; duration, params
|1AE003:DC7F| db $A9 ; play note F4
|1AE004:DC80| db $06, $5D ; duration, params
|1AE006:DC82| db $AB ; play note G4
|1AE007:DC83| db $06, $4D ; duration, params
|1AE009:DC85| db $AD ; play note A4
|1AE00A:DC86| db $60, $6D ; duration, params
|1AE00C:DC88| db $B0 ; play note C5
|1AE00D:DC89| db $0C, $4D ; duration, params
|1AE00F:DC8B| db $A7 ; play note D#4
|1AE010:DC8C| db $C8 ; sustain current note
|1AE011:DC8D| db $2A, $6D ; duration, params
|1AE013:DC8F| db $A4 ; play note C4
|1AE014:DC90| db $06, $4D ; duration, params
|1AE016:DC92| db $A7 ; play note D#4
|1AE017:DC93| db $06, $5D ; duration, params
|1AE019:DC95| db $A7 ; play note D#4
|1AE01A:DC96| db $06, $4D ; duration, params
|1AE01C:DC98| db $A9 ; play note F4
|1AE01D:DC99| db $06, $5D ; duration, params
|1AE01F:DC9B| db $AB ; play note G4
|1AE020:DC9C| db $06, $4D ; duration, params
|1AE022:DC9E| db $AD ; play note A4
|1AE023:DC9F| db $30, $7D ; duration, params
|1AE025:DCA1| db $B0 ; play note C5
|1AE026:DCA2| db $AC ; play note G#4
|1AE027:DCA3| db $60, $6D ; duration, params
|1AE029:DCA5| db $AB ; play note G4
|1AE02A:DCA6| db $18 ; duration
|1AE02B:DCA7| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song22_Segment8_Track6:
|1AE02C:DCA8| db $E0, $0A ; set instrument - strings B
|1AE02E:DCAA| db $E1, $0E ; set panning - leaning left
|1AE030:DCAC| db $E3, $1C, $44, $14 ; enable vibrato
|1AE034:DCB0| db $EF : dw Song22_Sub_E047 : db $02 ; call segment subroutine
|1AE038:DCB4| db $18, $7D ; duration, params
|1AE03A:DCB6| db $A4 ; play note C4
|1AE03B:DCB7| db $9F ; play note G3
|1AE03C:DCB8| db $A4 ; play note C4
|1AE03D:DCB9| db $9F ; play note G3
|1AE03E:DCBA| db $30, $6D ; duration, params
|1AE040:DCBC| db $A4 ; play note C4
|1AE041:DCBD| db $98 ; play note C3
|1AE042:DCBE| db $18 ; duration
|1AE043:DCBF| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song22_Segment8_Track7:
|1AE044:DCC0| db $ED, $FA ; set channel volume
|1AE046:DCC2| db $E0, $0A ; set instrument - strings B
|1AE048:DCC4| db $E1, $04 ; set panning - leaning right
|1AE04A:DCC6| db $E3, $12, $3C, $1E ; enable vibrato
|1AE04E:DCCA| db $30, $6D ; duration, params
|1AE050:DCCC| db $8C ; play note C2
|1AE051:DCCD| db $8C ; play note C2
|1AE052:DCCE| db $96 ; play note A#2
|1AE053:DCCF| db $96 ; play note A#2
|1AE054:DCD0| db $94 ; play note G#2
|1AE055:DCD1| db $94 ; play note G#2
|1AE056:DCD2| db $92 ; play note F#2
|1AE057:DCD3| db $92 ; play note F#2
|1AE058:DCD4| db $90 ; play note E2
|1AE059:DCD5| db $8D ; play note C#2
|1AE05A:DCD6| db $60 ; duration
|1AE05B:DCD7| db $8C ; play note C2
|1AE05C:DCD8| db $18 ; duration
|1AE05D:DCD9| db $C8 ; sustain current note
|1AE05E:DCDA| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DCDB:
|1AE05F:DCDB| db $30, $6D ; duration, params
|1AE061:DCDD| db $B0 ; play note C5
|1AE062:DCDE| db $10 ; duration
|1AE063:DCDF| db $C8 ; sustain current note
|1AE064:DCE0| db $08, $2D ; duration, params
|1AE066:DCE2| db $B0 ; play note C5
|1AE067:DCE3| db $08, $5D ; duration, params
|1AE069:DCE5| db $B0 ; play note C5
|1AE06A:DCE6| db $08, $6D ; duration, params
|1AE06C:DCE8| db $AE ; play note A#4
|1AE06D:DCE9| db $08, $4D ; duration, params
|1AE06F:DCEB| db $AC ; play note G#4
|1AE070:DCEC| db $AE ; play note A#4
|1AE071:DCED| db $C8 ; sustain current note
|1AE072:DCEE| db $AC ; play note G#4
|1AE073:DCEF| db $30, $6D ; duration, params
|1AE075:DCF1| db $AB ; play note G4
|1AE076:DCF2| db $18, $4D ; duration, params
|1AE078:DCF4| db $AB ; play note G4
|1AE079:DCF5| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DCF6:
|1AE07A:DCF6| db $0C, $27 ; duration, params
|1AE07C:DCF8| db $A9 ; play note F4
|1AE07D:DCF9| db $06, $57 ; duration, params
|1AE07F:DCFB| db $A9 ; play note F4
|1AE080:DCFC| db $06, $27 ; duration, params
|1AE082:DCFE| db $AB ; play note G4
|1AE083:DCFF| db $30, $49 ; duration, params
|1AE085:DD01| db $AC ; play note G#4
|1AE086:DD02| db $0C, $69 ; duration, params
|1AE088:DD04| db $AB ; play note G4
|1AE089:DD05| db $0C, $49 ; duration, params
|1AE08B:DD07| db $A9 ; play note F4
|1AE08C:DD08| db $0C, $27 ; duration, params
|1AE08E:DD0A| db $A7 ; play note D#4
|1AE08F:DD0B| db $06, $57 ; duration, params
|1AE091:DD0D| db $A7 ; play note D#4
|1AE092:DD0E| db $06, $27 ; duration, params
|1AE094:DD10| db $A9 ; play note F4
|1AE095:DD11| db $30, $49 ; duration, params
|1AE097:DD13| db $AB ; play note G4
|1AE098:DD14| db $0C, $69 ; duration, params
|1AE09A:DD16| db $A9 ; play note F4
|1AE09B:DD17| db $0C, $49 ; duration, params
|1AE09D:DD19| db $A7 ; play note D#4
|1AE09E:DD1A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DD1B:
|1AE09F:DD1B| db $0C, $2B ; duration, params
|1AE0A1:DD1D| db $A6 ; play note D4
|1AE0A2:DD1E| db $06 ; duration
|1AE0A3:DD1F| db $A6 ; play note D4
|1AE0A4:DD20| db $A8 ; play note E4
|1AE0A5:DD21| db $30, $6D ; duration, params
|1AE0A7:DD23| db $AA ; play note F#4
|1AE0A8:DD24| db $18 ; duration
|1AE0A9:DD25| db $AD ; play note A4
|1AE0AA:DD26| db $0C ; duration
|1AE0AB:DD27| db $AB ; play note G4
|1AE0AC:DD28| db $06, $3D ; duration, params
|1AE0AE:DD2A| db $9F ; play note G3
|1AE0AF:DD2B| db $9F ; play note G3
|1AE0B0:DD2C| db $0C, $4E ; duration, params
|1AE0B2:DD2E| db $9F ; play note G3
|1AE0B3:DD2F| db $06, $3E ; duration, params
|1AE0B5:DD31| db $9F ; play note G3
|1AE0B6:DD32| db $9F ; play note G3
|1AE0B7:DD33| db $0C, $4E ; duration, params
|1AE0B9:DD35| db $9F ; play note G3
|1AE0BA:DD36| db $06, $3F ; duration, params
|1AE0BC:DD38| db $9F ; play note G3
|1AE0BD:DD39| db $9F ; play note G3
|1AE0BE:DD3A| db $0C, $4F ; duration, params
|1AE0C0:DD3C| db $9F ; play note G3
|1AE0C1:DD3D| db $9F ; play note G3
|1AE0C2:DD3E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DD3F:
|1AE0C3:DD3F| db $0C ; duration
|1AE0C4:DD40| db $C9 ; rest
|1AE0C5:DD41| db $54 ; duration
|1AE0C6:DD42| db $95 ; play note A2
|1AE0C7:DD43| db $0C ; duration
|1AE0C8:DD44| db $C9 ; rest
|1AE0C9:DD45| db $54 ; duration
|1AE0CA:DD46| db $97 ; play note B2
|1AE0CB:DD47| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DD48:
|1AE0CC:DD48| db $0C, $27 ; duration, params
|1AE0CE:DD4A| db $A0 ; play note G#3
|1AE0CF:DD4B| db $06, $57 ; duration, params
|1AE0D1:DD4D| db $A0 ; play note G#3
|1AE0D2:DD4E| db $06, $27 ; duration, params
|1AE0D4:DD50| db $A2 ; play note A#3
|1AE0D5:DD51| db $30, $49 ; duration, params
|1AE0D7:DD53| db $A4 ; play note C4
|1AE0D8:DD54| db $0C, $69 ; duration, params
|1AE0DA:DD56| db $A2 ; play note A#3
|1AE0DB:DD57| db $0C, $49 ; duration, params
|1AE0DD:DD59| db $A0 ; play note G#3
|1AE0DE:DD5A| db $0C, $27 ; duration, params
|1AE0E0:DD5C| db $9F ; play note G3
|1AE0E1:DD5D| db $06, $57 ; duration, params
|1AE0E3:DD5F| db $9F ; play note G3
|1AE0E4:DD60| db $06, $27 ; duration, params
|1AE0E6:DD62| db $A0 ; play note G#3
|1AE0E7:DD63| db $30, $49 ; duration, params
|1AE0E9:DD65| db $A2 ; play note A#3
|1AE0EA:DD66| db $0C, $69 ; duration, params
|1AE0EC:DD68| db $A0 ; play note G#3
|1AE0ED:DD69| db $0C, $49 ; duration, params
|1AE0EF:DD6B| db $9F ; play note G3
|1AE0F0:DD6C| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DD6D:
|1AE0F1:DD6D| db $0C, $59 ; duration, params
|1AE0F3:DD6F| db $99 ; play note C#3
|1AE0F4:DD70| db $06, $49 ; duration, params
|1AE0F6:DD72| db $99 ; play note C#3
|1AE0F7:DD73| db $99 ; play note C#3
|1AE0F8:DD74| db $0C ; duration
|1AE0F9:DD75| db $99 ; play note C#3
|1AE0FA:DD76| db $06 ; duration
|1AE0FB:DD77| db $99 ; play note C#3
|1AE0FC:DD78| db $99 ; play note C#3
|1AE0FD:DD79| db $0C ; duration
|1AE0FE:DD7A| db $99 ; play note C#3
|1AE0FF:DD7B| db $06 ; duration
|1AE100:DD7C| db $99 ; play note C#3
|1AE101:DD7D| db $99 ; play note C#3
|1AE102:DD7E| db $0C ; duration
|1AE103:DD7F| db $99 ; play note C#3
|1AE104:DD80| db $06 ; duration
|1AE105:DD81| db $99 ; play note C#3
|1AE106:DD82| db $99 ; play note C#3
|1AE107:DD83| db $0C, $59 ; duration, params
|1AE109:DD85| db $98 ; play note C3
|1AE10A:DD86| db $06, $49 ; duration, params
|1AE10C:DD88| db $98 ; play note C3
|1AE10D:DD89| db $98 ; play note C3
|1AE10E:DD8A| db $0C ; duration
|1AE10F:DD8B| db $98 ; play note C3
|1AE110:DD8C| db $06 ; duration
|1AE111:DD8D| db $98 ; play note C3
|1AE112:DD8E| db $98 ; play note C3
|1AE113:DD8F| db $0C ; duration
|1AE114:DD90| db $98 ; play note C3
|1AE115:DD91| db $06 ; duration
|1AE116:DD92| db $98 ; play note C3
|1AE117:DD93| db $98 ; play note C3
|1AE118:DD94| db $0C ; duration
|1AE119:DD95| db $98 ; play note C3
|1AE11A:DD96| db $06 ; duration
|1AE11B:DD97| db $98 ; play note C3
|1AE11C:DD98| db $98 ; play note C3
|1AE11D:DD99| db $0C, $5D ; duration, params
|1AE11F:DD9B| db $9A ; play note D3
|1AE120:DD9C| db $06 ; duration
|1AE121:DD9D| db $9A ; play note D3
|1AE122:DD9E| db $06, $4D ; duration, params
|1AE124:DDA0| db $9A ; play note D3
|1AE125:DDA1| db $0C ; duration
|1AE126:DDA2| db $9A ; play note D3
|1AE127:DDA3| db $06 ; duration
|1AE128:DDA4| db $9A ; play note D3
|1AE129:DDA5| db $9A ; play note D3
|1AE12A:DDA6| db $0C ; duration
|1AE12B:DDA7| db $9A ; play note D3
|1AE12C:DDA8| db $06 ; duration
|1AE12D:DDA9| db $9A ; play note D3
|1AE12E:DDAA| db $9A ; play note D3
|1AE12F:DDAB| db $0C ; duration
|1AE130:DDAC| db $9A ; play note D3
|1AE131:DDAD| db $06 ; duration
|1AE132:DDAE| db $9A ; play note D3
|1AE133:DDAF| db $9A ; play note D3
|1AE134:DDB0| db $0C, $5D ; duration, params
|1AE136:DDB2| db $93 ; play note G2
|1AE137:DDB3| db $06 ; duration
|1AE138:DDB4| db $93 ; play note G2
|1AE139:DDB5| db $93 ; play note G2
|1AE13A:DDB6| db $0C ; duration
|1AE13B:DDB7| db $93 ; play note G2
|1AE13C:DDB8| db $06 ; duration
|1AE13D:DDB9| db $93 ; play note G2
|1AE13E:DDBA| db $93 ; play note G2
|1AE13F:DDBB| db $0C ; duration
|1AE140:DDBC| db $93 ; play note G2
|1AE141:DDBD| db $06 ; duration
|1AE142:DDBE| db $93 ; play note G2
|1AE143:DDBF| db $93 ; play note G2
|1AE144:DDC0| db $0C, $4D ; duration, params
|1AE146:DDC2| db $95 ; play note A2
|1AE147:DDC3| db $97 ; play note B2
|1AE148:DDC4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DDC5:
|1AE149:DDC5| db $30, $6D ; duration, params
|1AE14B:DDC7| db $AB ; play note G4
|1AE14C:DDC8| db $0C ; duration
|1AE14D:DDC9| db $C8 ; sustain current note
|1AE14E:DDCA| db $0C, $2D ; duration, params
|1AE150:DDCC| db $AB ; play note G4
|1AE151:DDCD| db $08, $5D ; duration, params
|1AE153:DDCF| db $AB ; play note G4
|1AE154:DDD0| db $AC ; play note G#4
|1AE155:DDD1| db $AE ; play note A#4
|1AE156:DDD2| db $30, $6D ; duration, params
|1AE158:DDD4| db $B0 ; play note C5
|1AE159:DDD5| db $10 ; duration
|1AE15A:DDD6| db $C8 ; sustain current note
|1AE15B:DDD7| db $08, $2D ; duration, params
|1AE15D:DDD9| db $B0 ; play note C5
|1AE15E:DDDA| db $08, $5D ; duration, params
|1AE160:DDDC| db $B0 ; play note C5
|1AE161:DDDD| db $08, $6D ; duration, params
|1AE163:DDDF| db $AE ; play note A#4
|1AE164:DDE0| db $08, $4D ; duration, params
|1AE166:DDE2| db $AC ; play note G#4
|1AE167:DDE3| db $AE ; play note A#4
|1AE168:DDE4| db $C8 ; sustain current note
|1AE169:DDE5| db $AC ; play note G#4
|1AE16A:DDE6| db $30, $6D ; duration, params
|1AE16C:DDE8| db $AB ; play note G4
|1AE16D:DDE9| db $18, $4D ; duration, params
|1AE16F:DDEB| db $AB ; play note G4
|1AE170:DDEC| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DDED:
|1AE171:DDED| db $0C, $2B ; duration, params
|1AE173:DDEF| db $A6 ; play note D4
|1AE174:DDF0| db $06 ; duration
|1AE175:DDF1| db $A6 ; play note D4
|1AE176:DDF2| db $A8 ; play note E4
|1AE177:DDF3| db $30, $6D ; duration, params
|1AE179:DDF5| db $AA ; play note F#4
|1AE17A:DDF6| db $18 ; duration
|1AE17B:DDF7| db $AD ; play note A4
|1AE17C:DDF8| db $0C ; duration
|1AE17D:DDF9| db $AB ; play note G4
|1AE17E:DDFA| db $06, $4D ; duration, params
|1AE180:DDFC| db $9F ; play note G3
|1AE181:DDFD| db $9F ; play note G3
|1AE182:DDFE| db $0C, $4E ; duration, params
|1AE184:DE00| db $9F ; play note G3
|1AE185:DE01| db $06 ; duration
|1AE186:DE02| db $9F ; play note G3
|1AE187:DE03| db $9F ; play note G3
|1AE188:DE04| db $0C ; duration
|1AE189:DE05| db $9F ; play note G3
|1AE18A:DE06| db $06, $4F ; duration, params
|1AE18C:DE08| db $9F ; play note G3
|1AE18D:DE09| db $9F ; play note G3
|1AE18E:DE0A| db $0C ; duration
|1AE18F:DE0B| db $9F ; play note G3
|1AE190:DE0C| db $08 ; duration
|1AE191:DE0D| db $9F ; play note G3
|1AE192:DE0E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DE0F:
|1AE193:DE0F| db $48 ; duration
|1AE194:DE10| db $B0 ; play note C5
|1AE195:DE11| db $18 ; duration
|1AE196:DE12| db $B3 ; play note D#5
|1AE197:DE13| db $0C ; duration
|1AE198:DE14| db $B2 ; play note D5
|1AE199:DE15| db $C9 ; rest
|1AE19A:DE16| db $30 ; duration
|1AE19B:DE17| db $AF ; play note B4
|1AE19C:DE18| db $18 ; duration
|1AE19D:DE19| db $AB ; play note G4
|1AE19E:DE1A| db $48 ; duration
|1AE19F:DE1B| db $AC ; play note G#4
|1AE1A0:DE1C| db $18 ; duration
|1AE1A1:DE1D| db $B0 ; play note C5
|1AE1A2:DE1E| db $0C ; duration
|1AE1A3:DE1F| db $AF ; play note B4
|1AE1A4:DE20| db $C9 ; rest
|1AE1A5:DE21| db $30 ; duration
|1AE1A6:DE22| db $AB ; play note G4
|1AE1A7:DE23| db $18 ; duration
|1AE1A8:DE24| db $AB ; play note G4
|1AE1A9:DE25| db $48 ; duration
|1AE1AA:DE26| db $AC ; play note G#4
|1AE1AB:DE27| db $18 ; duration
|1AE1AC:DE28| db $B0 ; play note C5
|1AE1AD:DE29| db $0C ; duration
|1AE1AE:DE2A| db $AF ; play note B4
|1AE1AF:DE2B| db $C9 ; rest
|1AE1B0:DE2C| db $30 ; duration
|1AE1B1:DE2D| db $AB ; play note G4
|1AE1B2:DE2E| db $18 ; duration
|1AE1B3:DE2F| db $A8 ; play note E4
|1AE1B4:DE30| db $48 ; duration
|1AE1B5:DE31| db $A9 ; play note F4
|1AE1B6:DE32| db $18 ; duration
|1AE1B7:DE33| db $AC ; play note G#4
|1AE1B8:DE34| db $0C ; duration
|1AE1B9:DE35| db $AB ; play note G4
|1AE1BA:DE36| db $C9 ; rest
|1AE1BB:DE37| db $30 ; duration
|1AE1BC:DE38| db $A7 ; play note D#4
|1AE1BD:DE39| db $18 ; duration
|1AE1BE:DE3A| db $A4 ; play note C4
|1AE1BF:DE3B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DE3C:
|1AE1C0:DE3C| db $0C, $4F ; duration, params
|1AE1C2:DE3E| db $92 ; play note F#2
|1AE1C3:DE3F| db $06 ; duration
|1AE1C4:DE40| db $92 ; play note F#2
|1AE1C5:DE41| db $92 ; play note F#2
|1AE1C6:DE42| db $0C ; duration
|1AE1C7:DE43| db $92 ; play note F#2
|1AE1C8:DE44| db $06 ; duration
|1AE1C9:DE45| db $92 ; play note F#2
|1AE1CA:DE46| db $92 ; play note F#2
|1AE1CB:DE47| db $0C ; duration
|1AE1CC:DE48| db $92 ; play note F#2
|1AE1CD:DE49| db $06 ; duration
|1AE1CE:DE4A| db $92 ; play note F#2
|1AE1CF:DE4B| db $92 ; play note F#2
|1AE1D0:DE4C| db $0C ; duration
|1AE1D1:DE4D| db $92 ; play note F#2
|1AE1D2:DE4E| db $06 ; duration
|1AE1D3:DE4F| db $92 ; play note F#2
|1AE1D4:DE50| db $92 ; play note F#2
|1AE1D5:DE51| db $0C, $4D ; duration, params
|1AE1D7:DE53| db $93 ; play note G2
|1AE1D8:DE54| db $06 ; duration
|1AE1D9:DE55| db $93 ; play note G2
|1AE1DA:DE56| db $93 ; play note G2
|1AE1DB:DE57| db $0C ; duration
|1AE1DC:DE58| db $93 ; play note G2
|1AE1DD:DE59| db $06 ; duration
|1AE1DE:DE5A| db $93 ; play note G2
|1AE1DF:DE5B| db $93 ; play note G2
|1AE1E0:DE5C| db $0C ; duration
|1AE1E1:DE5D| db $93 ; play note G2
|1AE1E2:DE5E| db $06 ; duration
|1AE1E3:DE5F| db $93 ; play note G2
|1AE1E4:DE60| db $93 ; play note G2
|1AE1E5:DE61| db $0C ; duration
|1AE1E6:DE62| db $93 ; play note G2
|1AE1E7:DE63| db $06 ; duration
|1AE1E8:DE64| db $93 ; play note G2
|1AE1E9:DE65| db $93 ; play note G2
|1AE1EA:DE66| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DE67:
|1AE1EB:DE67| db $0C, $5D ; duration, params
|1AE1ED:DE69| db $A9 ; play note F4
|1AE1EE:DE6A| db $06, $4D ; duration, params
|1AE1F0:DE6C| db $A9 ; play note F4
|1AE1F1:DE6D| db $A9 ; play note F4
|1AE1F2:DE6E| db $0C ; duration
|1AE1F3:DE6F| db $A9 ; play note F4
|1AE1F4:DE70| db $06 ; duration
|1AE1F5:DE71| db $A9 ; play note F4
|1AE1F6:DE72| db $A9 ; play note F4
|1AE1F7:DE73| db $0C ; duration
|1AE1F8:DE74| db $A9 ; play note F4
|1AE1F9:DE75| db $06 ; duration
|1AE1FA:DE76| db $A9 ; play note F4
|1AE1FB:DE77| db $A9 ; play note F4
|1AE1FC:DE78| db $0C ; duration
|1AE1FD:DE79| db $A9 ; play note F4
|1AE1FE:DE7A| db $06 ; duration
|1AE1FF:DE7B| db $A9 ; play note F4
|1AE200:DE7C| db $A9 ; play note F4
|1AE201:DE7D| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DE7E:
|1AE202:DE7E| db $0C, $2B ; duration, params
|1AE204:DE80| db $9E ; play note F#3
|1AE205:DE81| db $06 ; duration
|1AE206:DE82| db $9E ; play note F#3
|1AE207:DE83| db $9F ; play note G3
|1AE208:DE84| db $30, $6D ; duration, params
|1AE20A:DE86| db $A1 ; play note A3
|1AE20B:DE87| db $18 ; duration
|1AE20C:DE88| db $A4 ; play note C4
|1AE20D:DE89| db $0C ; duration
|1AE20E:DE8A| db $A3 ; play note B3
|1AE20F:DE8B| db $06, $4D ; duration, params
|1AE211:DE8D| db $97 ; play note B2
|1AE212:DE8E| db $97 ; play note B2
|1AE213:DE8F| db $0C, $4E ; duration, params
|1AE215:DE91| db $97 ; play note B2
|1AE216:DE92| db $06 ; duration
|1AE217:DE93| db $97 ; play note B2
|1AE218:DE94| db $97 ; play note B2
|1AE219:DE95| db $0C ; duration
|1AE21A:DE96| db $97 ; play note B2
|1AE21B:DE97| db $06, $4F ; duration, params
|1AE21D:DE99| db $97 ; play note B2
|1AE21E:DE9A| db $97 ; play note B2
|1AE21F:DE9B| db $0C ; duration
|1AE220:DE9C| db $97 ; play note B2
|1AE221:DE9D| db $97 ; play note B2
|1AE222:DE9E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DE9F:
|1AE223:DE9F| db $18 ; duration
|1AE224:DEA0| db $C9 ; rest
|1AE225:DEA1| db $18, $7B ; duration, params
|1AE227:DEA3| db $A4 ; play note C4
|1AE228:DEA4| db $30 ; duration
|1AE229:DEA5| db $9F ; play note G3
|1AE22A:DEA6| db $12 ; duration
|1AE22B:DEA7| db $C8 ; sustain current note
|1AE22C:DEA8| db $06 ; duration
|1AE22D:DEA9| db $A4 ; play note C4
|1AE22E:DEAA| db $A4 ; play note C4
|1AE22F:DEAB| db $A6 ; play note D4
|1AE230:DEAC| db $A8 ; play note E4
|1AE231:DEAD| db $A9 ; play note F4
|1AE232:DEAE| db $30 ; duration
|1AE233:DEAF| db $AB ; play note G4
|1AE234:DEB0| db $12 ; duration
|1AE235:DEB1| db $C8 ; sustain current note
|1AE236:DEB2| db $06 ; duration
|1AE237:DEB3| db $A0 ; play note G#3
|1AE238:DEB4| db $A0 ; play note G#3
|1AE239:DEB5| db $A2 ; play note A#3
|1AE23A:DEB6| db $A4 ; play note C4
|1AE23B:DEB7| db $A6 ; play note D4
|1AE23C:DEB8| db $18 ; duration
|1AE23D:DEB9| db $A7 ; play note D#4
|1AE23E:DEBA| db $A0 ; play note G#3
|1AE23F:DEBB| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DEBC:
|1AE240:DEBC| db $18 ; duration
|1AE241:DEBD| db $9E ; play note F#3
|1AE242:DEBE| db $48 ; duration
|1AE243:DEBF| db $A4 ; play note C4
|1AE244:DEC0| db $30 ; duration
|1AE245:DEC1| db $A3 ; play note B3
|1AE246:DEC2| db $9F ; play note G3
|1AE247:DEC3| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DEC4:
|1AE248:DEC4| db $18 ; duration
|1AE249:DEC5| db $C9 ; rest
|1AE24A:DEC6| db $48 ; duration
|1AE24B:DEC7| db $9C ; play note E3
|1AE24C:DEC8| db $18 ; duration
|1AE24D:DEC9| db $C9 ; rest
|1AE24E:DECA| db $48 ; duration
|1AE24F:DECB| db $9D ; play note F3
|1AE250:DECC| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DECD:
|1AE251:DECD| db $18 ; duration
|1AE252:DECE| db $C9 ; rest
|1AE253:DECF| db $48 ; duration
|1AE254:DED0| db $9F ; play note G3
|1AE255:DED1| db $18 ; duration
|1AE256:DED2| db $C9 ; rest
|1AE257:DED3| db $48 ; duration
|1AE258:DED4| db $A1 ; play note A3
|1AE259:DED5| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DED6:
|1AE25A:DED6| db $24 ; duration
|1AE25B:DED7| db $A6 ; play note D4
|1AE25C:DED8| db $06 ; duration
|1AE25D:DED9| db $A4 ; play note C4
|1AE25E:DEDA| db $36 ; duration
|1AE25F:DEDB| db $A8 ; play note E4
|1AE260:DEDC| db $24 ; duration
|1AE261:DEDD| db $A6 ; play note D4
|1AE262:DEDE| db $0C ; duration
|1AE263:DEDF| db $A4 ; play note C4
|1AE264:DEE0| db $24 ; duration
|1AE265:DEE1| db $9F ; play note G3
|1AE266:DEE2| db $0C ; duration
|1AE267:DEE3| db $A4 ; play note C4
|1AE268:DEE4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DEE5:
|1AE269:DEE5| db $0C ; duration
|1AE26A:DEE6| db $C9 ; rest
|1AE26B:DEE7| db $54, $7D ; duration, params
|1AE26D:DEE9| db $93 ; play note G2
|1AE26E:DEEA| db $0C ; duration
|1AE26F:DEEB| db $C9 ; rest
|1AE270:DEEC| db $54 ; duration
|1AE271:DEED| db $97 ; play note B2
|1AE272:DEEE| db $0C ; duration
|1AE273:DEEF| db $C9 ; rest
|1AE274:DEF0| db $54 ; duration
|1AE275:DEF1| db $95 ; play note A2
|1AE276:DEF2| db $0C ; duration
|1AE277:DEF3| db $C9 ; rest
|1AE278:DEF4| db $54 ; duration
|1AE279:DEF5| db $97 ; play note B2
|1AE27A:DEF6| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DEF7:
|1AE27B:DEF7| db $18 ; duration
|1AE27C:DEF8| db $C9 ; rest
|1AE27D:DEF9| db $48, $7D ; duration, params
|1AE27F:DEFB| db $9F ; play note G3
|1AE280:DEFC| db $18 ; duration
|1AE281:DEFD| db $C9 ; rest
|1AE282:DEFE| db $48 ; duration
|1AE283:DEFF| db $9F ; play note G3
|1AE284:DF00| db $18 ; duration
|1AE285:DF01| db $C9 ; rest
|1AE286:DF02| db $48 ; duration
|1AE287:DF03| db $A1 ; play note A3
|1AE288:DF04| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DF05:
|1AE289:DF05| db $24, $7D ; duration, params
|1AE28B:DF07| db $B2 ; play note D5
|1AE28C:DF08| db $0C ; duration
|1AE28D:DF09| db $B0 ; play note C5
|1AE28E:DF0A| db $18 ; duration
|1AE28F:DF0B| db $AB ; play note G4
|1AE290:DF0C| db $08 ; duration
|1AE291:DF0D| db $A8 ; play note E4
|1AE292:DF0E| db $A6 ; play note D4
|1AE293:DF0F| db $A4 ; play note C4
|1AE294:DF10| db $24 ; duration
|1AE295:DF11| db $A6 ; play note D4
|1AE296:DF12| db $06 ; duration
|1AE297:DF13| db $A8 ; play note E4
|1AE298:DF14| db $36 ; duration
|1AE299:DF15| db $A8 ; play note E4
|1AE29A:DF16| db $24 ; duration
|1AE29B:DF17| db $AD ; play note A4
|1AE29C:DF18| db $0C ; duration
|1AE29D:DF19| db $A8 ; play note E4
|1AE29E:DF1A| db $18 ; duration
|1AE29F:DF1B| db $A6 ; play note D4
|1AE2A0:DF1C| db $08 ; duration
|1AE2A1:DF1D| db $A4 ; play note C4
|1AE2A2:DF1E| db $A3 ; play note B3
|1AE2A3:DF1F| db $A4 ; play note C4
|1AE2A4:DF20| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DF21:
|1AE2A5:DF21| db $24 ; duration
|1AE2A6:DF22| db $A8 ; play note E4
|1AE2A7:DF23| db $06 ; duration
|1AE2A8:DF24| db $A6 ; play note D4
|1AE2A9:DF25| db $36 ; duration
|1AE2AA:DF26| db $A6 ; play note D4
|1AE2AB:DF27| db $24 ; duration
|1AE2AC:DF28| db $B2 ; play note D5
|1AE2AD:DF29| db $0C ; duration
|1AE2AE:DF2A| db $B0 ; play note C5
|1AE2AF:DF2B| db $18 ; duration
|1AE2B0:DF2C| db $AB ; play note G4
|1AE2B1:DF2D| db $08 ; duration
|1AE2B2:DF2E| db $A8 ; play note E4
|1AE2B3:DF2F| db $A6 ; play note D4
|1AE2B4:DF30| db $A4 ; play note C4
|1AE2B5:DF31| db $24 ; duration
|1AE2B6:DF32| db $A6 ; play note D4
|1AE2B7:DF33| db $06 ; duration
|1AE2B8:DF34| db $AB ; play note G4
|1AE2B9:DF35| db $36 ; duration
|1AE2BA:DF36| db $A8 ; play note E4
|1AE2BB:DF37| db $24 ; duration
|1AE2BC:DF38| db $AD ; play note A4
|1AE2BD:DF39| db $06 ; duration
|1AE2BE:DF3A| db $A8 ; play note E4
|1AE2BF:DF3B| db $12 ; duration
|1AE2C0:DF3C| db $AD ; play note A4
|1AE2C1:DF3D| db $0C ; duration
|1AE2C2:DF3E| db $AF ; play note B4
|1AE2C3:DF3F| db $08 ; duration
|1AE2C4:DF40| db $B0 ; play note C5
|1AE2C5:DF41| db $AF ; play note B4
|1AE2C6:DF42| db $B0 ; play note C5
|1AE2C7:DF43| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DF44:
|1AE2C8:DF44| db $0C ; duration
|1AE2C9:DF45| db $C9 ; rest
|1AE2CA:DF46| db $54 ; duration
|1AE2CB:DF47| db $97 ; play note B2
|1AE2CC:DF48| db $0C ; duration
|1AE2CD:DF49| db $C9 ; rest
|1AE2CE:DF4A| db $54 ; duration
|1AE2CF:DF4B| db $95 ; play note A2
|1AE2D0:DF4C| db $0C ; duration
|1AE2D1:DF4D| db $C9 ; rest
|1AE2D2:DF4E| db $54 ; duration
|1AE2D3:DF4F| db $97 ; play note B2
|1AE2D4:DF50| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DF51:
|1AE2D5:DF51| db $04 ; duration
|1AE2D6:DF52| db $C9 ; rest
|1AE2D7:DF53| db $24, $7D ; duration, params
|1AE2D9:DF55| db $B2 ; play note D5
|1AE2DA:DF56| db $0C ; duration
|1AE2DB:DF57| db $B0 ; play note C5
|1AE2DC:DF58| db $18 ; duration
|1AE2DD:DF59| db $AB ; play note G4
|1AE2DE:DF5A| db $08 ; duration
|1AE2DF:DF5B| db $A8 ; play note E4
|1AE2E0:DF5C| db $A6 ; play note D4
|1AE2E1:DF5D| db $A4 ; play note C4
|1AE2E2:DF5E| db $24 ; duration
|1AE2E3:DF5F| db $A6 ; play note D4
|1AE2E4:DF60| db $06 ; duration
|1AE2E5:DF61| db $A8 ; play note E4
|1AE2E6:DF62| db $36 ; duration
|1AE2E7:DF63| db $A8 ; play note E4
|1AE2E8:DF64| db $24 ; duration
|1AE2E9:DF65| db $AD ; play note A4
|1AE2EA:DF66| db $0C ; duration
|1AE2EB:DF67| db $A8 ; play note E4
|1AE2EC:DF68| db $18 ; duration
|1AE2ED:DF69| db $A6 ; play note D4
|1AE2EE:DF6A| db $08 ; duration
|1AE2EF:DF6B| db $A4 ; play note C4
|1AE2F0:DF6C| db $A3 ; play note B3
|1AE2F1:DF6D| db $A4 ; play note C4
|1AE2F2:DF6E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DF6F:
|1AE2F3:DF6F| db $2A, $7D ; duration, params
|1AE2F5:DF71| db $B0 ; play note C5
|1AE2F6:DF72| db $06 ; duration
|1AE2F7:DF73| db $AF ; play note B4
|1AE2F8:DF74| db $2A ; duration
|1AE2F9:DF75| db $B2 ; play note D5
|1AE2FA:DF76| db $06 ; duration
|1AE2FB:DF77| db $AF ; play note B4
|1AE2FC:DF78| db $2A ; duration
|1AE2FD:DF79| db $B0 ; play note C5
|1AE2FE:DF7A| db $06 ; duration
|1AE2FF:DF7B| db $AF ; play note B4
|1AE300:DF7C| db $2A ; duration
|1AE301:DF7D| db $AB ; play note G4
|1AE302:DF7E| db $06 ; duration
|1AE303:DF7F| db $AB ; play note G4
|1AE304:DF80| db $2A ; duration
|1AE305:DF81| db $AD ; play note A4
|1AE306:DF82| db $06 ; duration
|1AE307:DF83| db $A4 ; play note C4
|1AE308:DF84| db $18 ; duration
|1AE309:DF85| db $AD ; play note A4
|1AE30A:DF86| db $08 ; duration
|1AE30B:DF87| db $AD ; play note A4
|1AE30C:DF88| db $AB ; play note G4
|1AE30D:DF89| db $A9 ; play note F4
|1AE30E:DF8A| db $24 ; duration
|1AE30F:DF8B| db $A8 ; play note E4
|1AE310:DF8C| db $06 ; duration
|1AE311:DF8D| db $A6 ; play note D4
|1AE312:DF8E| db $30 ; duration
|1AE313:DF8F| db $A6 ; play note D4
|1AE314:DF90| db $06 ; duration
|1AE315:DF91| db $AF ; play note B4
|1AE316:DF92| db $2A ; duration
|1AE317:DF93| db $B0 ; play note C5
|1AE318:DF94| db $06 ; duration
|1AE319:DF95| db $AF ; play note B4
|1AE31A:DF96| db $2A ; duration
|1AE31B:DF97| db $B2 ; play note D5
|1AE31C:DF98| db $06 ; duration
|1AE31D:DF99| db $AF ; play note B4
|1AE31E:DF9A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DF9B:
|1AE31F:DF9B| db $2A ; duration
|1AE320:DF9C| db $B0 ; play note C5
|1AE321:DF9D| db $06 ; duration
|1AE322:DF9E| db $AD ; play note A4
|1AE323:DF9F| db $18 ; duration
|1AE324:DFA0| db $B2 ; play note D5
|1AE325:DFA1| db $08 ; duration
|1AE326:DFA2| db $AD ; play note A4
|1AE327:DFA3| db $AF ; play note B4
|1AE328:DFA4| db $B0 ; play note C5
|1AE329:DFA5| db $2A ; duration
|1AE32A:DFA6| db $B4 ; play note E5
|1AE32B:DFA7| db $06 ; duration
|1AE32C:DFA8| db $B2 ; play note D5
|1AE32D:DFA9| db $18 ; duration
|1AE32E:DFAA| db $B2 ; play note D5
|1AE32F:DFAB| db $08 ; duration
|1AE330:DFAC| db $B0 ; play note C5
|1AE331:DFAD| db $AF ; play note B4
|1AE332:DFAE| db $AD ; play note A4
|1AE333:DFAF| db $24 ; duration
|1AE334:DFB0| db $B0 ; play note C5
|1AE335:DFB1| db $06 ; duration
|1AE336:DFB2| db $AF ; play note B4
|1AE337:DFB3| db $36 ; duration
|1AE338:DFB4| db $AF ; play note B4
|1AE339:DFB5| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DFB6:
|1AE33A:DFB6| db $18 ; duration
|1AE33B:DFB7| db $C9 ; rest
|1AE33C:DFB8| db $48 ; duration
|1AE33D:DFB9| db $A1 ; play note A3
|1AE33E:DFBA| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DFBB:
|1AE33F:DFBB| db $2A ; duration
|1AE340:DFBC| db $B0 ; play note C5
|1AE341:DFBD| db $06 ; duration
|1AE342:DFBE| db $AF ; play note B4
|1AE343:DFBF| db $2A ; duration
|1AE344:DFC0| db $AB ; play note G4
|1AE345:DFC1| db $06 ; duration
|1AE346:DFC2| db $AB ; play note G4
|1AE347:DFC3| db $2A ; duration
|1AE348:DFC4| db $AD ; play note A4
|1AE349:DFC5| db $06 ; duration
|1AE34A:DFC6| db $A4 ; play note C4
|1AE34B:DFC7| db $18 ; duration
|1AE34C:DFC8| db $AD ; play note A4
|1AE34D:DFC9| db $08 ; duration
|1AE34E:DFCA| db $AD ; play note A4
|1AE34F:DFCB| db $AB ; play note G4
|1AE350:DFCC| db $A9 ; play note F4
|1AE351:DFCD| db $24 ; duration
|1AE352:DFCE| db $A8 ; play note E4
|1AE353:DFCF| db $06 ; duration
|1AE354:DFD0| db $A6 ; play note D4
|1AE355:DFD1| db $30 ; duration
|1AE356:DFD2| db $A6 ; play note D4
|1AE357:DFD3| db $06 ; duration
|1AE358:DFD4| db $AF ; play note B4
|1AE359:DFD5| db $2A ; duration
|1AE35A:DFD6| db $B0 ; play note C5
|1AE35B:DFD7| db $06 ; duration
|1AE35C:DFD8| db $AF ; play note B4
|1AE35D:DFD9| db $2A ; duration
|1AE35E:DFDA| db $B2 ; play note D5
|1AE35F:DFDB| db $06 ; duration
|1AE360:DFDC| db $AF ; play note B4
|1AE361:DFDD| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DFDE:
|1AE362:DFDE| db $18 ; duration
|1AE363:DFDF| db $C9 ; rest
|1AE364:DFE0| db $08 ; duration
|1AE365:DFE1| db $A4 ; play note C4
|1AE366:DFE2| db $A6 ; play note D4
|1AE367:DFE3| db $A8 ; play note E4
|1AE368:DFE4| db $30 ; duration
|1AE369:DFE5| db $AD ; play note A4
|1AE36A:DFE6| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_DFE7:
|1AE36B:DFE7| db $24 ; duration
|1AE36C:DFE8| db $A8 ; play note E4
|1AE36D:DFE9| db $06 ; duration
|1AE36E:DFEA| db $A6 ; play note D4
|1AE36F:DFEB| db $2A ; duration
|1AE370:DFEC| db $A6 ; play note D4
|1AE371:DFED| db $06 ; duration
|1AE372:DFEE| db $A4 ; play note C4
|1AE373:DFEF| db $A6 ; play note D4
|1AE374:DFF0| db $30 ; duration
|1AE375:DFF1| db $AB ; play note G4
|1AE376:DFF2| db $18 ; duration
|1AE377:DFF3| db $A9 ; play note F4
|1AE378:DFF4| db $06 ; duration
|1AE379:DFF5| db $A4 ; play note C4
|1AE37A:DFF6| db $A6 ; play note D4
|1AE37B:DFF7| db $A7 ; play note D#4
|1AE37C:DFF8| db $A9 ; play note F4
|1AE37D:DFF9| db $30 ; duration
|1AE37E:DFFA| db $AB ; play note G4
|1AE37F:DFFB| db $18 ; duration
|1AE380:DFFC| db $A9 ; play note F4
|1AE381:DFFD| db $12 ; duration
|1AE382:DFFE| db $A9 ; play note F4
|1AE383:DFFF| db $03 ; duration
|1AE384:E000| db $A8 ; play note E4
|1AE385:E001| db $A6 ; play note D4
|1AE386:E002| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_E003:
|1AE387:E003| db $0C, $5D ; duration, params
|1AE389:E005| db $A9 ; play note F4
|1AE38A:E006| db $06, $4D ; duration, params
|1AE38C:E008| db $A9 ; play note F4
|1AE38D:E009| db $A9 ; play note F4
|1AE38E:E00A| db $0C ; duration
|1AE38F:E00B| db $A9 ; play note F4
|1AE390:E00C| db $06 ; duration
|1AE391:E00D| db $A9 ; play note F4
|1AE392:E00E| db $A9 ; play note F4
|1AE393:E00F| db $0C ; duration
|1AE394:E010| db $A9 ; play note F4
|1AE395:E011| db $06 ; duration
|1AE396:E012| db $A9 ; play note F4
|1AE397:E013| db $A9 ; play note F4
|1AE398:E014| db $A9 ; play note F4
|1AE399:E015| db $A9 ; play note F4
|1AE39A:E016| db $A9 ; play note F4
|1AE39B:E017| db $A9 ; play note F4
|1AE39C:E018| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_E019:
|1AE39D:E019| db $18, $4D ; duration, params
|1AE39F:E01B| db $B0 ; play note C5
|1AE3A0:E01C| db $2A, $6D ; duration, params
|1AE3A2:E01E| db $AB ; play note G4
|1AE3A3:E01F| db $06, $4D ; duration, params
|1AE3A5:E021| db $B0 ; play note C5
|1AE3A6:E022| db $06, $5D ; duration, params
|1AE3A8:E024| db $B0 ; play note C5
|1AE3A9:E025| db $06, $4D ; duration, params
|1AE3AB:E027| db $B2 ; play note D5
|1AE3AC:E028| db $06, $5D ; duration, params
|1AE3AE:E02A| db $B4 ; play note E5
|1AE3AF:E02B| db $06, $4D ; duration, params
|1AE3B1:E02D| db $B5 ; play note F5
|1AE3B2:E02E| db $60, $6D ; duration, params
|1AE3B4:E030| db $B7 ; play note G5
|1AE3B5:E031| db $18, $4D ; duration, params
|1AE3B7:E033| db $B0 ; play note C5
|1AE3B8:E034| db $2A, $6D ; duration, params
|1AE3BA:E036| db $AB ; play note G4
|1AE3BB:E037| db $06, $4D ; duration, params
|1AE3BD:E039| db $B0 ; play note C5
|1AE3BE:E03A| db $06, $5D ; duration, params
|1AE3C0:E03C| db $B0 ; play note C5
|1AE3C1:E03D| db $06, $4D ; duration, params
|1AE3C3:E03F| db $B2 ; play note D5
|1AE3C4:E040| db $06, $5D ; duration, params
|1AE3C6:E042| db $B4 ; play note E5
|1AE3C7:E043| db $06, $4D ; duration, params
|1AE3C9:E045| db $B5 ; play note F5
|1AE3CA:E046| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song22_Sub_E047:
|1AE3CB:E047| db $18, $4D ; duration, params
|1AE3CD:E049| db $A4 ; play note C4
|1AE3CE:E04A| db $2A, $6D ; duration, params
|1AE3D0:E04C| db $9F ; play note G3
|1AE3D1:E04D| db $06, $4D ; duration, params
|1AE3D3:E04F| db $A4 ; play note C4
|1AE3D4:E050| db $06, $5D ; duration, params
|1AE3D6:E052| db $A4 ; play note C4
|1AE3D7:E053| db $06, $4D ; duration, params
|1AE3D9:E055| db $A6 ; play note D4
|1AE3DA:E056| db $06, $5D ; duration, params
|1AE3DC:E058| db $A8 ; play note E4
|1AE3DD:E059| db $06, $4D ; duration, params
|1AE3DF:E05B| db $A9 ; play note F4
|1AE3E0:E05C| db $60, $6D ; duration, params
|1AE3E2:E05E| db $AB ; play note G4
|1AE3E3:E05F| db $00 ; End

site *

;===================================================================================================

SongBank_Credits_Auxiliary:
|1AE3E4| dw $1038, CREDITS_AUX_POINTER ; Transfer size, transfer address

site CREDITS_AUX_POINTER

Song21_EndingTheme:
|1AE3E8:2900| dw Song21_Segment0
|1AE3EA:2902| dw Song21_Segment1
|1AE3EC:2904| dw Song21_Segment2
|1AE3EE:2906| dw Song21_Segment3
|1AE3F0:2908| dw Song21_Segment4
|1AE3F2:290A| dw Song21_Segment5
|1AE3F4:290C| dw Song21_Segment6
|1AE3F6:290E| dw Song21_Segment7
|1AE3F8:2910| dw Song21_Segment8
|1AE3FA:2912| dw Song21_Segment9
|1AE3FC:2914| dw Song21_SegmentA
|1AE3FE:2916| dw Song21_SegmentB
|1AE400:2918| dw Song21_SegmentC
|1AE402:291A| dw Song21_SegmentD
|1AE404:291C| dw Song21_SegmentE
|1AE406:291E| dw $0000 ; Song end

Song21_Segment1:
|1AE408:2920| dw Song21_Segment1_Track0
|1AE40A:2922| dw Song21_Segment1_Track1
|1AE40C:2924| dw Song21_Segment1_Track2
|1AE40E:2926| dw Song21_Segment1_Track3
|1AE410:2928| dw Song21_Segment1_Track4
|1AE412:292A| dw Song21_Segment1_Track5
|1AE414:292C| dw Song21_Segment1_Track6
|1AE416:292E| dw Song21_Segment1_Track7

Song21_Segment2:
|1AE418:2930| dw $0000
|1AE41A:2932| dw $0000
|1AE41C:2934| dw Song21_Segment2_Track2
|1AE41E:2936| dw Song21_Segment2_Track3
|1AE420:2938| dw Song21_Segment2_Track4
|1AE422:293A| dw Song21_Segment2_Track5
|1AE424:293C| dw $0000
|1AE426:293E| dw $0000

Song21_Segment5:
|1AE428:2940| dw Song21_Segment5_Track0
|1AE42A:2942| dw Song21_Segment5_Track1
|1AE42C:2944| dw Song21_Segment5_Track2
|1AE42E:2946| dw Song21_Segment5_Track3
|1AE430:2948| dw Song21_Segment5_Track4
|1AE432:294A| dw $0000
|1AE434:294C| dw $0000
|1AE436:294E| dw $0000

Song21_Segment6:
|1AE438:2950| dw Song21_Segment6_Track0
|1AE43A:2952| dw Song21_Segment6_Track1
|1AE43C:2954| dw Song21_Segment6_Track2
|1AE43E:2956| dw Song21_Segment6_Track3
|1AE440:2958| dw Song21_Segment6_Track4
|1AE442:295A| dw $0000
|1AE444:295C| dw $0000
|1AE446:295E| dw $0000

Song21_Segment8:
|1AE448:2960| dw Song21_Segment8_Track0
|1AE44A:2962| dw Song21_Segment8_Track1
|1AE44C:2964| dw $0000
|1AE44E:2966| dw $0000
|1AE450:2968| dw $0000
|1AE452:296A| dw $0000
|1AE454:296C| dw $0000
|1AE456:296E| dw $0000

Song21_Segment9:
|1AE458:2970| dw Song21_Segment9_Track0
|1AE45A:2972| dw Song21_Segment9_Track1
|1AE45C:2974| dw Song21_Segment9_Track2
|1AE45E:2976| dw $0000
|1AE460:2978| dw $0000
|1AE462:297A| dw $0000
|1AE464:297C| dw $0000
|1AE466:297E| dw $0000

Song21_SegmentA:
|1AE468:2980| dw Song21_SegmentA_Track0
|1AE46A:2982| dw Song21_SegmentA_Track1
|1AE46C:2984| dw Song21_SegmentA_Track2
|1AE46E:2986| dw Song21_SegmentA_Track3
|1AE470:2988| dw $0000
|1AE472:298A| dw $0000
|1AE474:298C| dw $0000
|1AE476:298E| dw $0000

Song21_Segment0:
|1AE478:2990| dw Song21_Segment0_Track0
|1AE47A:2992| dw Song21_Segment0_Track1
|1AE47C:2994| dw Song21_Segment0_Track2
|1AE47E:2996| dw Song21_Segment0_Track3
|1AE480:2998| dw Song21_Segment0_Track4
|1AE482:299A| dw Song21_Segment0_Track5
|1AE484:299C| dw Song21_Segment0_Track6
|1AE486:299E| dw Song21_Segment0_Track7

Song21_SegmentD:
|1AE488:29A0| dw Song21_SegmentD_Track0
|1AE48A:29A2| dw Song21_SegmentD_Track1
|1AE48C:29A4| dw Song21_SegmentD_Track2
|1AE48E:29A6| dw Song21_SegmentD_Track3
|1AE490:29A8| dw Song21_SegmentD_Track4
|1AE492:29AA| dw $0000
|1AE494:29AC| dw $0000
|1AE496:29AE| dw $0000

Song21_SegmentE:
|1AE498:29B0| dw Song21_SegmentE_Track0
|1AE49A:29B2| dw Song21_SegmentE_Track1
|1AE49C:29B4| dw Song21_SegmentE_Track2
|1AE49E:29B6| dw Song21_SegmentE_Track3
|1AE4A0:29B8| dw Song21_SegmentE_Track4
|1AE4A2:29BA| dw Song21_SegmentE_Track5
|1AE4A4:29BC| dw Song21_SegmentE_Track6
|1AE4A6:29BE| dw Song21_SegmentE_Track7

Song21_Segment3:
|1AE4A8:29C0| dw Song21_Segment3_Track0
|1AE4AA:29C2| dw Song21_Segment3_Track1
|1AE4AC:29C4| dw Song21_Segment3_Track2
|1AE4AE:29C6| dw $0000
|1AE4B0:29C8| dw $0000
|1AE4B2:29CA| dw Song21_Segment3_Track5
|1AE4B4:29CC| dw $0000
|1AE4B6:29CE| dw $0000

Song21_Segment4:
|1AE4B8:29D0| dw Song21_Segment4_Track0
|1AE4BA:29D2| dw Song21_Segment4_Track1
|1AE4BC:29D4| dw Song21_Segment4_Track2
|1AE4BE:29D6| dw Song21_Segment4_Track3
|1AE4C0:29D8| dw Song21_Segment4_Track4
|1AE4C2:29DA| dw Song21_Segment4_Track5
|1AE4C4:29DC| dw Song21_Segment4_Track6
|1AE4C6:29DE| dw Song21_Segment4_Track7

Song21_Segment7:
|1AE4C8:29E0| dw Song21_Segment7_Track0
|1AE4CA:29E2| dw Song21_Segment7_Track1
|1AE4CC:29E4| dw Song21_Segment7_Track2
|1AE4CE:29E6| dw Song21_Segment7_Track3
|1AE4D0:29E8| dw Song21_Segment7_Track4
|1AE4D2:29EA| dw $0000
|1AE4D4:29EC| dw $0000
|1AE4D6:29EE| dw $0000

Song21_SegmentB:
|1AE4D8:29F0| dw Song21_SegmentB_Track0
|1AE4DA:29F2| dw Song21_SegmentB_Track1
|1AE4DC:29F4| dw Song21_SegmentB_Track2
|1AE4DE:29F6| dw Song21_SegmentB_Track3
|1AE4E0:29F8| dw Song21_SegmentB_Track4
|1AE4E2:29FA| dw Song21_SegmentB_Track5
|1AE4E4:29FC| dw $0000
|1AE4E6:29FE| dw $0000

Song21_SegmentC:
|1AE4E8:2A00| dw Song21_SegmentC_Track0
|1AE4EA:2A02| dw Song21_SegmentC_Track1
|1AE4EC:2A04| dw Song21_SegmentC_Track2
|1AE4EE:2A06| dw Song21_SegmentC_Track3
|1AE4F0:2A08| dw Song21_SegmentC_Track4
|1AE4F2:2A0A| dw Song21_SegmentC_Track5
|1AE4F4:2A0C| dw $0000
|1AE4F6:2A0E| dw $0000

Song21_Unused0:
|1AE4F8:2A10| dw Song21_Unused0_Track0
|1AE4FA:2A12| dw Song21_Unused0_Track1
|1AE4FC:2A14| dw Song21_Unused0_Track2
|1AE4FE:2A16| dw Song21_Unused0_Track3
|1AE500:2A18| dw Song21_Unused0_Track4
|1AE502:2A1A| dw Song21_Unused0_Track5
|1AE504:2A1C| dw Song21_Unused0_Track6
|1AE506:2A1E| dw Song21_Unused0_Track7

;---------------------------------------------------------------------------------------------------

Song21_Segment1_Track0:
|1AE508:2A20| db $E5, $C8 ; set song volume
|1AE50A:2A22| db $F5, $FF, $28, $28 ; configure EON, EVOLL, EVOLR
|1AE50E:2A26| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1AE512:2A2A| db $E7, $15 ; set song tempo
|1AE514:2A2C| db $E8, $5A, $1A ; initiate gradual tempo change
|1AE517:2A2F| db $E0, $12 ; set instrument - horn
|1AE519:2A31| db $ED, $C8 ; set channel volume
|1AE51B:2A33| db $E3, $12, $18, $16 ; enable vibrato
|1AE51F:2A37| db $E1, $0A ; set panning - balanced
|1AE521:2A39| db $EF : dw Song21_Sub_34F5 : db $01 ; call segment subroutine
|1AE525:2A3D| db $EF : dw Song21_Sub_3525 : db $01 ; call segment subroutine
|1AE529:2A41| db $18, $3D ; duration, params
|1AE52B:2A43| db $AD ; play note A4
|1AE52C:2A44| db $30, $6D ; duration, params
|1AE52E:2A46| db $B5 ; play note F5
|1AE52F:2A47| db $10, $3D ; duration, params
|1AE531:2A49| db $AD ; play note A4
|1AE532:2A4A| db $08 ; duration
|1AE533:2A4B| db $AD ; play note A4
|1AE534:2A4C| db $18 ; duration
|1AE535:2A4D| db $AF ; play note B4
|1AE536:2A4E| db $48, $5D ; duration, params
|1AE538:2A50| db $B7 ; play note G5
|1AE539:2A51| db $EE, $5A, $3C ; initiate gradual channel volume change
|1AE53C:2A54| db $60 ; duration
|1AE53D:2A55| db $C8 ; sustain current note
|1AE53E:2A56| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Segment1_Track1:
|1AE53F:2A57| db $E0, $0B ; set instrument - trombone
|1AE541:2A59| db $ED, $C8 ; set channel volume
|1AE543:2A5B| db $E3, $12, $18, $16 ; enable vibrato
|1AE547:2A5F| db $E1, $0C ; set panning - leaning left
|1AE549:2A61| db $EF : dw Song21_Sub_34F5 : db $01 ; call segment subroutine
|1AE54D:2A65| db $EF : dw Song21_Sub_3525 : db $01 ; call segment subroutine
|1AE551:2A69| db $18, $3D ; duration, params
|1AE553:2A6B| db $AD ; play note A4
|1AE554:2A6C| db $30, $6D ; duration, params
|1AE556:2A6E| db $B5 ; play note F5
|1AE557:2A6F| db $18, $3D ; duration, params
|1AE559:2A71| db $AD ; play note A4
|1AE55A:2A72| db $AF ; play note B4
|1AE55B:2A73| db $48, $5D ; duration, params
|1AE55D:2A75| db $B7 ; play note G5
|1AE55E:2A76| db $EE, $5A, $3C ; initiate gradual channel volume change
|1AE561:2A79| db $60 ; duration
|1AE562:2A7A| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_Segment1_Track2:
|1AE563:2A7B| db $E0, $09 ; set instrument - strings A
|1AE565:2A7D| db $ED, $DC ; set channel volume
|1AE567:2A7F| db $E3, $18, $1A, $1C ; enable vibrato
|1AE56B:2A83| db $E1, $06 ; set panning - leaning right
|1AE56D:2A85| db $18 ; duration
|1AE56E:2A86| db $C9 ; rest
|1AE56F:2A87| db $30, $7D ; duration, params
|1AE571:2A89| db $98 ; play note C3
|1AE572:2A8A| db $97 ; play note B2
|1AE573:2A8B| db $95 ; play note A2
|1AE574:2A8C| db $90 ; play note E2
|1AE575:2A8D| db $91 ; play note F2
|1AE576:2A8E| db $92 ; play note F#2
|1AE577:2A8F| db $93 ; play note G2
|1AE578:2A90| db $97 ; play note B2
|1AE579:2A91| db $98 ; play note C3
|1AE57A:2A92| db $97 ; play note B2
|1AE57B:2A93| db $95 ; play note A2
|1AE57C:2A94| db $90 ; play note E2
|1AE57D:2A95| db $60 ; duration
|1AE57E:2A96| db $91 ; play note F2
|1AE57F:2A97| db $48 ; duration
|1AE580:2A98| db $93 ; play note G2
|1AE581:2A99| db $10 ; duration
|1AE582:2A9A| db $8C ; play note C2
|1AE583:2A9B| db $08 ; duration
|1AE584:2A9C| db $8C ; play note C2
|1AE585:2A9D| db $48 ; duration
|1AE586:2A9E| db $8C ; play note C2
|1AE587:2A9F| db $06 ; duration
|1AE588:2AA0| db $8C ; play note C2
|1AE589:2AA1| db $8C ; play note C2
|1AE58A:2AA2| db $8C ; play note C2
|1AE58B:2AA3| db $8C ; play note C2

;---------------------------------------------------------------------------------------------------

Song21_Segment1_Track3:
|1AE58C:2AA4| db $E0, $0B ; set instrument - trombone
|1AE58E:2AA6| db $ED, $B4 ; set channel volume
|1AE590:2AA8| db $E3, $12, $18, $16 ; enable vibrato
|1AE594:2AAC| db $E1, $08 ; set panning - leaning right
|1AE596:2AAE| db $EF : dw Song21_Sub_3557 : db $01 ; call segment subroutine
|1AE59A:2AB2| db $EF : dw Song21_Sub_3587 : db $01 ; call segment subroutine
|1AE59E:2AB6| db $18, $3D ; duration, params
|1AE5A0:2AB8| db $A4 ; play note C4
|1AE5A1:2AB9| db $30, $6D ; duration, params
|1AE5A3:2ABB| db $AD ; play note A4
|1AE5A4:2ABC| db $18, $3D ; duration, params
|1AE5A6:2ABE| db $A4 ; play note C4
|1AE5A7:2ABF| db $A6 ; play note D4
|1AE5A8:2AC0| db $48, $5D ; duration, params
|1AE5AA:2AC2| db $AF ; play note B4
|1AE5AB:2AC3| db $EE, $5A, $3C ; initiate gradual channel volume change
|1AE5AE:2AC6| db $60 ; duration
|1AE5AF:2AC7| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_Segment1_Track4:
|1AE5B0:2AC8| db $E0, $0A ; set instrument - strings B
|1AE5B2:2ACA| db $ED, $8C ; set channel volume
|1AE5B4:2ACC| db $E3, $18, $1A, $1C ; enable vibrato
|1AE5B8:2AD0| db $E1, $10 ; set panning - leaning left
|1AE5BA:2AD2| db $EF : dw Song21_Sub_35B9 : db $01 ; call segment subroutine
|1AE5BE:2AD6| db $EF : dw Song21_Sub_35C0 : db $01 ; call segment subroutine
|1AE5C2:2ADA| db $60 ; duration
|1AE5C3:2ADB| db $A4 ; play note C4
|1AE5C4:2ADC| db $48 ; duration
|1AE5C5:2ADD| db $A6 ; play note D4
|1AE5C6:2ADE| db $10 ; duration
|1AE5C7:2ADF| db $A4 ; play note C4
|1AE5C8:2AE0| db $08 ; duration
|1AE5C9:2AE1| db $A4 ; play note C4
|1AE5CA:2AE2| db $48 ; duration
|1AE5CB:2AE3| db $A4 ; play note C4
|1AE5CC:2AE4| db $06 ; duration
|1AE5CD:2AE5| db $A4 ; play note C4
|1AE5CE:2AE6| db $A4 ; play note C4
|1AE5CF:2AE7| db $A4 ; play note C4
|1AE5D0:2AE8| db $A4 ; play note C4

;---------------------------------------------------------------------------------------------------

Song21_Segment1_Track5:
|1AE5D1:2AE9| db $ED, $A0 ; set channel volume
|1AE5D3:2AEB| db $E0, $0A ; set instrument - strings B
|1AE5D5:2AED| db $E3, $18, $1A, $1C ; enable vibrato
|1AE5D9:2AF1| db $E1, $0A ; set panning - balanced
|1AE5DB:2AF3| db $18 ; duration
|1AE5DC:2AF4| db $C9 ; rest
|1AE5DD:2AF5| db $EF : dw Song21_Sub_35CB : db $01 ; call segment subroutine
|1AE5E1:2AF9| db $C9 ; rest
|1AE5E2:2AFA| db $48, $7D ; duration, params
|1AE5E4:2AFC| db $9C ; play note E3
|1AE5E5:2AFD| db $06 ; duration
|1AE5E6:2AFE| db $9C ; play note E3
|1AE5E7:2AFF| db $9C ; play note E3
|1AE5E8:2B00| db $9C ; play note E3
|1AE5E9:2B01| db $9C ; play note E3

;---------------------------------------------------------------------------------------------------

Song21_Segment1_Track6:
|1AE5EA:2B02| db $E0, $02 ; set instrument - timpani
|1AE5EC:2B04| db $ED, $C8 ; set channel volume
|1AE5EE:2B06| db $E1, $0D ; set panning - leaning left
|1AE5F0:2B08| db $18 ; duration
|1AE5F1:2B09| db $C9 ; rest
|1AE5F2:2B0A| db $EF : dw Song21_Sub_35D4 : db $01 ; call segment subroutine
|1AE5F6:2B0E| db $60 ; duration
|1AE5F7:2B0F| db $89 ; play note A1
|1AE5F8:2B10| db $E0, $0C ; set instrument - cymbal
|1AE5FA:2B12| db $0C, $79 ; duration, params
|1AE5FC:2B14| db $96 ; play note A#2
|1AE5FD:2B15| db $96 ; play note A#2
|1AE5FE:2B16| db $0C, $7A ; duration, params
|1AE600:2B18| db $96 ; play note A#2
|1AE601:2B19| db $96 ; play note A#2
|1AE602:2B1A| db $0C, $7B ; duration, params
|1AE604:2B1C| db $96 ; play note A#2
|1AE605:2B1D| db $0C, $7C ; duration, params
|1AE607:2B1F| db $96 ; play note A#2
|1AE608:2B20| db $0C, $7D ; duration, params
|1AE60A:2B22| db $96 ; play note A#2
|1AE60B:2B23| db $0C, $7E ; duration, params
|1AE60D:2B25| db $96 ; play note A#2
|1AE60E:2B26| db $E0, $02 ; set instrument - timpani
|1AE610:2B28| db $EF : dw Song21_Sub_35D4 : db $01 ; call segment subroutine
|1AE614:2B2C| db $89 ; play note A1
|1AE615:2B2D| db $89 ; play note A1
|1AE616:2B2E| db $89 ; play note A1
|1AE617:2B2F| db $89 ; play note A1
|1AE618:2B30| db $60 ; duration
|1AE619:2B31| db $89 ; play note A1

;---------------------------------------------------------------------------------------------------

Song21_Segment1_Track7:
|1AE61A:2B32| db $E0, $0C ; set instrument - cymbal
|1AE61C:2B34| db $ED, $C8 ; set channel volume
|1AE61E:2B36| db $E1, $0D ; set panning - leaning left
|1AE620:2B38| db $EF : dw Song21_Sub_35B9 : db $01 ; call segment subroutine
|1AE624:2B3C| db $06, $79 ; duration, params
|1AE626:2B3E| db $96 ; play note A#2
|1AE627:2B3F| db $0C ; duration
|1AE628:2B40| db $96 ; play note A#2
|1AE629:2B41| db $0C, $7A ; duration, params
|1AE62B:2B43| db $96 ; play note A#2
|1AE62C:2B44| db $96 ; play note A#2
|1AE62D:2B45| db $0C, $7B ; duration, params
|1AE62F:2B47| db $96 ; play note A#2
|1AE630:2B48| db $0C, $7C ; duration, params
|1AE632:2B4A| db $96 ; play note A#2
|1AE633:2B4B| db $0C, $7D ; duration, params
|1AE635:2B4D| db $96 ; play note A#2
|1AE636:2B4E| db $12, $7F ; duration, params
|1AE638:2B50| db $96 ; play note A#2
|1AE639:2B51| db $30, $7D ; duration, params
|1AE63B:2B53| db $96 ; play note A#2
|1AE63C:2B54| db $96 ; play note A#2
|1AE63D:2B55| db $60 ; duration
|1AE63E:2B56| db $96 ; play note A#2
|1AE63F:2B57| db $96 ; play note A#2
|1AE640:2B58| db $96 ; play note A#2
|1AE641:2B59| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song21_Segment2_Track2:
|1AE642:2B5A| db $56, $7D ; duration, params
|1AE644:2B5C| db $8C ; play note C2
|1AE645:2B5D| db $60 ; duration
|1AE646:2B5E| db $8C ; play note C2
|1AE647:2B5F| db $8C ; play note C2
|1AE648:2B60| db $8C ; play note C2
|1AE649:2B61| db $8C ; play note C2
|1AE64A:2B62| db $8C ; play note C2
|1AE64B:2B63| db $6A ; duration
|1AE64C:2B64| db $8C ; play note C2
|1AE64D:2B65| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Segment2_Track3:
|1AE64E:2B66| db $ED, $A0 ; set channel volume
|1AE650:2B68| db $E0, $0A ; set instrument - strings B
|1AE652:2B6A| db $E3, $18, $1A, $1C ; enable vibrato
|1AE656:2B6E| db $EF : dw Song21_Sub_35DB : db $01 ; call segment subroutine
|1AE65A:2B72| db $48 ; duration
|1AE65B:2B73| db $C9 ; rest
|1AE65C:2B74| db $06, $7D ; duration, params
|1AE65E:2B76| db $A8 ; play note E4
|1AE65F:2B77| db $A8 ; play note E4
|1AE660:2B78| db $A8 ; play note E4
|1AE661:2B79| db $A8 ; play note E4
|1AE662:2B7A| db $48 ; duration
|1AE663:2B7B| db $A8 ; play note E4
|1AE664:2B7C| db $06 ; duration
|1AE665:2B7D| db $A8 ; play note E4
|1AE666:2B7E| db $A8 ; play note E4
|1AE667:2B7F| db $A8 ; play note E4
|1AE668:2B80| db $A8 ; play note E4
|1AE669:2B81| db $48 ; duration
|1AE66A:2B82| db $A9 ; play note F4
|1AE66B:2B83| db $06 ; duration
|1AE66C:2B84| db $A9 ; play note F4
|1AE66D:2B85| db $A9 ; play note F4
|1AE66E:2B86| db $A9 ; play note F4
|1AE66F:2B87| db $A9 ; play note F4
|1AE670:2B88| db $48 ; duration
|1AE671:2B89| db $AC ; play note G#4
|1AE672:2B8A| db $08 ; duration
|1AE673:2B8B| db $AC ; play note G#4
|1AE674:2B8C| db $AB ; play note G4
|1AE675:2B8D| db $A9 ; play note F4
|1AE676:2B8E| db $60 ; duration
|1AE677:2B8F| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song21_Segment2_Track4:
|1AE678:2B90| db $48, $7D ; duration, params
|1AE67A:2B92| db $A4 ; play note C4
|1AE67B:2B93| db $06 ; duration
|1AE67C:2B94| db $A4 ; play note C4
|1AE67D:2B95| db $A4 ; play note C4
|1AE67E:2B96| db $A4 ; play note C4
|1AE67F:2B97| db $A4 ; play note C4
|1AE680:2B98| db $48 ; duration
|1AE681:2B99| db $A4 ; play note C4
|1AE682:2B9A| db $08 ; duration
|1AE683:2B9B| db $A4 ; play note C4
|1AE684:2B9C| db $A4 ; play note C4
|1AE685:2B9D| db $A4 ; play note C4
|1AE686:2B9E| db $EF : dw Song21_Sub_35DF : db $03 ; call segment subroutine
|1AE68A:2BA2| db $48 ; duration
|1AE68B:2BA3| db $A4 ; play note C4
|1AE68C:2BA4| db $08 ; duration
|1AE68D:2BA5| db $A4 ; play note C4
|1AE68E:2BA6| db $A4 ; play note C4
|1AE68F:2BA7| db $A4 ; play note C4
|1AE690:2BA8| db $48 ; duration
|1AE691:2BA9| db $A4 ; play note C4
|1AE692:2BAA| db $06 ; duration
|1AE693:2BAB| db $A4 ; play note C4
|1AE694:2BAC| db $A4 ; play note C4
|1AE695:2BAD| db $A4 ; play note C4
|1AE696:2BAE| db $A4 ; play note C4

;---------------------------------------------------------------------------------------------------

Song21_Segment2_Track5:
|1AE697:2BAF| db $ED, $A0 ; set channel volume
|1AE699:2BB1| db $E0, $0A ; set instrument - strings B
|1AE69B:2BB3| db $E3, $18, $1A, $1C ; enable vibrato
|1AE69F:2BB7| db $48, $7D ; duration, params
|1AE6A1:2BB9| db $9D ; play note F3
|1AE6A2:2BBA| db $06 ; duration
|1AE6A3:2BBB| db $9D ; play note F3
|1AE6A4:2BBC| db $9D ; play note F3
|1AE6A5:2BBD| db $9D ; play note F3
|1AE6A6:2BBE| db $9D ; play note F3
|1AE6A7:2BBF| db $48 ; duration
|1AE6A8:2BC0| db $A0 ; play note G#3
|1AE6A9:2BC1| db $08 ; duration
|1AE6AA:2BC2| db $A0 ; play note G#3
|1AE6AB:2BC3| db $9F ; play note G3
|1AE6AC:2BC4| db $9D ; play note F3
|1AE6AD:2BC5| db $48 ; duration
|1AE6AE:2BC6| db $9F ; play note G3
|1AE6AF:2BC7| db $06 ; duration
|1AE6B0:2BC8| db $9C ; play note E3
|1AE6B1:2BC9| db $9C ; play note E3
|1AE6B2:2BCA| db $9C ; play note E3
|1AE6B3:2BCB| db $9C ; play note E3
|1AE6B4:2BCC| db $48 ; duration
|1AE6B5:2BCD| db $9C ; play note E3
|1AE6B6:2BCE| db $06 ; duration
|1AE6B7:2BCF| db $9C ; play note E3
|1AE6B8:2BD0| db $9C ; play note E3
|1AE6B9:2BD1| db $9C ; play note E3
|1AE6BA:2BD2| db $9C ; play note E3
|1AE6BB:2BD3| db $48 ; duration
|1AE6BC:2BD4| db $9D ; play note F3
|1AE6BD:2BD5| db $06 ; duration
|1AE6BE:2BD6| db $9D ; play note F3
|1AE6BF:2BD7| db $9D ; play note F3
|1AE6C0:2BD8| db $9D ; play note F3
|1AE6C1:2BD9| db $9D ; play note F3
|1AE6C2:2BDA| db $48 ; duration
|1AE6C3:2BDB| db $A0 ; play note G#3
|1AE6C4:2BDC| db $08 ; duration
|1AE6C5:2BDD| db $A0 ; play note G#3
|1AE6C6:2BDE| db $9F ; play note G3
|1AE6C7:2BDF| db $9D ; play note F3
|1AE6C8:2BE0| db $48 ; duration
|1AE6C9:2BE1| db $9F ; play note G3
|1AE6CA:2BE2| db $E1, $0E ; set panning - leaning left
|1AE6CC:2BE4| db $08, $4D ; duration, params
|1AE6CE:2BE6| db $AB ; play note G4
|1AE6CF:2BE7| db $C9 ; rest
|1AE6D0:2BE8| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song21_Segment5_Track0:
|1AE6D1:2BE9| db $E8, $5A, $1A ; initiate gradual tempo change
|1AE6D4:2BEC| db $E0, $0A ; set instrument - strings B
|1AE6D6:2BEE| db $ED, $C8 ; set channel volume
|1AE6D8:2BF0| db $E3, $12, $18, $16 ; enable vibrato
|1AE6DC:2BF4| db $E1, $0E ; set panning - leaning left
|1AE6DE:2BF6| db $EF : dw Song21_Sub_34F5 : db $01 ; call segment subroutine
|1AE6E2:2BFA| db $EF : dw Song21_Sub_3525 : db $01 ; call segment subroutine
|1AE6E6:2BFE| db $18, $3D ; duration, params
|1AE6E8:2C00| db $AD ; play note A4
|1AE6E9:2C01| db $18, $6D ; duration, params
|1AE6EB:2C03| db $B5 ; play note F5
|1AE6EC:2C04| db $18, $3D ; duration, params
|1AE6EE:2C06| db $B2 ; play note D5
|1AE6EF:2C07| db $08 ; duration
|1AE6F0:2C08| db $B2 ; play note D5
|1AE6F1:2C09| db $B0 ; play note C5
|1AE6F2:2C0A| db $AF ; play note B4
|1AE6F3:2C0B| db $48, $6D ; duration, params
|1AE6F5:2C0D| db $B0 ; play note C5
|1AE6F6:2C0E| db $10, $5D ; duration, params
|1AE6F8:2C10| db $B0 ; play note C5
|1AE6F9:2C11| db $08 ; duration
|1AE6FA:2C12| db $AF ; play note B4
|1AE6FB:2C13| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Segment5_Track1:
|1AE6FC:2C14| db $E0, $0A ; set instrument - strings B
|1AE6FE:2C16| db $ED, $A0 ; set channel volume
|1AE700:2C18| db $E3, $12, $18, $16 ; enable vibrato
|1AE704:2C1C| db $E1, $0C ; set panning - leaning left
|1AE706:2C1E| db $08 ; duration
|1AE707:2C1F| db $C9 ; rest
|1AE708:2C20| db $10, $3D ; duration, params
|1AE70A:2C22| db $AB ; play note G4
|1AE70B:2C23| db $08, $5D ; duration, params
|1AE70D:2C25| db $AB ; play note G4
|1AE70E:2C26| db $EF : dw Song21_Sub_35E7 : db $01 ; call segment subroutine
|1AE712:2C2A| db $EF : dw Song21_Sub_3525 : db $01 ; call segment subroutine
|1AE716:2C2E| db $18, $3D ; duration, params
|1AE718:2C30| db $AD ; play note A4
|1AE719:2C31| db $18, $6D ; duration, params
|1AE71B:2C33| db $B5 ; play note F5
|1AE71C:2C34| db $18, $3D ; duration, params
|1AE71E:2C36| db $B2 ; play note D5
|1AE71F:2C37| db $08 ; duration
|1AE720:2C38| db $B2 ; play note D5
|1AE721:2C39| db $08, $5D ; duration, params
|1AE723:2C3B| db $B0 ; play note C5
|1AE724:2C3C| db $AF ; play note B4
|1AE725:2C3D| db $48 ; duration
|1AE726:2C3E| db $B0 ; play note C5
|1AE727:2C3F| db $10 ; duration
|1AE728:2C40| db $B0 ; play note C5

;---------------------------------------------------------------------------------------------------

Song21_Segment5_Track2:
|1AE729:2C41| db $E0, $09 ; set instrument - strings A
|1AE72B:2C43| db $ED, $DC ; set channel volume
|1AE72D:2C45| db $E3, $18, $1A, $1C ; enable vibrato
|1AE731:2C49| db $E1, $02 ; set panning - leaning right
|1AE733:2C4B| db $18 ; duration
|1AE734:2C4C| db $C9 ; rest
|1AE735:2C4D| db $30, $7D ; duration, params
|1AE737:2C4F| db $98 ; play note C3
|1AE738:2C50| db $97 ; play note B2
|1AE739:2C51| db $95 ; play note A2
|1AE73A:2C52| db $90 ; play note E2
|1AE73B:2C53| db $91 ; play note F2
|1AE73C:2C54| db $92 ; play note F#2
|1AE73D:2C55| db $93 ; play note G2
|1AE73E:2C56| db $97 ; play note B2
|1AE73F:2C57| db $98 ; play note C3
|1AE740:2C58| db $97 ; play note B2
|1AE741:2C59| db $95 ; play note A2
|1AE742:2C5A| db $90 ; play note E2
|1AE743:2C5B| db $91 ; play note F2
|1AE744:2C5C| db $93 ; play note G2
|1AE745:2C5D| db $60 ; duration
|1AE746:2C5E| db $8C ; play note C2

;---------------------------------------------------------------------------------------------------

Song21_Segment5_Track3:
|1AE747:2C5F| db $E0, $0A ; set instrument - strings B
|1AE749:2C61| db $ED, $B4 ; set channel volume
|1AE74B:2C63| db $E3, $12, $18, $16 ; enable vibrato
|1AE74F:2C67| db $E1, $08 ; set panning - leaning right
|1AE751:2C69| db $EF : dw Song21_Sub_3557 : db $01 ; call segment subroutine
|1AE755:2C6D| db $EF : dw Song21_Sub_3587 : db $01 ; call segment subroutine
|1AE759:2C71| db $EF : dw Song21_Sub_3611 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song21_Segment5_Track4:
|1AE75D:2C75| db $E0, $0A ; set instrument - strings B
|1AE75F:2C77| db $ED, $8C ; set channel volume
|1AE761:2C79| db $E3, $18, $1A, $1C ; enable vibrato
|1AE765:2C7D| db $E1, $0A ; set panning - balanced
|1AE767:2C7F| db $EF : dw Song21_Sub_35B9 : db $01 ; call segment subroutine
|1AE76B:2C83| db $EF : dw Song21_Sub_35C0 : db $01 ; call segment subroutine
|1AE76F:2C87| db $A9 ; play note F4
|1AE770:2C88| db $A6 ; play note D4
|1AE771:2C89| db $60 ; duration
|1AE772:2C8A| db $A4 ; play note C4

;---------------------------------------------------------------------------------------------------

Song21_Segment6_Track0:
|1AE773:2C8B| db $E0, $0A ; set instrument - strings B
|1AE775:2C8D| db $ED, $C8 ; set channel volume
|1AE777:2C8F| db $E1, $0E ; set panning - leaning left
|1AE779:2C91| db $48, $5D ; duration, params
|1AE77B:2C93| db $AD ; play note A4
|1AE77C:2C94| db $10, $3D ; duration, params
|1AE77E:2C96| db $AF ; play note B4
|1AE77F:2C97| db $08, $5D ; duration, params
|1AE781:2C99| db $B0 ; play note C5
|1AE782:2C9A| db $EF : dw Song21_Sub_3623 : db $01 ; call segment subroutine
|1AE786:2C9E| db $30, $7D ; duration, params
|1AE788:2CA0| db $B2 ; play note D5
|1AE789:2CA1| db $18, $5D ; duration, params
|1AE78B:2CA3| db $B0 ; play note C5
|1AE78C:2CA4| db $08, $3D ; duration, params
|1AE78E:2CA6| db $B0 ; play note C5
|1AE78F:2CA7| db $AF ; play note B4
|1AE790:2CA8| db $B0 ; play note C5
|1AE791:2CA9| db $E8, $3C, $15 ; initiate gradual tempo change
|1AE794:2CAC| db $48, $7D ; duration, params
|1AE796:2CAE| db $B2 ; play note D5
|1AE797:2CAF| db $10, $5D ; duration, params
|1AE799:2CB1| db $AB ; play note G4
|1AE79A:2CB2| db $08 ; duration
|1AE79B:2CB3| db $AB ; play note G4
|1AE79C:2CB4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Segment6_Track1:
|1AE79D:2CB5| db $08 ; duration
|1AE79E:2CB6| db $C9 ; rest
|1AE79F:2CB7| db $48, $5D ; duration, params
|1AE7A1:2CB9| db $AD ; play note A4
|1AE7A2:2CBA| db $10, $3D ; duration, params
|1AE7A4:2CBC| db $AF ; play note B4
|1AE7A5:2CBD| db $08, $5D ; duration, params
|1AE7A7:2CBF| db $B0 ; play note C5
|1AE7A8:2CC0| db $EF : dw Song21_Sub_3623 : db $01 ; call segment subroutine
|1AE7AC:2CC4| db $30, $6D ; duration, params
|1AE7AE:2CC6| db $B2 ; play note D5
|1AE7AF:2CC7| db $18, $5D ; duration, params
|1AE7B1:2CC9| db $B0 ; play note C5
|1AE7B2:2CCA| db $08, $3D ; duration, params
|1AE7B4:2CCC| db $B0 ; play note C5
|1AE7B5:2CCD| db $AF ; play note B4
|1AE7B6:2CCE| db $B0 ; play note C5
|1AE7B7:2CCF| db $48, $7D ; duration, params
|1AE7B9:2CD1| db $B2 ; play note D5
|1AE7BA:2CD2| db $10, $5D ; duration, params
|1AE7BC:2CD4| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song21_Segment6_Track2:
|1AE7BD:2CD5| db $E0, $09 ; set instrument - strings A
|1AE7BF:2CD7| db $ED, $DC ; set channel volume
|1AE7C1:2CD9| db $E3, $18, $1A, $1C ; enable vibrato
|1AE7C5:2CDD| db $E1, $02 ; set panning - leaning right
|1AE7C7:2CDF| db $30, $7D ; duration, params
|1AE7C9:2CE1| db $91 ; play note F2
|1AE7CA:2CE2| db $91 ; play note F2
|1AE7CB:2CE3| db $90 ; play note E2
|1AE7CC:2CE4| db $90 ; play note E2
|1AE7CD:2CE5| db $8E ; play note D2
|1AE7CE:2CE6| db $93 ; play note G2
|1AE7CF:2CE7| db $8C ; play note C2
|1AE7D0:2CE8| db $18 ; duration
|1AE7D1:2CE9| db $8C ; play note C2
|1AE7D2:2CEA| db $90 ; play note E2
|1AE7D3:2CEB| db $30 ; duration
|1AE7D4:2CEC| db $91 ; play note F2
|1AE7D5:2CED| db $91 ; play note F2
|1AE7D6:2CEE| db $90 ; play note E2
|1AE7D7:2CEF| db $90 ; play note E2
|1AE7D8:2CF0| db $8E ; play note D2
|1AE7D9:2CF1| db $8E ; play note D2
|1AE7DA:2CF2| db $93 ; play note G2
|1AE7DB:2CF3| db $18 ; duration
|1AE7DC:2CF4| db $93 ; play note G2
|1AE7DD:2CF5| db $97 ; play note B2

;---------------------------------------------------------------------------------------------------

Song21_Segment6_Track3:
|1AE7DE:2CF6| db $48, $5D ; duration, params
|1AE7E0:2CF8| db $A4 ; play note C4
|1AE7E1:2CF9| db $10, $3D ; duration, params
|1AE7E3:2CFB| db $A6 ; play note D4
|1AE7E4:2CFC| db $08, $5D ; duration, params
|1AE7E6:2CFE| db $A8 ; play note E4
|1AE7E7:2CFF| db $48, $7D ; duration, params
|1AE7E9:2D01| db $A3 ; play note B3
|1AE7EA:2D02| db $10 ; duration
|1AE7EB:2D03| db $A3 ; play note B3
|1AE7EC:2D04| db $08, $4D ; duration, params
|1AE7EE:2D06| db $A3 ; play note B3
|1AE7EF:2D07| db $48, $6D ; duration, params
|1AE7F1:2D09| db $A1 ; play note A3
|1AE7F2:2D0A| db $10, $3D ; duration, params
|1AE7F4:2D0C| db $A3 ; play note B3
|1AE7F5:2D0D| db $08, $6D ; duration, params
|1AE7F7:2D0F| db $A4 ; play note C4
|1AE7F8:2D10| db $48 ; duration
|1AE7F9:2D11| db $9F ; play note G3
|1AE7FA:2D12| db $10, $3D ; duration, params
|1AE7FC:2D14| db $A8 ; play note E4
|1AE7FD:2D15| db $08, $5D ; duration, params
|1AE7FF:2D17| db $A6 ; play note D4
|1AE800:2D18| db $48 ; duration
|1AE801:2D19| db $A4 ; play note C4
|1AE802:2D1A| db $10, $3D ; duration, params
|1AE804:2D1C| db $A6 ; play note D4
|1AE805:2D1D| db $08, $5D ; duration, params
|1AE807:2D1F| db $A8 ; play note E4
|1AE808:2D20| db $48, $7D ; duration, params
|1AE80A:2D22| db $A3 ; play note B3
|1AE80B:2D23| db $10, $4D ; duration, params
|1AE80D:2D25| db $A8 ; play note E4
|1AE80E:2D26| db $08 ; duration
|1AE80F:2D27| db $A8 ; play note E4
|1AE810:2D28| db $30, $7D ; duration, params
|1AE812:2D2A| db $A9 ; play note F4
|1AE813:2D2B| db $18, $5D ; duration, params
|1AE815:2D2D| db $A8 ; play note E4
|1AE816:2D2E| db $08, $3D ; duration, params
|1AE818:2D30| db $A8 ; play note E4
|1AE819:2D31| db $A6 ; play note D4
|1AE81A:2D32| db $A8 ; play note E4
|1AE81B:2D33| db $48, $7D ; duration, params
|1AE81D:2D35| db $A9 ; play note F4
|1AE81E:2D36| db $10, $3D ; duration, params
|1AE820:2D38| db $A3 ; play note B3
|1AE821:2D39| db $08, $6D ; duration, params
|1AE823:2D3B| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song21_Segment6_Track4:
|1AE824:2D3C| db $E0, $09 ; set instrument - strings A
|1AE826:2D3E| db $ED, $B4 ; set channel volume
|1AE828:2D40| db $E3, $18, $1A, $1C ; enable vibrato
|1AE82C:2D44| db $E1, $08 ; set panning - leaning right
|1AE82E:2D46| db $0C, $7D ; duration, params
|1AE830:2D48| db $A4 ; play note C4
|1AE831:2D49| db $A4 ; play note C4
|1AE832:2D4A| db $A4 ; play note C4
|1AE833:2D4B| db $A4 ; play note C4
|1AE834:2D4C| db $A4 ; play note C4
|1AE835:2D4D| db $A4 ; play note C4
|1AE836:2D4E| db $A4 ; play note C4
|1AE837:2D4F| db $A4 ; play note C4
|1AE838:2D50| db $A3 ; play note B3
|1AE839:2D51| db $A3 ; play note B3
|1AE83A:2D52| db $A3 ; play note B3
|1AE83B:2D53| db $A3 ; play note B3
|1AE83C:2D54| db $A3 ; play note B3
|1AE83D:2D55| db $A3 ; play note B3
|1AE83E:2D56| db $A3 ; play note B3
|1AE83F:2D57| db $A3 ; play note B3
|1AE840:2D58| db $A1 ; play note A3
|1AE841:2D59| db $A1 ; play note A3
|1AE842:2D5A| db $A1 ; play note A3
|1AE843:2D5B| db $A1 ; play note A3
|1AE844:2D5C| db $A3 ; play note B3
|1AE845:2D5D| db $A3 ; play note B3
|1AE846:2D5E| db $A3 ; play note B3
|1AE847:2D5F| db $A3 ; play note B3
|1AE848:2D60| db $9F ; play note G3
|1AE849:2D61| db $9F ; play note G3
|1AE84A:2D62| db $9F ; play note G3
|1AE84B:2D63| db $9F ; play note G3
|1AE84C:2D64| db $9F ; play note G3
|1AE84D:2D65| db $9F ; play note G3
|1AE84E:2D66| db $9F ; play note G3
|1AE84F:2D67| db $9F ; play note G3
|1AE850:2D68| db $A4 ; play note C4
|1AE851:2D69| db $A4 ; play note C4
|1AE852:2D6A| db $A4 ; play note C4
|1AE853:2D6B| db $A4 ; play note C4
|1AE854:2D6C| db $A4 ; play note C4
|1AE855:2D6D| db $A4 ; play note C4
|1AE856:2D6E| db $A4 ; play note C4
|1AE857:2D6F| db $A4 ; play note C4
|1AE858:2D70| db $A3 ; play note B3
|1AE859:2D71| db $A3 ; play note B3
|1AE85A:2D72| db $A3 ; play note B3
|1AE85B:2D73| db $A3 ; play note B3
|1AE85C:2D74| db $A3 ; play note B3
|1AE85D:2D75| db $A3 ; play note B3
|1AE85E:2D76| db $A3 ; play note B3
|1AE85F:2D77| db $A3 ; play note B3
|1AE860:2D78| db $A1 ; play note A3
|1AE861:2D79| db $A1 ; play note A3
|1AE862:2D7A| db $A1 ; play note A3
|1AE863:2D7B| db $A1 ; play note A3
|1AE864:2D7C| db $A1 ; play note A3
|1AE865:2D7D| db $A1 ; play note A3
|1AE866:2D7E| db $A1 ; play note A3
|1AE867:2D7F| db $A1 ; play note A3
|1AE868:2D80| db $A3 ; play note B3
|1AE869:2D81| db $A3 ; play note B3
|1AE86A:2D82| db $A3 ; play note B3
|1AE86B:2D83| db $A3 ; play note B3
|1AE86C:2D84| db $A3 ; play note B3
|1AE86D:2D85| db $A3 ; play note B3
|1AE86E:2D86| db $18 ; duration
|1AE86F:2D87| db $9D ; play note F3

;---------------------------------------------------------------------------------------------------

Song21_Segment8_Track0:
|1AE870:2D88| db $E5, $64 ; set song volume
|1AE872:2D8A| db $E6, $5A, $C8 ; initiate gradual song volume change
|1AE875:2D8D| db $E0, $0A ; set instrument - strings B
|1AE877:2D8F| db $ED, $64 ; set channel volume
|1AE879:2D91| db $E1, $0E ; set panning - leaning left
|1AE87B:2D93| db $EF : dw Song21_Sub_364D : db $01 ; call segment subroutine
|1AE87F:2D97| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Segment8_Track1:
|1AE880:2D98| db $E0, $0A ; set instrument - strings B
|1AE882:2D9A| db $ED, $64 ; set channel volume
|1AE884:2D9C| db $E1, $0C ; set panning - leaning left
|1AE886:2D9E| db $EF : dw Song21_Sub_3670 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song21_Segment9_Track0:
|1AE88A:2DA2| db $EF : dw Song21_Sub_364D : db $01 ; call segment subroutine
|1AE88E:2DA6| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Segment9_Track1:
|1AE88F:2DA7| db $EF : dw Song21_Sub_3670 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song21_Segment9_Track2:
|1AE893:2DAB| db $EF : dw Song21_Sub_3693 : db $01 ; call segment subroutine
|1AE897:2DAF| db $60 ; duration
|1AE898:2DB0| db $A9 ; play note F4
|1AE899:2DB1| db $48 ; duration
|1AE89A:2DB2| db $A6 ; play note D4
|1AE89B:2DB3| db $10 ; duration
|1AE89C:2DB4| db $A3 ; play note B3
|1AE89D:2DB5| db $08 ; duration
|1AE89E:2DB6| db $9F ; play note G3
|1AE89F:2DB7| db $60 ; duration
|1AE8A0:2DB8| db $A8 ; play note E4

;---------------------------------------------------------------------------------------------------

Song21_SegmentA_Track0:
|1AE8A1:2DB9| db $EF : dw Song21_Sub_364D : db $01 ; call segment subroutine
|1AE8A5:2DBD| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_SegmentA_Track1:
|1AE8A6:2DBE| db $EF : dw Song21_Sub_3670 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song21_SegmentA_Track2:
|1AE8AA:2DC2| db $EF : dw Song21_Sub_3693 : db $01 ; call segment subroutine
|1AE8AE:2DC6| db $60 ; duration
|1AE8AF:2DC7| db $A9 ; play note F4
|1AE8B0:2DC8| db $48 ; duration
|1AE8B1:2DC9| db $A6 ; play note D4
|1AE8B2:2DCA| db $10 ; duration
|1AE8B3:2DCB| db $A3 ; play note B3
|1AE8B4:2DCC| db $08 ; duration
|1AE8B5:2DCD| db $9F ; play note G3
|1AE8B6:2DCE| db $48 ; duration
|1AE8B7:2DCF| db $A8 ; play note E4
|1AE8B8:2DD0| db $18 ; duration
|1AE8B9:2DD1| db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song21_SegmentA_Track3:
|1AE8BA:2DD2| db $E0, $09 ; set instrument - strings A
|1AE8BC:2DD4| db $ED, $C8 ; set channel volume
|1AE8BE:2DD6| db $E3, $18, $1A, $1C ; enable vibrato
|1AE8C2:2DDA| db $E1, $06 ; set panning - leaning right
|1AE8C4:2DDC| db $60, $7D ; duration, params
|1AE8C6:2DDE| db $98 ; play note C3
|1AE8C7:2DDF| db $54 ; duration
|1AE8C8:2DE0| db $9A ; play note D3
|1AE8C9:2DE1| db $0C ; duration
|1AE8CA:2DE2| db $98 ; play note C3
|1AE8CB:2DE3| db $60 ; duration
|1AE8CC:2DE4| db $97 ; play note B2
|1AE8CD:2DE5| db $48 ; duration
|1AE8CE:2DE6| db $98 ; play note C3
|1AE8CF:2DE7| db $18 ; duration
|1AE8D0:2DE8| db $97 ; play note B2

;---------------------------------------------------------------------------------------------------

Song21_Segment0_Track0:
|1AE8D1:2DE9| db $FA, $19 ; set base percussion sample
|1AE8D3:2DEB| db $E5, $78 ; set song volume
|1AE8D5:2DED| db $E6, $8C, $C8 ; initiate gradual song volume change
|1AE8D8:2DF0| db $F5, $FF, $28, $28 ; configure EON, EVOLL, EVOLR
|1AE8DC:2DF4| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1AE8E0:2DF8| db $E7, $23 ; set song tempo
|1AE8E2:2DFA| db $E0, $09 ; set instrument - strings A
|1AE8E4:2DFC| db $ED, $C8 ; set channel volume
|1AE8E6:2DFE| db $E3, $12, $18, $16 ; enable vibrato
|1AE8EA:2E02| db $E1, $0A ; set panning - balanced
|1AE8EC:2E04| db $30, $7D ; duration, params
|1AE8EE:2E06| db $B3 ; play note D#5
|1AE8EF:2E07| db $AC ; play note G#4
|1AE8F0:2E08| db $B5 ; play note F5
|1AE8F1:2E09| db $AE ; play note A#4
|1AE8F2:2E0A| db $60, $5D ; duration, params
|1AE8F4:2E0C| db $B7 ; play note G5
|1AE8F5:2E0D| db $E8, $FF, $12 ; initiate gradual tempo change
|1AE8F8:2E10| db $C8 ; sustain current note
|1AE8F9:2E11| db $E6, $50, $8C ; initiate gradual song volume change
|1AE8FC:2E14| db $C8 ; sustain current note
|1AE8FD:2E15| db $C8 ; sustain current note
|1AE8FE:2E16| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Segment0_Track1:
|1AE8FF:2E17| db $EF : dw Song21_Sub_36A5 : db $01 ; call segment subroutine
|1AE903:2E1B| db $C8 ; sustain current note
|1AE904:2E1C| db $C8 ; sustain current note
|1AE905:2E1D| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_Segment0_Track2:
|1AE906:2E1E| db $EF : dw Song21_Sub_36C0 : db $01 ; call segment subroutine
|1AE90A:2E22| db $96 ; play note A#2
|1AE90B:2E23| db $98 ; play note C3
|1AE90C:2E24| db $C8 ; sustain current note
|1AE90D:2E25| db $C8 ; sustain current note
|1AE90E:2E26| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_Segment0_Track3:
|1AE90F:2E27| db $EF : dw Song21_Sub_36CE : db $01 ; call segment subroutine
|1AE913:2E2B| db $C8 ; sustain current note
|1AE914:2E2C| db $C8 ; sustain current note
|1AE915:2E2D| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_Segment0_Track4:
|1AE916:2E2E| db $EF : dw Song21_Sub_36E9 : db $01 ; call segment subroutine
|1AE91A:2E32| db $B0 ; play note C5
|1AE91B:2E33| db $AB ; play note G4
|1AE91C:2E34| db $A8 ; play note E4
|1AE91D:2E35| db $A4 ; play note C4
|1AE91E:2E36| db $40 ; duration
|1AE91F:2E37| db $9F ; play note G3
|1AE920:2E38| db $60 ; duration
|1AE921:2E39| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_Segment0_Track5:
|1AE922:2E3A| db $EF : dw Song21_Sub_36FB : db $01 ; call segment subroutine
|1AE926:2E3E| db $08 ; duration
|1AE927:2E3F| db $C8 ; sustain current note
|1AE928:2E40| db $20 ; duration
|1AE929:2E41| db $AB ; play note G4
|1AE92A:2E42| db $A8 ; play note E4
|1AE92B:2E43| db $A4 ; play note C4
|1AE92C:2E44| db $9F ; play note G3
|1AE92D:2E45| db $38 ; duration
|1AE92E:2E46| db $9C ; play note E3
|1AE92F:2E47| db $60 ; duration
|1AE930:2E48| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_Segment0_Track6:
|1AE931:2E49| db $EF : dw Song21_Sub_3718 : db $01 ; call segment subroutine
|1AE935:2E4D| db $C8 ; sustain current note
|1AE936:2E4E| db $20 ; duration
|1AE937:2E4F| db $A8 ; play note E4
|1AE938:2E50| db $A4 ; play note C4
|1AE939:2E51| db $9F ; play note G3
|1AE93A:2E52| db $9C ; play note E3
|1AE93B:2E53| db $30 ; duration
|1AE93C:2E54| db $98 ; play note C3
|1AE93D:2E55| db $60 ; duration
|1AE93E:2E56| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_Segment0_Track7:
|1AE93F:2E57| db $EF : dw Song21_Sub_3733 : db $01 ; call segment subroutine
|1AE943:2E5B| db $18 ; duration
|1AE944:2E5C| db $C8 ; sustain current note
|1AE945:2E5D| db $20 ; duration
|1AE946:2E5E| db $A4 ; play note C4
|1AE947:2E5F| db $9F ; play note G3
|1AE948:2E60| db $08 ; duration
|1AE949:2E61| db $9C ; play note E3
|1AE94A:2E62| db $18 ; duration
|1AE94B:2E63| db $C8 ; sustain current note
|1AE94C:2E64| db $48 ; duration
|1AE94D:2E65| db $98 ; play note C3
|1AE94E:2E66| db $60 ; duration
|1AE94F:2E67| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_SegmentD_Track0:
|1AE950:2E68| db $E8, $78, $1A ; initiate gradual tempo change
|1AE953:2E6B| db $E0, $18 ; set instrument - piano
|1AE955:2E6D| db $ED, $C8 ; set channel volume
|1AE957:2E6F| db $E1, $0A ; set panning - balanced
|1AE959:2E71| db $EF : dw Song21_Sub_34F5 : db $01 ; call segment subroutine
|1AE95D:2E75| db $EF : dw Song21_Sub_3525 : db $01 ; call segment subroutine
|1AE961:2E79| db $18, $3D ; duration, params
|1AE963:2E7B| db $AD ; play note A4
|1AE964:2E7C| db $18, $6D ; duration, params
|1AE966:2E7E| db $B5 ; play note F5
|1AE967:2E7F| db $18, $3D ; duration, params
|1AE969:2E81| db $B2 ; play note D5
|1AE96A:2E82| db $08 ; duration
|1AE96B:2E83| db $B2 ; play note D5
|1AE96C:2E84| db $B0 ; play note C5
|1AE96D:2E85| db $AF ; play note B4
|1AE96E:2E86| db $48 ; duration
|1AE96F:2E87| db $B0 ; play note C5
|1AE970:2E88| db $E0, $12 ; set instrument - horn
|1AE972:2E8A| db $ED, $C8 ; set channel volume
|1AE974:2E8C| db $E3, $12, $18, $16 ; enable vibrato
|1AE978:2E90| db $E1, $08 ; set panning - leaning right
|1AE97A:2E92| db $E7, $17 ; set song tempo
|1AE97C:2E94| db $10 ; duration
|1AE97D:2E95| db $B0 ; play note C5
|1AE97E:2E96| db $08, $5D ; duration, params
|1AE980:2E98| db $B0 ; play note C5
|1AE981:2E99| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_SegmentD_Track1:
|1AE982:2E9A| db $E0, $09 ; set instrument - strings A
|1AE984:2E9C| db $ED, $A0 ; set channel volume
|1AE986:2E9E| db $E3, $12, $18, $16 ; enable vibrato
|1AE98A:2EA2| db $E1, $0E ; set panning - leaning left
|1AE98C:2EA4| db $EF : dw Song21_Sub_34F5 : db $01 ; call segment subroutine
|1AE990:2EA8| db $EF : dw Song21_Sub_3525 : db $01 ; call segment subroutine
|1AE994:2EAC| db $18, $3D ; duration, params
|1AE996:2EAE| db $AD ; play note A4
|1AE997:2EAF| db $18, $6D ; duration, params
|1AE999:2EB1| db $B5 ; play note F5
|1AE99A:2EB2| db $18, $3D ; duration, params
|1AE99C:2EB4| db $B2 ; play note D5
|1AE99D:2EB5| db $08 ; duration
|1AE99E:2EB6| db $B2 ; play note D5
|1AE99F:2EB7| db $08, $5D ; duration, params
|1AE9A1:2EB9| db $B0 ; play note C5
|1AE9A2:2EBA| db $AF ; play note B4
|1AE9A3:2EBB| db $48 ; duration
|1AE9A4:2EBC| db $B0 ; play note C5
|1AE9A5:2EBD| db $E0, $0B ; set instrument - trombone
|1AE9A7:2EBF| db $ED, $C8 ; set channel volume
|1AE9A9:2EC1| db $E3, $12, $18, $16 ; enable vibrato
|1AE9AD:2EC5| db $E1, $06 ; set panning - leaning right
|1AE9AF:2EC7| db $10, $3D ; duration, params
|1AE9B1:2EC9| db $B0 ; play note C5
|1AE9B2:2ECA| db $08, $5D ; duration, params
|1AE9B4:2ECC| db $B0 ; play note C5

;---------------------------------------------------------------------------------------------------

Song21_SegmentD_Track2:
|1AE9B5:2ECD| db $E0, $0A ; set instrument - strings B
|1AE9B7:2ECF| db $ED, $DC ; set channel volume
|1AE9B9:2ED1| db $E3, $18, $1A, $1C ; enable vibrato
|1AE9BD:2ED5| db $E1, $02 ; set panning - leaning right
|1AE9BF:2ED7| db $18 ; duration
|1AE9C0:2ED8| db $C9 ; rest
|1AE9C1:2ED9| db $30, $7D ; duration, params
|1AE9C3:2EDB| db $98 ; play note C3
|1AE9C4:2EDC| db $97 ; play note B2
|1AE9C5:2EDD| db $95 ; play note A2
|1AE9C6:2EDE| db $90 ; play note E2
|1AE9C7:2EDF| db $91 ; play note F2
|1AE9C8:2EE0| db $92 ; play note F#2
|1AE9C9:2EE1| db $93 ; play note G2
|1AE9CA:2EE2| db $97 ; play note B2
|1AE9CB:2EE3| db $98 ; play note C3
|1AE9CC:2EE4| db $97 ; play note B2
|1AE9CD:2EE5| db $95 ; play note A2
|1AE9CE:2EE6| db $90 ; play note E2
|1AE9CF:2EE7| db $91 ; play note F2
|1AE9D0:2EE8| db $93 ; play note G2
|1AE9D1:2EE9| db $8C ; play note C2
|1AE9D2:2EEA| db $8A ; play note A#1

;---------------------------------------------------------------------------------------------------

Song21_SegmentD_Track3:
|1AE9D3:2EEB| db $E0, $18 ; set instrument - piano
|1AE9D5:2EED| db $ED, $B4 ; set channel volume
|1AE9D7:2EEF| db $E1, $08 ; set panning - leaning right
|1AE9D9:2EF1| db $EF : dw Song21_Sub_3557 : db $01 ; call segment subroutine
|1AE9DD:2EF5| db $EF : dw Song21_Sub_3587 : db $01 ; call segment subroutine
|1AE9E1:2EF9| db $18, $3D ; duration, params
|1AE9E3:2EFB| db $A4 ; play note C4
|1AE9E4:2EFC| db $18, $6D ; duration, params
|1AE9E6:2EFE| db $AD ; play note A4
|1AE9E7:2EFF| db $18, $3D ; duration, params
|1AE9E9:2F01| db $A9 ; play note F4
|1AE9EA:2F02| db $08 ; duration
|1AE9EB:2F03| db $A9 ; play note F4
|1AE9EC:2F04| db $08, $5D ; duration, params
|1AE9EE:2F06| db $A8 ; play note E4
|1AE9EF:2F07| db $A6 ; play note D4
|1AE9F0:2F08| db $48 ; duration
|1AE9F1:2F09| db $A8 ; play note E4
|1AE9F2:2F0A| db $E0, $0B ; set instrument - trombone
|1AE9F4:2F0C| db $ED, $B4 ; set channel volume
|1AE9F6:2F0E| db $E3, $12, $18, $16 ; enable vibrato
|1AE9FA:2F12| db $E1, $0C ; set panning - leaning left
|1AE9FC:2F14| db $10, $3D ; duration, params
|1AE9FE:2F16| db $A8 ; play note E4
|1AE9FF:2F17| db $08, $5D ; duration, params
|1AEA01:2F19| db $A8 ; play note E4

;---------------------------------------------------------------------------------------------------

Song21_SegmentD_Track4:
|1AEA02:2F1A| db $E0, $18 ; set instrument - piano
|1AEA04:2F1C| db $ED, $B4 ; set channel volume
|1AEA06:2F1E| db $E1, $06 ; set panning - leaning right
|1AEA08:2F20| db $18 ; duration
|1AEA09:2F21| db $C9 ; rest
|1AEA0A:2F22| db $0C, $7D ; duration, params
|1AEA0C:2F24| db $98 ; play note C3
|1AEA0D:2F25| db $9F ; play note G3
|1AEA0E:2F26| db $A4 ; play note C4
|1AEA0F:2F27| db $9F ; play note G3
|1AEA10:2F28| db $97 ; play note B2
|1AEA11:2F29| db $9F ; play note G3
|1AEA12:2F2A| db $A3 ; play note B3
|1AEA13:2F2B| db $9F ; play note G3
|1AEA14:2F2C| db $95 ; play note A2
|1AEA15:2F2D| db $9F ; play note G3
|1AEA16:2F2E| db $A4 ; play note C4
|1AEA17:2F2F| db $9F ; play note G3
|1AEA18:2F30| db $90 ; play note E2
|1AEA19:2F31| db $9F ; play note G3
|1AEA1A:2F32| db $A4 ; play note C4
|1AEA1B:2F33| db $9F ; play note G3
|1AEA1C:2F34| db $91 ; play note F2
|1AEA1D:2F35| db $A1 ; play note A3
|1AEA1E:2F36| db $A4 ; play note C4
|1AEA1F:2F37| db $A1 ; play note A3
|1AEA20:2F38| db $92 ; play note F#2
|1AEA21:2F39| db $A1 ; play note A3
|1AEA22:2F3A| db $A4 ; play note C4
|1AEA23:2F3B| db $A1 ; play note A3
|1AEA24:2F3C| db $93 ; play note G2
|1AEA25:2F3D| db $A3 ; play note B3
|1AEA26:2F3E| db $A6 ; play note D4
|1AEA27:2F3F| db $A3 ; play note B3
|1AEA28:2F40| db $97 ; play note B2
|1AEA29:2F41| db $A3 ; play note B3
|1AEA2A:2F42| db $A6 ; play note D4
|1AEA2B:2F43| db $A3 ; play note B3
|1AEA2C:2F44| db $98 ; play note C3
|1AEA2D:2F45| db $9F ; play note G3
|1AEA2E:2F46| db $A4 ; play note C4
|1AEA2F:2F47| db $9F ; play note G3
|1AEA30:2F48| db $97 ; play note B2
|1AEA31:2F49| db $9F ; play note G3
|1AEA32:2F4A| db $A3 ; play note B3
|1AEA33:2F4B| db $9F ; play note G3
|1AEA34:2F4C| db $95 ; play note A2
|1AEA35:2F4D| db $9F ; play note G3
|1AEA36:2F4E| db $A4 ; play note C4
|1AEA37:2F4F| db $9F ; play note G3
|1AEA38:2F50| db $90 ; play note E2
|1AEA39:2F51| db $9F ; play note G3
|1AEA3A:2F52| db $A4 ; play note C4
|1AEA3B:2F53| db $9F ; play note G3
|1AEA3C:2F54| db $91 ; play note F2
|1AEA3D:2F55| db $A1 ; play note A3
|1AEA3E:2F56| db $A4 ; play note C4
|1AEA3F:2F57| db $A1 ; play note A3
|1AEA40:2F58| db $93 ; play note G2
|1AEA41:2F59| db $9F ; play note G3
|1AEA42:2F5A| db $A3 ; play note B3
|1AEA43:2F5B| db $9F ; play note G3
|1AEA44:2F5C| db $98 ; play note C3
|1AEA45:2F5D| db $9F ; play note G3
|1AEA46:2F5E| db $A4 ; play note C4
|1AEA47:2F5F| db $9F ; play note G3
|1AEA48:2F60| db $96 ; play note A#2
|1AEA49:2F61| db $9F ; play note G3
|1AEA4A:2F62| db $A4 ; play note C4
|1AEA4B:2F63| db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song21_SegmentE_Track0:
|1AEA4C:2F64| db $E5, $C8 ; set song volume
|1AEA4E:2F66| db $E0, $12 ; set instrument - horn
|1AEA50:2F68| db $ED, $C8 ; set channel volume
|1AEA52:2F6A| db $E3, $12, $18, $16 ; enable vibrato
|1AEA56:2F6E| db $E1, $08 ; set panning - leaning right
|1AEA58:2F70| db $EF : dw Song21_Sub_3750 : db $01 ; call segment subroutine
|1AEA5C:2F74| db $18, $3D ; duration, params
|1AEA5E:2F76| db $B2 ; play note D5
|1AEA5F:2F77| db $30, $6D ; duration, params
|1AEA61:2F79| db $BA ; play note A#5
|1AEA62:2F7A| db $10, $3D ; duration, params
|1AEA64:2F7C| db $B2 ; play note D5
|1AEA65:2F7D| db $08 ; duration
|1AEA66:2F7E| db $B2 ; play note D5
|1AEA67:2F7F| db $18 ; duration
|1AEA68:2F80| db $B4 ; play note E5
|1AEA69:2F81| db $30, $5D ; duration, params
|1AEA6B:2F83| db $BC ; play note C6
|1AEA6C:2F84| db $18 ; duration
|1AEA6D:2F85| db $B4 ; play note E5
|1AEA6E:2F86| db $E8, $50, $12 ; initiate gradual tempo change
|1AEA71:2F89| db $60 ; duration
|1AEA72:2F8A| db $B5 ; play note F5
|1AEA73:2F8B| db $B5 ; play note F5
|1AEA74:2F8C| db $B5 ; play note F5
|1AEA75:2F8D| db $18 ; duration
|1AEA76:2F8E| db $C8 ; sustain current note
|1AEA77:2F8F| db $10 ; duration
|1AEA78:2F90| db $A9 ; play note F4
|1AEA79:2F91| db $08 ; duration
|1AEA7A:2F92| db $A9 ; play note F4
|1AEA7B:2F93| db $30 ; duration
|1AEA7C:2F94| db $A9 ; play note F4
|1AEA7D:2F95| db $E6, $5A, $50 ; initiate gradual song volume change
|1AEA80:2F98| db $60 ; duration
|1AEA81:2F99| db $C8 ; sustain current note
|1AEA82:2F9A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_SegmentE_Track1:
|1AEA83:2F9B| db $E0, $0B ; set instrument - trombone
|1AEA85:2F9D| db $ED, $C8 ; set channel volume
|1AEA87:2F9F| db $E3, $12, $18, $16 ; enable vibrato
|1AEA8B:2FA3| db $E1, $06 ; set panning - leaning right
|1AEA8D:2FA5| db $EF : dw Song21_Sub_3750 : db $01 ; call segment subroutine
|1AEA91:2FA9| db $18, $3D ; duration, params
|1AEA93:2FAB| db $B2 ; play note D5
|1AEA94:2FAC| db $30, $6D ; duration, params
|1AEA96:2FAE| db $BA ; play note A#5
|1AEA97:2FAF| db $18, $3D ; duration, params
|1AEA99:2FB1| db $B2 ; play note D5
|1AEA9A:2FB2| db $B4 ; play note E5
|1AEA9B:2FB3| db $30, $5D ; duration, params
|1AEA9D:2FB5| db $BC ; play note C6
|1AEA9E:2FB6| db $18 ; duration
|1AEA9F:2FB7| db $B4 ; play note E5
|1AEAA0:2FB8| db $60 ; duration
|1AEAA1:2FB9| db $B5 ; play note F5
|1AEAA2:2FBA| db $B5 ; play note F5
|1AEAA3:2FBB| db $B5 ; play note F5
|1AEAA4:2FBC| db $18 ; duration
|1AEAA5:2FBD| db $C8 ; sustain current note
|1AEAA6:2FBE| db $10 ; duration
|1AEAA7:2FBF| db $A9 ; play note F4
|1AEAA8:2FC0| db $08 ; duration
|1AEAA9:2FC1| db $A9 ; play note F4
|1AEAAA:2FC2| db $30 ; duration
|1AEAAB:2FC3| db $A9 ; play note F4
|1AEAAC:2FC4| db $60 ; duration
|1AEAAD:2FC5| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_SegmentE_Track2:
|1AEAAE:2FC6| db $E0, $09 ; set instrument - strings A
|1AEAB0:2FC8| db $ED, $DC ; set channel volume
|1AEAB2:2FCA| db $E3, $18, $1A, $1C ; enable vibrato
|1AEAB6:2FCE| db $E1, $02 ; set panning - leaning right
|1AEAB8:2FD0| db $30, $7D ; duration, params
|1AEABA:2FD2| db $9D ; play note F3
|1AEABB:2FD3| db $9C ; play note E3
|1AEABC:2FD4| db $9A ; play note D3
|1AEABD:2FD5| db $95 ; play note A2
|1AEABE:2FD6| db $96 ; play note A#2
|1AEABF:2FD7| db $97 ; play note B2
|1AEAC0:2FD8| db $98 ; play note C3
|1AEAC1:2FD9| db $9C ; play note E3
|1AEAC2:2FDA| db $9D ; play note F3
|1AEAC3:2FDB| db $9C ; play note E3
|1AEAC4:2FDC| db $9A ; play note D3
|1AEAC5:2FDD| db $95 ; play note A2
|1AEAC6:2FDE| db $60 ; duration
|1AEAC7:2FDF| db $96 ; play note A#2
|1AEAC8:2FE0| db $98 ; play note C3
|1AEAC9:2FE1| db $99 ; play note C#3
|1AEACA:2FE2| db $9B ; play note D#3
|1AEACB:2FE3| db $06 ; duration
|1AEACC:2FE4| db $9D ; play note F3
|1AEACD:2FE5| db $9C ; play note E3
|1AEACE:2FE6| db $9A ; play note D3
|1AEACF:2FE7| db $98 ; play note C3
|1AEAD0:2FE8| db $9D ; play note F3
|1AEAD1:2FE9| db $9C ; play note E3
|1AEAD2:2FEA| db $9A ; play note D3
|1AEAD3:2FEB| db $98 ; play note C3
|1AEAD4:2FEC| db $9D ; play note F3
|1AEAD5:2FED| db $9C ; play note E3
|1AEAD6:2FEE| db $9A ; play note D3
|1AEAD7:2FEF| db $98 ; play note C3
|1AEAD8:2FF0| db $9D ; play note F3
|1AEAD9:2FF1| db $9C ; play note E3
|1AEADA:2FF2| db $9A ; play note D3
|1AEADB:2FF3| db $98 ; play note C3
|1AEADC:2FF4| db $18 ; duration
|1AEADD:2FF5| db $9D ; play note F3
|1AEADE:2FF6| db $10 ; duration
|1AEADF:2FF7| db $91 ; play note F2
|1AEAE0:2FF8| db $08 ; duration
|1AEAE1:2FF9| db $91 ; play note F2
|1AEAE2:2FFA| db $30 ; duration
|1AEAE3:2FFB| db $91 ; play note F2
|1AEAE4:2FFC| db $60 ; duration
|1AEAE5:2FFD| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_SegmentE_Track3:
|1AEAE6:2FFE| db $E0, $0B ; set instrument - trombone
|1AEAE8:3000| db $ED, $B4 ; set channel volume
|1AEAEA:3002| db $E3, $12, $18, $16 ; enable vibrato
|1AEAEE:3006| db $E1, $0C ; set panning - leaning left
|1AEAF0:3008| db $18, $5D ; duration, params
|1AEAF2:300A| db $AD ; play note A4
|1AEAF3:300B| db $10, $3D ; duration, params
|1AEAF5:300D| db $A9 ; play note F4
|1AEAF6:300E| db $08, $5D ; duration, params
|1AEAF8:3010| db $AD ; play note A4
|1AEAF9:3011| db $18 ; duration
|1AEAFA:3012| db $AE ; play note A#4
|1AEAFB:3013| db $10, $3D ; duration, params
|1AEAFD:3015| db $A8 ; play note E4
|1AEAFE:3016| db $08, $5D ; duration, params
|1AEB00:3018| db $AE ; play note A#4
|1AEB01:3019| db $20, $7D ; duration, params
|1AEB03:301B| db $B2 ; play note D5
|1AEB04:301C| db $08, $4D ; duration, params
|1AEB06:301E| db $B0 ; play note C5
|1AEB07:301F| db $AE ; play note A#4
|1AEB08:3020| db $18, $5D ; duration, params
|1AEB0A:3022| db $AD ; play note A4
|1AEB0B:3023| db $18, $4D ; duration, params
|1AEB0D:3025| db $A9 ; play note F4
|1AEB0E:3026| db $18, $6D ; duration, params
|1AEB10:3028| db $A9 ; play note F4
|1AEB11:3029| db $18, $3D ; duration, params
|1AEB13:302B| db $AE ; play note A#4
|1AEB14:302C| db $18, $6D ; duration, params
|1AEB16:302E| db $AF ; play note B4
|1AEB17:302F| db $18, $3D ; duration, params
|1AEB19:3031| db $AF ; play note B4
|1AEB1A:3032| db $24, $6D ; duration, params
|1AEB1C:3034| db $AE ; play note A#4
|1AEB1D:3035| db $06, $3D ; duration, params
|1AEB1F:3037| db $AB ; play note G4
|1AEB20:3038| db $06, $5D ; duration, params
|1AEB22:303A| db $A9 ; play note F4
|1AEB23:303B| db $18 ; duration
|1AEB24:303C| db $A8 ; play note E4
|1AEB25:303D| db $10, $3D ; duration, params
|1AEB27:303F| db $A8 ; play note E4
|1AEB28:3040| db $08, $5D ; duration, params
|1AEB2A:3042| db $A8 ; play note E4
|1AEB2B:3043| db $18 ; duration
|1AEB2C:3044| db $AD ; play note A4
|1AEB2D:3045| db $10, $3D ; duration, params
|1AEB2F:3047| db $A9 ; play note F4
|1AEB30:3048| db $08, $5D ; duration, params
|1AEB32:304A| db $AD ; play note A4
|1AEB33:304B| db $18 ; duration
|1AEB34:304C| db $AE ; play note A#4
|1AEB35:304D| db $10, $3D ; duration, params
|1AEB37:304F| db $A8 ; play note E4
|1AEB38:3050| db $08, $5D ; duration, params
|1AEB3A:3052| db $AE ; play note A#4
|1AEB3B:3053| db $20, $7D ; duration, params
|1AEB3D:3055| db $B2 ; play note D5
|1AEB3E:3056| db $08, $4D ; duration, params
|1AEB40:3058| db $B0 ; play note C5
|1AEB41:3059| db $B2 ; play note D5
|1AEB42:305A| db $18, $5D ; duration, params
|1AEB44:305C| db $B4 ; play note E5
|1AEB45:305D| db $10, $6D ; duration, params
|1AEB47:305F| db $AD ; play note A4
|1AEB48:3060| db $08, $5D ; duration, params
|1AEB4A:3062| db $AB ; play note G4
|1AEB4B:3063| db $18, $3D ; duration, params
|1AEB4D:3065| db $A9 ; play note F4
|1AEB4E:3066| db $30, $6D ; duration, params
|1AEB50:3068| db $B2 ; play note D5
|1AEB51:3069| db $18, $3D ; duration, params
|1AEB53:306B| db $A9 ; play note F4
|1AEB54:306C| db $AB ; play note G4
|1AEB55:306D| db $30, $5D ; duration, params
|1AEB57:306F| db $B4 ; play note E5
|1AEB58:3070| db $18 ; duration
|1AEB59:3071| db $AB ; play note G4
|1AEB5A:3072| db $60 ; duration
|1AEB5B:3073| db $AC ; play note G#4
|1AEB5C:3074| db $AE ; play note A#4
|1AEB5D:3075| db $B0 ; play note C5
|1AEB5E:3076| db $18 ; duration
|1AEB5F:3077| db $C8 ; sustain current note
|1AEB60:3078| db $10 ; duration
|1AEB61:3079| db $A4 ; play note C4
|1AEB62:307A| db $08 ; duration
|1AEB63:307B| db $A4 ; play note C4
|1AEB64:307C| db $30 ; duration
|1AEB65:307D| db $A4 ; play note C4
|1AEB66:307E| db $60 ; duration
|1AEB67:307F| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_SegmentE_Track4:
|1AEB68:3080| db $E0, $0A ; set instrument - strings B
|1AEB6A:3082| db $ED, $8C ; set channel volume
|1AEB6C:3084| db $E3, $18, $1A, $1C ; enable vibrato
|1AEB70:3088| db $E1, $10 ; set panning - leaning left
|1AEB72:308A| db $60 ; duration
|1AEB73:308B| db $C9 ; rest
|1AEB74:308C| db $30 ; duration
|1AEB75:308D| db $C9 ; rest
|1AEB76:308E| db $C9 ; rest
|1AEB77:308F| db $60 ; duration
|1AEB78:3090| db $C9 ; rest
|1AEB79:3091| db $48 ; duration
|1AEB7A:3092| db $C9 ; rest
|1AEB7B:3093| db $18, $7D ; duration, params
|1AEB7D:3095| db $AE ; play note A#4
|1AEB7E:3096| db $30 ; duration
|1AEB7F:3097| db $AD ; play note A4
|1AEB80:3098| db $AB ; play note G4
|1AEB81:3099| db $A9 ; play note F4
|1AEB82:309A| db $AD ; play note A4
|1AEB83:309B| db $60 ; duration
|1AEB84:309C| db $A9 ; play note F4
|1AEB85:309D| db $AB ; play note G4
|1AEB86:309E| db $A9 ; play note F4
|1AEB87:309F| db $AB ; play note G4
|1AEB88:30A0| db $AD ; play note A4
|1AEB89:30A1| db $18 ; duration
|1AEB8A:30A2| db $C8 ; sustain current note
|1AEB8B:30A3| db $10 ; duration
|1AEB8C:30A4| db $A1 ; play note A3
|1AEB8D:30A5| db $08 ; duration
|1AEB8E:30A6| db $A1 ; play note A3
|1AEB8F:30A7| db $30 ; duration
|1AEB90:30A8| db $A1 ; play note A3
|1AEB91:30A9| db $60 ; duration
|1AEB92:30AA| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_SegmentE_Track5:
|1AEB93:30AB| db $E0, $0B ; set instrument - trombone
|1AEB95:30AD| db $ED, $C8 ; set channel volume
|1AEB97:30AF| db $E1, $0C ; set panning - leaning left
|1AEB99:30B1| db $E3, $1C, $14, $12 ; enable vibrato
|1AEB9D:30B5| db $18 ; duration
|1AEB9E:30B6| db $C9 ; rest
|1AEB9F:30B7| db $08, $5D ; duration, params
|1AEBA1:30B9| db $B0 ; play note C5
|1AEBA2:30BA| db $B0 ; play note C5
|1AEBA3:30BB| db $B0 ; play note C5
|1AEBA4:30BC| db $30 ; duration
|1AEBA5:30BD| db $B0 ; play note C5
|1AEBA6:30BE| db $18 ; duration
|1AEBA7:30BF| db $C9 ; rest
|1AEBA8:30C0| db $08 ; duration
|1AEBA9:30C1| db $B0 ; play note C5
|1AEBAA:30C2| db $B0 ; play note C5
|1AEBAB:30C3| db $B0 ; play note C5
|1AEBAC:30C4| db $30 ; duration
|1AEBAD:30C5| db $B0 ; play note C5
|1AEBAE:30C6| db $18 ; duration
|1AEBAF:30C7| db $C9 ; rest
|1AEBB0:30C8| db $08 ; duration
|1AEBB1:30C9| db $B2 ; play note D5
|1AEBB2:30CA| db $B2 ; play note D5
|1AEBB3:30CB| db $B2 ; play note D5
|1AEBB4:30CC| db $30 ; duration
|1AEBB5:30CD| db $B2 ; play note D5
|1AEBB6:30CE| db $28 ; duration
|1AEBB7:30CF| db $C9 ; rest
|1AEBB8:30D0| db $04 ; duration
|1AEBB9:30D1| db $B4 ; play note E5
|1AEBBA:30D2| db $B4 ; play note E5
|1AEBBB:30D3| db $0C, $3D ; duration, params
|1AEBBD:30D5| db $B4 ; play note E5
|1AEBBE:30D6| db $B4 ; play note E5
|1AEBBF:30D7| db $08, $5D ; duration, params
|1AEBC1:30D9| db $B4 ; play note E5
|1AEBC2:30DA| db $B4 ; play note E5
|1AEBC3:30DB| db $B4 ; play note E5
|1AEBC4:30DC| db $EF : dw Song21_Sub_37AC : db $02 ; call segment subroutine
|1AEBC8:30E0| db $18 ; duration
|1AEBC9:30E1| db $C9 ; rest
|1AEBCA:30E2| db $08 ; duration
|1AEBCB:30E3| db $B2 ; play note D5
|1AEBCC:30E4| db $B2 ; play note D5
|1AEBCD:30E5| db $B2 ; play note D5
|1AEBCE:30E6| db $30 ; duration
|1AEBCF:30E7| db $B2 ; play note D5
|1AEBD0:30E8| db $18 ; duration
|1AEBD1:30E9| db $C9 ; rest
|1AEBD2:30EA| db $08 ; duration
|1AEBD3:30EB| db $B4 ; play note E5
|1AEBD4:30EC| db $B4 ; play note E5
|1AEBD5:30ED| db $B4 ; play note E5
|1AEBD6:30EE| db $30 ; duration
|1AEBD7:30EF| db $B4 ; play note E5
|1AEBD8:30F0| db $18 ; duration
|1AEBD9:30F1| db $B5 ; play note F5
|1AEBDA:30F2| db $08 ; duration
|1AEBDB:30F3| db $B5 ; play note F5
|1AEBDC:30F4| db $B5 ; play note F5
|1AEBDD:30F5| db $B5 ; play note F5
|1AEBDE:30F6| db $0C, $3D ; duration, params
|1AEBE0:30F8| db $B5 ; play note F5
|1AEBE1:30F9| db $B5 ; play note F5
|1AEBE2:30FA| db $08, $5D ; duration, params
|1AEBE4:30FC| db $B5 ; play note F5
|1AEBE5:30FD| db $B5 ; play note F5
|1AEBE6:30FE| db $B5 ; play note F5
|1AEBE7:30FF| db $18 ; duration
|1AEBE8:3100| db $B5 ; play note F5
|1AEBE9:3101| db $08 ; duration
|1AEBEA:3102| db $B5 ; play note F5
|1AEBEB:3103| db $B5 ; play note F5
|1AEBEC:3104| db $B5 ; play note F5
|1AEBED:3105| db $0C, $3D ; duration, params
|1AEBEF:3107| db $B5 ; play note F5
|1AEBF0:3108| db $B5 ; play note F5
|1AEBF1:3109| db $08 ; duration
|1AEBF2:310A| db $B5 ; play note F5
|1AEBF3:310B| db $B5 ; play note F5
|1AEBF4:310C| db $B5 ; play note F5
|1AEBF5:310D| db $60, $5D ; duration, params
|1AEBF7:310F| db $B9 ; play note A5
|1AEBF8:3110| db $18 ; duration
|1AEBF9:3111| db $C8 ; sustain current note
|1AEBFA:3112| db $10 ; duration
|1AEBFB:3113| db $A4 ; play note C4
|1AEBFC:3114| db $08 ; duration
|1AEBFD:3115| db $A4 ; play note C4
|1AEBFE:3116| db $30 ; duration
|1AEBFF:3117| db $A4 ; play note C4
|1AEC00:3118| db $60 ; duration
|1AEC01:3119| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_SegmentE_Track6:
|1AEC02:311A| db $E0, $02 ; set instrument - timpani
|1AEC04:311C| db $ED, $DC ; set channel volume
|1AEC06:311E| db $E1, $0D ; set panning - leaning left
|1AEC08:3120| db $EF : dw Song21_Sub_35D4 : db $01 ; call segment subroutine
|1AEC0C:3124| db $89 ; play note A1
|1AEC0D:3125| db $89 ; play note A1
|1AEC0E:3126| db $0C, $79 ; duration, params
|1AEC10:3128| db $89 ; play note A1
|1AEC11:3129| db $89 ; play note A1
|1AEC12:312A| db $0C, $7A ; duration, params
|1AEC14:312C| db $89 ; play note A1
|1AEC15:312D| db $89 ; play note A1
|1AEC16:312E| db $0C, $7B ; duration, params
|1AEC18:3130| db $89 ; play note A1
|1AEC19:3131| db $0C, $7C ; duration, params
|1AEC1B:3133| db $89 ; play note A1
|1AEC1C:3134| db $0C, $7D ; duration, params
|1AEC1E:3136| db $89 ; play note A1
|1AEC1F:3137| db $0C, $7E ; duration, params
|1AEC21:3139| db $89 ; play note A1
|1AEC22:313A| db $EF : dw Song21_Sub_35D4 : db $01 ; call segment subroutine
|1AEC26:313E| db $89 ; play note A1
|1AEC27:313F| db $89 ; play note A1
|1AEC28:3140| db $89 ; play note A1
|1AEC29:3141| db $89 ; play note A1
|1AEC2A:3142| db $60 ; duration
|1AEC2B:3143| db $89 ; play note A1
|1AEC2C:3144| db $89 ; play note A1
|1AEC2D:3145| db $18 ; duration
|1AEC2E:3146| db $89 ; play note A1
|1AEC2F:3147| db $89 ; play note A1
|1AEC30:3148| db $89 ; play note A1
|1AEC31:3149| db $89 ; play note A1
|1AEC32:314A| db $89 ; play note A1
|1AEC33:314B| db $10 ; duration
|1AEC34:314C| db $89 ; play note A1
|1AEC35:314D| db $08 ; duration
|1AEC36:314E| db $89 ; play note A1
|1AEC37:314F| db $30 ; duration
|1AEC38:3150| db $89 ; play note A1
|1AEC39:3151| db $60 ; duration
|1AEC3A:3152| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_SegmentE_Track7:
|1AEC3B:3153| db $E0, $0C ; set instrument - cymbal
|1AEC3D:3155| db $ED, $C8 ; set channel volume
|1AEC3F:3157| db $E1, $06 ; set panning - leaning right
|1AEC41:3159| db $60 ; duration
|1AEC42:315A| db $C9 ; rest
|1AEC43:315B| db $30 ; duration
|1AEC44:315C| db $C9 ; rest
|1AEC45:315D| db $C9 ; rest
|1AEC46:315E| db $60 ; duration
|1AEC47:315F| db $C9 ; rest
|1AEC48:3160| db $30 ; duration
|1AEC49:3161| db $C9 ; rest
|1AEC4A:3162| db $C9 ; rest
|1AEC4B:3163| db $30, $7D ; duration, params
|1AEC4D:3165| db $96 ; play note A#2
|1AEC4E:3166| db $96 ; play note A#2
|1AEC4F:3167| db $60 ; duration
|1AEC50:3168| db $96 ; play note A#2
|1AEC51:3169| db $96 ; play note A#2
|1AEC52:316A| db $96 ; play note A#2
|1AEC53:316B| db $96 ; play note A#2
|1AEC54:316C| db $96 ; play note A#2
|1AEC55:316D| db $96 ; play note A#2
|1AEC56:316E| db $30 ; duration
|1AEC57:316F| db $96 ; play note A#2
|1AEC58:3170| db $8C ; play note C2
|1AEC59:3171| db $60 ; duration
|1AEC5A:3172| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_Segment3_Track0:
|1AEC5B:3173| db $ED, $A0 ; set channel volume
|1AEC5D:3175| db $E0, $0A ; set instrument - strings B
|1AEC5F:3177| db $E3, $18, $1A, $1C ; enable vibrato
|1AEC63:317B| db $E1, $0A ; set panning - balanced
|1AEC65:317D| db $EF : dw Song21_Sub_37B5 : db $01 ; call segment subroutine
|1AEC69:3181| db $EF : dw Song21_Sub_37ED : db $01 ; call segment subroutine
|1AEC6D:3185| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Segment3_Track1:
|1AEC6E:3186| db $ED, $A0 ; set channel volume
|1AEC70:3188| db $E0, $0A ; set instrument - strings B
|1AEC72:318A| db $E3, $18, $1A, $1C ; enable vibrato
|1AEC76:318E| db $E1, $08 ; set panning - leaning right
|1AEC78:3190| db $30 ; duration
|1AEC79:3191| db $C9 ; rest
|1AEC7A:3192| db $C9 ; rest
|1AEC7B:3193| db $EF : dw Song21_Sub_35DB : db $01 ; call segment subroutine
|1AEC7F:3197| db $48 ; duration
|1AEC80:3198| db $C9 ; rest
|1AEC81:3199| db $18 ; duration
|1AEC82:319A| db $C9 ; rest
|1AEC83:319B| db $60 ; duration
|1AEC84:319C| db $C9 ; rest
|1AEC85:319D| db $18 ; duration
|1AEC86:319E| db $C9 ; rest
|1AEC87:319F| db $48 ; duration
|1AEC88:31A0| db $C9 ; rest
|1AEC89:31A1| db $EF : dw Song21_Sub_3800 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song21_Segment3_Track2:
|1AEC8D:31A5| db $ED, $A0 ; set channel volume
|1AEC8F:31A7| db $E0, $0A ; set instrument - strings B
|1AEC91:31A9| db $E3, $18, $1A, $1C ; enable vibrato
|1AEC95:31AD| db $E1, $06 ; set panning - leaning right
|1AEC97:31AF| db $60, $7D ; duration, params
|1AEC99:31B1| db $A1 ; play note A3
|1AEC9A:31B2| db $9C ; play note E3
|1AEC9B:31B3| db $9D ; play note F3
|1AEC9C:31B4| db $98 ; play note C3
|1AEC9D:31B5| db $9A ; play note D3
|1AEC9E:31B6| db $A1 ; play note A3
|1AEC9F:31B7| db $9E ; play note F#3
|1AECA0:31B8| db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song21_Segment3_Track5:
|1AECA1:31B9| db $EF : dw Song21_Sub_380B : db $01 ; call segment subroutine
|1AECA5:31BD| db $EF : dw Song21_Sub_3829 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song21_Segment4_Track0:
|1AECA9:31C1| db $EF : dw Song21_Sub_3838 : db $01 ; call segment subroutine
|1AECAD:31C5| db $EF : dw Song21_Sub_3870 : db $01 ; call segment subroutine
|1AECB1:31C9| db $A6 ; play note D4
|1AECB2:31CA| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Segment4_Track1:
|1AECB3:31CB| db $ED, $A0 ; set channel volume
|1AECB5:31CD| db $E0, $0A ; set instrument - strings B
|1AECB7:31CF| db $E3, $18, $1A, $1C ; enable vibrato
|1AECBB:31D3| db $E1, $0E ; set panning - leaning left
|1AECBD:31D5| db $EF : dw Song21_Sub_388E : db $01 ; call segment subroutine
|1AECC1:31D9| db $48 ; duration
|1AECC2:31DA| db $AA ; play note F#4
|1AECC3:31DB| db $10 ; duration
|1AECC4:31DC| db $A5 ; play note C#4
|1AECC5:31DD| db $08 ; duration
|1AECC6:31DE| db $A7 ; play note D#4
|1AECC7:31DF| db $48 ; duration
|1AECC8:31E0| db $A8 ; play note E4
|1AECC9:31E1| db $08 ; duration
|1AECCA:31E2| db $A8 ; play note E4
|1AECCB:31E3| db $A8 ; play note E4
|1AECCC:31E4| db $A8 ; play note E4
|1AECCD:31E5| db $48 ; duration
|1AECCE:31E6| db $A9 ; play note F4
|1AECCF:31E7| db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song21_Segment4_Track2:
|1AECD0:31E8| db $60, $7D ; duration, params
|1AECD2:31EA| db $A1 ; play note A3
|1AECD3:31EB| db $9C ; play note E3
|1AECD4:31EC| db $9D ; play note F3
|1AECD5:31ED| db $98 ; play note C3
|1AECD6:31EE| db $9A ; play note D3
|1AECD7:31EF| db $A1 ; play note A3
|1AECD8:31F0| db $A0 ; play note G#3
|1AECD9:31F1| db $9E ; play note F#3
|1AECDA:31F2| db $E8, $50, $15 ; initiate gradual tempo change
|1AECDD:31F5| db $9C ; play note E3
|1AECDE:31F6| db $48 ; duration
|1AECDF:31F7| db $9A ; play note D3
|1AECE0:31F8| db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song21_Segment4_Track3:
|1AECE1:31F9| db $EF : dw Song21_Sub_38B8 : db $01 ; call segment subroutine
|1AECE5:31FD| db $C9 ; rest
|1AECE6:31FE| db $C9 ; rest
|1AECE7:31FF| db $18, $7D ; duration, params
|1AECE9:3201| db $9A ; play note D3
|1AECEA:3202| db $A8 ; play note E4
|1AECEB:3203| db $B4 ; play note E5
|1AECEC:3204| db $9F ; play note G3
|1AECED:3205| db $AB ; play note G4
|1AECEE:3206| db $B7 ; play note G5

;---------------------------------------------------------------------------------------------------

Song21_Segment4_Track4:
|1AECEF:3207| db $EF : dw Song21_Sub_38B8 : db $01 ; call segment subroutine
|1AECF3:320B| db $C9 ; rest
|1AECF4:320C| db $C9 ; rest
|1AECF5:320D| db $06 ; duration
|1AECF6:320E| db $C9 ; rest
|1AECF7:320F| db $18, $7D ; duration, params
|1AECF9:3211| db $9D ; play note F3
|1AECFA:3212| db $A9 ; play note F4
|1AECFB:3213| db $12 ; duration
|1AECFC:3214| db $B5 ; play note F5
|1AECFD:3215| db $06 ; duration
|1AECFE:3216| db $C9 ; rest
|1AECFF:3217| db $18 ; duration
|1AED00:3218| db $A3 ; play note B3
|1AED01:3219| db $AF ; play note B4
|1AED02:321A| db $12 ; duration
|1AED03:321B| db $BB ; play note B5

;---------------------------------------------------------------------------------------------------

Song21_Segment4_Track5:
|1AED04:321C| db $EF : dw Song21_Sub_380B : db $01 ; call segment subroutine
|1AED08:3220| db $48 ; duration
|1AED09:3221| db $A8 ; play note E4
|1AED0A:3222| db $10 ; duration
|1AED0B:3223| db $AD ; play note A4
|1AED0C:3224| db $08 ; duration
|1AED0D:3225| db $AF ; play note B4
|1AED0E:3226| db $EF : dw Song21_Sub_38C7 : db $02 ; call segment subroutine
|1AED12:322A| db $48 ; duration
|1AED13:322B| db $B0 ; play note C5
|1AED14:322C| db $08 ; duration
|1AED15:322D| db $B0 ; play note C5
|1AED16:322E| db $B0 ; play note C5
|1AED17:322F| db $B0 ; play note C5
|1AED18:3230| db $48 ; duration
|1AED19:3231| db $B0 ; play note C5
|1AED1A:3232| db $B2 ; play note D5

;---------------------------------------------------------------------------------------------------

Song21_Segment4_Track6:
|1AED1B:3233| db $EF : dw Song21_Sub_38B8 : db $01 ; call segment subroutine
|1AED1F:3237| db $C9 ; rest
|1AED20:3238| db $C9 ; rest
|1AED21:3239| db $0C ; duration
|1AED22:323A| db $C9 ; rest
|1AED23:323B| db $18, $7D ; duration, params
|1AED25:323D| db $A1 ; play note A3
|1AED26:323E| db $AD ; play note A4
|1AED27:323F| db $0C ; duration
|1AED28:3240| db $B9 ; play note A5
|1AED29:3241| db $C9 ; rest
|1AED2A:3242| db $18 ; duration
|1AED2B:3243| db $A6 ; play note D4
|1AED2C:3244| db $B2 ; play note D5
|1AED2D:3245| db $0C ; duration
|1AED2E:3246| db $BE ; play note D6

;---------------------------------------------------------------------------------------------------

Song21_Segment4_Track7:
|1AED2F:3247| db $EF : dw Song21_Sub_38B8 : db $01 ; call segment subroutine
|1AED33:324B| db $C9 ; rest
|1AED34:324C| db $C9 ; rest
|1AED35:324D| db $12 ; duration
|1AED36:324E| db $C9 ; rest
|1AED37:324F| db $18, $7D ; duration, params
|1AED39:3251| db $A4 ; play note C4
|1AED3A:3252| db $B0 ; play note C5
|1AED3B:3253| db $06 ; duration
|1AED3C:3254| db $BC ; play note C6
|1AED3D:3255| db $12 ; duration
|1AED3E:3256| db $C9 ; rest
|1AED3F:3257| db $18 ; duration
|1AED40:3258| db $A9 ; play note F4
|1AED41:3259| db $B5 ; play note F5
|1AED42:325A| db $06 ; duration
|1AED43:325B| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song21_Segment7_Track0:
|1AED44:325C| db $E8, $5A, $1A ; initiate gradual tempo change
|1AED47:325F| db $E0, $0A ; set instrument - strings B
|1AED49:3261| db $ED, $C8 ; set channel volume
|1AED4B:3263| db $E3, $12, $18, $16 ; enable vibrato
|1AED4F:3267| db $E1, $0E ; set panning - leaning left
|1AED51:3269| db $18, $5D ; duration, params
|1AED53:326B| db $B0 ; play note C5
|1AED54:326C| db $10, $3D ; duration, params
|1AED56:326E| db $AB ; play note G4
|1AED57:326F| db $08, $5D ; duration, params
|1AED59:3271| db $B0 ; play note C5
|1AED5A:3272| db $18 ; duration
|1AED5B:3273| db $B2 ; play note D5
|1AED5C:3274| db $10, $3D ; duration, params
|1AED5E:3276| db $AB ; play note G4
|1AED5F:3277| db $08, $5D ; duration, params
|1AED61:3279| db $B2 ; play note D5
|1AED62:327A| db $EF : dw Song21_Sub_38CE : db $01 ; call segment subroutine
|1AED66:327E| db $EF : dw Song21_Sub_3525 : db $01 ; call segment subroutine
|1AED6A:3282| db $18, $3D ; duration, params
|1AED6C:3284| db $AD ; play note A4
|1AED6D:3285| db $18, $6D ; duration, params
|1AED6F:3287| db $B5 ; play note F5
|1AED70:3288| db $18, $3D ; duration, params
|1AED72:328A| db $B2 ; play note D5
|1AED73:328B| db $08 ; duration
|1AED74:328C| db $B2 ; play note D5
|1AED75:328D| db $B0 ; play note C5
|1AED76:328E| db $AF ; play note B4
|1AED77:328F| db $60 ; duration
|1AED78:3290| db $B0 ; play note C5
|1AED79:3291| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Segment7_Track1:
|1AED7A:3292| db $E0, $0A ; set instrument - strings B
|1AED7C:3294| db $ED, $A0 ; set channel volume
|1AED7E:3296| db $E3, $12, $18, $16 ; enable vibrato
|1AED82:329A| db $E1, $0C ; set panning - leaning left
|1AED84:329C| db $08 ; duration
|1AED85:329D| db $C9 ; rest
|1AED86:329E| db $18, $5D ; duration, params
|1AED88:32A0| db $B0 ; play note C5
|1AED89:32A1| db $10, $3D ; duration, params
|1AED8B:32A3| db $AB ; play note G4
|1AED8C:32A4| db $08, $5D ; duration, params
|1AED8E:32A6| db $B0 ; play note C5
|1AED8F:32A7| db $18 ; duration
|1AED90:32A8| db $B2 ; play note D5
|1AED91:32A9| db $10, $3D ; duration, params
|1AED93:32AB| db $AB ; play note G4
|1AED94:32AC| db $08, $5D ; duration, params
|1AED96:32AE| db $B2 ; play note D5
|1AED97:32AF| db $EF : dw Song21_Sub_38CE : db $01 ; call segment subroutine
|1AED9B:32B3| db $EF : dw Song21_Sub_3525 : db $01 ; call segment subroutine
|1AED9F:32B7| db $18, $3D ; duration, params
|1AEDA1:32B9| db $AD ; play note A4
|1AEDA2:32BA| db $18, $6D ; duration, params
|1AEDA4:32BC| db $B5 ; play note F5
|1AEDA5:32BD| db $18, $3D ; duration, params
|1AEDA7:32BF| db $B2 ; play note D5
|1AEDA8:32C0| db $08 ; duration
|1AEDA9:32C1| db $B2 ; play note D5
|1AEDAA:32C2| db $08, $5D ; duration, params
|1AEDAC:32C4| db $B0 ; play note C5
|1AEDAD:32C5| db $AF ; play note B4
|1AEDAE:32C6| db $58 ; duration
|1AEDAF:32C7| db $B0 ; play note C5

;---------------------------------------------------------------------------------------------------

Song21_Segment7_Track2:
|1AEDB0:32C8| db $E0, $09 ; set instrument - strings A
|1AEDB2:32CA| db $ED, $DC ; set channel volume
|1AEDB4:32CC| db $E3, $18, $1A, $1C ; enable vibrato
|1AEDB8:32D0| db $E1, $02 ; set panning - leaning right
|1AEDBA:32D2| db $30, $7D ; duration, params
|1AEDBC:32D4| db $98 ; play note C3
|1AEDBD:32D5| db $97 ; play note B2
|1AEDBE:32D6| db $95 ; play note A2
|1AEDBF:32D7| db $90 ; play note E2
|1AEDC0:32D8| db $91 ; play note F2
|1AEDC1:32D9| db $92 ; play note F#2
|1AEDC2:32DA| db $93 ; play note G2
|1AEDC3:32DB| db $97 ; play note B2
|1AEDC4:32DC| db $98 ; play note C3
|1AEDC5:32DD| db $97 ; play note B2
|1AEDC6:32DE| db $95 ; play note A2
|1AEDC7:32DF| db $90 ; play note E2
|1AEDC8:32E0| db $91 ; play note F2
|1AEDC9:32E1| db $93 ; play note G2
|1AEDCA:32E2| db $60 ; duration
|1AEDCB:32E3| db $8C ; play note C2

;---------------------------------------------------------------------------------------------------

Song21_Segment7_Track3:
|1AEDCC:32E4| db $E0, $0A ; set instrument - strings B
|1AEDCE:32E6| db $ED, $B4 ; set channel volume
|1AEDD0:32E8| db $E3, $12, $18, $16 ; enable vibrato
|1AEDD4:32EC| db $E1, $0C ; set panning - leaning left
|1AEDD6:32EE| db $18, $5D ; duration, params
|1AEDD8:32F0| db $A8 ; play note E4
|1AEDD9:32F1| db $10, $3D ; duration, params
|1AEDDB:32F3| db $A4 ; play note C4
|1AEDDC:32F4| db $08, $5D ; duration, params
|1AEDDE:32F6| db $A8 ; play note E4
|1AEDDF:32F7| db $18 ; duration
|1AEDE0:32F8| db $A9 ; play note F4
|1AEDE1:32F9| db $10, $3D ; duration, params
|1AEDE3:32FB| db $A3 ; play note B3
|1AEDE4:32FC| db $08, $5D ; duration, params
|1AEDE6:32FE| db $A9 ; play note F4
|1AEDE7:32FF| db $EF : dw Song21_Sub_38E8 : db $01 ; call segment subroutine
|1AEDEB:3303| db $EF : dw Song21_Sub_3587 : db $01 ; call segment subroutine
|1AEDEF:3307| db $EF : dw Song21_Sub_3611 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song21_Segment7_Track4:
|1AEDF3:330B| db $E0, $0A ; set instrument - strings B
|1AEDF5:330D| db $ED, $8C ; set channel volume
|1AEDF7:330F| db $E3, $18, $1A, $1C ; enable vibrato
|1AEDFB:3313| db $E1, $10 ; set panning - leaning left
|1AEDFD:3315| db $60 ; duration
|1AEDFE:3316| db $C9 ; rest
|1AEDFF:3317| db $30 ; duration
|1AEE00:3318| db $C9 ; rest
|1AEE01:3319| db $C9 ; rest
|1AEE02:331A| db $60 ; duration
|1AEE03:331B| db $C9 ; rest
|1AEE04:331C| db $EF : dw Song21_Sub_35C0 : db $01 ; call segment subroutine
|1AEE08:3320| db $A9 ; play note F4
|1AEE09:3321| db $A6 ; play note D4
|1AEE0A:3322| db $60 ; duration
|1AEE0B:3323| db $A4 ; play note C4

;---------------------------------------------------------------------------------------------------

Song21_SegmentB_Track0:
|1AEE0C:3324| db $ED, $8C ; set channel volume
|1AEE0E:3326| db $E0, $11 ; set instrument - trumpet
|1AEE10:3328| db $E3, $18, $1A, $1C ; enable vibrato
|1AEE14:332C| db $E1, $04 ; set panning - leaning right
|1AEE16:332E| db $EF : dw Song21_Sub_37B5 : db $01 ; call segment subroutine
|1AEE1A:3332| db $EF : dw Song21_Sub_37ED : db $01 ; call segment subroutine
|1AEE1E:3336| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_SegmentB_Track1:
|1AEE1F:3337| db $ED, $B4 ; set channel volume
|1AEE21:3339| db $E0, $0A ; set instrument - strings B
|1AEE23:333B| db $E3, $18, $1B, $1C ; enable vibrato
|1AEE27:333F| db $E1, $0D ; set panning - leaning left
|1AEE29:3341| db $60 ; duration
|1AEE2A:3342| db $C9 ; rest
|1AEE2B:3343| db $30 ; duration
|1AEE2C:3344| db $C9 ; rest
|1AEE2D:3345| db $C9 ; rest
|1AEE2E:3346| db $60 ; duration
|1AEE2F:3347| db $C9 ; rest
|1AEE30:3348| db $30 ; duration
|1AEE31:3349| db $C9 ; rest
|1AEE32:334A| db $C9 ; rest
|1AEE33:334B| db $EF : dw Song21_Sub_35DB : db $01 ; call segment subroutine
|1AEE37:334F| db $EF : dw Song21_Sub_3800 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song21_SegmentB_Track2:
|1AEE3B:3353| db $60, $7D ; duration, params
|1AEE3D:3355| db $95 ; play note A2
|1AEE3E:3356| db $90 ; play note E2
|1AEE3F:3357| db $91 ; play note F2
|1AEE40:3358| db $8C ; play note C2
|1AEE41:3359| db $8E ; play note D2
|1AEE42:335A| db $95 ; play note A2
|1AEE43:335B| db $92 ; play note F#2
|1AEE44:335C| db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song21_SegmentB_Track3:
|1AEE45:335D| db $E0, $0A ; set instrument - strings B
|1AEE47:335F| db $ED, $64 ; set channel volume
|1AEE49:3361| db $E1, $0E ; set panning - leaning left
|1AEE4B:3363| db $EF : dw Song21_Sub_3902 : db $01 ; call segment subroutine
|1AEE4F:3367| db $AD ; play note A4
|1AEE50:3368| db $AD ; play note A4
|1AEE51:3369| db $AD ; play note A4
|1AEE52:336A| db $AD ; play note A4
|1AEE53:336B| db $AD ; play note A4
|1AEE54:336C| db $AD ; play note A4
|1AEE55:336D| db $AD ; play note A4
|1AEE56:336E| db $AD ; play note A4
|1AEE57:336F| db $AB ; play note G4
|1AEE58:3370| db $AB ; play note G4
|1AEE59:3371| db $AB ; play note G4
|1AEE5A:3372| db $AB ; play note G4
|1AEE5B:3373| db $AB ; play note G4
|1AEE5C:3374| db $AB ; play note G4
|1AEE5D:3375| db $AB ; play note G4
|1AEE5E:3376| db $AB ; play note G4
|1AEE5F:3377| db $AD ; play note A4
|1AEE60:3378| db $AD ; play note A4
|1AEE61:3379| db $AD ; play note A4
|1AEE62:337A| db $AD ; play note A4
|1AEE63:337B| db $AD ; play note A4
|1AEE64:337C| db $AD ; play note A4
|1AEE65:337D| db $AD ; play note A4
|1AEE66:337E| db $AD ; play note A4
|1AEE67:337F| db $EF : dw Song21_Sub_3915 : db $02 ; call segment subroutine
|1AEE6B:3383| db $AF ; play note B4
|1AEE6C:3384| db $AF ; play note B4
|1AEE6D:3385| db $AF ; play note B4
|1AEE6E:3386| db $AF ; play note B4
|1AEE6F:3387| db $AF ; play note B4
|1AEE70:3388| db $AF ; play note B4
|1AEE71:3389| db $AF ; play note B4
|1AEE72:338A| db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song21_SegmentB_Track4:
|1AEE73:338B| db $E0, $0A ; set instrument - strings B
|1AEE75:338D| db $ED, $64 ; set channel volume
|1AEE77:338F| db $E1, $0C ; set panning - leaning left
|1AEE79:3391| db $0C, $5D ; duration, params
|1AEE7B:3393| db $B4 ; play note E5
|1AEE7C:3394| db $B4 ; play note E5
|1AEE7D:3395| db $B4 ; play note E5
|1AEE7E:3396| db $B4 ; play note E5
|1AEE7F:3397| db $B4 ; play note E5
|1AEE80:3398| db $B4 ; play note E5
|1AEE81:3399| db $B4 ; play note E5
|1AEE82:339A| db $B4 ; play note E5
|1AEE83:339B| db $EF : dw Song21_Sub_391E : db $03 ; call segment subroutine
|1AEE87:339F| db $EF : dw Song21_Sub_3927 : db $01 ; call segment subroutine
|1AEE8B:33A3| db $B6 ; play note F#5
|1AEE8C:33A4| db $B6 ; play note F#5
|1AEE8D:33A5| db $B6 ; play note F#5
|1AEE8E:33A6| db $B6 ; play note F#5
|1AEE8F:33A7| db $B6 ; play note F#5
|1AEE90:33A8| db $B6 ; play note F#5
|1AEE91:33A9| db $B6 ; play note F#5
|1AEE92:33AA| db $B6 ; play note F#5
|1AEE93:33AB| db $B7 ; play note G5
|1AEE94:33AC| db $B7 ; play note G5
|1AEE95:33AD| db $B7 ; play note G5
|1AEE96:33AE| db $B7 ; play note G5
|1AEE97:33AF| db $B7 ; play note G5
|1AEE98:33B0| db $B7 ; play note G5
|1AEE99:33B1| db $B7 ; play note G5
|1AEE9A:33B2| db $B7 ; play note G5

;---------------------------------------------------------------------------------------------------

Song21_SegmentB_Track5:
|1AEE9B:33B3| db $ED, $C8 ; set channel volume
|1AEE9D:33B5| db $E1, $08 ; set panning - leaning right
|1AEE9F:33B7| db $48, $7D ; duration, params
|1AEEA1:33B9| db $A4 ; play note C4
|1AEEA2:33BA| db $08 ; duration
|1AEEA3:33BB| db $A6 ; play note D4
|1AEEA4:33BC| db $C9 ; rest
|1AEEA5:33BD| db $A8 ; play note E4
|1AEEA6:33BE| db $48 ; duration
|1AEEA7:33BF| db $A3 ; play note B3
|1AEEA8:33C0| db $08 ; duration
|1AEEA9:33C1| db $9F ; play note G3
|1AEEAA:33C2| db $C9 ; rest
|1AEEAB:33C3| db $9F ; play note G3
|1AEEAC:33C4| db $48 ; duration
|1AEEAD:33C5| db $A1 ; play note A3
|1AEEAE:33C6| db $08 ; duration
|1AEEAF:33C7| db $A4 ; play note C4
|1AEEB0:33C8| db $C9 ; rest
|1AEEB1:33C9| db $A6 ; play note D4
|1AEEB2:33CA| db $48 ; duration
|1AEEB3:33CB| db $A8 ; play note E4
|1AEEB4:33CC| db $18 ; duration
|1AEEB5:33CD| db $A8 ; play note E4
|1AEEB6:33CE| db $48 ; duration
|1AEEB7:33CF| db $A9 ; play note F4
|1AEEB8:33D0| db $08 ; duration
|1AEEB9:33D1| db $A9 ; play note F4
|1AEEBA:33D2| db $A8 ; play note E4
|1AEEBB:33D3| db $A6 ; play note D4
|1AEEBC:33D4| db $EF : dw Song21_Sub_3829 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song21_SegmentC_Track0:
|1AEEC0:33D8| db $EF : dw Song21_Sub_3838 : db $01 ; call segment subroutine
|1AEEC4:33DC| db $EF : dw Song21_Sub_3870 : db $01 ; call segment subroutine
|1AEEC8:33E0| db $A6 ; play note D4
|1AEEC9:33E1| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_SegmentC_Track1:
|1AEECA:33E2| db $ED, $B4 ; set channel volume
|1AEECC:33E4| db $E0, $0A ; set instrument - strings B
|1AEECE:33E6| db $E3, $18, $1A, $1C ; enable vibrato
|1AEED2:33EA| db $E1, $0E ; set panning - leaning left
|1AEED4:33EC| db $EF : dw Song21_Sub_388E : db $01 ; call segment subroutine
|1AEED8:33F0| db $48 ; duration
|1AEED9:33F1| db $A8 ; play note E4
|1AEEDA:33F2| db $10 ; duration
|1AEEDB:33F3| db $A4 ; play note C4
|1AEEDC:33F4| db $08 ; duration
|1AEEDD:33F5| db $A6 ; play note D4
|1AEEDE:33F6| db $48 ; duration
|1AEEDF:33F7| db $A8 ; play note E4
|1AEEE0:33F8| db $08 ; duration
|1AEEE1:33F9| db $A8 ; play note E4
|1AEEE2:33FA| db $A8 ; play note E4
|1AEEE3:33FB| db $A8 ; play note E4
|1AEEE4:33FC| db $48 ; duration
|1AEEE5:33FD| db $A9 ; play note F4
|1AEEE6:33FE| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song21_SegmentC_Track2:
|1AEEE7:33FF| db $60, $7D ; duration, params
|1AEEE9:3401| db $95 ; play note A2
|1AEEEA:3402| db $90 ; play note E2
|1AEEEB:3403| db $91 ; play note F2
|1AEEEC:3404| db $8C ; play note C2
|1AEEED:3405| db $8E ; play note D2
|1AEEEE:3406| db $95 ; play note A2
|1AEEEF:3407| db $94 ; play note G#2
|1AEEF0:3408| db $92 ; play note F#2
|1AEEF1:3409| db $E8, $50, $15 ; initiate gradual tempo change
|1AEEF4:340C| db $90 ; play note E2
|1AEEF5:340D| db $48 ; duration
|1AEEF6:340E| db $8E ; play note D2
|1AEEF7:340F| db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song21_SegmentC_Track3:
|1AEEF8:3410| db $E0, $0A ; set instrument - strings B
|1AEEFA:3412| db $ED, $64 ; set channel volume
|1AEEFC:3414| db $E1, $0E ; set panning - leaning left
|1AEEFE:3416| db $EF : dw Song21_Sub_3902 : db $01 ; call segment subroutine
|1AEF02:341A| db $AD ; play note A4
|1AEF03:341B| db $AD ; play note A4
|1AEF04:341C| db $AD ; play note A4
|1AEF05:341D| db $AD ; play note A4
|1AEF06:341E| db $AD ; play note A4
|1AEF07:341F| db $AD ; play note A4
|1AEF08:3420| db $AD ; play note A4
|1AEF09:3421| db $AD ; play note A4
|1AEF0A:3422| db $AB ; play note G4
|1AEF0B:3423| db $AB ; play note G4
|1AEF0C:3424| db $AB ; play note G4
|1AEF0D:3425| db $AB ; play note G4
|1AEF0E:3426| db $AB ; play note G4
|1AEF0F:3427| db $AB ; play note G4
|1AEF10:3428| db $AB ; play note G4
|1AEF11:3429| db $AB ; play note G4
|1AEF12:342A| db $AD ; play note A4
|1AEF13:342B| db $AD ; play note A4
|1AEF14:342C| db $AD ; play note A4
|1AEF15:342D| db $AD ; play note A4
|1AEF16:342E| db $AD ; play note A4
|1AEF17:342F| db $AD ; play note A4
|1AEF18:3430| db $AD ; play note A4
|1AEF19:3431| db $AD ; play note A4
|1AEF1A:3432| db $EF : dw Song21_Sub_3915 : db $04 ; call segment subroutine
|1AEF1E:3436| db $B0 ; play note C5
|1AEF1F:3437| db $B0 ; play note C5
|1AEF20:3438| db $B0 ; play note C5
|1AEF21:3439| db $B0 ; play note C5
|1AEF22:343A| db $B0 ; play note C5
|1AEF23:343B| db $B0 ; play note C5
|1AEF24:343C| db $AF ; play note B4
|1AEF25:343D| db $AF ; play note B4
|1AEF26:343E| db $AF ; play note B4
|1AEF27:343F| db $AF ; play note B4
|1AEF28:3440| db $18 ; duration
|1AEF29:3441| db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song21_SegmentC_Track4:
|1AEF2A:3442| db $E0, $0A ; set instrument - strings B
|1AEF2C:3444| db $ED, $64 ; set channel volume
|1AEF2E:3446| db $E1, $0C ; set panning - leaning left
|1AEF30:3448| db $0C, $5D ; duration, params
|1AEF32:344A| db $B4 ; play note E5
|1AEF33:344B| db $B4 ; play note E5
|1AEF34:344C| db $B4 ; play note E5
|1AEF35:344D| db $B4 ; play note E5
|1AEF36:344E| db $B4 ; play note E5
|1AEF37:344F| db $B4 ; play note E5
|1AEF38:3450| db $B4 ; play note E5
|1AEF39:3451| db $B4 ; play note E5
|1AEF3A:3452| db $EF : dw Song21_Sub_391E : db $03 ; call segment subroutine
|1AEF3E:3456| db $EF : dw Song21_Sub_3927 : db $01 ; call segment subroutine
|1AEF42:345A| db $B3 ; play note D#5
|1AEF43:345B| db $B3 ; play note D#5
|1AEF44:345C| db $B3 ; play note D#5
|1AEF45:345D| db $B3 ; play note D#5
|1AEF46:345E| db $B3 ; play note D#5
|1AEF47:345F| db $B3 ; play note D#5
|1AEF48:3460| db $B3 ; play note D#5
|1AEF49:3461| db $B3 ; play note D#5
|1AEF4A:3462| db $EF : dw Song21_Sub_391E : db $02 ; call segment subroutine
|1AEF4E:3466| db $B5 ; play note F5
|1AEF4F:3467| db $B5 ; play note F5
|1AEF50:3468| db $B5 ; play note F5
|1AEF51:3469| db $B5 ; play note F5
|1AEF52:346A| db $B5 ; play note F5
|1AEF53:346B| db $B5 ; play note F5
|1AEF54:346C| db $B5 ; play note F5
|1AEF55:346D| db $B5 ; play note F5
|1AEF56:346E| db $B5 ; play note F5
|1AEF57:346F| db $B5 ; play note F5
|1AEF58:3470| db $18 ; duration
|1AEF59:3471| db $B5 ; play note F5

;---------------------------------------------------------------------------------------------------

Song21_SegmentC_Track5:
|1AEF5A:3472| db $EF : dw Song21_Sub_380B : db $01 ; call segment subroutine
|1AEF5E:3476| db $48 ; duration
|1AEF5F:3477| db $A8 ; play note E4
|1AEF60:3478| db $10 ; duration
|1AEF61:3479| db $AD ; play note A4
|1AEF62:347A| db $08 ; duration
|1AEF63:347B| db $AF ; play note B4
|1AEF64:347C| db $EF : dw Song21_Sub_38C7 : db $02 ; call segment subroutine
|1AEF68:3480| db $48 ; duration
|1AEF69:3481| db $B0 ; play note C5
|1AEF6A:3482| db $08 ; duration
|1AEF6B:3483| db $B0 ; play note C5
|1AEF6C:3484| db $B0 ; play note C5
|1AEF6D:3485| db $B0 ; play note C5
|1AEF6E:3486| db $48 ; duration
|1AEF6F:3487| db $B0 ; play note C5
|1AEF70:3488| db $B2 ; play note D5

;---------------------------------------------------------------------------------------------------

Song21_Unused0_Track0:
|1AEF71:3489| db $E5, $C8 ; set song volume
|1AEF73:348B| db $F5, $FF, $28, $28 ; configure EON, EVOLL, EVOLR
|1AEF77:348F| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1AEF7B:3493| db $E7, $23 ; set song tempo
|1AEF7D:3495| db $E0, $09 ; set instrument - strings A
|1AEF7F:3497| db $ED, $C8 ; set channel volume
|1AEF81:3499| db $E3, $12, $18, $16 ; enable vibrato
|1AEF85:349D| db $E1, $0A ; set panning - balanced
|1AEF87:349F| db $30, $7D ; duration, params
|1AEF89:34A1| db $B3 ; play note D#5
|1AEF8A:34A2| db $AC ; play note G#4
|1AEF8B:34A3| db $B5 ; play note F5
|1AEF8C:34A4| db $AE ; play note A#4
|1AEF8D:34A5| db $60, $5D ; duration, params
|1AEF8F:34A7| db $B7 ; play note G5
|1AEF90:34A8| db $C8 ; sustain current note
|1AEF91:34A9| db $E6, $50, $8C ; initiate gradual song volume change
|1AEF94:34AC| db $C8 ; sustain current note
|1AEF95:34AD| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Unused0_Track1:
|1AEF96:34AE| db $EF : dw Song21_Sub_36A5 : db $01 ; call segment subroutine
|1AEF9A:34B2| db $C8 ; sustain current note
|1AEF9B:34B3| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_Unused0_Track2:
|1AEF9C:34B4| db $EF : dw Song21_Sub_36C0 : db $01 ; call segment subroutine
|1AEFA0:34B8| db $96 ; play note A#2
|1AEFA1:34B9| db $98 ; play note C3
|1AEFA2:34BA| db $93 ; play note G2
|1AEFA3:34BB| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_Unused0_Track3:
|1AEFA4:34BC| db $EF : dw Song21_Sub_36CE : db $01 ; call segment subroutine
|1AEFA8:34C0| db $AF ; play note B4
|1AEFA9:34C1| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song21_Unused0_Track4:
|1AEFAA:34C2| db $EF : dw Song21_Sub_36E9 : db $01 ; call segment subroutine
|1AEFAE:34C6| db $BB ; play note B5
|1AEFAF:34C7| db $B2 ; play note D5
|1AEFB0:34C8| db $A9 ; play note F4
|1AEFB1:34C9| db $A9 ; play note F4
|1AEFB2:34CA| db $40 ; duration
|1AEFB3:34CB| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song21_Unused0_Track5:
|1AEFB4:34CC| db $EF : dw Song21_Sub_36FB : db $01 ; call segment subroutine
|1AEFB8:34D0| db $08 ; duration
|1AEFB9:34D1| db $C9 ; rest
|1AEFBA:34D2| db $20 ; duration
|1AEFBB:34D3| db $B5 ; play note F5
|1AEFBC:34D4| db $AF ; play note B4
|1AEFBD:34D5| db $AF ; play note B4
|1AEFBE:34D6| db $A6 ; play note D4
|1AEFBF:34D7| db $38 ; duration
|1AEFC0:34D8| db $9D ; play note F3

;---------------------------------------------------------------------------------------------------

Song21_Unused0_Track6:
|1AEFC1:34D9| db $EF : dw Song21_Sub_3718 : db $01 ; call segment subroutine
|1AEFC5:34DD| db $C9 ; rest
|1AEFC6:34DE| db $20 ; duration
|1AEFC7:34DF| db $B2 ; play note D5
|1AEFC8:34E0| db $B2 ; play note D5
|1AEFC9:34E1| db $A9 ; play note F4
|1AEFCA:34E2| db $A3 ; play note B3
|1AEFCB:34E3| db $30 ; duration
|1AEFCC:34E4| db $9A ; play note D3

;---------------------------------------------------------------------------------------------------

Song21_Unused0_Track7:
|1AEFCD:34E5| db $EF : dw Song21_Sub_3733 : db $01 ; call segment subroutine
|1AEFD1:34E9| db $18 ; duration
|1AEFD2:34EA| db $C9 ; rest
|1AEFD3:34EB| db $20 ; duration
|1AEFD4:34EC| db $B5 ; play note F5
|1AEFD5:34ED| db $AF ; play note B4
|1AEFD6:34EE| db $08 ; duration
|1AEFD7:34EF| db $A6 ; play note D4
|1AEFD8:34F0| db $18 ; duration
|1AEFD9:34F1| db $C8 ; sustain current note
|1AEFDA:34F2| db $48 ; duration
|1AEFDB:34F3| db $A6 ; play note D4
|1AEFDC:34F4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_34F5:
|1AEFDD:34F5| db $10, $3D ; duration, params
|1AEFDF:34F7| db $AB ; play note G4
|1AEFE0:34F8| db $08, $5D ; duration, params
|1AEFE2:34FA| db $AB ; play note G4
|1AEFE3:34FB| db $18 ; duration
|1AEFE4:34FC| db $B0 ; play note C5
|1AEFE5:34FD| db $10, $3D ; duration, params
|1AEFE7:34FF| db $AB ; play note G4
|1AEFE8:3500| db $08, $5D ; duration, params
|1AEFEA:3502| db $B0 ; play note C5
|1AEFEB:3503| db $18 ; duration
|1AEFEC:3504| db $B2 ; play note D5
|1AEFED:3505| db $10, $3D ; duration, params
|1AEFEF:3507| db $AB ; play note G4
|1AEFF0:3508| db $08, $5D ; duration, params
|1AEFF2:350A| db $B2 ; play note D5
|1AEFF3:350B| db $20, $7D ; duration, params
|1AEFF5:350D| db $B5 ; play note F5
|1AEFF6:350E| db $08, $4D ; duration, params
|1AEFF8:3510| db $B4 ; play note E5
|1AEFF9:3511| db $B2 ; play note D5
|1AEFFA:3512| db $18, $5D ; duration, params
|1AEFFC:3514| db $B0 ; play note C5
|1AEFFD:3515| db $18, $4D ; duration, params
|1AEFFF:3517| db $AB ; play note G4
|1AF000:3518| db $18, $6D ; duration, params
|1AF002:351A| db $AD ; play note A4
|1AF003:351B| db $18, $3D ; duration, params
|1AF005:351D| db $B0 ; play note C5
|1AF006:351E| db $18, $6D ; duration, params
|1AF008:3520| db $B2 ; play note D5
|1AF009:3521| db $18, $3D ; duration, params
|1AF00B:3523| db $B0 ; play note C5
|1AF00C:3524| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_3525:
|1AF00D:3525| db $24, $6D ; duration, params
|1AF00F:3527| db $B0 ; play note C5
|1AF010:3528| db $06, $3D ; duration, params
|1AF012:352A| db $AF ; play note B4
|1AF013:352B| db $06, $5D ; duration, params
|1AF015:352D| db $AD ; play note A4
|1AF016:352E| db $18 ; duration
|1AF017:352F| db $AB ; play note G4
|1AF018:3530| db $10, $3D ; duration, params
|1AF01A:3532| db $AB ; play note G4
|1AF01B:3533| db $08, $5D ; duration, params
|1AF01D:3535| db $AB ; play note G4
|1AF01E:3536| db $18 ; duration
|1AF01F:3537| db $B0 ; play note C5
|1AF020:3538| db $10, $3D ; duration, params
|1AF022:353A| db $AB ; play note G4
|1AF023:353B| db $08, $5D ; duration, params
|1AF025:353D| db $B0 ; play note C5
|1AF026:353E| db $18 ; duration
|1AF027:353F| db $B2 ; play note D5
|1AF028:3540| db $10, $3D ; duration, params
|1AF02A:3542| db $AB ; play note G4
|1AF02B:3543| db $08, $5D ; duration, params
|1AF02D:3545| db $B2 ; play note D5
|1AF02E:3546| db $20, $7D ; duration, params
|1AF030:3548| db $B5 ; play note F5
|1AF031:3549| db $08, $4D ; duration, params
|1AF033:354B| db $B4 ; play note E5
|1AF034:354C| db $B5 ; play note F5
|1AF035:354D| db $18, $5D ; duration, params
|1AF037:354F| db $B7 ; play note G5
|1AF038:3550| db $10, $6D ; duration, params
|1AF03A:3552| db $B0 ; play note C5
|1AF03B:3553| db $08, $5D ; duration, params
|1AF03D:3555| db $AF ; play note B4
|1AF03E:3556| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_3557:
|1AF03F:3557| db $10, $3D ; duration, params
|1AF041:3559| db $A3 ; play note B3
|1AF042:355A| db $08, $5D ; duration, params
|1AF044:355C| db $A3 ; play note B3
|1AF045:355D| db $18 ; duration
|1AF046:355E| db $A8 ; play note E4
|1AF047:355F| db $10, $3D ; duration, params
|1AF049:3561| db $A4 ; play note C4
|1AF04A:3562| db $08, $5D ; duration, params
|1AF04C:3564| db $A8 ; play note E4
|1AF04D:3565| db $18 ; duration
|1AF04E:3566| db $A9 ; play note F4
|1AF04F:3567| db $10, $3D ; duration, params
|1AF051:3569| db $A3 ; play note B3
|1AF052:356A| db $08, $5D ; duration, params
|1AF054:356C| db $A9 ; play note F4
|1AF055:356D| db $20, $7D ; duration, params
|1AF057:356F| db $AD ; play note A4
|1AF058:3570| db $08, $4D ; duration, params
|1AF05A:3572| db $AB ; play note G4
|1AF05B:3573| db $A9 ; play note F4
|1AF05C:3574| db $18, $5D ; duration, params
|1AF05E:3576| db $A8 ; play note E4
|1AF05F:3577| db $18, $4D ; duration, params
|1AF061:3579| db $A4 ; play note C4
|1AF062:357A| db $18, $6D ; duration, params
|1AF064:357C| db $A4 ; play note C4
|1AF065:357D| db $18, $3D ; duration, params
|1AF067:357F| db $A9 ; play note F4
|1AF068:3580| db $18, $6D ; duration, params
|1AF06A:3582| db $AA ; play note F#4
|1AF06B:3583| db $18, $3D ; duration, params
|1AF06D:3585| db $AA ; play note F#4
|1AF06E:3586| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_3587:
|1AF06F:3587| db $24, $6D ; duration, params
|1AF071:3589| db $A9 ; play note F4
|1AF072:358A| db $06, $3D ; duration, params
|1AF074:358C| db $A6 ; play note D4
|1AF075:358D| db $06, $5D ; duration, params
|1AF077:358F| db $A4 ; play note C4
|1AF078:3590| db $18 ; duration
|1AF079:3591| db $A3 ; play note B3
|1AF07A:3592| db $10, $3D ; duration, params
|1AF07C:3594| db $A3 ; play note B3
|1AF07D:3595| db $08, $5D ; duration, params
|1AF07F:3597| db $A3 ; play note B3
|1AF080:3598| db $18 ; duration
|1AF081:3599| db $A8 ; play note E4
|1AF082:359A| db $10, $3D ; duration, params
|1AF084:359C| db $A4 ; play note C4
|1AF085:359D| db $08, $5D ; duration, params
|1AF087:359F| db $A8 ; play note E4
|1AF088:35A0| db $18 ; duration
|1AF089:35A1| db $A9 ; play note F4
|1AF08A:35A2| db $10, $3D ; duration, params
|1AF08C:35A4| db $A3 ; play note B3
|1AF08D:35A5| db $08, $5D ; duration, params
|1AF08F:35A7| db $A9 ; play note F4
|1AF090:35A8| db $20, $7D ; duration, params
|1AF092:35AA| db $AD ; play note A4
|1AF093:35AB| db $08, $4D ; duration, params
|1AF095:35AD| db $AB ; play note G4
|1AF096:35AE| db $AD ; play note A4
|1AF097:35AF| db $18, $5D ; duration, params
|1AF099:35B1| db $AF ; play note B4
|1AF09A:35B2| db $10, $6D ; duration, params
|1AF09C:35B4| db $A8 ; play note E4
|1AF09D:35B5| db $08, $5D ; duration, params
|1AF09F:35B7| db $A6 ; play note D4
|1AF0A0:35B8| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_35B9:
|1AF0A1:35B9| db $18 ; duration
|1AF0A2:35BA| db $C9 ; rest
|1AF0A3:35BB| db $60 ; duration
|1AF0A4:35BC| db $C9 ; rest
|1AF0A5:35BD| db $C9 ; rest
|1AF0A6:35BE| db $C9 ; rest
|1AF0A7:35BF| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_35C0:
|1AF0A8:35C0| db $48 ; duration
|1AF0A9:35C1| db $C9 ; rest
|1AF0AA:35C2| db $18, $7D ; duration, params
|1AF0AC:35C4| db $A9 ; play note F4
|1AF0AD:35C5| db $30 ; duration
|1AF0AE:35C6| db $A8 ; play note E4
|1AF0AF:35C7| db $A6 ; play note D4
|1AF0B0:35C8| db $A4 ; play note C4
|1AF0B1:35C9| db $A8 ; play note E4
|1AF0B2:35CA| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_35CB:
|1AF0B3:35CB| db $60 ; duration
|1AF0B4:35CC| db $C9 ; rest
|1AF0B5:35CD| db $C9 ; rest
|1AF0B6:35CE| db $C9 ; rest
|1AF0B7:35CF| db $C9 ; rest
|1AF0B8:35D0| db $C9 ; rest
|1AF0B9:35D1| db $C9 ; rest
|1AF0BA:35D2| db $C9 ; rest
|1AF0BB:35D3| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_35D4:
|1AF0BC:35D4| db $30, $7D ; duration, params
|1AF0BE:35D6| db $89 ; play note A1
|1AF0BF:35D7| db $89 ; play note A1
|1AF0C0:35D8| db $89 ; play note A1
|1AF0C1:35D9| db $89 ; play note A1
|1AF0C2:35DA| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_35DB:
|1AF0C3:35DB| db $60 ; duration
|1AF0C4:35DC| db $C9 ; rest
|1AF0C5:35DD| db $C9 ; rest
|1AF0C6:35DE| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_35DF:
|1AF0C7:35DF| db $48 ; duration
|1AF0C8:35E0| db $A4 ; play note C4
|1AF0C9:35E1| db $06 ; duration
|1AF0CA:35E2| db $A4 ; play note C4
|1AF0CB:35E3| db $A4 ; play note C4
|1AF0CC:35E4| db $A4 ; play note C4
|1AF0CD:35E5| db $A4 ; play note C4
|1AF0CE:35E6| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_35E7:
|1AF0CF:35E7| db $18 ; duration
|1AF0D0:35E8| db $B0 ; play note C5
|1AF0D1:35E9| db $10, $3D ; duration, params
|1AF0D3:35EB| db $AB ; play note G4
|1AF0D4:35EC| db $08, $5D ; duration, params
|1AF0D6:35EE| db $B0 ; play note C5
|1AF0D7:35EF| db $18 ; duration
|1AF0D8:35F0| db $B2 ; play note D5
|1AF0D9:35F1| db $10, $3D ; duration, params
|1AF0DB:35F3| db $AB ; play note G4
|1AF0DC:35F4| db $08, $5D ; duration, params
|1AF0DE:35F6| db $B2 ; play note D5
|1AF0DF:35F7| db $20, $7D ; duration, params
|1AF0E1:35F9| db $B5 ; play note F5
|1AF0E2:35FA| db $08, $4D ; duration, params
|1AF0E4:35FC| db $B4 ; play note E5
|1AF0E5:35FD| db $B2 ; play note D5
|1AF0E6:35FE| db $18, $5D ; duration, params
|1AF0E8:3600| db $B0 ; play note C5
|1AF0E9:3601| db $18, $4D ; duration, params
|1AF0EB:3603| db $AB ; play note G4
|1AF0EC:3604| db $18, $6D ; duration, params
|1AF0EE:3606| db $AD ; play note A4
|1AF0EF:3607| db $18, $3D ; duration, params
|1AF0F1:3609| db $B0 ; play note C5
|1AF0F2:360A| db $18, $6D ; duration, params
|1AF0F4:360C| db $B2 ; play note D5
|1AF0F5:360D| db $18, $3D ; duration, params
|1AF0F7:360F| db $B0 ; play note C5
|1AF0F8:3610| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_3611:
|1AF0F9:3611| db $18, $3D ; duration, params
|1AF0FB:3613| db $A4 ; play note C4
|1AF0FC:3614| db $18, $6D ; duration, params
|1AF0FE:3616| db $AD ; play note A4
|1AF0FF:3617| db $18, $3D ; duration, params
|1AF101:3619| db $A9 ; play note F4
|1AF102:361A| db $08 ; duration
|1AF103:361B| db $A9 ; play note F4
|1AF104:361C| db $08, $5D ; duration, params
|1AF106:361E| db $A8 ; play note E4
|1AF107:361F| db $A6 ; play note D4
|1AF108:3620| db $60 ; duration
|1AF109:3621| db $A8 ; play note E4
|1AF10A:3622| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_3623:
|1AF10B:3623| db $48, $7D ; duration, params
|1AF10D:3625| db $AB ; play note G4
|1AF10E:3626| db $10, $4D ; duration, params
|1AF110:3628| db $AB ; play note G4
|1AF111:3629| db $08 ; duration
|1AF112:362A| db $AB ; play note G4
|1AF113:362B| db $48, $6D ; duration, params
|1AF115:362D| db $A9 ; play note F4
|1AF116:362E| db $10, $3D ; duration, params
|1AF118:3630| db $AB ; play note G4
|1AF119:3631| db $08, $6D ; duration, params
|1AF11B:3633| db $AD ; play note A4
|1AF11C:3634| db $48 ; duration
|1AF11D:3635| db $A8 ; play note E4
|1AF11E:3636| db $10, $3D ; duration, params
|1AF120:3638| db $B0 ; play note C5
|1AF121:3639| db $08, $5D ; duration, params
|1AF123:363B| db $AF ; play note B4
|1AF124:363C| db $48 ; duration
|1AF125:363D| db $AD ; play note A4
|1AF126:363E| db $10, $3D ; duration, params
|1AF128:3640| db $AF ; play note B4
|1AF129:3641| db $08, $5D ; duration, params
|1AF12B:3643| db $B0 ; play note C5
|1AF12C:3644| db $48, $7D ; duration, params
|1AF12E:3646| db $AB ; play note G4
|1AF12F:3647| db $10, $4D ; duration, params
|1AF131:3649| db $B0 ; play note C5
|1AF132:364A| db $08 ; duration
|1AF133:364B| db $B0 ; play note C5
|1AF134:364C| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_364D:
|1AF135:364D| db $0C, $5D ; duration, params
|1AF137:364F| db $B4 ; play note E5
|1AF138:3650| db $B4 ; play note E5
|1AF139:3651| db $B4 ; play note E5
|1AF13A:3652| db $B4 ; play note E5
|1AF13B:3653| db $B4 ; play note E5
|1AF13C:3654| db $B4 ; play note E5
|1AF13D:3655| db $B4 ; play note E5
|1AF13E:3656| db $B5 ; play note F5
|1AF13F:3657| db $C8 ; sustain current note
|1AF140:3658| db $B5 ; play note F5
|1AF141:3659| db $B5 ; play note F5
|1AF142:365A| db $B5 ; play note F5
|1AF143:365B| db $B5 ; play note F5
|1AF144:365C| db $B5 ; play note F5
|1AF145:365D| db $B5 ; play note F5
|1AF146:365E| db $B2 ; play note D5
|1AF147:365F| db $C8 ; sustain current note
|1AF148:3660| db $B2 ; play note D5
|1AF149:3661| db $B2 ; play note D5
|1AF14A:3662| db $B2 ; play note D5
|1AF14B:3663| db $B2 ; play note D5
|1AF14C:3664| db $B2 ; play note D5
|1AF14D:3665| db $B2 ; play note D5
|1AF14E:3666| db $B4 ; play note E5
|1AF14F:3667| db $C8 ; sustain current note
|1AF150:3668| db $B4 ; play note E5
|1AF151:3669| db $B4 ; play note E5
|1AF152:366A| db $B4 ; play note E5
|1AF153:366B| db $B4 ; play note E5
|1AF154:366C| db $B4 ; play note E5
|1AF155:366D| db $B4 ; play note E5
|1AF156:366E| db $B4 ; play note E5
|1AF157:366F| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_3670:
|1AF158:3670| db $0C, $5D ; duration, params
|1AF15A:3672| db $B7 ; play note G5
|1AF15B:3673| db $B7 ; play note G5
|1AF15C:3674| db $B7 ; play note G5
|1AF15D:3675| db $B7 ; play note G5
|1AF15E:3676| db $B7 ; play note G5
|1AF15F:3677| db $B7 ; play note G5
|1AF160:3678| db $B7 ; play note G5
|1AF161:3679| db $B9 ; play note A5
|1AF162:367A| db $C8 ; sustain current note
|1AF163:367B| db $B9 ; play note A5
|1AF164:367C| db $B9 ; play note A5
|1AF165:367D| db $B9 ; play note A5
|1AF166:367E| db $B9 ; play note A5
|1AF167:367F| db $B9 ; play note A5
|1AF168:3680| db $B9 ; play note A5
|1AF169:3681| db $B5 ; play note F5
|1AF16A:3682| db $C8 ; sustain current note
|1AF16B:3683| db $B5 ; play note F5
|1AF16C:3684| db $B5 ; play note F5
|1AF16D:3685| db $B5 ; play note F5
|1AF16E:3686| db $B5 ; play note F5
|1AF16F:3687| db $B5 ; play note F5
|1AF170:3688| db $B5 ; play note F5
|1AF171:3689| db $B7 ; play note G5
|1AF172:368A| db $C8 ; sustain current note
|1AF173:368B| db $B7 ; play note G5
|1AF174:368C| db $B7 ; play note G5
|1AF175:368D| db $B7 ; play note G5
|1AF176:368E| db $B7 ; play note G5
|1AF177:368F| db $B7 ; play note G5
|1AF178:3690| db $B7 ; play note G5
|1AF179:3691| db $B7 ; play note G5
|1AF17A:3692| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_3693:
|1AF17B:3693| db $E0, $09 ; set instrument - strings A
|1AF17D:3695| db $ED, $C8 ; set channel volume
|1AF17F:3697| db $E3, $18, $1A, $1C ; enable vibrato
|1AF183:369B| db $E1, $08 ; set panning - leaning right
|1AF185:369D| db $48, $7D ; duration, params
|1AF187:369F| db $A8 ; play note E4
|1AF188:36A0| db $10 ; duration
|1AF189:36A1| db $A4 ; play note C4
|1AF18A:36A2| db $08 ; duration
|1AF18B:36A3| db $A1 ; play note A3
|1AF18C:36A4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_36A5:
|1AF18D:36A5| db $E0, $09 ; set instrument - strings A
|1AF18F:36A7| db $ED, $C8 ; set channel volume
|1AF191:36A9| db $E3, $12, $18, $16 ; enable vibrato
|1AF195:36AD| db $E1, $0A ; set panning - balanced
|1AF197:36AF| db $10 ; duration
|1AF198:36B0| db $C9 ; rest
|1AF199:36B1| db $30, $7D ; duration, params
|1AF19B:36B3| db $A4 ; play note C4
|1AF19C:36B4| db $20 ; duration
|1AF19D:36B5| db $B0 ; play note C5
|1AF19E:36B6| db $10 ; duration
|1AF19F:36B7| db $C9 ; rest
|1AF1A0:36B8| db $30 ; duration
|1AF1A1:36B9| db $A6 ; play note D4
|1AF1A2:36BA| db $20 ; duration
|1AF1A3:36BB| db $B2 ; play note D5
|1AF1A4:36BC| db $60, $5D ; duration, params
|1AF1A6:36BE| db $B2 ; play note D5
|1AF1A7:36BF| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_36C0:
|1AF1A8:36C0| db $E0, $09 ; set instrument - strings A
|1AF1AA:36C2| db $ED, $DC ; set channel volume
|1AF1AC:36C4| db $E3, $18, $1A, $1C ; enable vibrato
|1AF1B0:36C8| db $E1, $06 ; set panning - leaning right
|1AF1B2:36CA| db $60, $7D ; duration, params
|1AF1B4:36CC| db $94 ; play note G#2
|1AF1B5:36CD| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_36CE:
|1AF1B6:36CE| db $E0, $09 ; set instrument - strings A
|1AF1B8:36D0| db $ED, $C8 ; set channel volume
|1AF1BA:36D2| db $E3, $12, $18, $16 ; enable vibrato
|1AF1BE:36D6| db $E1, $08 ; set panning - leaning right
|1AF1C0:36D8| db $20 ; duration
|1AF1C1:36D9| db $C9 ; rest
|1AF1C2:36DA| db $30, $7D ; duration, params
|1AF1C4:36DC| db $A7 ; play note D#4
|1AF1C5:36DD| db $10 ; duration
|1AF1C6:36DE| db $B3 ; play note D#5
|1AF1C7:36DF| db $20 ; duration
|1AF1C8:36E0| db $C9 ; rest
|1AF1C9:36E1| db $30 ; duration
|1AF1CA:36E2| db $A9 ; play note F4
|1AF1CB:36E3| db $10 ; duration
|1AF1CC:36E4| db $B5 ; play note F5
|1AF1CD:36E5| db $60, $5D ; duration, params
|1AF1CF:36E7| db $B0 ; play note C5
|1AF1D0:36E8| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_36E9:
|1AF1D1:36E9| db $E0, $0F ; set instrument - harp
|1AF1D3:36EB| db $ED, $B4 ; set channel volume
|1AF1D5:36ED| db $E1, $0D ; set panning - leaning left
|1AF1D7:36EF| db $20, $7D ; duration, params
|1AF1D9:36F1| db $B8 ; play note G#5
|1AF1DA:36F2| db $A7 ; play note D#4
|1AF1DB:36F3| db $A7 ; play note D#4
|1AF1DC:36F4| db $BA ; play note A#5
|1AF1DD:36F5| db $A9 ; play note F4
|1AF1DE:36F6| db $A9 ; play note F4
|1AF1DF:36F7| db $BC ; play note C6
|1AF1E0:36F8| db $B7 ; play note G5
|1AF1E1:36F9| db $B4 ; play note E5
|1AF1E2:36FA| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_36FB:
|1AF1E3:36FB| db $E0, $0F ; set instrument - harp
|1AF1E5:36FD| db $ED, $B4 ; set channel volume
|1AF1E7:36FF| db $E1, $0D ; set panning - leaning left
|1AF1E9:3701| db $08 ; duration
|1AF1EA:3702| db $C9 ; rest
|1AF1EB:3703| db $20, $7D ; duration, params
|1AF1ED:3705| db $B3 ; play note D#5
|1AF1EE:3706| db $A4 ; play note C4
|1AF1EF:3707| db $18 ; duration
|1AF1F0:3708| db $AC ; play note G#4
|1AF1F1:3709| db $08 ; duration
|1AF1F2:370A| db $C9 ; rest
|1AF1F3:370B| db $20 ; duration
|1AF1F4:370C| db $B5 ; play note F5
|1AF1F5:370D| db $A6 ; play note D4
|1AF1F6:370E| db $18 ; duration
|1AF1F7:370F| db $AE ; play note A#4
|1AF1F8:3710| db $08 ; duration
|1AF1F9:3711| db $C9 ; rest
|1AF1FA:3712| db $20 ; duration
|1AF1FB:3713| db $B7 ; play note G5
|1AF1FC:3714| db $B4 ; play note E5
|1AF1FD:3715| db $18 ; duration
|1AF1FE:3716| db $B0 ; play note C5
|1AF1FF:3717| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_3718:
|1AF200:3718| db $E0, $0F ; set instrument - harp
|1AF202:371A| db $ED, $B4 ; set channel volume
|1AF204:371C| db $E1, $0D ; set panning - leaning left
|1AF206:371E| db $10 ; duration
|1AF207:371F| db $C9 ; rest
|1AF208:3720| db $20, $7D ; duration, params
|1AF20A:3722| db $B0 ; play note C5
|1AF20B:3723| db $A0 ; play note G#3
|1AF20C:3724| db $10 ; duration
|1AF20D:3725| db $B0 ; play note C5
|1AF20E:3726| db $C9 ; rest
|1AF20F:3727| db $20 ; duration
|1AF210:3728| db $B2 ; play note D5
|1AF211:3729| db $A2 ; play note A#3
|1AF212:372A| db $10 ; duration
|1AF213:372B| db $B2 ; play note D5
|1AF214:372C| db $C9 ; rest
|1AF215:372D| db $20 ; duration
|1AF216:372E| db $B4 ; play note E5
|1AF217:372F| db $B0 ; play note C5
|1AF218:3730| db $10 ; duration
|1AF219:3731| db $AB ; play note G4
|1AF21A:3732| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_3733:
|1AF21B:3733| db $E0, $0F ; set instrument - harp
|1AF21D:3735| db $ED, $B4 ; set channel volume
|1AF21F:3737| db $E1, $0D ; set panning - leaning left
|1AF221:3739| db $18 ; duration
|1AF222:373A| db $C9 ; rest
|1AF223:373B| db $20, $7D ; duration, params
|1AF225:373D| db $AC ; play note G#4
|1AF226:373E| db $A4 ; play note C4
|1AF227:373F| db $08 ; duration
|1AF228:3740| db $B3 ; play note D#5
|1AF229:3741| db $18 ; duration
|1AF22A:3742| db $C9 ; rest
|1AF22B:3743| db $20 ; duration
|1AF22C:3744| db $AE ; play note A#4
|1AF22D:3745| db $A6 ; play note D4
|1AF22E:3746| db $08 ; duration
|1AF22F:3747| db $B5 ; play note F5
|1AF230:3748| db $18 ; duration
|1AF231:3749| db $C9 ; rest
|1AF232:374A| db $20 ; duration
|1AF233:374B| db $B0 ; play note C5
|1AF234:374C| db $AB ; play note G4
|1AF235:374D| db $08 ; duration
|1AF236:374E| db $A8 ; play note E4
|1AF237:374F| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_3750:
|1AF238:3750| db $18, $5D ; duration, params
|1AF23A:3752| db $B5 ; play note F5
|1AF23B:3753| db $10, $3D ; duration, params
|1AF23D:3755| db $B0 ; play note C5
|1AF23E:3756| db $08, $5D ; duration, params
|1AF240:3758| db $B5 ; play note F5
|1AF241:3759| db $18 ; duration
|1AF242:375A| db $B7 ; play note G5
|1AF243:375B| db $10, $3D ; duration, params
|1AF245:375D| db $B0 ; play note C5
|1AF246:375E| db $08, $5D ; duration, params
|1AF248:3760| db $B7 ; play note G5
|1AF249:3761| db $20, $7D ; duration, params
|1AF24B:3763| db $BA ; play note A#5
|1AF24C:3764| db $08, $4D ; duration, params
|1AF24E:3766| db $B9 ; play note A5
|1AF24F:3767| db $B7 ; play note G5
|1AF250:3768| db $18, $5D ; duration, params
|1AF252:376A| db $B5 ; play note F5
|1AF253:376B| db $18, $4D ; duration, params
|1AF255:376D| db $B0 ; play note C5
|1AF256:376E| db $18, $6D ; duration, params
|1AF258:3770| db $B2 ; play note D5
|1AF259:3771| db $18, $3D ; duration, params
|1AF25B:3773| db $B5 ; play note F5
|1AF25C:3774| db $18, $6D ; duration, params
|1AF25E:3776| db $B7 ; play note G5
|1AF25F:3777| db $18, $3D ; duration, params
|1AF261:3779| db $B5 ; play note F5
|1AF262:377A| db $24, $6D ; duration, params
|1AF264:377C| db $B5 ; play note F5
|1AF265:377D| db $06, $3D ; duration, params
|1AF267:377F| db $B4 ; play note E5
|1AF268:3780| db $06, $5D ; duration, params
|1AF26A:3782| db $B2 ; play note D5
|1AF26B:3783| db $18 ; duration
|1AF26C:3784| db $B0 ; play note C5
|1AF26D:3785| db $10, $3D ; duration, params
|1AF26F:3787| db $B0 ; play note C5
|1AF270:3788| db $08, $5D ; duration, params
|1AF272:378A| db $B0 ; play note C5
|1AF273:378B| db $18 ; duration
|1AF274:378C| db $B5 ; play note F5
|1AF275:378D| db $10, $3D ; duration, params
|1AF277:378F| db $B0 ; play note C5
|1AF278:3790| db $08, $5D ; duration, params
|1AF27A:3792| db $B5 ; play note F5
|1AF27B:3793| db $18 ; duration
|1AF27C:3794| db $B7 ; play note G5
|1AF27D:3795| db $10, $3D ; duration, params
|1AF27F:3797| db $B0 ; play note C5
|1AF280:3798| db $08, $5D ; duration, params
|1AF282:379A| db $B7 ; play note G5
|1AF283:379B| db $20, $7D ; duration, params
|1AF285:379D| db $BA ; play note A#5
|1AF286:379E| db $08, $4D ; duration, params
|1AF288:37A0| db $B9 ; play note A5
|1AF289:37A1| db $BA ; play note A#5
|1AF28A:37A2| db $18, $5D ; duration, params
|1AF28C:37A4| db $BC ; play note C6
|1AF28D:37A5| db $10, $6D ; duration, params
|1AF28F:37A7| db $B5 ; play note F5
|1AF290:37A8| db $08, $5D ; duration, params
|1AF292:37AA| db $B4 ; play note E5
|1AF293:37AB| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_37AC:
|1AF294:37AC| db $18 ; duration
|1AF295:37AD| db $C9 ; rest
|1AF296:37AE| db $08 ; duration
|1AF297:37AF| db $B0 ; play note C5
|1AF298:37B0| db $B0 ; play note C5
|1AF299:37B1| db $B0 ; play note C5
|1AF29A:37B2| db $30 ; duration
|1AF29B:37B3| db $B0 ; play note C5
|1AF29C:37B4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_37B5:
|1AF29D:37B5| db $18 ; duration
|1AF29E:37B6| db $C9 ; rest
|1AF29F:37B7| db $06, $7D ; duration, params
|1AF2A1:37B9| db $98 ; play note C3
|1AF2A2:37BA| db $9C ; play note E3
|1AF2A3:37BB| db $A1 ; play note A3
|1AF2A4:37BC| db $A4 ; play note C4
|1AF2A5:37BD| db $30 ; duration
|1AF2A6:37BE| db $A8 ; play note E4
|1AF2A7:37BF| db $18 ; duration
|1AF2A8:37C0| db $C9 ; rest
|1AF2A9:37C1| db $06 ; duration
|1AF2AA:37C2| db $9F ; play note G3
|1AF2AB:37C3| db $A3 ; play note B3
|1AF2AC:37C4| db $A8 ; play note E4
|1AF2AD:37C5| db $AB ; play note G4
|1AF2AE:37C6| db $30 ; duration
|1AF2AF:37C7| db $AF ; play note B4
|1AF2B0:37C8| db $18 ; duration
|1AF2B1:37C9| db $C9 ; rest
|1AF2B2:37CA| db $06 ; duration
|1AF2B3:37CB| db $A1 ; play note A3
|1AF2B4:37CC| db $A4 ; play note C4
|1AF2B5:37CD| db $A9 ; play note F4
|1AF2B6:37CE| db $AD ; play note A4
|1AF2B7:37CF| db $30 ; duration
|1AF2B8:37D0| db $B0 ; play note C5
|1AF2B9:37D1| db $18 ; duration
|1AF2BA:37D2| db $C9 ; rest
|1AF2BB:37D3| db $06 ; duration
|1AF2BC:37D4| db $9C ; play note E3
|1AF2BD:37D5| db $9F ; play note G3
|1AF2BE:37D6| db $A4 ; play note C4
|1AF2BF:37D7| db $A8 ; play note E4
|1AF2C0:37D8| db $30 ; duration
|1AF2C1:37D9| db $AB ; play note G4
|1AF2C2:37DA| db $18 ; duration
|1AF2C3:37DB| db $C9 ; rest
|1AF2C4:37DC| db $06 ; duration
|1AF2C5:37DD| db $9D ; play note F3
|1AF2C6:37DE| db $A4 ; play note C4
|1AF2C7:37DF| db $A6 ; play note D4
|1AF2C8:37E0| db $A9 ; play note F4
|1AF2C9:37E1| db $30 ; duration
|1AF2CA:37E2| db $AD ; play note A4
|1AF2CB:37E3| db $18 ; duration
|1AF2CC:37E4| db $C9 ; rest
|1AF2CD:37E5| db $06 ; duration
|1AF2CE:37E6| db $A4 ; play note C4
|1AF2CF:37E7| db $A8 ; play note E4
|1AF2D0:37E8| db $AB ; play note G4
|1AF2D1:37E9| db $AD ; play note A4
|1AF2D2:37EA| db $30 ; duration
|1AF2D3:37EB| db $B0 ; play note C5
|1AF2D4:37EC| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_37ED:
|1AF2D5:37ED| db $18 ; duration
|1AF2D6:37EE| db $C9 ; rest
|1AF2D7:37EF| db $06 ; duration
|1AF2D8:37F0| db $A1 ; play note A3
|1AF2D9:37F1| db $A4 ; play note C4
|1AF2DA:37F2| db $A8 ; play note E4
|1AF2DB:37F3| db $AA ; play note F#4
|1AF2DC:37F4| db $30 ; duration
|1AF2DD:37F5| db $AD ; play note A4
|1AF2DE:37F6| db $18 ; duration
|1AF2DF:37F7| db $C9 ; rest
|1AF2E0:37F8| db $06 ; duration
|1AF2E1:37F9| db $A3 ; play note B3
|1AF2E2:37FA| db $A6 ; play note D4
|1AF2E3:37FB| db $A9 ; play note F4
|1AF2E4:37FC| db $AB ; play note G4
|1AF2E5:37FD| db $30 ; duration
|1AF2E6:37FE| db $AF ; play note B4
|1AF2E7:37FF| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_3800:
|1AF2E8:3800| db $30 ; duration
|1AF2E9:3801| db $C9 ; rest
|1AF2EA:3802| db $C9 ; rest
|1AF2EB:3803| db $48 ; duration
|1AF2EC:3804| db $C9 ; rest
|1AF2ED:3805| db $08, $4D ; duration, params
|1AF2EF:3807| db $A3 ; play note B3
|1AF2F0:3808| db $C9 ; rest
|1AF2F1:3809| db $A3 ; play note B3
|1AF2F2:380A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_380B:
|1AF2F3:380B| db $48, $7D ; duration, params
|1AF2F5:380D| db $B0 ; play note C5
|1AF2F6:380E| db $08 ; duration
|1AF2F7:380F| db $B0 ; play note C5
|1AF2F8:3810| db $AF ; play note B4
|1AF2F9:3811| db $AD ; play note A4
|1AF2FA:3812| db $48 ; duration
|1AF2FB:3813| db $AF ; play note B4
|1AF2FC:3814| db $08 ; duration
|1AF2FD:3815| db $AB ; play note G4
|1AF2FE:3816| db $C9 ; rest
|1AF2FF:3817| db $AB ; play note G4
|1AF300:3818| db $48 ; duration
|1AF301:3819| db $AD ; play note A4
|1AF302:381A| db $08 ; duration
|1AF303:381B| db $AD ; play note A4
|1AF304:381C| db $AB ; play note G4
|1AF305:381D| db $A9 ; play note F4
|1AF306:381E| db $48 ; duration
|1AF307:381F| db $AB ; play note G4
|1AF308:3820| db $18 ; duration
|1AF309:3821| db $A4 ; play note C4
|1AF30A:3822| db $48 ; duration
|1AF30B:3823| db $A9 ; play note F4
|1AF30C:3824| db $08 ; duration
|1AF30D:3825| db $A9 ; play note F4
|1AF30E:3826| db $A8 ; play note E4
|1AF30F:3827| db $A6 ; play note D4
|1AF310:3828| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_3829:
|1AF311:3829| db $30 ; duration
|1AF312:382A| db $A8 ; play note E4
|1AF313:382B| db $A4 ; play note C4
|1AF314:382C| db $48 ; duration
|1AF315:382D| db $A6 ; play note D4
|1AF316:382E| db $18 ; duration
|1AF317:382F| db $A4 ; play note C4
|1AF318:3830| db $48 ; duration
|1AF319:3831| db $A3 ; play note B3
|1AF31A:3832| db $08, $4D ; duration, params
|1AF31C:3834| db $AB ; play note G4
|1AF31D:3835| db $C9 ; rest
|1AF31E:3836| db $AB ; play note G4
|1AF31F:3837| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_3838:
|1AF320:3838| db $18 ; duration
|1AF321:3839| db $C9 ; rest
|1AF322:383A| db $06, $7D ; duration, params
|1AF324:383C| db $9C ; play note E3
|1AF325:383D| db $A1 ; play note A3
|1AF326:383E| db $A4 ; play note C4
|1AF327:383F| db $A8 ; play note E4
|1AF328:3840| db $30 ; duration
|1AF329:3841| db $AD ; play note A4
|1AF32A:3842| db $18 ; duration
|1AF32B:3843| db $C9 ; rest
|1AF32C:3844| db $06 ; duration
|1AF32D:3845| db $9F ; play note G3
|1AF32E:3846| db $A3 ; play note B3
|1AF32F:3847| db $A8 ; play note E4
|1AF330:3848| db $AB ; play note G4
|1AF331:3849| db $30 ; duration
|1AF332:384A| db $AF ; play note B4
|1AF333:384B| db $18 ; duration
|1AF334:384C| db $C9 ; rest
|1AF335:384D| db $06 ; duration
|1AF336:384E| db $A1 ; play note A3
|1AF337:384F| db $A4 ; play note C4
|1AF338:3850| db $A9 ; play note F4
|1AF339:3851| db $AD ; play note A4
|1AF33A:3852| db $30 ; duration
|1AF33B:3853| db $B0 ; play note C5
|1AF33C:3854| db $18 ; duration
|1AF33D:3855| db $C9 ; rest
|1AF33E:3856| db $06 ; duration
|1AF33F:3857| db $9C ; play note E3
|1AF340:3858| db $9F ; play note G3
|1AF341:3859| db $A4 ; play note C4
|1AF342:385A| db $A8 ; play note E4
|1AF343:385B| db $30 ; duration
|1AF344:385C| db $AB ; play note G4
|1AF345:385D| db $18 ; duration
|1AF346:385E| db $C9 ; rest
|1AF347:385F| db $06 ; duration
|1AF348:3860| db $9D ; play note F3
|1AF349:3861| db $A4 ; play note C4
|1AF34A:3862| db $A6 ; play note D4
|1AF34B:3863| db $A9 ; play note F4
|1AF34C:3864| db $30 ; duration
|1AF34D:3865| db $AD ; play note A4
|1AF34E:3866| db $18 ; duration
|1AF34F:3867| db $C9 ; rest
|1AF350:3868| db $06 ; duration
|1AF351:3869| db $A4 ; play note C4
|1AF352:386A| db $A8 ; play note E4
|1AF353:386B| db $AB ; play note G4
|1AF354:386C| db $AD ; play note A4
|1AF355:386D| db $30 ; duration
|1AF356:386E| db $B0 ; play note C5
|1AF357:386F| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_3870:
|1AF358:3870| db $18 ; duration
|1AF359:3871| db $C9 ; rest
|1AF35A:3872| db $06 ; duration
|1AF35B:3873| db $A4 ; play note C4
|1AF35C:3874| db $A7 ; play note D#4
|1AF35D:3875| db $AA ; play note F#4
|1AF35E:3876| db $AC ; play note G#4
|1AF35F:3877| db $30 ; duration
|1AF360:3878| db $B0 ; play note C5
|1AF361:3879| db $18 ; duration
|1AF362:387A| db $C9 ; rest
|1AF363:387B| db $06 ; duration
|1AF364:387C| db $A2 ; play note A#3
|1AF365:387D| db $A5 ; play note C#4
|1AF366:387E| db $A8 ; play note E4
|1AF367:387F| db $AA ; play note F#4
|1AF368:3880| db $30 ; duration
|1AF369:3881| db $B0 ; play note C5
|1AF36A:3882| db $18 ; duration
|1AF36B:3883| db $C9 ; rest
|1AF36C:3884| db $06 ; duration
|1AF36D:3885| db $A0 ; play note G#3
|1AF36E:3886| db $A4 ; play note C4
|1AF36F:3887| db $A8 ; play note E4
|1AF370:3888| db $AC ; play note G#4
|1AF371:3889| db $30 ; duration
|1AF372:388A| db $B0 ; play note C5
|1AF373:388B| db $48 ; duration
|1AF374:388C| db $A1 ; play note A3
|1AF375:388D| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_388E:
|1AF376:388E| db $48, $7D ; duration, params
|1AF378:3890| db $A8 ; play note E4
|1AF379:3891| db $08 ; duration
|1AF37A:3892| db $A8 ; play note E4
|1AF37B:3893| db $A6 ; play note D4
|1AF37C:3894| db $A4 ; play note C4
|1AF37D:3895| db $48 ; duration
|1AF37E:3896| db $A6 ; play note D4
|1AF37F:3897| db $08 ; duration
|1AF380:3898| db $A3 ; play note B3
|1AF381:3899| db $C9 ; rest
|1AF382:389A| db $A3 ; play note B3
|1AF383:389B| db $48 ; duration
|1AF384:389C| db $A4 ; play note C4
|1AF385:389D| db $08 ; duration
|1AF386:389E| db $A4 ; play note C4
|1AF387:389F| db $A3 ; play note B3
|1AF388:38A0| db $A1 ; play note A3
|1AF389:38A1| db $48 ; duration
|1AF38A:38A2| db $A3 ; play note B3
|1AF38B:38A3| db $18 ; duration
|1AF38C:38A4| db $9C ; play note E3
|1AF38D:38A5| db $48 ; duration
|1AF38E:38A6| db $A1 ; play note A3
|1AF38F:38A7| db $08 ; duration
|1AF390:38A8| db $A1 ; play note A3
|1AF391:38A9| db $9F ; play note G3
|1AF392:38AA| db $9D ; play note F3
|1AF393:38AB| db $48 ; duration
|1AF394:38AC| db $A4 ; play note C4
|1AF395:38AD| db $10 ; duration
|1AF396:38AE| db $A4 ; play note C4
|1AF397:38AF| db $08 ; duration
|1AF398:38B0| db $A6 ; play note D4
|1AF399:38B1| db $48 ; duration
|1AF39A:38B2| db $A7 ; play note D#4
|1AF39B:38B3| db $10 ; duration
|1AF39C:38B4| db $A4 ; play note C4
|1AF39D:38B5| db $08 ; duration
|1AF39E:38B6| db $A6 ; play note D4
|1AF39F:38B7| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_38B8:
|1AF3A0:38B8| db $ED, $8C ; set channel volume
|1AF3A2:38BA| db $E0, $0F ; set instrument - harp
|1AF3A4:38BC| db $E1, $12 ; set panning - leaning left
|1AF3A6:38BE| db $60 ; duration
|1AF3A7:38BF| db $C9 ; rest
|1AF3A8:38C0| db $C9 ; rest
|1AF3A9:38C1| db $C9 ; rest
|1AF3AA:38C2| db $C9 ; rest
|1AF3AB:38C3| db $C9 ; rest
|1AF3AC:38C4| db $C9 ; rest
|1AF3AD:38C5| db $C9 ; rest
|1AF3AE:38C6| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_38C7:
|1AF3AF:38C7| db $48 ; duration
|1AF3B0:38C8| db $B0 ; play note C5
|1AF3B1:38C9| db $10 ; duration
|1AF3B2:38CA| db $AC ; play note G#4
|1AF3B3:38CB| db $08 ; duration
|1AF3B4:38CC| db $AE ; play note A#4
|1AF3B5:38CD| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_38CE:
|1AF3B6:38CE| db $20, $7D ; duration, params
|1AF3B8:38D0| db $B5 ; play note F5
|1AF3B9:38D1| db $08, $4D ; duration, params
|1AF3BB:38D3| db $B4 ; play note E5
|1AF3BC:38D4| db $B2 ; play note D5
|1AF3BD:38D5| db $18, $5D ; duration, params
|1AF3BF:38D7| db $B0 ; play note C5
|1AF3C0:38D8| db $18, $4D ; duration, params
|1AF3C2:38DA| db $AB ; play note G4
|1AF3C3:38DB| db $18, $6D ; duration, params
|1AF3C5:38DD| db $AD ; play note A4
|1AF3C6:38DE| db $18, $3D ; duration, params
|1AF3C8:38E0| db $B0 ; play note C5
|1AF3C9:38E1| db $18, $6D ; duration, params
|1AF3CB:38E3| db $B2 ; play note D5
|1AF3CC:38E4| db $18, $3D ; duration, params
|1AF3CE:38E6| db $B0 ; play note C5
|1AF3CF:38E7| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_38E8:
|1AF3D0:38E8| db $20, $7D ; duration, params
|1AF3D2:38EA| db $AD ; play note A4
|1AF3D3:38EB| db $08, $4D ; duration, params
|1AF3D5:38ED| db $AB ; play note G4
|1AF3D6:38EE| db $A9 ; play note F4
|1AF3D7:38EF| db $18, $5D ; duration, params
|1AF3D9:38F1| db $A8 ; play note E4
|1AF3DA:38F2| db $18, $4D ; duration, params
|1AF3DC:38F4| db $A4 ; play note C4
|1AF3DD:38F5| db $18, $6D ; duration, params
|1AF3DF:38F7| db $A4 ; play note C4
|1AF3E0:38F8| db $18, $3D ; duration, params
|1AF3E2:38FA| db $A9 ; play note F4
|1AF3E3:38FB| db $18, $6D ; duration, params
|1AF3E5:38FD| db $AA ; play note F#4
|1AF3E6:38FE| db $18, $3D ; duration, params
|1AF3E8:3900| db $AA ; play note F#4
|1AF3E9:3901| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_3902:
|1AF3EA:3902| db $0C, $5D ; duration, params
|1AF3EC:3904| db $B0 ; play note C5
|1AF3ED:3905| db $B0 ; play note C5
|1AF3EE:3906| db $B0 ; play note C5
|1AF3EF:3907| db $B0 ; play note C5
|1AF3F0:3908| db $B0 ; play note C5
|1AF3F1:3909| db $B0 ; play note C5
|1AF3F2:390A| db $B0 ; play note C5
|1AF3F3:390B| db $B0 ; play note C5
|1AF3F4:390C| db $AF ; play note B4
|1AF3F5:390D| db $AF ; play note B4
|1AF3F6:390E| db $AF ; play note B4
|1AF3F7:390F| db $AF ; play note B4
|1AF3F8:3910| db $AF ; play note B4
|1AF3F9:3911| db $AF ; play note B4
|1AF3FA:3912| db $AF ; play note B4
|1AF3FB:3913| db $AF ; play note B4
|1AF3FC:3914| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_3915:
|1AF3FD:3915| db $B0 ; play note C5
|1AF3FE:3916| db $B0 ; play note C5
|1AF3FF:3917| db $B0 ; play note C5
|1AF400:3918| db $B0 ; play note C5
|1AF401:3919| db $B0 ; play note C5
|1AF402:391A| db $B0 ; play note C5
|1AF403:391B| db $B0 ; play note C5
|1AF404:391C| db $B0 ; play note C5
|1AF405:391D| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_391E:
|1AF406:391E| db $B4 ; play note E5
|1AF407:391F| db $B4 ; play note E5
|1AF408:3920| db $B4 ; play note E5
|1AF409:3921| db $B4 ; play note E5
|1AF40A:3922| db $B4 ; play note E5
|1AF40B:3923| db $B4 ; play note E5
|1AF40C:3924| db $B4 ; play note E5
|1AF40D:3925| db $B4 ; play note E5
|1AF40E:3926| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song21_Sub_3927:
|1AF40F:3927| db $B5 ; play note F5
|1AF410:3928| db $B5 ; play note F5
|1AF411:3929| db $B5 ; play note F5
|1AF412:392A| db $B5 ; play note F5
|1AF413:392B| db $B5 ; play note F5
|1AF414:392C| db $B5 ; play note F5
|1AF415:392D| db $B5 ; play note F5
|1AF416:392E| db $B5 ; play note F5
|1AF417:392F| db $B4 ; play note E5
|1AF418:3930| db $B4 ; play note E5
|1AF419:3931| db $B4 ; play note E5
|1AF41A:3932| db $B4 ; play note E5
|1AF41B:3933| db $B4 ; play note E5
|1AF41C:3934| db $B4 ; play note E5
|1AF41D:3935| db $B4 ; play note E5
|1AF41E:3936| db $B4 ; play note E5
|1AF41F:3937| db $00 ; End

site *

;===================================================================================================

|1AF420| dw $0000, SPC_ENGINE ; end of transfer

;===================================================================================================
; FREE ROM: 0xDC
; including garbage
;===================================================================================================
GARBAGE_1AF424:
|1AF424| db $34, $00, $00, $00, $00, $01, $FF, $00, $00, $00, $00, $00

;===================================================================================================

NULL_1AF430:
|1AF430| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF438| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF440| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF448| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF450| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF458| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF460| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF468| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF470| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF478| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF480| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF488| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF490| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF498| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF4A0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF4A8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF4B0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF4B8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF4C0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF4C8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF4D0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF4D8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF4E0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF4E8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF4F0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1AF4F8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

pool SpriteDraw_BatCrash

.oam_groups

.oam_group00
|1AF500| dw   0,   0 : db $4B, $04, $00, $00

.oam_group01
|1AF508| dw   5,  -4 : db $5B, $04, $00, $00

.oam_group02
|1AF510| dw  -2,  -4 : db $64, $04, $00, $02

.oam_group03
|1AF518| dw  -2,  -4 : db $49, $04, $00, $02

.oam_group04
|1AF520| dw  -8,  -9 : db $6C, $04, $00, $02
|1AF528| dw   8,  -9 : db $6C, $44, $00, $02

.oam_group05
|1AF530| dw  -8,  -7 : db $4C, $04, $00, $02
|1AF538| dw   8,  -7 : db $4C, $44, $00, $02

.oam_group06
|1AF540| dw  -8,  -9 : db $44, $04, $00, $02
|1AF548| dw   8,  -9 : db $44, $44, $00, $02

.oam_group07
|1AF550| dw  -8,  -8 : db $62, $04, $00, $02
|1AF558| dw   8,  -8 : db $62, $44, $00, $02

.oam_group08
|1AF560| dw  -8,  -7 : db $60, $04, $00, $02
|1AF568| dw   8,  -7 : db $60, $44, $00, $02

.oam_group09
|1AF570| dw   0,   0 : db $4E, $04, $00, $02
|1AF578| dw  16,   0 : db $4E, $44, $00, $02
|1AF580| dw   0,  16 : db $6E, $04, $00, $02
|1AF588| dw  16,  16 : db $6E, $44, $00, $02

endpool

;===================================================================================================

pool BatCrash BatCrash_Approach

.position_x
|1AF590| dw $07DC, $07F0, $0820, $0818

.position_y
|1AF598| dw $062E, $0636, $0630, $05E0

.anim_timer
|1AF5A0| db     4,     3,     4,     6,     0

endpool

;===================================================================================================
; This handles the animation for waterfalls, such as in Swamp Palace or the waterfall fairy.
; Also handles the Ganon Tower and Pyramid opening cutscenes.
;===================================================================================================
Sprite_37_Waterfall:
|1AF5A5| PHB
|1AF5A6| PHK
|1AF5A7| PLB

|1AF5A8| JSR .main

|1AF5AB| PLB

|1AF5AC| RTL

;---------------------------------------------------------------------------------------------------

.main
|1AF5AD| LDA.w $0E80,X
|1AF5B0| JSL JumpTableLocal
|1AF5B4| dw Waterfall
|1AF5B6| dw BatCrash

;===================================================================================================

Waterfall:
|1AF5B8| JSR CheckIfActive_bank1A
|1AF5BB| JSL CheckDamageToLink_same_layer_long
|1AF5BF| BCC .exit

|1AF5C1| LDA.b $8A
|1AF5C3| CMP.b #$43 ; OW 43
|1AF5C5| BEQ .on_gt_screen

|1AF5C7| PHX

|1AF5C8| JSL AncillaAdd_WaterfallSplash

|1AF5CC| PLX

.exit
|1AF5CD| RTS

;---------------------------------------------------------------------------------------------------

.on_gt_screen
|1AF5CE| PHX

|1AF5CF| JSL AncillaAdd_GTCutscene

|1AF5D3| PLX

|1AF5D4| RTS

;===================================================================================================
; The specific sprite for the bat crash on pyramid cutscene.
;===================================================================================================
pool BatCrash

.shake_low
|1AF5D5| db  1, -1

.shake_high
|1AF5D7| db  0, -1

endpool

;---------------------------------------------------------------------------------------------------

BatCrash:
|1AF5D9| JSR SpriteDraw_BatCrash
|1AF5DC| JSR CheckIfActive_bank1A
|1AF5DF| JSL MoveSpriteXY_bank1D_long
|1AF5E3| JSR BatCrash_DrawHardcodedGarbage

|1AF5E6| STZ.w $011C
|1AF5E9| STZ.w $011D

|1AF5EC| LDA.w $0EE0,X
|1AF5EF| BEQ .timer1_done

|1AF5F1| DEC A
|1AF5F2| BNE .still_nonzero

; Play this sound on the last frame
|1AF5F4| LDY.b #$05 ; SFX1.05
|1AF5F6| STY.w $012D

.still_nonzero
|1AF5F9| AND.b #$01
|1AF5FB| TAY

|1AF5FC| LDA.w .shake_low,Y
|1AF5FF| STA.w $011C

|1AF602| LDA.w .shake_high,Y
|1AF605| STA.w $011D

.timer1_done
|1AF608| LDA.w $0DF0,X
|1AF60B| BNE .timer_running

|1AF60D| LDA.w $0DC0,X
|1AF610| INC A
|1AF611| AND.b #$03
|1AF613| STA.w $0DC0,X
|1AF616| BNE .no_flap_sfx

|1AF618| LDA.w $0D80,X
|1AF61B| CMP.b #$02
|1AF61D| BCS .no_flap_sfx

|1AF61F| LDA.b #$03 ; SFX2.03
|1AF621| JSL QueueSpriteSFX2WithPan

.no_flap_sfx
|1AF625| LDY.w $0DE0,X

|1AF628| LDA.w .anim_timer,Y
|1AF62B| STA.w $0DF0,X

.timer_running
|1AF62E| LDA.w $0D80,X
|1AF631| JSL JumpTableLocal
|1AF635| dw BatCrash_Approach
|1AF637| dw BatCrash_Ascend
|1AF639| dw BatCrash_DiveBomb
|1AF63B| dw BatCrash_StallTheInevitable

;===================================================================================================
; The part of the cutscene where the bat approaches the pyramid.
;===================================================================================================
BatCrash_Approach:
|1AF63D| LDA.w $0D90,X
|1AF640| ASL A
|1AF641| TAY

|1AF642| REP #$20

|1AF644| LDA.w .position_x,Y
|1AF647| CMP.w $0FD8

|1AF64A| SEP #$30
|1AF64C| BCS BatCrash_HandleYMovement

|1AF64E| CPY.b #$04
|1AF650| BCC .still_approaching

|1AF652| INC.w $0D80,X

|1AF655| LDA.b #$D0
|1AF657| STA.w $0E00,X

.still_approaching
|1AF65A| INC.w $0D90,X

|1AF65D| INC.w $0DE0,X

;===================================================================================================

#BatCrash_HandleYMovement:
|1AF660| LDA.b $1A
|1AF662| AND.b #$07
|1AF664| BNE .done_Y

|1AF666| REP #$20

|1AF668| LDA.w .position_y,Y
|1AF66B| CMP.w $0FDA

|1AF66E| SEP #$30
|1AF670| BCC .ypos_not_reached

|1AF672| INC.w $0D40,X
|1AF675| BRA .done_Y

.ypos_not_reached
|1AF677| DEC.w $0D40,X

.done_Y
|1AF67A| LDA.b $1A
|1AF67C| AND.b #$0F
|1AF67E| BNE .exit

|1AF680| INC.w $0D50,X

.exit
|1AF683| RTS

;===================================================================================================
; Fly the bat off screen to prepare for a divebomb
;===================================================================================================
BatCrash_Ascend:
|1AF684| LDA.w $0E00,X
|1AF687| BNE .ascending

; Interesting...
; They don't seem to trust the state of the bat as it flies in.
; This hardcodes the bat's coordinates as it advances to its next AI.
|1AF689| INC.w $0D80,X

|1AF68C| LDA.b #$26 ; SFX3.26
|1AF68E| JSL QueueSpriteSFX3WithPan

|1AF692| INC.w $0DE0,X

|1AF695| LDA.b #$E8
|1AF697| STA.w $0D10,X

|1AF69A| LDA.b #$07
|1AF69C| STA.w $0D30,X

|1AF69F| LDA.b #$E0
|1AF6A1| STA.w $0D00,X

|1AF6A4| LDA.b #$05
|1AF6A6| STA.w $0D20,X
|1AF6A9| STZ.w $0D50,X

|1AF6AC| LDA.b #$40
|1AF6AE| STA.w $0D40,X

|1AF6B1| LDA.b #$2D
|1AF6B3| STA.w $0E00,X

|1AF6B6| RTS

.ascending
|1AF6B7| LDA.b $1A
|1AF6B9| AND.b #$03
|1AF6BB| BNE .dont_tick

|1AF6BD| DEC.w $0D50,X

.dont_tick
|1AF6C0| LDA.w $0D90,X
|1AF6C3| ASL A
|1AF6C4| TAY

|1AF6C5| JMP.w BatCrash_HandleYMovement

;===================================================================================================
; Portion of the cutscene where the bat crashes downwards.
;===================================================================================================
BatCrash_DiveBomb:
|1AF6C8| LDA.w $0E00,X
|1AF6CB| BNE .descending

|1AF6CD| STZ.w $0D40,X

|1AF6D0| LDA.b #$60
|1AF6D2| STA.w $0E00,X

|1AF6D5| INC.w $0D80,X

.descending
|1AF6D8| LDA.w $0E00,X
|1AF6DB| CMP.b #$09
|1AF6DD| BNE .exit

|1AF6DF| JSR BatCrash_SpawnDebris

|1AF6E2| PHX

|1AF6E3| JSL CreatePyramidHole

|1AF6E7| PLX

.exit
|1AF6E8| RTS

;===================================================================================================
; Just adds a delay before the duck swoops in.
;===================================================================================================
BatCrash_StallTheInevitable:
|1AF6E9| LDA.w $0E00,X
|1AF6EC| BNE .stayin_alive

|1AF6EE| STZ.w $0DD0,X

|1AF6F1| INC.w $0200

.stayin_alive
|1AF6F4| RTS

;===================================================================================================
; This is what actually spawns the bat.
;===================================================================================================
SpawnBatCrashCutscene:
|1AF6F5| LDA.b #$37 ; SPRITE 37
|1AF6F7| JSL SpawnSpriteDynamically

|1AF6FB| LDA.b #$00
|1AF6FD| STA.w $0D40,Y
|1AF700| STA.w $0DA0,Y
|1AF703| STA.w $0DE0,Y
|1AF706| STA.w $0F20,Y

|1AF709| INC A
|1AF70A| STA.w $0E80,Y
|1AF70D| STA.w $0E40,Y
|1AF710| STA.w $0E60,Y
|1AF713| STA.w $0F50,Y

|1AF716| LDA.b #$CC
|1AF718| STA.w $0D10,Y

|1AF71B| LDA.b #$07
|1AF71D| STA.w $0D30,Y

|1AF720| LDA.b #$32
|1AF722| STA.w $0D00,Y

|1AF725| LDA.b #$06
|1AF727| STA.w $0D20,Y

|1AF72A| LDA.b #$80
|1AF72C| STA.w $0CAA,Y

|1AF72F| RTL

;===================================================================================================
; This can't even be seen during the cutscene.
; But there's hardcoded sprites being drawn every frame.
;===================================================================================================
pool BatCrash_DrawHardcodedGarbage

.data
|1AF730| db $68, $97, $57, $01
|1AF734| db $78, $97, $57, $01
|1AF738| db $88, $97, $57, $01
|1AF73C| db $68, $A7, $57, $01
|1AF740| db $78, $A7, $57, $01
|1AF744| db $88, $A7, $57, $01
|1AF748| db $65, $90, $57, $01
|1AF74C| db $8B, $90, $57, $01

endpool

;---------------------------------------------------------------------------------------------------

BatCrash_DrawHardcodedGarbage:
|1AF750| REP #$20

|1AF752| LDY.b #$20

.next_object
|1AF754| LDA.w .data-2,Y
|1AF757| STA.w $092E,Y

|1AF75A| DEY
|1AF75B| DEY
|1AF75C| BNE .next_object

;---------------------------------------------------------------------------------------------------

|1AF75E| LDY.b #$08

|1AF760| LDA.w #$0202

; This does the smaller table properties
.next_prop
|1AF763| STA.w $0A6C,Y

|1AF766| DEY
|1AF767| DEY
|1AF768| BPL .next_prop

|1AF76A| SEP #$30

|1AF76C| RTS

;===================================================================================================
; A lot of garnish
;===================================================================================================
pool BatCrash_SpawnDebris

.offset_x
|1AF76D| db  -8,   0,   8,  16,  24,  32
|1AF773| db  -8,   0,   8,  16,  24,  32
|1AF779| db  -8,   0,   8,  16,  24,  32
|1AF77F| db  -8,   0,   8,  16,  24,  32
|1AF785| db  -8,   0,   8,  16,  24,  32

.offset_y
|1AF78B| db  48,  48,  48,  48,  48,  48
|1AF791| db  40,  40,  40,  40,  40,  40
|1AF797| db  32,  32,  32,  32,  32,  32
|1AF79D| db  24,  24,  24,  24,  24,  24
|1AF7A3| db  16,  16,  16,  16,  16,  16

.speed_x
|1AF7A9| db $E2, $E7, $F8, $08, $19, $1E
|1AF7AF| db $CE, $D3, $EC, $14, $2D, $32
|1AF7B5| db $CE, $DD, $E7, $19, $23, $32
|1AF7BB| db $D3, $CE, $C4, $3C, $32, $2D
|1AF7C1| db $E2, $DD, $D8, $28, $23, $1E

.speed_y
|1AF7C7| db $02, $05, $0A, $0A, $05, $02
|1AF7CD| db $05, $14, $1E, $1E, $14, $05
|1AF7D3| db $0A, $1E, $28, $28, $1E, $0A
|1AF7D9| db $EC, $D8, $C4, $C4, $D8, $EC
|1AF7DF| db $F6, $EC, $D8, $D8, $EC, $F6

endpool

;---------------------------------------------------------------------------------------------------

BatCrash_SpawnDebris:
|1AF7E5| LDY.b #$1D

.next_particle
|1AF7E7| LDA.w .offset_x,Y
|1AF7EA| STA.b $00

|1AF7EC| LDA.w .offset_y,Y
|1AF7EF| STA.b $01

|1AF7F1| LDA.w .speed_x,Y
|1AF7F4| STA.b $02

|1AF7F6| LDA.w .speed_y,Y
|1AF7F9| STA.b $03

|1AF7FB| PHY
|1AF7FC| JSL GarnishSpawn_PyramidDebris
|1AF800| PLY

|1AF801| DEY
|1AF802| BPL .next_particle

|1AF804| LDA.b #$20
|1AF806| STA.w $0EE0,X

|1AF809| RTS

;===================================================================================================

pool SpriteDraw_BatCrash

.pointer_low
|1AF80A| db .oam_group00
|1AF80B| db .oam_group00
|1AF80C| db .oam_group01
|1AF80D| db .oam_group01
|1AF80E| db .oam_group02
|1AF80F| db .oam_group02
|1AF810| db .oam_group03
|1AF811| db .oam_group03
|1AF812| db .oam_group04
|1AF813| db .oam_group04
|1AF814| db .oam_group05
|1AF815| db .oam_group05
|1AF816| db .oam_group06
|1AF817| db .oam_group07
|1AF818| db .oam_group08
|1AF819| db .oam_group07
|1AF81A| db .oam_group09
|1AF81B| db .oam_group09
|1AF81C| db .oam_group09
|1AF81D| db .oam_group09

;---------------------------------------------------------------------------------------------------

.pointer_high
|1AF81E| db >.oam_groups

;---------------------------------------------------------------------------------------------------

.obj_count
|1AF81F| db $01
|1AF820| db $01
|1AF821| db $01
|1AF822| db $01
|1AF823| db $01
|1AF824| db $01
|1AF825| db $01
|1AF826| db $01
|1AF827| db $02
|1AF828| db $02
|1AF829| db $02
|1AF82A| db $02
|1AF82B| db $02
|1AF82C| db $02
|1AF82D| db $02
|1AF82E| db $02
|1AF82F| db $04
|1AF830| db $04
|1AF831| db $04
|1AF832| db $04

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_BatCrash:
|1AF833| REP #$20

; [HARDCODED] oam slots
|1AF835| LDA.w #$0960
|1AF838| STA.b $90

|1AF83A| LDA.w #$0A78
|1AF83D| STA.b $92

|1AF83F| SEP #$20

|1AF841| LDA.w $0DE0,X
|1AF844| ASL A
|1AF845| ASL A
|1AF846| ADC.w $0DC0,X
|1AF849| TAY

|1AF84A| LDA.w .pointer_low,Y
|1AF84D| STA.b $08

|1AF84F| LDA.w .pointer_high
|1AF852| STA.b $09

|1AF854| LDA.w .obj_count,Y
|1AF857| JSL TabulatedSpriteDraw

|1AF85B| RTS

;===================================================================================================

pool SpriteDraw_Drunkard

.oam_groups
; group00
|1AF85C| dw   8,   2 : db $AE, $00, $00, $00
|1AF864| dw   0,  -9 : db $22, $08, $00, $02
|1AF86C| dw   0,   0 : db $06, $00, $00, $02

; group01
|1AF874| dw   7,   0 : db $AF, $00, $00, $00
|1AF87C| dw   0,  -9 : db $22, $08, $00, $02
|1AF884| dw   0,   0 : db $06, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Drunkard:
|1AF88C| PHB
|1AF88D| PHK
|1AF88E| PLB

|1AF88F| LDA.w $0DC0,X
|1AF892| ASL A
|1AF893| ADC.w $0DC0,X
|1AF896| ASL A
|1AF897| ASL A
|1AF898| ASL A
|1AF899| ADC.b #<.oam_groups
|1AF89B| STA.b $08

|1AF89D| LDA.b #>.oam_groups
|1AF89F| ADC.b #$00

|1AF8A1| STA.b $09

|1AF8A3| LDA.b #$03
|1AF8A5| STA.b $06
|1AF8A7| STZ.b $07

|1AF8A9| JMP.w SpriteDraw_Drunkard_continue

;===================================================================================================

pool SpriteDraw_RaceGameLady

.oam_groups
; group00
|1AF8AC| dw   0,  -8 : db $E0, $00, $00, $02
|1AF8B4| dw   0,   0 : db $E8, $00, $00, $02
|1AF8BC| dw   0,  -7 : db $E0, $00, $00, $02
|1AF8C4| dw   0,   1 : db $E8, $40, $00, $02

; group01
|1AF8CC| dw   0,  -8 : db $C0, $00, $00, $02
|1AF8D4| dw   0,   0 : db $C2, $00, $00, $02
|1AF8DC| dw   0,  -7 : db $C0, $00, $00, $02
|1AF8E4| dw   0,   1 : db $C2, $40, $00, $02

; group02
|1AF8EC| dw   0,  -8 : db $E2, $00, $00, $02
|1AF8F4| dw   0,   0 : db $E4, $00, $00, $02
|1AF8FC| dw   0,  -7 : db $E2, $00, $00, $02
|1AF904| dw   0,   1 : db $E6, $00, $00, $02

; group03
|1AF90C| dw   0,  -8 : db $E2, $40, $00, $02
|1AF914| dw   0,   0 : db $E4, $40, $00, $02
|1AF91C| dw   0,  -7 : db $E2, $40, $00, $02
|1AF924| dw   0,   1 : db $E6, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_RaceGameLady:
|1AF92C| PHB
|1AF92D| PHK
|1AF92E| PLB

|1AF92F| LDA.b #$02
|1AF931| STA.b $06
|1AF933| STZ.b $07

|1AF935| LDA.w $0DE0,X
|1AF938| ASL A
|1AF939| ADC.w $0DC0,X
|1AF93C| ASL A
|1AF93D| ASL A
|1AF93E| ASL A
|1AF93F| ASL A
|1AF940| ADC.b #<.oam_groups
|1AF942| STA.b $08

|1AF944| LDA.b #>.oam_groups
|1AF946| ADC.b #$00
|1AF948| STA.b $09

;---------------------------------------------------------------------------------------------------

#SpriteDraw_Drunkard_continue:
|1AF94A| JSL TabulatedSpriteDraw.player_deferred
|1AF94E| JSL DrawSpriteShadow_long

|1AF952| PLB

|1AF953| RTL

;===================================================================================================
; Standard activeness check for sprites
;===================================================================================================
CheckIfActive_bank1A:
|1AF954| LDA.w $0DD0,X
|1AF957| CMP.b #$09
|1AF959| BNE .inactive

|1AF95B| LDA.w $0FC1
|1AF95E| BNE .inactive

|1AF960| LDA.b $11
|1AF962| BNE .inactive

|1AF964| LDA.w $0CAA,X
|1AF967| BMI .active

|1AF969| LDA.w $0F00,X
|1AF96C| BEQ .active

.inactive
|1AF96E| PLA
|1AF96F| PLA

.active
|1AF970| RTS

;===================================================================================================

pool Lanmola_SpawnShrapnel

.speed_y
|1AF971| db  28, -28,  28, -28,   0,  36,   0, -36

.speed_x
|1AF979| db -28, -28,  28,  28, -36,   0,  36,   0

endpool

;---------------------------------------------------------------------------------------------------

Lanmola_SpawnShrapnel:
|1AF981| LDY.b #$03

; what the hell is this?
; The sprite module handlers are being used to determine how much is spawned!
; If any worm is alive (9) and another isn't gone, Y=7
; Or if 2 are dying and 1 is not gone (4+4+n)
|1AF983| LDA.w $0DD0
|1AF986| CLC
|1AF987| ADC.w $0DD1
|1AF98A| ADC.w $0DD2
|1AF98D| CMP.b #$0A
|1AF98F| BCS .too_much_stuff

|1AF991| LDY.b #$07

.too_much_stuff
|1AF993| STY.w $0FB5

.next_spawn
|1AF996| LDA.b #$C2 ; SPRITE C2
|1AF998| JSL SpawnSpriteDynamically
|1AF99C| BMI .no_space

|1AF99E| JSL SetSpawnedSpriteCoordinates

|1AF9A2| LDA.b $00
|1AF9A4| ADC.b #$04
|1AF9A6| STA.w $0D10,Y

|1AF9A9| LDA.b $02
|1AF9AB| ADC.b #$04
|1AF9AD| STA.w $0D00,Y

|1AF9B0| LDA.b #$01
|1AF9B2| STA.w $0BA0,Y
|1AF9B5| STA.w $0CD2,Y
|1AF9B8| STA.w $0F60,Y

|1AF9BB| DEC A
|1AF9BC| STA.w $0F70,Y

|1AF9BF| LDA.b #$20
|1AF9C1| STA.w $0E40,Y

|1AF9C4| PHX
|1AF9C5| LDX.w $0FB5

|1AF9C8| LDA.l .speed_x,X
|1AF9CC| STA.w $0D50,Y

|1AF9CF| LDA.l .speed_y,X
|1AF9D3| STA.w $0D40,Y

|1AF9D6| JSL GetRandomNumber

|1AF9DA| AND.b #$01
|1AF9DC| STA.w $0DC0,Y

|1AF9DF| PLX

.no_space
|1AF9E0| DEC.w $0FB5
|1AF9E3| BPL .next_spawn

|1AF9E5| RTL

;===================================================================================================
; Unreachable pickle routine.
; Nice!
;===================================================================================================
UNREACHABLE_1AF9E6:
|1AF9E6| LDY.b #$00
|1AF9E8| CMP.b #$00
|1AF9EA| BPL .positive

|1AF9EC| DEY

.positive
|1AF9ED| CLC
|1AF9EE| ADC.w $0FDA
|1AF9F1| STA.w $0FDA

|1AF9F4| TYA
|1AF9F5| ADC.w $0FDB
|1AF9F8| STA.w $0FDB

|1AF9FB| LDA.w $0F50,X
|1AF9FE| PHA

|1AF9FF| JSL Cukeman

|1AFA03| PLA
|1AFA04| STA.w $0F50,X

|1AFA07| JSL Get16BitSpriteCoords_long

|1AFA0B| RTL

;===================================================================================================
; Called every frame before spritedraw for.
; Checks for player interaction with a custom hitbox.
;===================================================================================================
Cukeman:
|1AFA0C| LDA.w $0EB0,X
|1AFA0F| BEQ .exit

|1AFA11| LDA.w $0DD0,X
|1AFA14| CMP.b #$09
|1AFA16| BNE .dont_speak

|1AFA18| LDA.b $11
|1AFA1A| ORA.w $0FC1
|1AFA1D| BNE .dont_speak

; [HARDCODED] hitbox and input detection
|1AFA1F| REP #$20

|1AFA21| LDA.w $0FD8
|1AFA24| SEC
|1AFA25| SBC.b $22
|1AFA27| CLC
|1AFA28| ADC.w #$0018
|1AFA2B| CMP.w #$0030
|1AFA2E| BCS .dont_speak

|1AFA30| LDA.b $20
|1AFA32| SEC
|1AFA33| SBC.w $0FDA
|1AFA36| CLC
|1AFA37| ADC.w #$0020
|1AFA3A| CMP.w #$0030
|1AFA3D| BCS .dont_speak

|1AFA3F| SEP #$20

|1AFA41| LDA.b $F6
|1AFA43| BPL .dont_speak

; Swap messages
|1AFA45| LDA.w $0E30,X
|1AFA48| INC.w $0E30,X
|1AFA4B| AND.b #$01

|1AFA4D| CLC
|1AFA4E| ADC.b #$78 ; MESSAGE 0178 or MESSAGE 0179
|1AFA50| STA.w $1CF0

|1AFA53| LDA.b #$01
|1AFA55| STA.w $1CF1
|1AFA58| JSL ShowMessageMinimal

.dont_speak
|1AFA5C| SEP #$20

;---------------------------------------------------------------------------------------------------

|1AFA5E| PHB
|1AFA5F| PHK
|1AFA60| PLB

|1AFA61| LDA.w $0F50,X
|1AFA64| AND.b #$F0
|1AFA66| PHA

|1AFA67| ORA.b #$08
|1AFA69| STA.w $0F50,X

|1AFA6C| JSR SpriteDraw_Cukeman

|1AFA6F| PLA
|1AFA70| ORA.b #$0D
|1AFA72| STA.w $0F50,X

|1AFA75| LDA.b #$10
|1AFA77| JSL AllocateOAMInRegionA

|1AFA7B| PLB

|1AFA7C| RTL

;---------------------------------------------------------------------------------------------------

.exit
|1AFA7D| RTL

;===================================================================================================

pool SpriteDraw_Cukeman

.oam_groups
; group00
|1AFA7E| dw   0,   0 : db $F3, $01, $00, $00
|1AFA86| dw   7,   0 : db $F3, $41, $00, $00
|1AFA8E| dw   4,   7 : db $E0, $07, $00, $00

; group01
|1AFA96| dw  -1,   2 : db $F3, $01, $00, $00
|1AFA9E| dw   6,   1 : db $F3, $41, $00, $00
|1AFAA6| dw   4,   8 : db $E0, $07, $00, $00

; group02
|1AFAAE| dw   1,   1 : db $F3, $01, $00, $00
|1AFAB6| dw   8,   2 : db $F3, $41, $00, $00
|1AFABE| dw   4,   8 : db $E0, $07, $00, $00

; group03
|1AFAC6| dw  -2,   0 : db $F3, $01, $00, $00
|1AFACE| dw  10,   0 : db $F3, $41, $00, $00
|1AFAD6| dw   4,   7 : db $E0, $07, $00, $00

; group04
|1AFADE| dw   0,   0 : db $F3, $01, $00, $00
|1AFAE6| dw   8,   0 : db $F3, $41, $00, $00
|1AFAEE| dw   4,   6 : db $E0, $07, $00, $00

; group05
|1AFAF6| dw  -5,   0 : db $F3, $01, $00, $00
|1AFAFE| dw  16,   0 : db $F3, $41, $00, $00
|1AFB06| dw   4,   8 : db $E0, $07, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Cukeman:
|1AFB0E| LDA.b #$00
|1AFB10| XBA
|1AFB11| LDA.w $0DC0,X

|1AFB14| REP #$20

|1AFB16| ASL A
|1AFB17| ASL A
|1AFB18| ASL A
|1AFB19| STA.b $00

|1AFB1B| ASL A
|1AFB1C| ADC.b $00
|1AFB1E| ADC.w #.oam_groups
|1AFB21| STA.b $08

|1AFB23| SEP #$20

|1AFB25| LDA.b #$03
|1AFB27| JSL TabulatedSpriteDraw

|1AFB2B| RTS

;===================================================================================================
; [WTF]
; This reuses the stun/key drop flag.
;===================================================================================================
RunningBoy_SpawnDustGarnish:
|1AFB2C| INC.w $0CBA,X

|1AFB2F| LDA.w $0CBA,X
|1AFB32| AND.b #$0F
|1AFB34| BNE .exit

|1AFB36| PHX
|1AFB37| TXY

|1AFB38| LDX.b #$1D

.next_slot
|1AFB3A| LDA.l $7FF800,X
|1AFB3E| BEQ .free_slot

|1AFB40| DEX
|1AFB41| BPL .next_slot

|1AFB43| INX

.free_slot
|1AFB44| LDA.b #$14 ; GARNISH 14
|1AFB46| STA.l $7FF800,X
|1AFB4A| STA.w $0FB4

|1AFB4D| LDA.w $0D10,Y
|1AFB50| CLC
|1AFB51| ADC.b #$04
|1AFB53| STA.l $7FF83C,X

|1AFB57| LDA.w $0D30,Y
|1AFB5A| ADC.b #$00
|1AFB5C| STA.l $7FF878,X

|1AFB60| LDA.w $0D00,Y
|1AFB63| CLC
|1AFB64| ADC.b #$1C
|1AFB66| STA.l $7FF81E,X

|1AFB6A| LDA.w $0D20,Y
|1AFB6D| ADC.b #$00
|1AFB6F| STA.l $7FF85A,X

|1AFB73| LDA.b #$0A
|1AFB75| STA.l $7FF90E,X

|1AFB79| PLX

.exit
|1AFB7A| RTL

;===================================================================================================

pool SubstituteAlternateSecret

.screen_mask
|1AFB7B| db $00, $00, $00, $00, $00, $00, $00, $04
|1AFB83| db $00, $00, $00, $00, $00, $00, $00, $00
|1AFB8B| db $04, $04, $06, $04, $04, $06, $00, $00
|1AFB93| db $0F, $0F, $04, $05, $05, $04, $06, $06
|1AFB9B| db $0F, $0F, $04, $05, $05, $07, $06, $06
|1AFBA3| db $1F, $1F, $04, $07, $07, $04, $06, $06
|1AFBAB| db $06, $07, $02, $00, $00, $00, $00, $00
|1AFBB3| db $06, $06, $02, $00, $00, $00, $00, $00

;---------------------------------------------------------------------------------------------------

.secret_index
; light world
|1AFBBB| db $01 ; Green rupee
|1AFBBC| db $01 ; Green rupee
|1AFBBD| db $01 ; Green rupee
|1AFBBE| db $01 ; Green rupee
|1AFBBF| db $0F ; Green guard
|1AFBC0| db $01 ; Green rupee
|1AFBC1| db $01 ; Green rupee
|1AFBC2| db $12 ; Landmine

; dark world
|1AFBC3| db $10 ; Bush stal
|1AFBC4| db $01 ; Green rupee
|1AFBC5| db $01 ; Green rupee
|1AFBC6| db $01 ; Green rupee
|1AFBC7| db $11 ; Blue guard
|1AFBC8| db $01 ; Green rupee
|1AFBC9| db $01 ; Green rupee
|1AFBCA| db $03 ; Bee

;---------------------------------------------------------------------------------------------------

.prize_mask
; light world
|1AFBCB| db $00 ; Green rupee
|1AFBCC| db $00 ; Green rupee
|1AFBCD| db $00 ; Green rupee
|1AFBCE| db $00 ; Green rupee
|1AFBCF| db $02 ; Green guard
|1AFBD0| db $00 ; Green rupee
|1AFBD1| db $00 ; Green rupee
|1AFBD2| db $08 ; Landmine

; dark world
|1AFBD3| db $10 ; Bush stal
|1AFBD4| db $00 ; Green rupee
|1AFBD5| db $00 ; Green rupee
|1AFBD6| db $00 ; Green rupee
|1AFBD7| db $01 ; Blue guard
|1AFBD8| db $00 ; Green rupee
|1AFBD9| db $00 ; Green rupee
|1AFBDA| db $00 ; Bee

endpool

;---------------------------------------------------------------------------------------------------

SubstituteAlternateSecret:
|1AFBDB| PHB
|1AFBDC| PHK
|1AFBDD| PLB

|1AFBDE| JSL GetRandomNumber
|1AFBE2| AND.b #$01
|1AFBE4| BNE .exit

|1AFBE6| STZ.b $0D

|1AFBE8| LDY.b #$0F

; Count the number of nonempty slots
; skips mirror portal
.next_slot
|1AFBEA| LDA.w $0DD0,Y
|1AFBED| BEQ .skip_slot

|1AFBEF| LDA.w $0E20,Y
|1AFBF2| CMP.b #$6C ; SPRITE 6C
|1AFBF4| BEQ .skip_slot

|1AFBF6| INC.b $0D

.skip_slot
|1AFBF8| DEY
|1AFBF9| BPL .next_slot

;---------------------------------------------------------------------------------------------------

|1AFBFB| LDA.b $0D
|1AFBFD| CMP.b #$04
|1AFBFF| BCS .exit

|1AFC01| LDA.l $7EF3C5 ; bad game state
|1AFC05| CMP.b #$02
|1AFC07| BCC .exit

|1AFC09| LDA.w $0CF7

|1AFC0C| INC.w $0CF7
|1AFC0F| AND.b #$07

|1AFC11| LDY.w $0FFF
|1AFC14| BEQ .light_world

|1AFC16| ORA.b #$08

.light_world
|1AFC18| TAY

|1AFC19| PHX

; Get screen ID, ignoring world of screen
|1AFC1A| LDA.w $040A
|1AFC1D| AND.b #$3F
|1AFC1F| TAX

|1AFC20| LDA.w .screen_mask,X
|1AFC23| AND.w .prize_mask,Y
|1AFC26| BNE .no_sub

|1AFC28| LDA.w .secret_index,Y
|1AFC2B| STA.w $0B9C

.no_sub
|1AFC2E| PLX

.exit
|1AFC2F| PLB

|1AFC30| RTL

;===================================================================================================
; It's not really a throne, but we call it thus.
;===================================================================================================
Sprite_EE_CastleMantle:
|1AFC31| PHB
|1AFC32| PHK
|1AFC33| PLB

|1AFC34| JSR .main

|1AFC37| PLB

|1AFC38| RTL

;---------------------------------------------------------------------------------------------------

.main
|1AFC39| JSR SpriteDraw_CastleMantle
|1AFC3C| JSR CheckIfActive_bank1A

|1AFC3F| JSL CheckDamageToLink_same_layer_long
|1AFC43| BCC .exit

|1AFC45| JSL AbortMovement
|1AFC49| JSL RepelDash_long

; Zelda follower
|1AFC4D| LDA.l $7EF3CC
|1AFC51| CMP.b #$01 ; FOLLOWER 01
|1AFC53| BNE .exit

; Own lamp
|1AFC55| LDA.l $7EF34A
|1AFC59| BEQ .exit

; Not dashing
|1AFC5B| LDA.w $0372
|1AFC5E| BNE .exit

; Max distance of push
|1AFC60| LDA.w $0ED0,X
|1AFC63| CMP.b #$90
|1AFC65| BEQ .exit

; No recoil
|1AFC67| LDA.b $28
|1AFC69| CMP.b #$18
|1AFC6B| BMI .exit

; Set spawn location to here
|1AFC6D| LDA.b #$04
|1AFC6F| STA.l $7EF3C8

; Movement induced every other frame
; Subpixel advances every other frame
; First 8 movements are 0
|1AFC73| INC.w $0E80,X

|1AFC76| LDA.w $0E80,X
|1AFC79| AND.b #$01
|1AFC7B| BNE .swap_parity

|1AFC7D| INC.w $0ED0,X

.swap_parity
|1AFC80| LDA.w $0ED0,X
|1AFC83| CMP.b #$08
|1AFC85| BCC .exit

|1AFC87| LDA.w $012E
|1AFC8A| BNE .skip_sfx

|1AFC8C| LDA.b #$22 ; SFX2.22
|1AFC8E| STA.w $012E

.skip_sfx
|1AFC91| LDA.b #$02
|1AFC93| STA.w $0D50,X

|1AFC96| JSL MoveSpriteXY_bank1D_long

.exit
|1AFC9A| RTS

;===================================================================================================

pool SpriteDraw_CastleMantle

.offset_x
|1AFC9B| db   0,  16,  32,   0,  16,  32

.offset_y
|1AFCA1| db   0,   0,   0,  16,  16,  16

.char
|1AFCA7| db $0C, $0E, $0C, $2C, $2E, $2C

.prop
|1AFCAD| db $31, $31, $71, $31, $31, $71

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_CastleMantle:
|1AFCB3| LDA.b #$20
|1AFCB5| JSL AllocateOAMInRegionB

|1AFCB9| JSL GetScreenCoordinates_long
|1AFCBD| BCS .exit

|1AFCBF| PHX

|1AFCC0| LDX.b #$05

.next_object
|1AFCC2| LDA.b $00
|1AFCC4| CLC
|1AFCC5| ADC.w .offset_x,X
|1AFCC8| STA.b ($90),Y

|1AFCCA| LDA.b $02
|1AFCCC| CLC
|1AFCCD| ADC.w .offset_y,X
|1AFCD0| INY
|1AFCD1| STA.b ($90),Y

|1AFCD3| LDA.w .char,X
|1AFCD6| INY
|1AFCD7| STA.b ($90),Y

|1AFCD9| LDA.w .prop,X
|1AFCDC| INY
|1AFCDD| STA.b ($90),Y

|1AFCDF| INY

|1AFCE0| DEX
|1AFCE1| BPL .next_object

;---------------------------------------------------------------------------------------------------

|1AFCE3| PLX

|1AFCE4| LDY.b #$02
|1AFCE6| LDA.b #$05
|1AFCE8| JSL CorrectOAMEntries_long

.exit
|1AFCEC| RTS

;===================================================================================================

pool SpriteDraw_Mothula

.oam_groups
; group00
|1AFCED| dw -24,  -8 : db $80, $00, $00, $02
|1AFCF5| dw  -8,  -8 : db $82, $00, $00, $02
|1AFCFD| dw   8,  -8 : db $82, $40, $00, $02
|1AFD05| dw  24,  -8 : db $80, $40, $00, $02
|1AFD0D| dw -24,   8 : db $A0, $00, $00, $02
|1AFD15| dw  -8,   8 : db $A2, $00, $00, $02
|1AFD1D| dw   8,   8 : db $A2, $40, $00, $02
|1AFD25| dw  24,   8 : db $A0, $40, $00, $02

; group01
|1AFD2D| dw -24,  -8 : db $84, $00, $00, $02
|1AFD35| dw  -8,  -8 : db $86, $00, $00, $02
|1AFD3D| dw   8,  -8 : db $86, $40, $00, $02
|1AFD45| dw  24,  -8 : db $84, $40, $00, $02
|1AFD4D| dw -24,   8 : db $A4, $00, $00, $02
|1AFD55| dw  -8,   8 : db $A6, $00, $00, $02
|1AFD5D| dw   8,   8 : db $A6, $40, $00, $02
|1AFD65| dw  24,   8 : db $A4, $40, $00, $02

; group02
|1AFD6D| dw  -8,  -8 : db $88, $00, $00, $02
|1AFD75| dw  -8,  -8 : db $88, $00, $00, $02
|1AFD7D| dw   8,  -8 : db $88, $40, $00, $02
|1AFD85| dw   8,  -8 : db $88, $40, $00, $02
|1AFD8D| dw  -8,   8 : db $A8, $00, $00, $02
|1AFD95| dw  -8,   8 : db $A8, $00, $00, $02
|1AFD9D| dw   8,   8 : db $A8, $40, $00, $02
|1AFDA5| dw   8,   8 : db $A8, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Mothula:
|1AFDAD| PHB
|1AFDAE| PHK
|1AFDAF| PLB

|1AFDB0| JSR .draw_her

|1AFDB3| PLB

|1AFDB4| RTL

;---------------------------------------------------------------------------------------------------

.draw_her
|1AFDB5| LDA.b #$00
|1AFDB7| XBA
|1AFDB8| LDA.w $0DC0,X

|1AFDBB| REP #$20

|1AFDBD| ASL A ; x64
|1AFDBE| ASL A
|1AFDBF| ASL A
|1AFDC0| ASL A
|1AFDC1| ASL A
|1AFDC2| ASL A

|1AFDC3| ADC.w #.oam_groups
|1AFDC6| STA.b $08

; [HARDCODED] OAM slots
|1AFDC8| LDA.w #$0920
|1AFDCB| STA.b $90

|1AFDCD| LDA.w #$0A68
|1AFDD0| STA.b $92

|1AFDD2| SEP #$20

|1AFDD4| LDA.b #$08
|1AFDD6| JSL TabulatedSpriteDraw

|1AFDDA| LDA.w $0F00,X
|1AFDDD| BNE .exit

;---------------------------------------------------------------------------------------------------

|1AFDDF| PHX

|1AFDE0| LDA.w $0DC0,X
|1AFDE3| ASL A ; x8
|1AFDE4| ASL A
|1AFDE5| ASL A
|1AFDE6| ADC.w $0DC0,X
|1AFDE9| STA.b $06

|1AFDEB| LDA.b $02
|1AFDED| CLC
|1AFDEE| ADC.w $0F70,X
|1AFDF1| STA.b $02

|1AFDF3| LDA.b $03
|1AFDF5| ADC.b #$00
|1AFDF7| STA.b $03

|1AFDF9| LDY.b #$28
|1AFDFB| LDX.b #$08

;---------------------------------------------------------------------------------------------------

.next_object
|1AFDFD| PHX

|1AFDFE| TXA
|1AFDFF| CLC
|1AFE00| ADC.b $06
|1AFE02| ASL A
|1AFE03| TAX

|1AFE04| REP #$20

|1AFE06| LDA.b $00
|1AFE08| CLC
|1AFE09| ADC.w .offset_x,X
|1AFE0C| STA.b ($90),Y

|1AFE0E| AND.w #$0100
|1AFE11| STA.b $0E

|1AFE13| INY
|1AFE14| LDA.b $02

|1AFE16| CLC
|1AFE17| ADC.w #$0010
|1AFE1A| STA.b ($90),Y

|1AFE1C| CLC
|1AFE1D| ADC.w #$0010
|1AFE20| CMP.w #$0100

|1AFE23| SEP #$20
|1AFE25| BCC .off_screeen

|1AFE27| LDA.b #$F0
|1AFE29| STA.b ($90),Y

.off_screeen
|1AFE2B| INY
|1AFE2C| LDA.b #$6C
|1AFE2E| STA.b ($90),Y

|1AFE30| INY
|1AFE31| LDA.b #$24
|1AFE33| STA.b ($90),Y

|1AFE35| PHY

|1AFE36| TYA
|1AFE37| LSR A
|1AFE38| LSR A
|1AFE39| TAY

|1AFE3A| LDA.b #$02
|1AFE3C| ORA.b $0F
|1AFE3E| STA.b ($92),Y

|1AFE40| PLY
|1AFE41| INY

|1AFE42| PLX
|1AFE43| DEX
|1AFE44| BPL .next_object

;---------------------------------------------------------------------------------------------------

|1AFE46| PLX

.exit
|1AFE47| RTS

;---------------------------------------------------------------------------------------------------

.offset_x
|1AFE48| dw   0,   3,   6,   9,  12,  -3,  -6,   -9, -12
|1AFE5A| dw   0,   2,   4,   6,   8,  -2,  -4,   -6,  -8
|1AFE6C| dw   0,   1,   2,   3,   4,  -1,  -2,   -3,  -4

;===================================================================================================
; He throws stuff at you!
;===================================================================================================
pool PurchaseGoldenBee

.speed_x
|1AFE7E| db  -6,  -3,   0,   4,   7

.speed_y
|1AFE83| db  11,  14,  16,  14,  11

endpool

;---------------------------------------------------------------------------------------------------

PurchaseGoldenBee:
|1AFE88| PHB
|1AFE89| PHK
|1AFE8A| PLB

|1AFE8B| LDA.b #$13 ; SFX3.13
|1AFE8D| JSL QueueSpriteSFX3WithPan

; spawns 5 sprites
|1AFE91| LDA.b #$04
|1AFE93| STA.w $0FB5

.next_spawn
; all red rupees
|1AFE96| LDA.b #$DB ; SPRITE DB
|1AFE98| JSL SpawnSpriteDynamically
|1AFE9C| BMI .no_space

|1AFE9E| JSL SetSpawnedSpriteCoordinates

|1AFEA2| LDA.b $00
|1AFEA4| CLC
|1AFEA5| ADC.b #$04
|1AFEA7| STA.w $0D10,Y

|1AFEAA| LDA.b #$FF
|1AFEAC| STA.w $0B58,Y

; If you're using X, you could have kept the data bank and used LDA.l,X
|1AFEAF| PHX

|1AFEB0| LDX.w $0FB5

|1AFEB3| LDA.w .speed_x,X
|1AFEB6| STA.w $0D50,Y

|1AFEB9| LDA.w .speed_y,X
|1AFEBC| STA.w $0D40,Y

|1AFEBF| LDA.b #$20
|1AFEC1| STA.w $0F80,Y
|1AFEC4| STA.w $0F10,Y

|1AFEC7| PLX

.no_space
|1AFEC8| DEC.w $0FB5
|1AFECB| BPL .next_spawn

|1AFECD| PLB

|1AFECE| RTL

;===================================================================================================
; Secret powder lady
;===================================================================================================
ChickenLady:
|1AFECF| JSR .main

|1AFED2| RTL

;---------------------------------------------------------------------------------------------------

.main
|1AFED3| LDA.b #$01
|1AFED5| STA.w $0DE0,X

|1AFED8| JSL SpriteDraw_RaceGameLady
|1AFEDC| JSR CheckIfActive_bank1A

|1AFEDF| LDA.w $0DF0,X
|1AFEE2| CMP.b #$01
|1AFEE4| BNE .no_message

|1AFEE6| LDA.b #$7B ; MESSAGE 017B
|1AFEE8| STA.w $1CF0

|1AFEEB| LDA.b #$01
|1AFEED| STA.w $1CF1

|1AFEF0| JSL ShowMessageMinimal

; Animation with a 16 frame step
.no_message
|1AFEF4| LDA.b $1A
|1AFEF6| LSR A ; /16
|1AFEF7| LSR A
|1AFEF8| LSR A
|1AFEF9| LSR A
|1AFEFA| AND.b #$01
|1AFEFC| STA.w $0DC0,X

|1AFEFF| RTS

;===================================================================================================
; If you're above this guy when he spawns, he won't let you play.
; He'll also move left 9 pixels, so you can exit.
;===================================================================================================
SpritePrep_DiggingGameGuy:
|1AFF00| LDA.w $0D00,X
|1AFF03| STA.b $00

|1AFF05| LDA.w $0D20,X
|1AFF08| STA.b $01

|1AFF0A| REP #$20

|1AFF0C| LDA.b $20
|1AFF0E| CMP.b $00

|1AFF10| SEP #$30
|1AFF12| BCS .link_is_below

|1AFF14| LDA.b #$05
|1AFF16| STA.w $0D80,X

|1AFF19| LDA.w $0D10,X
|1AFF1C| SEC
|1AFF1D| SBC.b #$09
|1AFF1F| STA.w $0D10,X

|1AFF22| LDA.b #$01
|1AFF24| STA.w $0DC0,X

.link_is_below
|1AFF27| INC.w $0BA0,X

|1AFF2A| RTL

;===================================================================================================

pool SpawnHammeredSplash

.offset_x
|1AFF2B| dw   0,  12,  -8,  24

.offset_y
|1AFF33| dw   8,  32,  24,  24

endpool

;---------------------------------------------------------------------------------------------------

#EXIT_1AFF3B:
|1AFF3B| RTL

;---------------------------------------------------------------------------------------------------

SpawnHammeredSplash:
; Don't spawn a splash if the game is paused, or during a cutscene
|1AFF3C| LDA.b $11
|1AFF3E| ORA.w $02E4
|1AFF41| ORA.w $0FC1
|1AFF44| BNE EXIT_1AFF3B

|1AFF46| PHX
|1AFF47| PHY

; Use Link's direction to index the offsets
|1AFF48| LDX.b $2F

|1AFF4A| REP #$20

; Prep offsets for adding in later
|1AFF4C| LDA.b $22
|1AFF4E| CLC
|1AFF4F| ADC.l .offset_x,X
|1AFF53| STA.b $00

|1AFF55| LDA.b $20
|1AFF57| CLC
|1AFF58| ADC.l .offset_y,X
|1AFF5C| STA.b $02

; Match Link's layer
|1AFF5E| SEP #$20

|1AFF60| LDA.b $EE
|1AFF62| CMP.b #$01

|1AFF64| REP #$30

|1AFF66| STZ.b $05
|1AFF68| BCC .lower_layer

|1AFF6A| LDA.w #$1000
|1AFF6D| STA.b $05

.lower_layer
|1AFF6F| SEP #$20

|1AFF71| LDA.b $1B

|1AFF73| REP #$20
|1AFF75| BEQ .outdoors

;---------------------------------------------------------------------------------------------------

; check for water tiles indoors

; get tile X index
|1AFF77| LDA.b $00
|1AFF79| AND.w #$01FF
|1AFF7C| LSR A
|1AFF7D| LSR A
|1AFF7E| LSR A
|1AFF7F| STA.b $04

; add tile Y index
|1AFF81| LDA.b $02
|1AFF83| AND.w #$01F8
|1AFF86| ASL A ; x8
|1AFF87| ASL A
|1AFF88| ASL A
|1AFF89| CLC
|1AFF8A| ADC.b $04

; add tile layer index
|1AFF8C| CLC
|1AFF8D| ADC.b $05

; get tile from index
|1AFF8F| TAX

|1AFF90| LDA.l $7F2000,X
|1AFF94| BRA .verify_water

;---------------------------------------------------------------------------------------------------

.outdoors
; check for water tiles outdoors

; we're just swapping X and Y with the stack juggling
; save tile Y index
; shoulda used PEI
|1AFF96| LDA.b $02
|1AFF98| PHA

; get tile X index
|1AFF99| LDA.b $00
|1AFF9B| LSR A
|1AFF9C| LSR A
|1AFF9D| LSR A
|1AFF9E| STA.b $02

|1AFFA0| PLA
|1AFFA1| STA.b $00

|1AFFA3| SEP #$30

|1AFFA5| JSL ReadOverworldTileType

|1AFFA9| REP #$10 ; [USELESS]

;---------------------------------------------------------------------------------------------------

.verify_water
|1AFFAB| SEP #$30

|1AFFAD| CMP.b #$08 ; TILETYPE 08
|1AFFAF| BEQ .is_water

|1AFFB1| CMP.b #$09 ; TILETYPE 09
|1AFFB3| BNE .no_splash

.is_water
|1AFFB5| JSL Sprite_SpawnSmallSplash
|1AFFB9| BMI .no_splash

; Index with direction again for offsets
|1AFFBB| LDX.b $2F

|1AFFBD| LDA.b $20
|1AFFBF| CLC
|1AFFC0| ADC.l .offset_y+0,X
|1AFFC4| PHP

|1AFFC5| SEC
|1AFFC6| SBC.b #$10
|1AFFC8| STA.w $0D00,Y

|1AFFCB| LDA.b $21
|1AFFCD| SBC.b #$00

|1AFFCF| PLP
|1AFFD0| ADC.l .offset_y+1,X
|1AFFD4| STA.w $0D20,Y

|1AFFD7| LDA.b $22
|1AFFD9| CLC
|1AFFDA| ADC.l .offset_x+0,X
|1AFFDE| PHP

|1AFFDF| SEC
|1AFFE0| SBC.b #$08
|1AFFE2| STA.w $0D10,Y

|1AFFE5| LDA.b $23
|1AFFE7| SBC.b #$00

|1AFFE9| PLP
|1AFFEA| ADC.l .offset_x+1,X
|1AFFEE| STA.w $0D30,Y

|1AFFF1| LDA.b $EE
|1AFFF3| STA.w $0F20,Y

|1AFFF6| LDA.b #$00
|1AFFF8| STA.w $0F70,Y

.no_splash
|1AFFFB| PLX
|1AFFFC| PLY

|1AFFFD| RTL

;===================================================================================================
; FREE ROM: 0x02
;===================================================================================================
NULL_1AFFFE:
|1AFFFE| db $FF, $FF

;===================================================================================================
