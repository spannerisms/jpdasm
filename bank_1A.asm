org $1A8B6C

; see "spc.asm"

;===================================================================================================

SFX_Data:
#_1A8B6C: dw $1090, SFX_DATA ; Transfer size, transfer address

base SFX_DATA

;===================================================================================================

SFX_1_Pointers:
#_1A8B70: #_17C0: dw SFX1_01
#_1A8B72: #_17C2: dw SFX1_02
#_1A8B74: #_17C4: dw SFX1_03
#_1A8B76: #_17C6: dw SFX1_04
#_1A8B78: #_17C8: dw SFX1_05
#_1A8B7A: #_17CA: dw SFX1_06
#_1A8B7C: #_17CC: dw SFX1_07
#_1A8B7E: #_17CE: dw SFX1_08
#_1A8B80: #_17D0: dw SFX1_09
#_1A8B82: #_17D2: dw SFX1_0A
#_1A8B84: #_17D4: dw SFX1_0B
#_1A8B86: #_17D6: dw SFX1_0C
#_1A8B88: #_17D8: dw SFX1_0D
#_1A8B8A: #_17DA: dw SFX1_0E
#_1A8B8C: #_17DC: dw SFX1_0F
#_1A8B8E: #_17DE: dw SFX1_10
#_1A8B90: #_17E0: dw SFX1_11
#_1A8B92: #_17E2: dw SFX1_12
#_1A8B94: #_17E4: dw SFX1_13
#_1A8B96: #_17E6: dw SFX1_14
#_1A8B98: #_17E8: dw SFX1_15
#_1A8B9A: #_17EA: dw SFX1_16
#_1A8B9C: #_17EC: dw SFX1_17
#_1A8B9E: #_17EE: dw SFX1_18
#_1A8BA0: #_17F0: dw $0000
#_1A8BA2: #_17F2: dw $0000
#_1A8BA4: #_17F4: dw SFX1_0B
#_1A8BA6: #_17F6: dw SFX1_0C
#_1A8BA8: #_17F8: dw SFX1_0D
#_1A8BAA: #_17FA: dw SFX1_0E
#_1A8BAC: #_17FC: dw SFX1_0F
#_1A8BAE: #_17FE: dw SFX1_10

;---------------------------------------------------------------------------------------------------

SFX_1_Accomp:
#_1A8BB0: #_1800: db $02 ; SFX_1_01
#_1A8BB1: #_1801: db $00 ; SFX_1_02
#_1A8BB2: #_1802: db $04 ; SFX_1_03
#_1A8BB3: #_1803: db $00 ; SFX_1_04
#_1A8BB4: #_1804: db $06 ; SFX_1_05
#_1A8BB5: #_1805: db $00 ; SFX_1_06
#_1A8BB6: #_1806: db $08 ; SFX_1_07
#_1A8BB7: #_1807: db $00 ; SFX_1_08
#_1A8BB8: #_1808: db $0A ; SFX_1_09
#_1A8BB9: #_1809: db $00 ; SFX_1_0A
#_1A8BBA: #_180A: db $0C ; SFX_1_0B
#_1A8BBB: #_180B: db $00 ; SFX_1_0C
#_1A8BBC: #_180C: db $0E ; SFX_1_0D
#_1A8BBD: #_180D: db $00 ; SFX_1_0E
#_1A8BBE: #_180E: db $10 ; SFX_1_0F
#_1A8BBF: #_180F: db $00 ; SFX_1_10
#_1A8BC0: #_1810: db $12 ; SFX_1_11
#_1A8BC1: #_1811: db $00 ; SFX_1_12
#_1A8BC2: #_1812: db $14 ; SFX_1_13
#_1A8BC3: #_1813: db $00 ; SFX_1_14
#_1A8BC4: #_1814: db $16 ; SFX_1_15
#_1A8BC5: #_1815: db $00 ; SFX_1_16
#_1A8BC6: #_1816: db $18 ; SFX_1_17
#_1A8BC7: #_1817: db $00 ; SFX_1_18
#_1A8BC8: #_1818: db $1A ; SFX_1_19
#_1A8BC9: #_1819: db $00 ; SFX_1_1A
#_1A8BCA: #_181A: db $1C ; SFX_1_1B
#_1A8BCB: #_181B: db $00 ; SFX_1_1C
#_1A8BCC: #_181C: db $1E ; SFX_1_1D
#_1A8BCD: #_181D: db $00 ; SFX_1_1E
#_1A8BCE: #_181E: db $20 ; SFX_1_1F
#_1A8BCF: #_181F: db $00 ; SFX_1_20

;===================================================================================================

SFX_2_Pointers:
#_1A8BD0: #_1820: dw SFX2_01
#_1A8BD2: #_1822: dw SFX2_02
#_1A8BD4: #_1824: dw SFX2_03
#_1A8BD6: #_1826: dw SFX2_04
#_1A8BD8: #_1828: dw SFX2_05
#_1A8BDA: #_182A: dw SFX2_06
#_1A8BDC: #_182C: dw SFX2_07
#_1A8BDE: #_182E: dw SFX2_08
#_1A8BE0: #_1830: dw SFX2_09
#_1A8BE2: #_1832: dw SFX2_0A
#_1A8BE4: #_1834: dw SFX2_0B
#_1A8BE6: #_1836: dw SFX2_0C
#_1A8BE8: #_1838: dw SFX2_0D
#_1A8BEA: #_183A: dw SFX2_0E
#_1A8BEC: #_183C: dw SFX2_0F
#_1A8BEE: #_183E: dw SFX2_10
#_1A8BF0: #_1840: dw SFX2_11
#_1A8BF2: #_1842: dw SFX2_12
#_1A8BF4: #_1844: dw SFX2_13
#_1A8BF6: #_1846: dw SFX2_14
#_1A8BF8: #_1848: dw SFX2_15
#_1A8BFA: #_184A: dw SFX2_16
#_1A8BFC: #_184C: dw SFX2_17
#_1A8BFE: #_184E: dw SFX2_18
#_1A8C00: #_1850: dw SFX2_19
#_1A8C02: #_1852: dw SFX2_1A
#_1A8C04: #_1854: dw SFX2_1B
#_1A8C06: #_1856: dw SFX2_1C
#_1A8C08: #_1858: dw SFX2_1D
#_1A8C0A: #_185A: dw SFX2_1E
#_1A8C0C: #_185C: dw SFX2_1F
#_1A8C0E: #_185E: dw SFX2_20
#_1A8C10: #_1860: dw SFX2_21
#_1A8C12: #_1862: dw SFX2_22
#_1A8C14: #_1864: dw SFX2_23
#_1A8C16: #_1866: dw SFX2_24
#_1A8C18: #_1868: dw SFX2_25
#_1A8C1A: #_186A: dw SFX2_26
#_1A8C1C: #_186C: dw SFX2_27
#_1A8C1E: #_186E: dw SFX2_28
#_1A8C20: #_1870: dw SFX2_29
#_1A8C22: #_1872: dw SFX2_2A
#_1A8C24: #_1874: dw SFX2_2B
#_1A8C26: #_1876: dw SFX2_2C
#_1A8C28: #_1878: dw SFX2_2D
#_1A8C2A: #_187A: dw SFX2_2E
#_1A8C2C: #_187C: dw SFX2_2F
#_1A8C2E: #_187E: dw SFX2_30
#_1A8C30: #_1880: dw SFX2_31
#_1A8C32: #_1882: dw SFX2_32
#_1A8C34: #_1884: dw SFX2_33
#_1A8C36: #_1886: dw SFX2_34
#_1A8C38: #_1888: dw SFX2_35
#_1A8C3A: #_188A: dw SFX2_36
#_1A8C3C: #_188C: dw SFX2_37
#_1A8C3E: #_188E: dw SFX2_38 ; Dupe of 34
#_1A8C40: #_1890: dw SFX2_39
#_1A8C42: #_1892: dw SFX2_3A
#_1A8C44: #_1894: dw SFX2_3B
#_1A8C46: #_1896: dw SFX2_3C
#_1A8C48: #_1898: dw SFX2_3D
#_1A8C4A: #_189A: dw SFX2_3E
#_1A8C4C: #_189C: dw SFX2_3F

;---------------------------------------------------------------------------------------------------

SFX_2_Accomp:
#_1A8C4E: #_189E: db $00 ; SFX_2_01
#_1A8C4F: #_189F: db $00 ; SFX_2_02
#_1A8C50: #_18A0: db $00 ; SFX_2_03
#_1A8C51: #_18A1: db $00 ; SFX_2_04
#_1A8C52: #_18A2: db $00 ; SFX_2_05
#_1A8C53: #_18A3: db $00 ; SFX_2_06
#_1A8C54: #_18A4: db $00 ; SFX_2_07
#_1A8C55: #_18A5: db $00 ; SFX_2_08
#_1A8C56: #_18A6: db $00 ; SFX_2_09
#_1A8C57: #_18A7: db $00 ; SFX_2_0A
#_1A8C58: #_18A8: db $00 ; SFX_2_0B
#_1A8C59: #_18A9: db $00 ; SFX_2_0C
#_1A8C5A: #_18AA: db $3F ; SFX_2_0D
#_1A8C5B: #_18AB: db $00 ; SFX_2_0E
#_1A8C5C: #_18AC: db $00 ; SFX_2_0F
#_1A8C5D: #_18AD: db $00 ; SFX_2_10
#_1A8C5E: #_18AE: db $00 ; SFX_2_11
#_1A8C5F: #_18AF: db $00 ; SFX_2_12
#_1A8C60: #_18B0: db $3E ; SFX_2_13
#_1A8C61: #_18B1: db $00 ; SFX_2_14
#_1A8C62: #_18B2: db $00 ; SFX_2_15
#_1A8C63: #_18B3: db $00 ; SFX_2_16
#_1A8C64: #_18B4: db $00 ; SFX_2_17
#_1A8C65: #_18B5: db $00 ; SFX_2_18
#_1A8C66: #_18B6: db $00 ; SFX_2_19
#_1A8C67: #_18B7: db $00 ; SFX_2_1A
#_1A8C68: #_18B8: db $00 ; SFX_2_1B
#_1A8C69: #_18B9: db $00 ; SFX_2_1C
#_1A8C6A: #_18BA: db $00 ; SFX_2_1D
#_1A8C6B: #_18BB: db $00 ; SFX_2_1E
#_1A8C6C: #_18BC: db $00 ; SFX_2_1F
#_1A8C6D: #_18BD: db $00 ; SFX_2_20
#_1A8C6E: #_18BE: db $00 ; SFX_2_21
#_1A8C6F: #_18BF: db $00 ; SFX_2_22
#_1A8C70: #_18C0: db $00 ; SFX_2_23
#_1A8C71: #_18C1: db $3D ; SFX_2_24
#_1A8C72: #_18C2: db $00 ; SFX_2_25
#_1A8C73: #_18C3: db $00 ; SFX_2_26
#_1A8C74: #_18C4: db $00 ; SFX_2_27
#_1A8C75: #_18C5: db $00 ; SFX_2_28
#_1A8C76: #_18C6: db $3B ; SFX_2_29
#_1A8C77: #_18C7: db $00 ; SFX_2_2A
#_1A8C78: #_18C8: db $00 ; SFX_2_2B
#_1A8C79: #_18C9: db $3A ; SFX_2_2C
#_1A8C7A: #_18CA: db $00 ; SFX_2_2D
#_1A8C7B: #_18CB: db $39 ; SFX_2_2E
#_1A8C7C: #_18CC: db $38 ; SFX_2_2F
#_1A8C7D: #_18CD: db $00 ; SFX_2_30
#_1A8C7E: #_18CE: db $00 ; SFX_2_31
#_1A8C7F: #_18CF: db $00 ; SFX_2_32
#_1A8C80: #_18D0: db $00 ; SFX_2_33
#_1A8C81: #_18D1: db $33 ; SFX_2_34
#_1A8C82: #_18D2: db $36 ; SFX_2_35
#_1A8C83: #_18D3: db $00 ; SFX_2_36
#_1A8C84: #_18D4: db $00 ; SFX_2_37
#_1A8C85: #_18D5: db $00 ; SFX_2_38
#_1A8C86: #_18D6: db $00 ; SFX_2_39
#_1A8C87: #_18D7: db $00 ; SFX_2_3A
#_1A8C88: #_18D8: db $00 ; SFX_2_3B
#_1A8C89: #_18D9: db $00 ; SFX_2_3C
#_1A8C8A: #_18DA: db $00 ; SFX_2_3D
#_1A8C8B: #_18DB: db $00 ; SFX_2_3E
#_1A8C8C: #_18DC: db $00 ; SFX_2_3F

;---------------------------------------------------------------------------------------------------

SFX_2_Something:
#_1A8C8D: #_18DD: db $00 ; SFX_2_01
#_1A8C8E: #_18DE: db $00 ; SFX_2_02
#_1A8C8F: #_18DF: db $00 ; SFX_2_03
#_1A8C90: #_18E0: db $00 ; SFX_2_04
#_1A8C91: #_18E1: db $00 ; SFX_2_05
#_1A8C92: #_18E2: db $00 ; SFX_2_06
#_1A8C93: #_18E3: db $00 ; SFX_2_07
#_1A8C94: #_18E4: db $00 ; SFX_2_08
#_1A8C95: #_18E5: db $00 ; SFX_2_09
#_1A8C96: #_18E6: db $00 ; SFX_2_0A
#_1A8C97: #_18E7: db $00 ; SFX_2_0B
#_1A8C98: #_18E8: db $01 ; SFX_2_0C
#_1A8C99: #_18E9: db $00 ; SFX_2_0D
#_1A8C9A: #_18EA: db $00 ; SFX_2_0E
#_1A8C9B: #_18EB: db $00 ; SFX_2_0F
#_1A8C9C: #_18EC: db $00 ; SFX_2_10
#_1A8C9D: #_18ED: db $00 ; SFX_2_11
#_1A8C9E: #_18EE: db $00 ; SFX_2_12
#_1A8C9F: #_18EF: db $00 ; SFX_2_13
#_1A8CA0: #_18F0: db $00 ; SFX_2_14
#_1A8CA1: #_18F1: db $00 ; SFX_2_15
#_1A8CA2: #_18F2: db $00 ; SFX_2_16
#_1A8CA3: #_18F3: db $00 ; SFX_2_17
#_1A8CA4: #_18F4: db $00 ; SFX_2_18
#_1A8CA5: #_18F5: db $00 ; SFX_2_19
#_1A8CA6: #_18F6: db $00 ; SFX_2_1A
#_1A8CA7: #_18F7: db $00 ; SFX_2_1B
#_1A8CA8: #_18F8: db $00 ; SFX_2_1C
#_1A8CA9: #_18F9: db $00 ; SFX_2_1D
#_1A8CAA: #_18FA: db $00 ; SFX_2_1E
#_1A8CAB: #_18FB: db $00 ; SFX_2_1F
#_1A8CAC: #_18FC: db $00 ; SFX_2_20
#_1A8CAD: #_18FD: db $00 ; SFX_2_21
#_1A8CAE: #_18FE: db $00 ; SFX_2_22
#_1A8CAF: #_18FF: db $00 ; SFX_2_23
#_1A8CB0: #_1900: db $00 ; SFX_2_24
#_1A8CB1: #_1901: db $00 ; SFX_2_25
#_1A8CB2: #_1902: db $00 ; SFX_2_26
#_1A8CB3: #_1903: db $00 ; SFX_2_27
#_1A8CB4: #_1904: db $00 ; SFX_2_28
#_1A8CB5: #_1905: db $3B ; SFX_2_29
#_1A8CB6: #_1906: db $01 ; SFX_2_2A
#_1A8CB7: #_1907: db $01 ; SFX_2_2B
#_1A8CB8: #_1908: db $00 ; SFX_2_2C
#_1A8CB9: #_1909: db $01 ; SFX_2_2D
#_1A8CBA: #_190A: db $01 ; SFX_2_2E
#_1A8CBB: #_190B: db $01 ; SFX_2_2F
#_1A8CBC: #_190C: db $00 ; SFX_2_30
#_1A8CBD: #_190D: db $00 ; SFX_2_31
#_1A8CBE: #_190E: db $00 ; SFX_2_32
#_1A8CBF: #_190F: db $00 ; SFX_2_33
#_1A8CC0: #_1910: db $00 ; SFX_2_34
#_1A8CC1: #_1911: db $01 ; SFX_2_35
#_1A8CC2: #_1912: db $01 ; SFX_2_36
#_1A8CC3: #_1913: db $00 ; SFX_2_37
#_1A8CC4: #_1914: db $00 ; SFX_2_38
#_1A8CC5: #_1915: db $00 ; SFX_2_39
#_1A8CC6: #_1916: db $00 ; SFX_2_3A
#_1A8CC7: #_1917: db $00 ; SFX_2_3B
#_1A8CC8: #_1918: db $01 ; SFX_2_3C
#_1A8CC9: #_1919: db $00 ; SFX_2_3D
#_1A8CCA: #_191A: db $3C ; SFX_2_3E
#_1A8CCB: #_191B: db $00 ; SFX_2_3F

;===================================================================================================

SFX_3_Pointers:
#_1A8CCC: #_191C: dw SFX3_01
#_1A8CCE: #_191E: dw SFX3_02
#_1A8CD0: #_1920: dw SFX3_03
#_1A8CD2: #_1922: dw SFX3_04
#_1A8CD4: #_1924: dw SFX3_05 ; Same as SFX2_07
#_1A8CD6: #_1926: dw SFX3_06
#_1A8CD8: #_1928: dw SFX3_07
#_1A8CDA: #_192A: dw SFX3_08
#_1A8CDC: #_192C: dw SFX3_09
#_1A8CDE: #_192E: dw SFX3_0A
#_1A8CE0: #_1930: dw SFX3_0B
#_1A8CE2: #_1932: dw SFX3_0C
#_1A8CE4: #_1934: dw SFX3_0D
#_1A8CE6: #_1936: dw SFX3_0E
#_1A8CE8: #_1938: dw SFX3_0F
#_1A8CEA: #_193A: dw SFX3_10
#_1A8CEC: #_193C: dw SFX3_11
#_1A8CEE: #_193E: dw SFX3_12
#_1A8CF0: #_1940: dw SFX3_13
#_1A8CF2: #_1942: dw SFX3_14
#_1A8CF4: #_1944: dw SFX3_15
#_1A8CF6: #_1946: dw SFX3_16
#_1A8CF8: #_1948: dw SFX3_17
#_1A8CFA: #_194A: dw SFX3_18
#_1A8CFC: #_194C: dw SFX3_19
#_1A8CFE: #_194E: dw SFX3_1A
#_1A8D00: #_1950: dw SFX3_1B
#_1A8D02: #_1952: dw SFX3_1C
#_1A8D04: #_1954: dw SFX3_1D ; Same as SFX2_2D
#_1A8D06: #_1956: dw SFX3_1E
#_1A8D08: #_1958: dw SFX3_1F
#_1A8D0A: #_195A: dw SFX3_20
#_1A8D0C: #_195C: dw SFX3_21
#_1A8D0E: #_195E: dw SFX3_22
#_1A8D10: #_1960: dw SFX3_23
#_1A8D12: #_1962: dw SFX3_24
#_1A8D14: #_1964: dw SFX3_25
#_1A8D16: #_1966: dw SFX3_26
#_1A8D18: #_1968: dw SFX3_27
#_1A8D1A: #_196A: dw SFX3_28
#_1A8D1C: #_196C: dw SFX3_29
#_1A8D1E: #_196E: dw SFX3_2A
#_1A8D20: #_1970: dw SFX3_2B
#_1A8D22: #_1972: dw SFX3_2C
#_1A8D24: #_1974: dw SFX3_2D
#_1A8D26: #_1976: dw SFX3_2E
#_1A8D28: #_1978: dw SFX3_2F
#_1A8D2A: #_197A: dw SFX3_30
#_1A8D2C: #_197C: dw SFX3_31
#_1A8D2E: #_197E: dw SFX3_32
#_1A8D30: #_1980: dw SFX3_33
#_1A8D32: #_1982: dw SFX3_34
#_1A8D34: #_1984: dw SFX3_35
#_1A8D36: #_1986: dw SFX3_36
#_1A8D38: #_1988: dw SFX3_37
#_1A8D3A: #_198A: dw SFX3_38
#_1A8D3C: #_198C: dw SFX3_39
#_1A8D3E: #_198E: dw SFX3_3A
#_1A8D40: #_1990: dw SFX3_3B
#_1A8D42: #_1992: dw SFX3_3C
#_1A8D44: #_1994: dw SFX3_3D
#_1A8D46: #_1996: dw SFX3_3E
#_1A8D48: #_1998: dw SFX3_3F

;---------------------------------------------------------------------------------------------------

SFX_3_Accomp:
#_1A8D4A: #_199A: db $00 ; SFX_3_01
#_1A8D4B: #_199B: db $00 ; SFX_3_02
#_1A8D4C: #_199C: db $00 ; SFX_3_03
#_1A8D4D: #_199D: db $00 ; SFX_3_04
#_1A8D4E: #_199E: db $00 ; SFX_3_05
#_1A8D4F: #_199F: db $00 ; SFX_3_06
#_1A8D50: #_19A0: db $00 ; SFX_3_07
#_1A8D51: #_19A1: db $00 ; SFX_3_08
#_1A8D52: #_19A2: db $00 ; SFX_3_09
#_1A8D53: #_19A3: db $00 ; SFX_3_0A
#_1A8D54: #_19A4: db $00 ; SFX_3_0B
#_1A8D55: #_19A5: db $00 ; SFX_3_0C
#_1A8D56: #_19A6: db $00 ; SFX_3_0D
#_1A8D57: #_19A7: db $00 ; SFX_3_0E
#_1A8D58: #_19A8: db $3C ; SFX_3_0F
#_1A8D59: #_19A9: db $3B ; SFX_3_10
#_1A8D5A: #_19AA: db $00 ; SFX_3_11
#_1A8D5B: #_19AB: db $00 ; SFX_3_12
#_1A8D5C: #_19AC: db $00 ; SFX_3_13
#_1A8D5D: #_19AD: db $00 ; SFX_3_14
#_1A8D5E: #_19AE: db $00 ; SFX_3_15
#_1A8D5F: #_19AF: db $00 ; SFX_3_16
#_1A8D60: #_19B0: db $00 ; SFX_3_17
#_1A8D61: #_19B1: db $00 ; SFX_3_18
#_1A8D62: #_19B2: db $00 ; SFX_3_19
#_1A8D63: #_19B3: db $38 ; SFX_3_1A
#_1A8D64: #_19B4: db $3A ; SFX_3_1B
#_1A8D65: #_19B5: db $00 ; SFX_3_1C
#_1A8D66: #_19B6: db $00 ; SFX_3_1D
#_1A8D67: #_19B7: db $00 ; SFX_3_1E
#_1A8D68: #_19B8: db $00 ; SFX_3_1F
#_1A8D69: #_19B9: db $00 ; SFX_3_20
#_1A8D6A: #_19BA: db $00 ; SFX_3_21
#_1A8D6B: #_19BB: db $00 ; SFX_3_22
#_1A8D6C: #_19BC: db $39 ; SFX_3_23
#_1A8D6D: #_19BD: db $00 ; SFX_3_24
#_1A8D6E: #_19BE: db $00 ; SFX_3_25
#_1A8D6F: #_19BF: db $00 ; SFX_3_26
#_1A8D70: #_19C0: db $00 ; SFX_3_27
#_1A8D71: #_19C1: db $00 ; SFX_3_28
#_1A8D72: #_19C2: db $00 ; SFX_3_29
#_1A8D73: #_19C3: db $00 ; SFX_3_2A
#_1A8D74: #_19C4: db $00 ; SFX_3_2B
#_1A8D75: #_19C5: db $00 ; SFX_3_2C
#_1A8D76: #_19C6: db $37 ; SFX_3_2D
#_1A8D77: #_19C7: db $35 ; SFX_3_2E
#_1A8D78: #_19C8: db $33 ; SFX_3_2F
#_1A8D79: #_19C9: db $00 ; SFX_3_30
#_1A8D7A: #_19CA: db $00 ; SFX_3_31
#_1A8D7B: #_19CB: db $00 ; SFX_3_32
#_1A8D7C: #_19CC: db $00 ; SFX_3_33
#_1A8D7D: #_19CD: db $00 ; SFX_3_34
#_1A8D7E: #_19CE: db $34 ; SFX_3_35
#_1A8D7F: #_19CF: db $00 ; SFX_3_36
#_1A8D80: #_19D0: db $00 ; SFX_3_37
#_1A8D81: #_19D1: db $00 ; SFX_3_38
#_1A8D82: #_19D2: db $00 ; SFX_3_39
#_1A8D83: #_19D3: db $00 ; SFX_3_3A
#_1A8D84: #_19D4: db $00 ; SFX_3_3B
#_1A8D85: #_19D5: db $3D ; SFX_3_3C
#_1A8D86: #_19D6: db $3E ; SFX_3_3D
#_1A8D87: #_19D7: db $3F ; SFX_3_3E
#_1A8D88: #_19D8: db $00 ; SFX_3_3F

;---------------------------------------------------------------------------------------------------

SFX_3_Something:
#_1A8D89: #_19D9: db $00 ; SFX_3_01
#_1A8D8A: #_19DA: db $00 ; SFX_3_02
#_1A8D8B: #_19DB: db $00 ; SFX_3_03
#_1A8D8C: #_19DC: db $00 ; SFX_3_04
#_1A8D8D: #_19DD: db $00 ; SFX_3_05
#_1A8D8E: #_19DE: db $00 ; SFX_3_06
#_1A8D8F: #_19DF: db $00 ; SFX_3_07
#_1A8D90: #_19E0: db $00 ; SFX_3_08
#_1A8D91: #_19E1: db $00 ; SFX_3_09
#_1A8D92: #_19E2: db $00 ; SFX_3_0A
#_1A8D93: #_19E3: db $00 ; SFX_3_0B
#_1A8D94: #_19E4: db $01 ; SFX_3_0C
#_1A8D95: #_19E5: db $01 ; SFX_3_0D
#_1A8D96: #_19E6: db $00 ; SFX_3_0E
#_1A8D97: #_19E7: db $3C ; SFX_3_0F
#_1A8D98: #_19E8: db $3B ; SFX_3_10
#_1A8D99: #_19E9: db $01 ; SFX_3_11
#_1A8D9A: #_19EA: db $01 ; SFX_3_12
#_1A8D9B: #_19EB: db $00 ; SFX_3_13
#_1A8D9C: #_19EC: db $00 ; SFX_3_14
#_1A8D9D: #_19ED: db $00 ; SFX_3_15
#_1A8D9E: #_19EE: db $00 ; SFX_3_16
#_1A8D9F: #_19EF: db $00 ; SFX_3_17
#_1A8DA0: #_19F0: db $00 ; SFX_3_18
#_1A8DA1: #_19F1: db $00 ; SFX_3_19
#_1A8DA2: #_19F2: db $00 ; SFX_3_1A
#_1A8DA3: #_19F3: db $3A ; SFX_3_1B
#_1A8DA4: #_19F4: db $00 ; SFX_3_1C
#_1A8DA5: #_19F5: db $01 ; SFX_3_1D
#_1A8DA6: #_19F6: db $00 ; SFX_3_1E
#_1A8DA7: #_19F7: db $01 ; SFX_3_1F
#_1A8DA8: #_19F8: db $01 ; SFX_3_20
#_1A8DA9: #_19F9: db $01 ; SFX_3_21
#_1A8DAA: #_19FA: db $01 ; SFX_3_22
#_1A8DAB: #_19FB: db $00 ; SFX_3_23
#_1A8DAC: #_19FC: db $01 ; SFX_3_24
#_1A8DAD: #_19FD: db $00 ; SFX_3_25
#_1A8DAE: #_19FE: db $00 ; SFX_3_26
#_1A8DAF: #_19FF: db $00 ; SFX_3_27
#_1A8DB0: #_1A00: db $00 ; SFX_3_28
#_1A8DB1: #_1A01: db $00 ; SFX_3_29
#_1A8DB2: #_1A02: db $00 ; SFX_3_2A
#_1A8DB3: #_1A03: db $00 ; SFX_3_2B
#_1A8DB4: #_1A04: db $00 ; SFX_3_2C
#_1A8DB5: #_1A05: db $01 ; SFX_3_2D
#_1A8DB6: #_1A06: db $01 ; SFX_3_2E
#_1A8DB7: #_1A07: db $01 ; SFX_3_2F
#_1A8DB8: #_1A08: db $00 ; SFX_3_30
#_1A8DB9: #_1A09: db $01 ; SFX_3_31
#_1A8DBA: #_1A0A: db $00 ; SFX_3_32
#_1A8DBB: #_1A0B: db $01 ; SFX_3_33
#_1A8DBC: #_1A0C: db $01 ; SFX_3_34
#_1A8DBD: #_1A0D: db $01 ; SFX_3_35
#_1A8DBE: #_1A0E: db $00 ; SFX_3_36
#_1A8DBF: #_1A0F: db $01 ; SFX_3_37
#_1A8DC0: #_1A10: db $00 ; SFX_3_38
#_1A8DC1: #_1A11: db $00 ; SFX_3_39
#_1A8DC2: #_1A12: db $00 ; SFX_3_3A
#_1A8DC3: #_1A13: db $00 ; SFX_3_3B
#_1A8DC4: #_1A14: db $3D ; SFX_3_3C
#_1A8DC5: #_1A15: db $3E ; SFX_3_3D
#_1A8DC6: #_1A16: db $3F ; SFX_3_3E
#_1A8DC7: #_1A17: db $01 ; SFX_3_3F

;===================================================================================================

SFX3_01:
#_1A8DC8: #_1A18: db !INSTR, $07
#_1A8DCA: #_1A1A: db $0B, $50 ; duration, params
#_1A8DCC: #_1A1C: db !SLIDE_ONCE, $AF, $00, $08
#_1A8DD0: #_1A20: db D6
#_1A8DD1: #_1A21: db $0F, $46 ; duration, params
#_1A8DD3: #_1A23: db !SLIDE_ONCE, $AF, $00, $0C
#_1A8DD7: #_1A27: db D6
#_1A8DD8: #_1A28: db $0B, $32 ; duration, params
#_1A8DDA: #_1A2A: db !SLIDE_ONCE, $AF, $00, $08
#_1A8DDE: #_1A2E: db D6
#_1A8DDF: #_1A2F: db $0F, $1E ; duration, params
#_1A8DE1: #_1A31: db !SLIDE_ONCE, $AF, $00, $0C
#_1A8DE5: #_1A35: db D6
#_1A8DE6: #_1A36: db !PART_END

;===================================================================================================

SFX2_3C:
#_1A8DE7: #_1A37: db !INSTR, $04
#_1A8DE9: #_1A39: db $0C, $6E ; duration, params
#_1A8DEB: #_1A3B: db A3
#_1A8DEC: #_1A3C: db $06, $00 ; duration, params
#_1A8DEE: #_1A3E: db C3
#_1A8DEF: #_1A3F: db $24, $6E ; duration, params
#_1A8DF1: #_1A41: db A3
#_1A8DF2: #_1A42: db !PART_END

;===================================================================================================

SFX2_37:
#_1A8DF3: #_1A43: db !INSTR, $0E
#_1A8DF5: #_1A45: db $0A, $3C ; duration, params
#_1A8DF7: #_1A47: db !SLIDE_ONCE, $9C, $00, $08
#_1A8DFB: #_1A4B: db A3
#_1A8DFC: #_1A4C: db $0A, $46 ; duration, params
#_1A8DFE: #_1A4E: db !SLIDE_ONCE, $9D, $00, $08
#_1A8E02: #_1A52: db B3
#_1A8E03: #_1A53: db $0A, $50 ; duration, params
#_1A8E05: #_1A55: db !SLIDE_ONCE, $A0, $00, $08
#_1A8E09: #_1A59: db Cs4
#_1A8E0A: #_1A5A: db !PART_END

;===================================================================================================

UnusedSFX_1A5B:
#_1A8E0B: #_1A5B: db $0C, $64 ; duration, params
#_1A8E0D: #_1A5D: db !SLIDE_ONCE, $A5, $00, $0A
#_1A8E11: #_1A61: db Fs4

;===================================================================================================

SFX3_1C:
#_1A8E12: #_1A62: db !INSTR, $0A
#_1A8E14: #_1A64: db $07, $7D ; duration, params
#_1A8E16: #_1A66: db !SLIDE_ONCE, $A1, $00, $05
#_1A8E1A: #_1A6A: db F3
#_1A8E1B: #_1A6B: db $08, $7D ; duration, params
#_1A8E1D: #_1A6D: db !SLIDE_ONCE, $A3, $00, $06
#_1A8E21: #_1A71: db B4
#_1A8E22: #_1A72: db $07 ; duration
#_1A8E23: #_1A73: db !SLIDE_TO, $00, $04, $A9
#_1A8E27: #_1A77: db !PART_END

;===================================================================================================

SFX3_32:
#_1A8E28: #_1A78: db !INSTR, $04
#_1A8E2A: #_1A7A: db $08, $6E ; duration, params
#_1A8E2C: #_1A7C: db !SLIDE_ONCE, $A9, $00, $05
#_1A8E30: #_1A80: db C4
#_1A8E31: #_1A81: db $08, $6E ; duration, params
#_1A8E33: #_1A83: db !SLIDE_ONCE, $AD, $00, $08
#_1A8E37: #_1A87: db C4
#_1A8E38: #_1A88: db $08, $5F ; duration, params
#_1A8E3A: #_1A8A: db !SLIDE_TO, $00, $08, $B0
#_1A8E3E: #_1A8E: db $08, $50 ; duration, params
#_1A8E40: #_1A90: db !SLIDE_TO, $00, $08, $A9
#_1A8E44: #_1A94: db $08, $41 ; duration, params
#_1A8E46: #_1A96: db !SLIDE_TO, $00, $08, $AF
#_1A8E4A: #_1A9A: db $08, $2D ; duration, params
#_1A8E4C: #_1A9C: db !SLIDE_TO, $00, $08, $A9
#_1A8E50: #_1AA0: db $08, $16 ; duration, params
#_1A8E52: #_1AA2: db !SLIDE_TO, $00, $05, $AF
#_1A8E56: #_1AA6: db !PART_END

;===================================================================================================

SFX3_36:
#_1A8E57: #_1AA7: db !INSTR, $07
#_1A8E59: #_1AA9: db $08, $3C ; duration, params
#_1A8E5B: #_1AAB: db !SLIDE_ONCE, $B2, $00, $05
#_1A8E5F: #_1AAF: db E5
#_1A8E60: #_1AB0: db $08, $46 ; duration, params
#_1A8E62: #_1AB2: db !SLIDE_ONCE, $BE, $00, $08
#_1A8E66: #_1AB6: db F6
#_1A8E67: #_1AB7: db $08, $41 ; duration, params
#_1A8E69: #_1AB9: db !SLIDE_TO, $00, $08, $BE
#_1A8E6D: #_1ABD: db $08, $32 ; duration, params
#_1A8E6F: #_1ABF: db !SLIDE_TO, $00, $08, $C1
#_1A8E73: #_1AC3: db $08, $2D ; duration, params
#_1A8E75: #_1AC5: db !SLIDE_TO, $00, $05, $BE
#_1A8E79: #_1AC9: db !PART_END

;===================================================================================================

SFX3_31:
#_1A8E7A: #_1ACA: db !INSTR, $01
#_1A8E7C: #_1ACC: db $06, $78 ; duration, params
#_1A8E7E: #_1ACE: db B3
#_1A8E7F: #_1ACF: db A3
#_1A8E80: #_1AD0: db G3
#_1A8E81: #_1AD1: db !PART_END

;===================================================================================================

SFX1_13:
#_1A8E82: #_1AD2: db !INSTR, $00
#_1A8E84: #_1AD4: db $0B, $3C ; duration, params
#_1A8E86: #_1AD6: db !SLIDE_ONCE, $9F, $00, $0B
#_1A8E8A: #_1ADA: db C4
#_1A8E8B: #_1ADB: db $18 ; duration
#_1A8E8C: #_1ADC: db !SLIDE_TO, $00, $15, $BC
#_1A8E90: #_1AE0: db !PART_END

;===================================================================================================

SFX1_14:
#_1A8E91: #_1AE1: db !INSTR, $00
#_1A8E93: #_1AE3: db $0B, $3C ; duration, params
#_1A8E95: #_1AE5: db !SLIDE_ONCE, $B7, $00, $0B
#_1A8E99: #_1AE9: db C4
#_1A8E9A: #_1AEA: db $18 ; duration
#_1A8E9B: #_1AEB: db !SLIDE_TO, $00, $15, $98
#_1A8E9F: #_1AEF: db !PART_END

;===================================================================================================

SFX1_15:
#_1A8EA0: #_1AF0: db !INSTR, $0A
#_1A8EA2: #_1AF2: db $0C, $64 ; duration, params
#_1A8EA4: #_1AF4: db !SLIDE_ONCE, $90, $00, $0C
#_1A8EA8: #_1AF8: db G3
#_1A8EA9: #_1AF9: db $1B ; duration
#_1A8EAA: #_1AFA: db !SLIDE_TO, $00, $18, $A6
#_1A8EAE: #_1AFE: db !PART_END

;===================================================================================================

SFX1_16:
#_1A8EAF: #_1AFF: db !INSTR, $0A
#_1A8EB1: #_1B01: db $0C, $64 ; duration, params
#_1A8EB3: #_1B03: db !SLIDE_ONCE, $9C, $00, $0C
#_1A8EB7: #_1B07: db G2
#_1A8EB8: #_1B08: db $1B ; duration
#_1A8EB9: #_1B09: db !SLIDE_TO, $00, $18, $82
#_1A8EBD: #_1B0D: db !PART_END

;===================================================================================================

SFX1_0D:
#_1A8EBE: #_1B0E: db !INSTR, $0E
#_1A8EC0: #_1B10: db $10, $28 ; duration, params
#_1A8EC2: #_1B12: db As4
#_1A8EC3: #_1B13: db $10, $28 ; duration, params
#_1A8EC5: #_1B15: db C5
#_1A8EC6: #_1B16: db $10, $1E ; duration, params
#_1A8EC8: #_1B18: db D5
#_1A8EC9: #_1B19: db $34, $1E ; duration, params
#_1A8ECB: #_1B1B: db As5
#_1A8ECC: #_1B1C: db !PART_END

;===================================================================================================

SFX1_0E:
#_1A8ECD: #_1B1D: db !INSTR, $0E
#_1A8ECF: #_1B1F: db $08, $00 ; duration, params
#_1A8ED1: #_1B21: db R
#_1A8ED2: #_1B22: db $10, $28 ; duration, params
#_1A8ED4: #_1B24: db D5
#_1A8ED5: #_1B25: db $10, $1E ; duration, params
#_1A8ED7: #_1B27: db E5
#_1A8ED8: #_1B28: db $10, $1E ; duration, params
#_1A8EDA: #_1B2A: db Fs5
#_1A8EDB: #_1B2B: db !PART_END

;===================================================================================================

SFX1_0F:
#_1A8EDC: #_1B2C: db !INSTR, $0E
#_1A8EDE: #_1B2E: db $10, $28 ; duration, params
#_1A8EE0: #_1B30: db Cs6
#_1A8EE1: #_1B31: db $10, $28 ; duration, params
#_1A8EE3: #_1B33: db Fs5
#_1A8EE4: #_1B34: db $10, $1E ; duration, params
#_1A8EE6: #_1B36: db Cs5
#_1A8EE7: #_1B37: db $10, $14 ; duration, params
#_1A8EE9: #_1B39: db Fs4
#_1A8EEA: #_1B3A: db $10, $0A ; duration, params
#_1A8EEC: #_1B3C: db Cs4
#_1A8EED: #_1B3D: db !PART_END

;===================================================================================================

SFX1_10:
#_1A8EEE: #_1B3E: db !INSTR, $0E
#_1A8EF0: #_1B40: db $08, $00 ; duration, params
#_1A8EF2: #_1B42: db Fs4
#_1A8EF3: #_1B43: db $10, $28 ; duration, params
#_1A8EF5: #_1B45: db As5
#_1A8EF6: #_1B46: db $10, $1E ; duration, params
#_1A8EF8: #_1B48: db Ds5
#_1A8EF9: #_1B49: db $10, $14 ; duration, params
#_1A8EFB: #_1B4B: db As4
#_1A8EFC: #_1B4C: db $10, $0A ; duration, params
#_1A8EFE: #_1B4E: db Ds4
#_1A8EFF: #_1B4F: db $10, $05 ; duration, params
#_1A8F01: #_1B51: db As3
#_1A8F02: #_1B52: db !PART_END

;===================================================================================================

SFX3_30:
#_1A8F03: #_1B53: db !INSTR, $03
#_1A8F05: #_1B55: db $0C, $78 ; duration, params
#_1A8F07: #_1B57: db !SLIDE_ONCE, $B4, $00, $0C
#_1A8F0B: #_1B5B: db A5
#_1A8F0C: #_1B5C: db $0C ; duration
#_1A8F0D: #_1B5D: db !SLIDE_TO, $00, $0A, $B3
#_1A8F11: #_1B61: db !PART_END

;===================================================================================================

SFX1_0C:
#_1A8F12: #_1B62: db !INSTR, $0D
#_1A8F14: #_1B64: db $16, $1E ; duration, params
#_1A8F16: #_1B66: db G4
#_1A8F17: #_1B67: db $0E ; duration
#_1A8F18: #_1B68: db C5
#_1A8F19: #_1B69: db D5
#_1A8F1A: #_1B6A: db G5
#_1A8F1B: #_1B6B: db D5
#_1A8F1C: #_1B6C: db $66 ; duration
#_1A8F1D: #_1B6D: db E5
#_1A8F1E: #_1B6E: db $0E ; duration
#_1A8F1F: #_1B6F: db G4
#_1A8F20: #_1B70: db C5
#_1A8F21: #_1B71: db D5
#_1A8F22: #_1B72: db G5
#_1A8F23: #_1B73: db D5
#_1A8F24: #_1B74: db $66 ; duration
#_1A8F25: #_1B75: db E5
#_1A8F26: #_1B76: db $0E ; duration
#_1A8F27: #_1B77: db A4
#_1A8F28: #_1B78: db D5
#_1A8F29: #_1B79: db E5
#_1A8F2A: #_1B7A: db A5
#_1A8F2B: #_1B7B: db E5
#_1A8F2C: #_1B7C: db $66 ; duration
#_1A8F2D: #_1B7D: db F5
#_1A8F2E: #_1B7E: db $0E ; duration
#_1A8F2F: #_1B7F: db E5
#_1A8F30: #_1B80: db F5
#_1A8F31: #_1B81: db G5
#_1A8F32: #_1B82: db $78 ; duration
#_1A8F33: #_1B83: db D5
#_1A8F34: #_1B84: db $0E ; duration
#_1A8F35: #_1B85: db C5
#_1A8F36: #_1B86: db F5
#_1A8F37: #_1B87: db A5
#_1A8F38: #_1B88: db D6
#_1A8F39: #_1B89: db B5
#_1A8F3A: #_1B8A: db $66 ; duration
#_1A8F3B: #_1B8B: db C6
#_1A8F3C: #_1B8C: db $0E ; duration
#_1A8F3D: #_1B8D: db C6
#_1A8F3E: #_1B8E: db B5
#_1A8F3F: #_1B8F: db A5
#_1A8F40: #_1B90: db G5
#_1A8F41: #_1B91: db A5
#_1A8F42: #_1B92: db $66 ; duration
#_1A8F43: #_1B93: db E5
#_1A8F44: #_1B94: db $0E ; duration
#_1A8F45: #_1B95: db G4
#_1A8F46: #_1B96: db D5
#_1A8F47: #_1B97: db E5
#_1A8F48: #_1B98: db G5
#_1A8F49: #_1B99: db D5
#_1A8F4A: #_1B9A: db $66 ; duration
#_1A8F4B: #_1B9B: db F5
#_1A8F4C: #_1B9C: db $0E ; duration
#_1A8F4D: #_1B9D: db F5
#_1A8F4E: #_1B9E: db D5
#_1A8F4F: #_1B9F: db B4
#_1A8F50: #_1BA0: db $70 ; duration
#_1A8F51: #_1BA1: db C5
#_1A8F52: #_1BA2: db !SFX_LOOP

;===================================================================================================

SFX1_0B:
#_1A8F53: #_1BA3: db !INSTR, $0D
#_1A8F55: #_1BA5: db $0E, $3C ; duration, params
#_1A8F57: #_1BA7: db G4
#_1A8F58: #_1BA8: db C5
#_1A8F59: #_1BA9: db D5
#_1A8F5A: #_1BAA: db G5
#_1A8F5B: #_1BAB: db D5
#_1A8F5C: #_1BAC: db $66 ; duration
#_1A8F5D: #_1BAD: db E5
#_1A8F5E: #_1BAE: db $0E ; duration
#_1A8F5F: #_1BAF: db G4
#_1A8F60: #_1BB0: db C5
#_1A8F61: #_1BB1: db D5
#_1A8F62: #_1BB2: db G5
#_1A8F63: #_1BB3: db D5
#_1A8F64: #_1BB4: db $66 ; duration
#_1A8F65: #_1BB5: db E5
#_1A8F66: #_1BB6: db $0E ; duration
#_1A8F67: #_1BB7: db A4
#_1A8F68: #_1BB8: db D5
#_1A8F69: #_1BB9: db E5
#_1A8F6A: #_1BBA: db A5
#_1A8F6B: #_1BBB: db E5
#_1A8F6C: #_1BBC: db $66 ; duration
#_1A8F6D: #_1BBD: db F5
#_1A8F6E: #_1BBE: db $0E ; duration
#_1A8F6F: #_1BBF: db E5
#_1A8F70: #_1BC0: db F5
#_1A8F71: #_1BC1: db G5
#_1A8F72: #_1BC2: db $78 ; duration
#_1A8F73: #_1BC3: db D5
#_1A8F74: #_1BC4: db $0E ; duration
#_1A8F75: #_1BC5: db C5
#_1A8F76: #_1BC6: db F5
#_1A8F77: #_1BC7: db A5
#_1A8F78: #_1BC8: db D6
#_1A8F79: #_1BC9: db B5
#_1A8F7A: #_1BCA: db $66 ; duration
#_1A8F7B: #_1BCB: db C6
#_1A8F7C: #_1BCC: db $0E ; duration
#_1A8F7D: #_1BCD: db C6
#_1A8F7E: #_1BCE: db B5
#_1A8F7F: #_1BCF: db A5
#_1A8F80: #_1BD0: db G5
#_1A8F81: #_1BD1: db A5
#_1A8F82: #_1BD2: db $66 ; duration
#_1A8F83: #_1BD3: db E5
#_1A8F84: #_1BD4: db $0E ; duration
#_1A8F85: #_1BD5: db G4
#_1A8F86: #_1BD6: db D5
#_1A8F87: #_1BD7: db E5
#_1A8F88: #_1BD8: db G5
#_1A8F89: #_1BD9: db D5
#_1A8F8A: #_1BDA: db $66 ; duration
#_1A8F8B: #_1BDB: db F5
#_1A8F8C: #_1BDC: db $0E ; duration
#_1A8F8D: #_1BDD: db F5
#_1A8F8E: #_1BDE: db D5
#_1A8F8F: #_1BDF: db B4
#_1A8F90: #_1BE0: db $78 ; duration
#_1A8F91: #_1BE1: db C5
#_1A8F92: #_1BE2: db !SFX_LOOP

;===================================================================================================

SFX1_18:
#_1A8F93: #_1BE3: db !INSTR, $0D
#_1A8F95: #_1BE5: db $16, $1E ; duration, params
#_1A8F97: #_1BE7: db G4
#_1A8F98: #_1BE8: db $0E ; duration
#_1A8F99: #_1BE9: db C5
#_1A8F9A: #_1BEA: db D5
#_1A8F9B: #_1BEB: db G5
#_1A8F9C: #_1BEC: db D5
#_1A8F9D: #_1BED: db $66 ; duration
#_1A8F9E: #_1BEE: db E5
#_1A8F9F: #_1BEF: db $0E ; duration
#_1A8FA0: #_1BF0: db G4
#_1A8FA1: #_1BF1: db C5
#_1A8FA2: #_1BF2: db D5
#_1A8FA3: #_1BF3: db G5
#_1A8FA4: #_1BF4: db D5
#_1A8FA5: #_1BF5: db $66 ; duration
#_1A8FA6: #_1BF6: db E5
#_1A8FA7: #_1BF7: db $0E ; duration
#_1A8FA8: #_1BF8: db A4
#_1A8FA9: #_1BF9: db D5
#_1A8FAA: #_1BFA: db E5
#_1A8FAB: #_1BFB: db A5
#_1A8FAC: #_1BFC: db E5
#_1A8FAD: #_1BFD: db $66 ; duration
#_1A8FAE: #_1BFE: db F5
#_1A8FAF: #_1BFF: db $0E ; duration
#_1A8FB0: #_1C00: db E5
#_1A8FB1: #_1C01: db F5
#_1A8FB2: #_1C02: db G5
#_1A8FB3: #_1C03: db $78 ; duration
#_1A8FB4: #_1C04: db D5
#_1A8FB5: #_1C05: db $0E ; duration
#_1A8FB6: #_1C06: db C5
#_1A8FB7: #_1C07: db F5
#_1A8FB8: #_1C08: db A5
#_1A8FB9: #_1C09: db D6
#_1A8FBA: #_1C0A: db B5
#_1A8FBB: #_1C0B: db $66 ; duration
#_1A8FBC: #_1C0C: db C6
#_1A8FBD: #_1C0D: db $0E ; duration
#_1A8FBE: #_1C0E: db C6
#_1A8FBF: #_1C0F: db B5
#_1A8FC0: #_1C10: db A5
#_1A8FC1: #_1C11: db G5
#_1A8FC2: #_1C12: db A5
#_1A8FC3: #_1C13: db $66 ; duration
#_1A8FC4: #_1C14: db E5
#_1A8FC5: #_1C15: db $0E ; duration
#_1A8FC6: #_1C16: db G4
#_1A8FC7: #_1C17: db D5
#_1A8FC8: #_1C18: db E5
#_1A8FC9: #_1C19: db G5
#_1A8FCA: #_1C1A: db D5
#_1A8FCB: #_1C1B: db $66 ; duration
#_1A8FCC: #_1C1C: db F5
#_1A8FCD: #_1C1D: db $0E ; duration
#_1A8FCE: #_1C1E: db F5
#_1A8FCF: #_1C1F: db D5
#_1A8FD0: #_1C20: db B4
#_1A8FD1: #_1C21: db $70 ; duration
#_1A8FD2: #_1C22: db C5
#_1A8FD3: #_1C23: db !PART_END

;===================================================================================================

SFX1_17:
#_1A8FD4: #_1C24: db !INSTR, $0D
#_1A8FD6: #_1C26: db $0E, $3C ; duration, params
#_1A8FD8: #_1C28: db G4
#_1A8FD9: #_1C29: db C5
#_1A8FDA: #_1C2A: db D5
#_1A8FDB: #_1C2B: db G5
#_1A8FDC: #_1C2C: db D5
#_1A8FDD: #_1C2D: db $66 ; duration
#_1A8FDE: #_1C2E: db E5
#_1A8FDF: #_1C2F: db $0E ; duration
#_1A8FE0: #_1C30: db G4
#_1A8FE1: #_1C31: db C5
#_1A8FE2: #_1C32: db D5
#_1A8FE3: #_1C33: db G5
#_1A8FE4: #_1C34: db D5
#_1A8FE5: #_1C35: db $66 ; duration
#_1A8FE6: #_1C36: db E5
#_1A8FE7: #_1C37: db $0E ; duration
#_1A8FE8: #_1C38: db A4
#_1A8FE9: #_1C39: db D5
#_1A8FEA: #_1C3A: db E5
#_1A8FEB: #_1C3B: db A5
#_1A8FEC: #_1C3C: db E5
#_1A8FED: #_1C3D: db $66 ; duration
#_1A8FEE: #_1C3E: db F5
#_1A8FEF: #_1C3F: db $0E ; duration
#_1A8FF0: #_1C40: db E5
#_1A8FF1: #_1C41: db F5
#_1A8FF2: #_1C42: db G5
#_1A8FF3: #_1C43: db $78 ; duration
#_1A8FF4: #_1C44: db D5
#_1A8FF5: #_1C45: db $0E ; duration
#_1A8FF6: #_1C46: db C5
#_1A8FF7: #_1C47: db F5
#_1A8FF8: #_1C48: db A5
#_1A8FF9: #_1C49: db D6
#_1A8FFA: #_1C4A: db B5
#_1A8FFB: #_1C4B: db $66 ; duration
#_1A8FFC: #_1C4C: db C6
#_1A8FFD: #_1C4D: db $0E ; duration
#_1A8FFE: #_1C4E: db C6
#_1A8FFF: #_1C4F: db B5
#_1A9000: #_1C50: db A5
#_1A9001: #_1C51: db G5
#_1A9002: #_1C52: db A5
#_1A9003: #_1C53: db $66 ; duration
#_1A9004: #_1C54: db E5
#_1A9005: #_1C55: db $0E ; duration
#_1A9006: #_1C56: db G4
#_1A9007: #_1C57: db D5
#_1A9008: #_1C58: db E5
#_1A9009: #_1C59: db G5
#_1A900A: #_1C5A: db D5
#_1A900B: #_1C5B: db $66 ; duration
#_1A900C: #_1C5C: db F5
#_1A900D: #_1C5D: db $0E ; duration
#_1A900E: #_1C5E: db F5
#_1A900F: #_1C5F: db D5
#_1A9010: #_1C60: db B4
#_1A9011: #_1C61: db $78 ; duration
#_1A9012: #_1C62: db C5
#_1A9013: #_1C63: db !PART_END

;===================================================================================================

SFX2_36:
#_1A9014: #_1C64: db $04, $00 ; duration, params
#_1A9016: #_1C66: db E4

;===================================================================================================

SFX2_35:
#_1A9017: #_1C67: db !INSTR, $13
#_1A9019: #_1C69: db $08, $40 ; duration, params
#_1A901B: #_1C6B: db D2
#_1A901C: #_1C6C: db $08, $4E ; duration, params
#_1A901E: #_1C6E: db Cs2
#_1A901F: #_1C6F: db $0C, $64 ; duration, params
#_1A9021: #_1C71: db C2
#_1A9022: #_1C72: db $12, $7C ; duration, params
#_1A9024: #_1C74: db Cs2
#_1A9025: #_1C75: db $0C, $58 ; duration, params
#_1A9027: #_1C77: db B1
#_1A9028: #_1C78: db $12, $5C ; duration, params
#_1A902A: #_1C7A: db A1
#_1A902B: #_1C7B: db $0C, $62 ; duration, params
#_1A902D: #_1C7D: db B1
#_1A902E: #_1C7E: db $08, $2C ; duration, params
#_1A9030: #_1C80: db C2
#_1A9031: #_1C81: db $0C, $44 ; duration, params
#_1A9033: #_1C83: db A1
#_1A9034: #_1C84: db $18, $60 ; duration, params
#_1A9036: #_1C86: db B1
#_1A9037: #_1C87: db $08, $44 ; duration, params
#_1A9039: #_1C89: db C2
#_1A903A: #_1C8A: db $30, $4E ; duration, params
#_1A903C: #_1C8C: db B1
#_1A903D: #_1C8D: db !PART_END

;===================================================================================================

SFX1_09:
#_1A903E: #_1C8E: db !INSTR, $18
#_1A9040: #_1C90: db $60, $32 ; duration, params
#_1A9042: #_1C92: db $14 ; duration
#_1A9043: #_1C93: db !SLIDE_ONCE, $98, $00, $60
#_1A9047: #_1C97: db Fs3
#_1A9048: #_1C98: db $60, $2A ; duration, params
#_1A904A: #_1C9A: db $1C ; duration
#_1A904B: #_1C9B: db !SLIDE_TO, $00, $60, $A2
#_1A904F: #_1C9F: db $60, $23 ; duration, params
#_1A9051: #_1CA1: db $23 ; duration
#_1A9052: #_1CA2: db !SLIDE_TO, $00, $60, $9E
#_1A9056: #_1CA6: db $60, $1E ; duration, params
#_1A9058: #_1CA8: db $28 ; duration
#_1A9059: #_1CA9: db !SLIDE_TO, $00, $60, $99
#_1A905D: #_1CAD: db $60, $19 ; duration, params
#_1A905F: #_1CAF: db $2D ; duration
#_1A9060: #_1CB0: db !SLIDE_TO, $00, $60, $9B
#_1A9064: #_1CB4: db $63, $14 ; duration, params
#_1A9066: #_1CB6: db $32 ; duration
#_1A9067: #_1CB7: db !SLIDE_TO, $00, $60, $98
#_1A906B: #_1CBB: db !SFX_LOOP

;===================================================================================================

SFX1_0A:
#_1A906C: #_1CBC: db !INSTR, $18
#_1A906E: #_1CBE: db $30, $14 ; duration, params
#_1A9070: #_1CC0: db $32 ; duration
#_1A9071: #_1CC1: db !SLIDE_ONCE, $91, $00, $30
#_1A9075: #_1CC5: db Gs2
#_1A9076: #_1CC6: db $30, $23 ; duration, params
#_1A9078: #_1CC8: db $23 ; duration
#_1A9079: #_1CC9: db !SLIDE_TO, $00, $30, $91
#_1A907D: #_1CCD: db $30, $2A ; duration, params
#_1A907F: #_1CCF: db $1C ; duration
#_1A9080: #_1CD0: db !SLIDE_TO, $00, $30, $97
#_1A9084: #_1CD4: db $33, $32 ; duration, params
#_1A9086: #_1CD6: db $14 ; duration
#_1A9087: #_1CD7: db !SLIDE_TO, $00, $30, $91
#_1A908B: #_1CDB: db !SFX_LOOP

;===================================================================================================

SFX2_33:
#_1A908C: #_1CDC: db !INSTR, $07
#_1A908E: #_1CDE: db $18, $3C ; duration, params
#_1A9090: #_1CE0: db !SLIDE_ONCE, $9F, $00, $18
#_1A9094: #_1CE4: db F4
#_1A9095: #_1CE5: db $18, $50 ; duration, params
#_1A9097: #_1CE7: db !SLIDE_TO, $00, $18, $B2
#_1A909B: #_1CEB: db $18, $64 ; duration, params
#_1A909D: #_1CED: db !SLIDE_TO, $00, $18, $BC
#_1A90A1: #_1CF1: db $18, $50 ; duration, params
#_1A90A3: #_1CF3: db !SLIDE_TO, $00, $18, $BB
#_1A90A7: #_1CF7: db $18, $64 ; duration, params
#_1A90A9: #_1CF9: db !SLIDE_TO, $00, $18, $BC
#_1A90AD: #_1CFD: db $18, $50 ; duration, params
#_1A90AF: #_1CFF: db !SLIDE_TO, $00, $18, $BB
#_1A90B3: #_1D03: db $18, $64 ; duration, params
#_1A90B5: #_1D05: db !SLIDE_TO, $00, $18, $BC
#_1A90B9: #_1D09: db $18, $50 ; duration, params
#_1A90BB: #_1D0B: db !SLIDE_TO, $00, $18, $B2
#_1A90BF: #_1D0F: db $18, $3C ; duration, params
#_1A90C1: #_1D11: db !SLIDE_TO, $00, $18, $A9
#_1A90C5: #_1D15: db $18, $28 ; duration, params
#_1A90C7: #_1D17: db !SLIDE_TO, $00, $15, $9F
#_1A90CB: #_1D1B: db !PART_END

;===================================================================================================

UnusedSFX_1D1C:
#_1A90CC: #_1D1C: db !INSTR, $0F
#_1A90CE: #_1D1E: db $0C, $28 ; duration, params
#_1A90D0: #_1D20: db D6
#_1A90D1: #_1D21: db $18 ; duration
#_1A90D2: #_1D22: db D6
#_1A90D3: #_1D23: db $0C, $32 ; duration, params
#_1A90D5: #_1D25: db D6
#_1A90D6: #_1D26: db $18 ; duration
#_1A90D7: #_1D27: db D6
#_1A90D8: #_1D28: db $0C, $3C ; duration, params
#_1A90DA: #_1D2A: db D6
#_1A90DB: #_1D2B: db $18 ; duration
#_1A90DC: #_1D2C: db D6
#_1A90DD: #_1D2D: db $0C, $46 ; duration, params
#_1A90DF: #_1D2F: db D6
#_1A90E0: #_1D30: db $18 ; duration
#_1A90E1: #_1D31: db D6
#_1A90E2: #_1D32: db $0C, $3C ; duration, params
#_1A90E4: #_1D34: db D6
#_1A90E5: #_1D35: db $18 ; duration
#_1A90E6: #_1D36: db D6
#_1A90E7: #_1D37: db $0C, $32 ; duration, params
#_1A90E9: #_1D39: db D6
#_1A90EA: #_1D3A: db $18 ; duration
#_1A90EB: #_1D3B: db D6
#_1A90EC: #_1D3C: db $0C, $28 ; duration, params
#_1A90EE: #_1D3E: db D6
#_1A90EF: #_1D3F: db $18 ; duration
#_1A90F0: #_1D40: db D6
#_1A90F1: #_1D41: db $0C, $14 ; duration, params
#_1A90F3: #_1D43: db D6
#_1A90F4: #_1D44: db $18 ; duration
#_1A90F5: #_1D45: db D6
#_1A90F6: #_1D46: db !PART_END

;===================================================================================================

SFX2_32:
#_1A90F7: #_1D47: db !INSTR, $01
#_1A90F9: #_1D49: db $18, $3C ; duration, params
#_1A90FB: #_1D4B: db !SLIDE_ONCE, $9F, $00, $18
#_1A90FF: #_1D4F: db F4
#_1A9100: #_1D50: db $0C, $50 ; duration, params
#_1A9102: #_1D52: db !SLIDE_TO, $00, $0C, $B2
#_1A9106: #_1D56: db $0C, $64 ; duration, params
#_1A9108: #_1D58: db !SLIDE_TO, $00, $0A, $BC
#_1A910C: #_1D5C: db !PART_END

;===================================================================================================

SFX3_2E:
#_1A910D: #_1D5D: db !INSTR, $0B
#_1A910F: #_1D5F: db $30, $78 ; duration, params
#_1A9111: #_1D61: db B4
#_1A9112: #_1D62: db A5
#_1A9113: #_1D63: db $60 ; duration
#_1A9114: #_1D64: db G6
#_1A9115: #_1D65: db !PART_END

;===================================================================================================

SFX3_34:
#_1A9116: #_1D66: db !INSTR, $0B
#_1A9118: #_1D68: db $10, $00 ; duration, params
#_1A911A: #_1D6A: db B5
#_1A911B: #_1D6B: db $30, $78 ; duration, params
#_1A911D: #_1D6D: db Fs5
#_1A911E: #_1D6E: db $20 ; duration
#_1A911F: #_1D6F: db D6
#_1A9120: #_1D70: db $60 ; duration
#_1A9121: #_1D71: db D6
#_1A9122: #_1D72: db !PART_END

;===================================================================================================

SFX3_35:
#_1A9123: #_1D73: db !INSTR, $0B
#_1A9125: #_1D75: db $20, $00 ; duration, params
#_1A9127: #_1D77: db B4
#_1A9128: #_1D78: db $30, $78 ; duration, params
#_1A912A: #_1D7A: db E5
#_1A912B: #_1D7B: db $10 ; duration
#_1A912C: #_1D7C: db C6
#_1A912D: #_1D7D: db $60 ; duration
#_1A912E: #_1D7E: db C6
#_1A912F: #_1D7F: db !PART_END

;===================================================================================================

SFX3_2F:
#_1A9130: #_1D80: db !INSTR, $0E
#_1A9132: #_1D82: db $10, $28 ; duration, params
#_1A9134: #_1D84: db F5
#_1A9135: #_1D85: db A5
#_1A9136: #_1D86: db $10, $28 ; duration, params
#_1A9138: #_1D88: db C6
#_1A9139: #_1D89: db $10, $1E ; duration, params
#_1A913B: #_1D8B: db C6
#_1A913C: #_1D8C: db $10, $14 ; duration, params
#_1A913E: #_1D8E: db C6
#_1A913F: #_1D8F: db $10, $0A ; duration, params
#_1A9141: #_1D91: db C6
#_1A9142: #_1D92: db !PART_END

;===================================================================================================

SFX3_33:
#_1A9143: #_1D93: db !INSTR, $0E
#_1A9145: #_1D95: db $08, $00 ; duration, params
#_1A9147: #_1D97: db Fs4
#_1A9148: #_1D98: db $10, $28 ; duration, params
#_1A914A: #_1D9A: db G5
#_1A914B: #_1D9B: db C6
#_1A914C: #_1D9C: db $10, $1E ; duration, params
#_1A914E: #_1D9E: db C6
#_1A914F: #_1D9F: db $10, $14 ; duration, params
#_1A9151: #_1DA1: db C6
#_1A9152: #_1DA2: db $10, $0A ; duration, params
#_1A9154: #_1DA4: db C6
#_1A9155: #_1DA5: db $10, $05 ; duration, params
#_1A9157: #_1DA7: db C6
#_1A9158: #_1DA8: db !PART_END

;===================================================================================================

SFX3_2D:
#_1A9159: #_1DA9: db !INSTR, $0F
#_1A915B: #_1DAB: db $10, $50 ; duration, params
#_1A915D: #_1DAD: db E4
#_1A915E: #_1DAE: db A4
#_1A915F: #_1DAF: db E5
#_1A9160: #_1DB0: db A5
#_1A9161: #_1DB1: db $30 ; duration
#_1A9162: #_1DB2: db E6
#_1A9163: #_1DB3: db !PART_END

;===================================================================================================

SFX3_37:
#_1A9164: #_1DB4: db !INSTR, $0F
#_1A9166: #_1DB6: db $08, $00 ; duration, params
#_1A9168: #_1DB8: db Fs4
#_1A9169: #_1DB9: db $10, $50 ; duration, params
#_1A916B: #_1DBB: db G4
#_1A916C: #_1DBC: db C5
#_1A916D: #_1DBD: db G5
#_1A916E: #_1DBE: db C6
#_1A916F: #_1DBF: db !PART_END

;===================================================================================================

SFX3_2C:
#_1A9170: #_1DC0: db !INSTR, $0A
#_1A9172: #_1DC2: db $04, $28 ; duration, params
#_1A9174: #_1DC4: db A4
#_1A9175: #_1DC5: db As4
#_1A9176: #_1DC6: db A4
#_1A9177: #_1DC7: db B4
#_1A9178: #_1DC8: db $04, $3C ; duration, params
#_1A917A: #_1DCA: db B4
#_1A917B: #_1DCB: db As4
#_1A917C: #_1DCC: db As4
#_1A917D: #_1DCD: db A4
#_1A917E: #_1DCE: db $04, $50 ; duration, params
#_1A9180: #_1DD0: db As4
#_1A9181: #_1DD1: db A4
#_1A9182: #_1DD2: db B4
#_1A9183: #_1DD3: db A4
#_1A9184: #_1DD4: db $04, $5A ; duration, params
#_1A9186: #_1DD6: db As4
#_1A9187: #_1DD7: db As4
#_1A9188: #_1DD8: db B4
#_1A9189: #_1DD9: db As4
#_1A918A: #_1DDA: db $04, $50 ; duration, params
#_1A918C: #_1DDC: db A4
#_1A918D: #_1DDD: db As4
#_1A918E: #_1DDE: db B4
#_1A918F: #_1DDF: db As4
#_1A9190: #_1DE0: db $04, $3C ; duration, params
#_1A9192: #_1DE2: db A4
#_1A9193: #_1DE3: db As4
#_1A9194: #_1DE4: db A4
#_1A9195: #_1DE5: db B4
#_1A9196: #_1DE6: db $04, $28 ; duration, params
#_1A9198: #_1DE8: db A4
#_1A9199: #_1DE9: db As4
#_1A919A: #_1DEA: db A4
#_1A919B: #_1DEB: db B4
#_1A919C: #_1DEC: db $04, $14 ; duration, params
#_1A919E: #_1DEE: db A4
#_1A919F: #_1DEF: db As4
#_1A91A0: #_1DF0: db A4
#_1A91A1: #_1DF1: db B4
#_1A91A2: #_1DF2: db !PART_END

;===================================================================================================

SFX3_2B:
#_1A91A3: #_1DF3: db !INSTR, $0A
#_1A91A5: #_1DF5: db $07, $64 ; duration, params
#_1A91A7: #_1DF7: db !SLIDE_ONCE, $A6, $00, $04
#_1A91AB: #_1DFB: db A4
#_1A91AC: #_1DFC: db $07, $64 ; duration, params
#_1A91AE: #_1DFE: db !SLIDE_ONCE, $A6, $00, $04
#_1A91B2: #_1E02: db A4
#_1A91B3: #_1E03: db $07, $64 ; duration, params
#_1A91B5: #_1E05: db !SLIDE_ONCE, $A6, $00, $04
#_1A91B9: #_1E09: db A4
#_1A91BA: #_1E0A: db $07, $64 ; duration, params
#_1A91BC: #_1E0C: db !SLIDE_ONCE, $A6, $00, $04
#_1A91C0: #_1E10: db A4
#_1A91C1: #_1E11: db !PART_END

;===================================================================================================

SFX3_2A:
#_1A91C2: #_1E12: db !INSTR, $0A
#_1A91C4: #_1E14: db $0C, $64 ; duration, params
#_1A91C6: #_1E16: db !SLIDE_ONCE, $9C, $00, $0C
#_1A91CA: #_1E1A: db G4
#_1A91CB: #_1E1B: db $1B ; duration
#_1A91CC: #_1E1C: db !SLIDE_TO, $00, $18, $8E
#_1A91D0: #_1E20: db !PART_END

;===================================================================================================

SFX3_29:
#_1A91D1: #_1E21: db !INSTR, $07
#_1A91D3: #_1E23: db $0F, $64 ; duration, params
#_1A91D5: #_1E25: db !SLIDE_ONCE, $BE, $00, $0C
#_1A91D9: #_1E29: db G5
#_1A91DA: #_1E2A: db $0F, $50 ; duration, params
#_1A91DC: #_1E2C: db !SLIDE_ONCE, $BE, $00, $0C
#_1A91E0: #_1E30: db G5
#_1A91E1: #_1E31: db $0F, $3C ; duration, params
#_1A91E3: #_1E33: db !SLIDE_ONCE, $BE, $00, $0C
#_1A91E7: #_1E37: db G5
#_1A91E8: #_1E38: db $0F, $28 ; duration, params
#_1A91EA: #_1E3A: db !SLIDE_ONCE, $BE, $00, $0C
#_1A91EE: #_1E3E: db G5
#_1A91EF: #_1E3F: db !PART_END

;===================================================================================================

SFX3_27:
#_1A91F0: #_1E40: db !INSTR, $07
#_1A91F2: #_1E42: db $15, $28 ; duration, params
#_1A91F4: #_1E44: db !SLIDE_ONCE, $AB, $00, $12
#_1A91F8: #_1E48: db C5
#_1A91F9: #_1E49: db $15, $32 ; duration, params
#_1A91FB: #_1E4B: db !SLIDE_ONCE, $AD, $00, $12
#_1A91FF: #_1E4F: db D5
#_1A9200: #_1E50: db $15, $3C ; duration, params
#_1A9202: #_1E52: db !SLIDE_ONCE, $AF, $00, $12
#_1A9206: #_1E56: db E5
#_1A9207: #_1E57: db $15, $46 ; duration, params
#_1A9209: #_1E59: db !SLIDE_ONCE, $B1, $00, $12
#_1A920D: #_1E5D: db Fs5
#_1A920E: #_1E5E: db $15, $50 ; duration, params
#_1A9210: #_1E60: db !SLIDE_ONCE, $B3, $00, $12
#_1A9214: #_1E64: db Gs5
#_1A9215: #_1E65: db $15, $5A ; duration, params
#_1A9217: #_1E67: db !SLIDE_ONCE, $B5, $00, $12
#_1A921B: #_1E6B: db As5
#_1A921C: #_1E6C: db $15, $64 ; duration, params
#_1A921E: #_1E6E: db !SLIDE_ONCE, $B7, $00, $12
#_1A9222: #_1E72: db C6
#_1A9223: #_1E73: db $15, $6E ; duration, params
#_1A9225: #_1E75: db !SLIDE_ONCE, $B9, $00, $12
#_1A9229: #_1E79: db D6
#_1A922A: #_1E7A: db !PART_END

;===================================================================================================

SFX3_26:
#_1A922B: #_1E7B: db !INSTR, $00
#_1A922D: #_1E7D: db $0B, $64 ; duration, params
#_1A922F: #_1E7F: db !SLIDE_ONCE, $B7, $00, $0B
#_1A9233: #_1E83: db C6
#_1A9234: #_1E84: db $30 ; duration
#_1A9235: #_1E85: db !SLIDE_TO, $00, $24, $8C
#_1A9239: #_1E89: db !PART_END

;===================================================================================================

SFX3_1A:
#_1A923A: #_1E8A: db !INSTR, $0F
#_1A923C: #_1E8C: db $1C, $50 ; duration, params
#_1A923E: #_1E8E: db A4
#_1A923F: #_1E8F: db E6
#_1A9240: #_1E90: db $30 ; duration
#_1A9241: #_1E91: db E6
#_1A9242: #_1E92: db !PART_END

;===================================================================================================

SFX3_38:
#_1A9243: #_1E93: db !INSTR, $0F
#_1A9245: #_1E95: db $0E, $00 ; duration, params
#_1A9247: #_1E97: db Fs4
#_1A9248: #_1E98: db $1C, $50 ; duration, params
#_1A924A: #_1E9A: db E5
#_1A924B: #_1E9B: db A5
#_1A924C: #_1E9C: db !PART_END

;===================================================================================================

SFX3_25:
#_1A924D: #_1E9D: db !INSTR, $13
#_1A924F: #_1E9F: db $04, $64 ; duration, params
#_1A9251: #_1EA1: db F5
#_1A9252: #_1EA2: db E5
#_1A9253: #_1EA3: db !INSTR, $06
#_1A9255: #_1EA5: db $04, $50 ; duration, params
#_1A9257: #_1EA7: db F3
#_1A9258: #_1EA8: db $04, $5A ; duration, params
#_1A925A: #_1EAA: db C3
#_1A925B: #_1EAB: db !PART_END

;===================================================================================================

SFX1_11:
#_1A925C: #_1EAC: db !INSTR, $16
#_1A925E: #_1EAE: db $20, $3C ; duration, params
#_1A9260: #_1EB0: db Ds3
#_1A9261: #_1EB1: db F3
#_1A9262: #_1EB2: db $7F ; duration
#_1A9263: #_1EB3: db D3
#_1A9264: #_1EB4: db $20 ; duration
#_1A9265: #_1EB5: db Ds3
#_1A9266: #_1EB6: db F3
#_1A9267: #_1EB7: db $7F ; duration
#_1A9268: #_1EB8: db D3
#_1A9269: #_1EB9: db $20 ; duration
#_1A926A: #_1EBA: db Ds3
#_1A926B: #_1EBB: db F3
#_1A926C: #_1EBC: db $7F ; duration
#_1A926D: #_1EBD: db !SLIDE_ONCE, $9A, $00, $7F
#_1A9271: #_1EC1: db D3
#_1A9272: #_1EC2: db $7F ; duration
#_1A9273: #_1EC3: db !SLIDE_TO, $00, $7D, $9A
#_1A9277: #_1EC7: db !PART_END

;===================================================================================================

SFX1_12:
#_1A9278: #_1EC8: db !INSTR, $16
#_1A927A: #_1ECA: db $40, $3C ; duration, params
#_1A927C: #_1ECC: db C3
#_1A927D: #_1ECD: db $7F ; duration
#_1A927E: #_1ECE: db B2
#_1A927F: #_1ECF: db $40 ; duration
#_1A9280: #_1ED0: db C3
#_1A9281: #_1ED1: db $7F ; duration
#_1A9282: #_1ED2: db B2
#_1A9283: #_1ED3: db $20 ; duration
#_1A9284: #_1ED4: db C4
#_1A9285: #_1ED5: db D4
#_1A9286: #_1ED6: db $7F ; duration
#_1A9287: #_1ED7: db !SLIDE_ONCE, $A3, $00, $7F
#_1A928B: #_1EDB: db B3
#_1A928C: #_1EDC: db $7F ; duration
#_1A928D: #_1EDD: db !SLIDE_TO, $00, $7D, $A3
#_1A9291: #_1EE1: db !PART_END

;===================================================================================================

UnusedSFX_1EE2:
#_1A9292: #_1EE2: db !INSTR, $0D
#_1A9294: #_1EE4: db $0B, $3C ; duration, params
#_1A9296: #_1EE6: db !SLIDE_ONCE, $B7, $00, $0B
#_1A929A: #_1EEA: db C5
#_1A929B: #_1EEB: db $06 ; duration
#_1A929C: #_1EEC: db !SLIDE_TO, $00, $03, $BC
#_1A92A0: #_1EF0: db !PART_END

;===================================================================================================

SFX2_30:
#_1A92A1: #_1EF1: db !INSTR, $15
#_1A92A3: #_1EF3: db $06, $78 ; duration, params
#_1A92A5: #_1EF5: db !SLIDE_ONCE, $B0, $00, $03
#_1A92A9: #_1EF9: db C6
#_1A92AA: #_1EFA: db $06, $00 ; duration, params
#_1A92AC: #_1EFC: db C6
#_1A92AD: #_1EFD: db $06, $78 ; duration, params
#_1A92AF: #_1EFF: db !SLIDE_ONCE, $B0, $00, $03
#_1A92B3: #_1F03: db C6
#_1A92B4: #_1F04: db $06, $6E ; duration, params
#_1A92B6: #_1F06: db !SLIDE_ONCE, $B0, $00, $03
#_1A92BA: #_1F0A: db C6
#_1A92BB: #_1F0B: db $06, $5A ; duration, params
#_1A92BD: #_1F0D: db !SLIDE_ONCE, $B0, $00, $03
#_1A92C1: #_1F11: db C6
#_1A92C2: #_1F12: db !PART_END

;===================================================================================================

UnusedSFX_1F13:
#_1A92C3: #_1F13: db !INSTR, $15
#_1A92C5: #_1F15: db $06, $78 ; duration, params
#_1A92C7: #_1F17: db !SLIDE_ONCE, $B0, $00, $03
#_1A92CB: #_1F1B: db G6
#_1A92CC: #_1F1C: db $06, $6E ; duration, params
#_1A92CE: #_1F1E: db !SLIDE_ONCE, $B0, $00, $03
#_1A92D2: #_1F22: db F6
#_1A92D3: #_1F23: db $06, $64 ; duration, params
#_1A92D5: #_1F25: db !SLIDE_ONCE, $B0, $00, $03
#_1A92D9: #_1F29: db E6
#_1A92DA: #_1F2A: db $06, $5A ; duration, params
#_1A92DC: #_1F2C: db !SLIDE_ONCE, $B0, $00, $03
#_1A92E0: #_1F30: db D6
#_1A92E1: #_1F31: db $06, $50 ; duration, params
#_1A92E3: #_1F33: db !SLIDE_ONCE, $B0, $00, $03
#_1A92E7: #_1F37: db D6
#_1A92E8: #_1F38: db $06, $46 ; duration, params
#_1A92EA: #_1F3A: db !SLIDE_ONCE, $B0, $00, $03
#_1A92EE: #_1F3E: db D6
#_1A92EF: #_1F3F: db $06, $3C ; duration, params
#_1A92F1: #_1F41: db !SLIDE_ONCE, $B0, $00, $03
#_1A92F5: #_1F45: db D6
#_1A92F6: #_1F46: db !PART_END

;===================================================================================================

SFX2_2F:
#_1A92F7: #_1F47: db !INSTR, $01
#_1A92F9: #_1F49: db $0C, $78 ; duration, params
#_1A92FB: #_1F4B: db C3
#_1A92FC: #_1F4C: db $04, $00 ; duration, params
#_1A92FE: #_1F4E: db C3
#_1A92FF: #_1F4F: db $48, $78 ; duration, params
#_1A9301: #_1F51: db !SLIDE_ONCE, $98, $00, $48
#_1A9305: #_1F55: db C3
#_1A9306: #_1F56: db $48, $78 ; duration, params
#_1A9308: #_1F58: db !SLIDE_TO, $00, $48, $98
#_1A930C: #_1F5C: db $48, $6E ; duration, params
#_1A930E: #_1F5E: db !SLIDE_TO, $00, $48, $98
#_1A9312: #_1F62: db $48, $5A ; duration, params
#_1A9314: #_1F64: db !SLIDE_TO, $00, $48, $98
#_1A9318: #_1F68: db $4B, $28 ; duration, params
#_1A931A: #_1F6A: db !SLIDE_TO, $00, $48, $98
#_1A931E: #_1F6E: db !PART_END

;===================================================================================================

SFX2_34:
SFX2_38:
#_1A931F: #_1F6F: db !INSTR, $11
#_1A9321: #_1F71: db $0C, $78 ; duration, params
#_1A9323: #_1F73: db !SLIDE_ONCE, $8E, $00, $0C
#_1A9327: #_1F77: db F3
#_1A9328: #_1F78: db $0C ; duration
#_1A9329: #_1F79: db !SLIDE_TO, $00, $09, $A1
#_1A932D: #_1F7D: db $0C, $64 ; duration, params
#_1A932F: #_1F7F: db !SLIDE_ONCE, $89, $00, $0C
#_1A9333: #_1F83: db C3
#_1A9334: #_1F84: db $0C ; duration
#_1A9335: #_1F85: db !SLIDE_TO, $00, $09, $9D
#_1A9339: #_1F89: db $0C, $50 ; duration, params
#_1A933B: #_1F8B: db !SLIDE_ONCE, $85, $00, $0C
#_1A933F: #_1F8F: db A2
#_1A9340: #_1F90: db $0C ; duration
#_1A9341: #_1F91: db !SLIDE_TO, $00, $09, $98
#_1A9345: #_1F95: db $0A ; duration
#_1A9346: #_1F96: db F2
#_1A9347: #_1F97: db $08 ; duration
#_1A9348: #_1F98: db D2
#_1A9349: #_1F99: db $06 ; duration
#_1A934A: #_1F9A: db C2
#_1A934B: #_1F9B: db !PART_END

;===================================================================================================

SFX2_39:
#_1A934C: #_1F9C: db !INSTR, $01
#_1A934E: #_1F9E: db $0C, $78 ; duration, params
#_1A9350: #_1FA0: db !SLIDE_ONCE, $9D, $00, $0C
#_1A9354: #_1FA4: db C3
#_1A9355: #_1FA5: db $0C, $78 ; duration, params
#_1A9357: #_1FA7: db !SLIDE_TO, $00, $0C, $95
#_1A935B: #_1FAB: db $0C, $78 ; duration, params
#_1A935D: #_1FAD: db !SLIDE_TO, $00, $0C, $93
#_1A9361: #_1FB1: db $48, $78 ; duration, params
#_1A9363: #_1FB3: db !SLIDE_TO, $00, $48, $91
#_1A9367: #_1FB7: db $48, $6E ; duration, params
#_1A9369: #_1FB9: db !SLIDE_TO, $00, $48, $90
#_1A936D: #_1FBD: db $48, $46 ; duration, params
#_1A936F: #_1FBF: db !SLIDE_TO, $00, $48, $8E
#_1A9373: #_1FC3: db $4B, $28 ; duration, params
#_1A9375: #_1FC5: db !SLIDE_TO, $00, $48, $8C
#_1A9379: #_1FC9: db !PART_END

;===================================================================================================

SFX2_2E:
#_1A937A: #_1FCA: db !INSTR, $11
#_1A937C: #_1FCC: db $0C ; duration
#_1A937D: #_1FCD: db F2
#_1A937E: #_1FCE: db $16 ; duration
#_1A937F: #_1FCF: db D2
#_1A9380: #_1FD0: db $0C ; duration
#_1A9381: #_1FD1: db E2
#_1A9382: #_1FD2: db $14 ; duration
#_1A9383: #_1FD3: db C2
#_1A9384: #_1FD4: db $0C ; duration
#_1A9385: #_1FD5: db A1
#_1A9386: #_1FD6: db $12 ; duration
#_1A9387: #_1FD7: db A1
#_1A9388: #_1FD8: db !PART_END

;===================================================================================================

SFX2_2C:
#_1A9389: #_1FD9: db !INSTR, $00
#_1A938B: #_1FDB: db $0C, $78 ; duration, params
#_1A938D: #_1FDD: db !SLIDE_ONCE, $A4, $00, $09
#_1A9391: #_1FE1: db G3
#_1A9392: #_1FE2: db !INSTR, $17
#_1A9394: #_1FE4: db $24 ; duration
#_1A9395: #_1FE5: db C5
#_1A9396: #_1FE6: db !PART_END

;===================================================================================================

SFX2_3A:
#_1A9397: #_1FE7: db !INSTR, $00
#_1A9399: #_1FE9: db $10, $64 ; duration, params
#_1A939B: #_1FEB: db C4
#_1A939C: #_1FEC: db !INSTR, $17
#_1A939E: #_1FEE: db $24, $64 ; duration, params
#_1A93A0: #_1FF0: db C5
#_1A93A1: #_1FF1: db !PART_END

;===================================================================================================

SFX2_2B:
#_1A93A2: #_1FF2: db !INSTR, $0E
#_1A93A4: #_1FF4: db $08, $28 ; duration, params
#_1A93A6: #_1FF6: db D5
#_1A93A7: #_1FF7: db $08, $32 ; duration, params
#_1A93A9: #_1FF9: db D5
#_1A93AA: #_1FFA: db $08, $14 ; duration, params
#_1A93AC: #_1FFC: db D5
#_1A93AD: #_1FFD: db $08, $0A ; duration, params
#_1A93AF: #_1FFF: db D5
#_1A93B0: #_2000: db !PART_END

;===================================================================================================

SFX3_23:
#_1A93B1: #_2001: db !INSTR, $01
#_1A93B3: #_2003: db $0C, $46 ; duration, params
#_1A93B5: #_2005: db !SLIDE_ONCE, $8C, $00, $0C
#_1A93B9: #_2009: db C3
#_1A93BA: #_200A: db $0C, $78 ; duration, params
#_1A93BC: #_200C: db !SLIDE_TO, $00, $0C, $AB
#_1A93C0: #_2010: db $0C, $78 ; duration, params
#_1A93C2: #_2012: db !SLIDE_TO, $00, $09, $93
#_1A93C6: #_2016: db !PART_END

;===================================================================================================

SFX3_39:
#_1A93C7: #_2017: db !INSTR, $07
#_1A93C9: #_2019: db $06, $14 ; duration, params
#_1A93CB: #_201B: db !SLIDE_ONCE, $BB, $00, $06
#_1A93CF: #_201F: db F5
#_1A93D0: #_2020: db $06, $1E ; duration, params
#_1A93D2: #_2022: db !SLIDE_TO, $00, $06, $BB
#_1A93D6: #_2026: db $06, $28 ; duration, params
#_1A93D8: #_2028: db !SLIDE_TO, $00, $06, $B5
#_1A93DC: #_202C: db $06, $14 ; duration, params
#_1A93DE: #_202E: db !SLIDE_TO, $00, $03, $BB
#_1A93E2: #_2032: db !PART_END

;===================================================================================================

SFX2_2A:
#_1A93E3: #_2033: db !INSTR, $0C
#_1A93E5: #_2035: db $06, $50 ; duration, params
#_1A93E7: #_2037: db !SLIDE_ONCE, $8C, $00, $06
#_1A93EB: #_203B: db F2
#_1A93EC: #_203C: db $09, $78 ; duration, params
#_1A93EE: #_203E: db !SLIDE_TO, $00, $06, $98
#_1A93F2: #_2042: db !PART_END

;===================================================================================================

SFX3_24:
#_1A93F3: #_2043: db !INSTR, $0D
#_1A93F5: #_2045: db $08, $1E ; duration, params
#_1A93F7: #_2047: db B3
#_1A93F8: #_2048: db D4
#_1A93F9: #_2049: db A4
#_1A93FA: #_204A: db !PART_END

;===================================================================================================

SFX3_1F:
#_1A93FB: #_204B: db !INSTR, $16
#_1A93FD: #_204D: db $12, $64 ; duration, params
#_1A93FF: #_204F: db !SLIDE_ONCE, $B2, $00, $12
#_1A9403: #_2053: db A4
#_1A9404: #_2054: db $08, $5A ; duration, params
#_1A9406: #_2056: db !SLIDE_TO, $00, $08, $AF
#_1A940A: #_205A: db $08, $50 ; duration, params
#_1A940C: #_205C: db !SLIDE_TO, $00, $08, $A9
#_1A9410: #_2060: db $08, $46 ; duration, params
#_1A9412: #_2062: db !SLIDE_TO, $00, $08, $AD
#_1A9416: #_2066: db $08, $3C ; duration, params
#_1A9418: #_2068: db !SLIDE_TO, $00, $08, $A8
#_1A941C: #_206C: db $08, $32 ; duration, params
#_1A941E: #_206E: db !SLIDE_TO, $00, $08, $AB
#_1A9422: #_2072: db $08, $28 ; duration, params
#_1A9424: #_2074: db !SLIDE_TO, $00, $08, $A6
#_1A9428: #_2078: db $08, $1E ; duration, params
#_1A942A: #_207A: db !SLIDE_TO, $00, $08, $A9
#_1A942E: #_207E: db $08, $14 ; duration, params
#_1A9430: #_2080: db !SLIDE_TO, $00, $08, $A4
#_1A9434: #_2084: db $08, $0A ; duration, params
#_1A9436: #_2086: db !SLIDE_TO, $00, $08, $A8
#_1A943A: #_208A: db $08, $05 ; duration, params
#_1A943C: #_208C: db !SLIDE_TO, $00, $06, $A3
#_1A9440: #_2090: db !PART_END

;===================================================================================================

SFX3_1E:
#_1A9441: #_2091: db !INSTR, $01
#_1A9443: #_2093: db $06, $32 ; duration, params
#_1A9445: #_2095: db C6
#_1A9446: #_2096: db Ds6
#_1A9447: #_2097: db C6
#_1A9448: #_2098: db Ds6
#_1A9449: #_2099: db $06, $3C ; duration, params
#_1A944B: #_209B: db C6
#_1A944C: #_209C: db Ds6
#_1A944D: #_209D: db C6
#_1A944E: #_209E: db Ds6
#_1A944F: #_209F: db $06, $28 ; duration, params
#_1A9451: #_20A1: db C6
#_1A9452: #_20A2: db Ds6
#_1A9453: #_20A3: db C6
#_1A9454: #_20A4: db Ds6
#_1A9455: #_20A5: db !PART_END

;===================================================================================================

SFX3_1D:
SFX2_2D:
#_1A9456: #_20A6: db !INSTR, $0F
#_1A9458: #_20A8: db $10, $32 ; duration, params
#_1A945A: #_20AA: db !SLIDE_ONCE, $AB, $00, $10
#_1A945E: #_20AE: db Fs4
#_1A945F: #_20AF: db $11, $3C ; duration, params
#_1A9461: #_20B1: db !SLIDE_TO, $00, $0E, $AB
#_1A9465: #_20B5: db !PART_END

;===================================================================================================

SFX3_1B:
#_1A9466: #_20B6: db !INSTR, $0E
#_1A9468: #_20B8: db $1C, $3C ; duration, params
#_1A946A: #_20BA: db G5
#_1A946B: #_20BB: db Ds5
#_1A946C: #_20BC: db Gs4
#_1A946D: #_20BD: db $24 ; duration
#_1A946E: #_20BE: db Gs5
#_1A946F: #_20BF: db !PART_END

;===================================================================================================

SFX3_3A:
#_1A9470: #_20C0: db !INSTR, $0E
#_1A9472: #_20C2: db $0E, $00 ; duration, params
#_1A9474: #_20C4: db G5
#_1A9475: #_20C5: db $1C, $3C ; duration, params
#_1A9477: #_20C7: db Fs5
#_1A9478: #_20C8: db A4
#_1A9479: #_20C9: db E5
#_1A947A: #_20CA: db $24, $3C ; duration, params
#_1A947C: #_20CC: db C6
#_1A947D: #_20CD: db !PART_END

;===================================================================================================

SFX2_31:
#_1A947E: #_20CE: db !INSTR, $0D
#_1A9480: #_20D0: db $04, $50 ; duration, params
#_1A9482: #_20D2: db F5
#_1A9483: #_20D3: db G5
#_1A9484: #_20D4: db A5
#_1A9485: #_20D5: db B5
#_1A9486: #_20D6: db C6
#_1A9487: #_20D7: db D6
#_1A9488: #_20D8: db E6
#_1A9489: #_20D9: db F6
#_1A948A: #_20DA: db $0C ; duration
#_1A948B: #_20DB: db G6
#_1A948C: #_20DC: db !PART_END

;===================================================================================================

SFX3_18:
#_1A948D: #_20DD: db !INSTR, $05
#_1A948F: #_20DF: db $04, $78 ; duration, params
#_1A9491: #_20E1: db A2
#_1A9492: #_20E2: db F2
#_1A9493: #_20E3: db D2
#_1A9494: #_20E4: db $05, $78 ; duration, params
#_1A9496: #_20E6: db C2
#_1A9497: #_20E7: db E2
#_1A9498: #_20E8: db D2
#_1A9499: #_20E9: db $04, $6E ; duration, params
#_1A949B: #_20EB: db F2
#_1A949C: #_20EC: db F2
#_1A949D: #_20ED: db G2
#_1A949E: #_20EE: db $06, $6E ; duration, params
#_1A94A0: #_20F0: db As2
#_1A94A1: #_20F1: db Fs2
#_1A94A2: #_20F2: db A2
#_1A94A3: #_20F3: db $03, $64 ; duration, params
#_1A94A5: #_20F5: db Ds2
#_1A94A6: #_20F6: db G2
#_1A94A7: #_20F7: db F2
#_1A94A8: #_20F8: db $04, $64 ; duration, params
#_1A94AA: #_20FA: db E2
#_1A94AB: #_20FB: db D2
#_1A94AC: #_20FC: db B2
#_1A94AD: #_20FD: db $05, $64 ; duration, params
#_1A94AF: #_20FF: db D2
#_1A94B0: #_2100: db F2
#_1A94B1: #_2101: db C2
#_1A94B2: #_2102: db $04, $64 ; duration, params
#_1A94B4: #_2104: db E2
#_1A94B5: #_2105: db C2
#_1A94B6: #_2106: db D2

;===================================================================================================

SFX2_22:
#_1A94B7: #_2107: db !INSTR, $05
#_1A94B9: #_2109: db $04, $78 ; duration, params
#_1A94BB: #_210B: db A2
#_1A94BC: #_210C: db F2
#_1A94BD: #_210D: db D2
#_1A94BE: #_210E: db $05, $78 ; duration, params
#_1A94C0: #_2110: db C2
#_1A94C1: #_2111: db E2
#_1A94C2: #_2112: db D2
#_1A94C3: #_2113: db $04, $6E ; duration, params
#_1A94C5: #_2115: db F2
#_1A94C6: #_2116: db F2
#_1A94C7: #_2117: db G2
#_1A94C8: #_2118: db $06, $6E ; duration, params
#_1A94CA: #_211A: db As2
#_1A94CB: #_211B: db Fs2
#_1A94CC: #_211C: db A2
#_1A94CD: #_211D: db $03, $64 ; duration, params
#_1A94CF: #_211F: db C2
#_1A94D0: #_2120: db F2
#_1A94D1: #_2121: db D2
#_1A94D2: #_2122: db !PART_END

;===================================================================================================

SFX3_16:
#_1A94D3: #_2123: db !INSTR, $13
#_1A94D5: #_2125: db $04, $50 ; duration, params
#_1A94D7: #_2127: db C4
#_1A94D8: #_2128: db $04, $50 ; duration, params
#_1A94DA: #_212A: db C4
#_1A94DB: #_212B: db $18, $5A ; duration, params
#_1A94DD: #_212D: db C4
#_1A94DE: #_212E: db !PART_END

;===================================================================================================

SFX3_15:
#_1A94DF: #_212F: db !INSTR, $13
#_1A94E1: #_2131: db $04, $50 ; duration, params
#_1A94E3: #_2133: db C4
#_1A94E4: #_2134: db $04, $0A ; duration, params
#_1A94E6: #_2136: db C4
#_1A94E7: #_2137: db $18, $5A ; duration, params
#_1A94E9: #_2139: db E4
#_1A94EA: #_213A: db !PART_END

;===================================================================================================

SFX3_13:
#_1A94EB: #_213B: db !INSTR, $0D
#_1A94ED: #_213D: db $06, $50 ; duration, params
#_1A94EF: #_213F: db !SLIDE_ONCE, $9A, $00, $06
#_1A94F3: #_2143: db C3
#_1A94F4: #_2144: db $06 ; duration
#_1A94F5: #_2145: db !SLIDE_TO, $00, $06, $A1
#_1A94F9: #_2149: db $06 ; duration
#_1A94FA: #_214A: db !SLIDE_TO, $00, $03, $9A
#_1A94FE: #_214E: db !PART_END

;===================================================================================================

SFX3_11:
#_1A94FF: #_214F: db !INSTR, $07
#_1A9501: #_2151: db $24, $32 ; duration, params
#_1A9503: #_2153: db !SLIDE_ONCE, $B2, $00, $22
#_1A9507: #_2157: db G4
#_1A9508: #_2158: db $08 ; duration
#_1A9509: #_2159: db !SLIDE_TO, $00, $06, $9F
#_1A950D: #_215D: db !PART_END

;===================================================================================================

SFX3_12:
#_1A950E: #_215E: db !INSTR, $07
#_1A9510: #_2160: db $24, $32 ; duration, params
#_1A9512: #_2162: db !SLIDE_ONCE, $9F, $00, $22
#_1A9516: #_2166: db G4
#_1A9517: #_2167: db $08 ; duration
#_1A9518: #_2168: db !SLIDE_TO, $00, $06, $B2
#_1A951C: #_216C: db !PART_END

;===================================================================================================

SFX3_10:
#_1A951D: #_216D: db !INSTR, $0E
#_1A951F: #_216F: db $10, $1E ; duration, params
#_1A9521: #_2171: db C4
#_1A9522: #_2172: db $60, $1E ; duration, params
#_1A9524: #_2174: db G5
#_1A9525: #_2175: db !PART_END

;===================================================================================================

SFX3_3B:
#_1A9526: #_2176: db !INSTR, $0E
#_1A9528: #_2178: db $08, $00 ; duration, params
#_1A952A: #_217A: db C5
#_1A952B: #_217B: db $10, $1E ; duration, params
#_1A952D: #_217D: db C5
#_1A952E: #_217E: db $60, $1E ; duration, params
#_1A9530: #_2180: db C6
#_1A9531: #_2181: db !PART_END

;===================================================================================================

SFX3_0E:
#_1A9532: #_2182: db !INSTR, $02
#_1A9534: #_2184: db $04, $50 ; duration, params
#_1A9536: #_2186: db A5
#_1A9537: #_2187: db $04, $0A ; duration, params
#_1A9539: #_2189: db A4
#_1A953A: #_218A: db $04, $5A ; duration, params
#_1A953C: #_218C: db C6
#_1A953D: #_218D: db !PART_END

;===================================================================================================

SFX3_0C:
#_1A953E: #_218E: db !INSTR, $0D
#_1A9540: #_2190: db $08, $1E ; duration, params
#_1A9542: #_2192: db !SLIDE_ONCE, $A1, $00, $06
#_1A9546: #_2196: db B3
#_1A9547: #_2197: db !PART_END

;===================================================================================================

SFX3_0B:
#_1A9548: #_2198: db !INSTR, $0B
#_1A954A: #_219A: db $08, $64 ; duration, params
#_1A954C: #_219C: db !SLIDE_ONCE, $AD, $00, $06
#_1A9550: #_21A0: db D5
#_1A9551: #_21A1: db $08, $64 ; duration, params
#_1A9553: #_21A3: db !SLIDE_ONCE, $B0, $00, $06
#_1A9557: #_21A7: db G6
#_1A9558: #_21A8: db !PART_END

;===================================================================================================

SFX3_0A:
#_1A9559: #_21A9: db !INSTR, $03
#_1A955B: #_21AB: db $04, $50 ; duration, params
#_1A955D: #_21AD: db D5
#_1A955E: #_21AE: db $04, $50 ; duration, params
#_1A9560: #_21B0: db C5
#_1A9561: #_21B1: db $24, $50 ; duration, params
#_1A9563: #_21B3: db D5
#_1A9564: #_21B4: db !PART_END

;===================================================================================================

SFX3_0D:
#_1A9565: #_21B5: db !INSTR, $0E
#_1A9567: #_21B7: db $04, $46 ; duration, params
#_1A9569: #_21B9: db A5
#_1A956A: #_21BA: db $04, $32 ; duration, params
#_1A956C: #_21BC: db B5
#_1A956D: #_21BD: db $04, $1E ; duration, params
#_1A956F: #_21BF: db C6
#_1A9570: #_21C0: db !PART_END

;===================================================================================================

SFX3_09:
#_1A9571: #_21C1: db !INSTR, $0C
#_1A9573: #_21C3: db $08, $50 ; duration, params
#_1A9575: #_21C5: db !SLIDE_ONCE, $AF, $00, $08
#_1A9579: #_21C9: db D4
#_1A957A: #_21CA: db $08 ; duration
#_1A957B: #_21CB: db !SLIDE_TO, $00, $08, $9A
#_1A957F: #_21CF: db $08 ; duration
#_1A9580: #_21D0: db !SLIDE_TO, $00, $08, $A1
#_1A9584: #_21D4: db $08 ; duration
#_1A9585: #_21D5: db !SLIDE_TO, $00, $08, $AB
#_1A9589: #_21D9: db $08 ; duration
#_1A958A: #_21DA: db !SLIDE_TO, $00, $05, $97
#_1A958E: #_21DE: db $08, $46 ; duration, params
#_1A9590: #_21E0: db !SLIDE_ONCE, $9D, $00, $06
#_1A9594: #_21E4: db D5
#_1A9595: #_21E5: db !PART_END

;===================================================================================================

SFX3_08:
#_1A9596: #_21E6: db !INSTR, $0C
#_1A9598: #_21E8: db $05, $50 ; duration, params
#_1A959A: #_21EA: db !SLIDE_ONCE, $A6, $00, $05
#_1A959E: #_21EE: db G3
#_1A959F: #_21EF: db $07 ; duration
#_1A95A0: #_21F0: db !SLIDE_TO, $00, $05, $AD
#_1A95A4: #_21F4: db !PART_END

;===================================================================================================

SFX3_06:
#_1A95A5: #_21F5: db !INSTR, $02
#_1A95A7: #_21F7: db $18, $78 ; duration, params
#_1A95A9: #_21F9: db !SLIDE_ONCE, $87, $00, $18
#_1A95AD: #_21FD: db F5
#_1A95AE: #_21FE: db $0C ; duration
#_1A95AF: #_21FF: db !SLIDE_TO, $00, $0C, $B2
#_1A95B3: #_2203: db $0C ; duration
#_1A95B4: #_2204: db !SLIDE_TO, $00, $0C, $AD
#_1A95B8: #_2208: db $0C ; duration
#_1A95B9: #_2209: db !SLIDE_TO, $00, $0A, $98
#_1A95BD: #_220D: db !PART_END

;===================================================================================================

SFX3_04:
#_1A95BE: #_220E: db !INSTR, $12
#_1A95C0: #_2210: db $0C ; duration
#_1A95C1: #_2211: db !SLIDE_ONCE, $8C, $00, $09
#_1A95C5: #_2215: db G1
#_1A95C6: #_2216: db !INSTR, $06
#_1A95C8: #_2218: db $04, $3C ; duration, params
#_1A95CA: #_221A: db C2
#_1A95CB: #_221B: db F5
#_1A95CC: #_221C: db A1
#_1A95CD: #_221D: db F5
#_1A95CE: #_221E: db $04, $32 ; duration, params
#_1A95D0: #_2220: db C2
#_1A95D1: #_2221: db F5
#_1A95D2: #_2222: db A1
#_1A95D3: #_2223: db F5
#_1A95D4: #_2224: db $04, $28 ; duration, params
#_1A95D6: #_2226: db C2
#_1A95D7: #_2227: db F5
#_1A95D8: #_2228: db A1
#_1A95D9: #_2229: db F5
#_1A95DA: #_222A: db $04, $1E ; duration, params
#_1A95DC: #_222C: db C2
#_1A95DD: #_222D: db F5
#_1A95DE: #_222E: db A1
#_1A95DF: #_222F: db F5
#_1A95E0: #_2230: db $04, $14 ; duration, params
#_1A95E2: #_2232: db C2
#_1A95E3: #_2233: db F5
#_1A95E4: #_2234: db A1
#_1A95E5: #_2235: db F5
#_1A95E6: #_2236: db $04, $0A ; duration, params
#_1A95E8: #_2238: db C2
#_1A95E9: #_2239: db F5
#_1A95EA: #_223A: db A1
#_1A95EB: #_223B: db F5
#_1A95EC: #_223C: db !PART_END

;===================================================================================================

SFX3_07:
#_1A95ED: #_223D: db !INSTR, $0C
#_1A95EF: #_223F: db $04, $46 ; duration, params
#_1A95F1: #_2241: db A3
#_1A95F2: #_2242: db $18, $46 ; duration, params
#_1A95F4: #_2244: db !SLIDE_ONCE, $A4, $00, $15
#_1A95F8: #_2248: db G2
#_1A95F9: #_2249: db !PART_END

;===================================================================================================

SFX3_03:
#_1A95FA: #_224A: db !INSTR, $13
#_1A95FC: #_224C: db $08, $5A ; duration, params
#_1A95FE: #_224E: db A3
#_1A95FF: #_224F: db $30 ; duration
#_1A9600: #_2250: db A3
#_1A9601: #_2251: db !PART_END

;===================================================================================================

SFX2_27:
#_1A9602: #_2252: db !INSTR, $0B
#_1A9604: #_2254: db $10, $78 ; duration, params
#_1A9606: #_2256: db !SLIDE_ONCE, $A4, $00, $10
#_1A960A: #_225A: db Fs5
#_1A960B: #_225B: db $10 ; duration
#_1A960C: #_225C: db !SLIDE_TO, $00, $10, $AD
#_1A9610: #_2260: db $10 ; duration
#_1A9611: #_2261: db !SLIDE_ONCE, $A0, $00, $10
#_1A9615: #_2265: db A4
#_1A9616: #_2266: db $10 ; duration
#_1A9617: #_2267: db !SLIDE_TO, $00, $10, $9D
#_1A961B: #_226B: db $10 ; duration
#_1A961C: #_226C: db !SLIDE_ONCE, $9A, $00, $10
#_1A9620: #_2270: db E4
#_1A9621: #_2271: db $10 ; duration
#_1A9622: #_2272: db !SLIDE_TO, $00, $10, $9A
#_1A9626: #_2276: db $0C ; duration
#_1A9627: #_2277: db !SLIDE_TO, $00, $0C, $9D
#_1A962B: #_227B: db $0C ; duration
#_1A962C: #_227C: db !SLIDE_TO, $00, $09, $95
#_1A9630: #_2280: db !INSTR, $13
#_1A9632: #_2282: db $08, $64 ; duration, params
#_1A9634: #_2284: db C4
#_1A9635: #_2285: db F4
#_1A9636: #_2286: db !PART_END

;===================================================================================================

SFX2_28:
#_1A9637: #_2287: db !INSTR, $11
#_1A9639: #_2289: db $0C, $64 ; duration, params
#_1A963B: #_228B: db !SLIDE_ONCE, $B9, $00, $0C
#_1A963F: #_228F: db F5
#_1A9640: #_2290: db $0C ; duration
#_1A9641: #_2291: db !SLIDE_TO, $00, $09, $B7
#_1A9645: #_2295: db !PART_END

;===================================================================================================

SFX2_25:
#_1A9646: #_2296: db !INSTR, $11
#_1A9648: #_2298: db $0C, $64 ; duration, params
#_1A964A: #_229A: db !SLIDE_ONCE, $8E, $00, $0C
#_1A964E: #_229E: db F3
#_1A964F: #_229F: db $0C ; duration
#_1A9650: #_22A0: db !SLIDE_TO, $00, $09, $A1
#_1A9654: #_22A4: db !PART_END

;===================================================================================================

SFX2_24:
#_1A9655: #_22A5: db !INSTR, $11
#_1A9657: #_22A7: db $30, $64 ; duration, params
#_1A9659: #_22A9: db C4
#_1A965A: #_22AA: db !PART_END

;===================================================================================================

SFX2_3D:
#_1A965B: #_22AB: db !INSTR, $11
#_1A965D: #_22AD: db $48, $64 ; duration, params
#_1A965F: #_22AF: db C3
#_1A9660: #_22B0: db !PART_END

;===================================================================================================

SFX2_23:
#_1A9661: #_22B1: db !INSTR, $01
#_1A9663: #_22B3: db $08, $3C ; duration, params
#_1A9665: #_22B5: db !SLIDE_ONCE, $AF, $00, $05
#_1A9669: #_22B9: db F5
#_1A966A: #_22BA: db !PART_END

;===================================================================================================

SFX2_1D:
#_1A966B: #_22BB: db !INSTR, $16
#_1A966D: #_22BD: db $0A, $78 ; duration, params
#_1A966F: #_22BF: db !SLIDE_ONCE, $89, $00, $0A
#_1A9673: #_22C3: db F1
#_1A9674: #_22C4: db $0A ; duration
#_1A9675: #_22C5: db !SLIDE_TO, $00, $0A, $8C
#_1A9679: #_22C9: db $0A ; duration
#_1A967A: #_22CA: db !SLIDE_TO, $00, $07, $9D
#_1A967E: #_22CE: db !PART_END

;===================================================================================================

SFX2_21:
#_1A967F: #_22CF: db !INSTR, $02
#_1A9681: #_22D1: db $04, $3C ; duration, params
#_1A9683: #_22D3: db A4
#_1A9684: #_22D4: db !INSTR, $01
#_1A9686: #_22D6: db $08, $3C ; duration, params
#_1A9688: #_22D8: db B3
#_1A9689: #_22D9: db !PART_END

;===================================================================================================

SFX2_20:
#_1A968A: #_22DA: db !INSTR, $0D
#_1A968C: #_22DC: db $12, $3C ; duration, params
#_1A968E: #_22DE: db !SLIDE_ONCE, $B2, $00, $12
#_1A9692: #_22E2: db A4
#_1A9693: #_22E3: db $12 ; duration
#_1A9694: #_22E4: db !SLIDE_TO, $00, $0F, $A3
#_1A9698: #_22E8: db !PART_END

;===================================================================================================

SFX2_1F:
#_1A9699: #_22E9: db !INSTR, $02
#_1A969B: #_22EB: db $08, $32 ; duration, params
#_1A969D: #_22ED: db A4
#_1A969E: #_22EE: db D4
#_1A969F: #_22EF: db !INSTR, $01
#_1A96A1: #_22F1: db $04, $5A ; duration, params
#_1A96A3: #_22F3: db D5
#_1A96A4: #_22F4: db A4
#_1A96A5: #_22F5: db F4
#_1A96A6: #_22F6: db $04, $46 ; duration, params
#_1A96A8: #_22F8: db G4
#_1A96A9: #_22F9: db A3
#_1A96AA: #_22FA: db C4
#_1A96AB: #_22FB: db $04, $1E ; duration, params
#_1A96AD: #_22FD: db B3
#_1A96AE: #_22FE: db E3
#_1A96AF: #_22FF: db D3
#_1A96B0: #_2300: db !PART_END

;===================================================================================================

SFX2_1C:
#_1A96B1: #_2301: db !INSTR, $11
#_1A96B3: #_2303: db $18, $64 ; duration, params
#_1A96B5: #_2305: db D5
#_1A96B6: #_2306: db !PART_END

;===================================================================================================

SFX2_1B:
#_1A96B7: #_2307: db !INSTR, $11
#_1A96B9: #_2309: db $08, $78 ; duration, params
#_1A96BB: #_230B: db !SLIDE_ONCE, $8C, $00, $08
#_1A96BF: #_230F: db F3
#_1A96C0: #_2310: db $09 ; duration
#_1A96C1: #_2311: db !SLIDE_TO, $00, $06, $93
#_1A96C5: #_2315: db !PART_END

;===================================================================================================

SFX2_1A:
#_1A96C6: #_2316: db !INSTR, $01
#_1A96C8: #_2318: db $04, $28 ; duration, params
#_1A96CA: #_231A: db !SLIDE_ONCE, $A4, $00, $04
#_1A96CE: #_231E: db F4
#_1A96CF: #_231F: db $05, $3C ; duration, params
#_1A96D1: #_2321: db !SLIDE_TO, $00, $02, $A6
#_1A96D5: #_2325: db $05, $50 ; duration, params
#_1A96D7: #_2327: db !SLIDE_TO, $00, $02, $A3
#_1A96DB: #_232B: db !PART_END

;===================================================================================================

SFX2_16:
#_1A96DC: #_232C: db !INSTR, $10
#_1A96DE: #_232E: db $18, $78 ; duration, params
#_1A96E0: #_2330: db D3
#_1A96E1: #_2331: db $18, $73 ; duration, params
#_1A96E3: #_2333: db Ds3
#_1A96E4: #_2334: db $18, $6E ; duration, params
#_1A96E6: #_2336: db E3
#_1A96E7: #_2337: db $18, $69 ; duration, params
#_1A96E9: #_2339: db F3
#_1A96EA: #_233A: db $18, $64 ; duration, params
#_1A96EC: #_233C: db Fs3
#_1A96ED: #_233D: db $18, $5F ; duration, params
#_1A96EF: #_233F: db G3
#_1A96F0: #_2340: db $18, $5A ; duration, params
#_1A96F2: #_2342: db Gs3
#_1A96F3: #_2343: db !PART_END

;===================================================================================================

SFX2_17:
#_1A96F4: #_2344: db !INSTR, $10
#_1A96F6: #_2346: db $18, $64 ; duration, params
#_1A96F8: #_2348: db A3
#_1A96F9: #_2349: db $18, $69 ; duration, params
#_1A96FB: #_234B: db As3
#_1A96FC: #_234C: db $18, $6E ; duration, params
#_1A96FE: #_234E: db B3
#_1A96FF: #_234F: db $18, $73 ; duration, params
#_1A9701: #_2351: db C4
#_1A9702: #_2352: db $18, $78 ; duration, params
#_1A9704: #_2354: db Cs4
#_1A9705: #_2355: db !PART_END

;===================================================================================================

SFX2_18:
#_1A9706: #_2356: db !INSTR, $10
#_1A9708: #_2358: db $18, $78 ; duration, params
#_1A970A: #_235A: db Cs4
#_1A970B: #_235B: db $18, $73 ; duration, params
#_1A970D: #_235D: db C4
#_1A970E: #_235E: db $18, $6E ; duration, params
#_1A9710: #_2360: db B3
#_1A9711: #_2361: db $18, $69 ; duration, params
#_1A9713: #_2363: db As3
#_1A9714: #_2364: db $18, $64 ; duration, params
#_1A9716: #_2366: db A3
#_1A9717: #_2367: db $18, $5F ; duration, params
#_1A9719: #_2369: db Gs3
#_1A971A: #_236A: db $18, $5A ; duration, params
#_1A971C: #_236C: db G3
#_1A971D: #_236D: db !PART_END

;===================================================================================================

SFX2_19:
#_1A971E: #_236E: db !INSTR, $10
#_1A9720: #_2370: db $18, $64 ; duration, params
#_1A9722: #_2372: db Fs3
#_1A9723: #_2373: db $18, $69 ; duration, params
#_1A9725: #_2375: db F3
#_1A9726: #_2376: db $18, $6E ; duration, params
#_1A9728: #_2378: db E3
#_1A9729: #_2379: db $18, $73 ; duration, params
#_1A972B: #_237B: db Ds3
#_1A972C: #_237C: db $18, $78 ; duration, params
#_1A972E: #_237E: db D3
#_1A972F: #_237F: db !PART_END

;===================================================================================================

SFX2_14:
#_1A9730: #_2380: db !INSTR, $07
#_1A9732: #_2382: db $0C, $28 ; duration, params
#_1A9734: #_2384: db !SLIDE_ONCE, $9D, $00, $0C
#_1A9738: #_2388: db G3
#_1A9739: #_2389: db $0C, $23 ; duration, params
#_1A973B: #_238B: db !SLIDE_TO, $00, $09, $B2
#_1A973F: #_238F: db !PART_END

;===================================================================================================

SFX2_15:
#_1A9740: #_2390: db !INSTR, $07
#_1A9742: #_2392: db $0C, $28 ; duration, params
#_1A9744: #_2394: db !SLIDE_ONCE, $B2, $00, $0C
#_1A9748: #_2398: db G3
#_1A9749: #_2399: db $0C, $23 ; duration, params
#_1A974B: #_239B: db !SLIDE_TO, $00, $09, $9D
#_1A974F: #_239F: db !PART_END

;===================================================================================================

SFX2_13:
#_1A9750: #_23A0: db !INSTR, $0D
#_1A9752: #_23A2: db $08, $46 ; duration, params
#_1A9754: #_23A4: db G4
#_1A9755: #_23A5: db C5
#_1A9756: #_23A6: db D5
#_1A9757: #_23A7: db G5
#_1A9758: #_23A8: db D5
#_1A9759: #_23A9: db $60 ; duration
#_1A975A: #_23AA: db E5
#_1A975B: #_23AB: db $08, $3C ; duration, params
#_1A975D: #_23AD: db G4
#_1A975E: #_23AE: db C5
#_1A975F: #_23AF: db D5
#_1A9760: #_23B0: db G5
#_1A9761: #_23B1: db D5
#_1A9762: #_23B2: db $60 ; duration
#_1A9763: #_23B3: db E5
#_1A9764: #_23B4: db !PART_END

;===================================================================================================

SFX2_3E:
#_1A9765: #_23B5: db !INSTR, $0D
#_1A9767: #_23B7: db $04, $00 ; duration, params
#_1A9769: #_23B9: db E4
#_1A976A: #_23BA: db $08, $28 ; duration, params
#_1A976C: #_23BC: db G4
#_1A976D: #_23BD: db C5
#_1A976E: #_23BE: db D5
#_1A976F: #_23BF: db G5
#_1A9770: #_23C0: db D5
#_1A9771: #_23C1: db $60 ; duration
#_1A9772: #_23C2: db E5
#_1A9773: #_23C3: db $08, $1E ; duration, params
#_1A9775: #_23C5: db G4
#_1A9776: #_23C6: db C5
#_1A9777: #_23C7: db D5
#_1A9778: #_23C8: db G5
#_1A9779: #_23C9: db D5
#_1A977A: #_23CA: db $60 ; duration
#_1A977B: #_23CB: db E5
#_1A977C: #_23CC: db !PART_END

;===================================================================================================

SFX2_12:
#_1A977D: #_23CD: db !INSTR, $02
#_1A977F: #_23CF: db $0A, $50 ; duration, params
#_1A9781: #_23D1: db !SLIDE_ONCE, $8C, $00, $07
#_1A9785: #_23D5: db G5
#_1A9786: #_23D6: db !INSTR, $01
#_1A9788: #_23D8: db $08, $64 ; duration, params
#_1A978A: #_23DA: db !SLIDE_ONCE, $AD, $00, $05
#_1A978E: #_23DE: db C4
#_1A978F: #_23DF: db $10, $00 ; duration, params
#_1A9791: #_23E1: db C4
#_1A9792: #_23E2: db $08, $28 ; duration, params
#_1A9794: #_23E4: db !SLIDE_ONCE, $B0, $00, $08
#_1A9798: #_23E8: db C4
#_1A9799: #_23E9: db $08 ; duration
#_1A979A: #_23EA: db !SLIDE_TO, $B0, $00, $05
#_1A979E: #_23EE: db F3
#_1A979F: #_23EF: db !PART_END

;===================================================================================================

SFX2_11:
#_1A97A0: #_23F0: db !INSTR, $05
#_1A97A2: #_23F2: db $08, $64 ; duration, params
#_1A97A4: #_23F4: db !SLIDE_ONCE, $BE, $00, $05
#_1A97A8: #_23F8: db A5
#_1A97A9: #_23F9: db !PART_END

;===================================================================================================

SFX2_10:
#_1A97AA: #_23FA: db !INSTR, $05
#_1A97AC: #_23FC: db $08, $78 ; duration, params
#_1A97AE: #_23FE: db !SLIDE_ONCE, $9F, $00, $05
#_1A97B2: #_2402: db C3
#_1A97B3: #_2403: db !PART_END

;===================================================================================================

SFX2_0E:
#_1A97B4: #_2404: db !INSTR, $00
#_1A97B6: #_2406: db $18, $32 ; duration, params
#_1A97B8: #_2408: db !SLIDE_ONCE, $9F, $00, $18
#_1A97BC: #_240C: db C4
#_1A97BD: #_240D: db $30, $28 ; duration, params
#_1A97BF: #_240F: db !SLIDE_TO, $00, $2D, $98
#_1A97C3: #_2413: db !PART_END

;===================================================================================================

SFX2_0D:
#_1A97C4: #_2414: db !INSTR, $00
#_1A97C6: #_2416: db $06, $78 ; duration, params
#_1A97C8: #_2418: db G5
#_1A97C9: #_2419: db $06, $32 ; duration, params
#_1A97CB: #_241B: db E5
#_1A97CC: #_241C: db $06, $73 ; duration, params
#_1A97CE: #_241E: db F5
#_1A97CF: #_241F: db $06, $28 ; duration, params
#_1A97D1: #_2421: db D5
#_1A97D2: #_2422: db $06, $55 ; duration, params
#_1A97D4: #_2424: db E5
#_1A97D5: #_2425: db $05, $2D ; duration, params
#_1A97D7: #_2427: db C5
#_1A97D8: #_2428: db $05, $55 ; duration, params
#_1A97DA: #_242A: db D5
#_1A97DB: #_242B: db $04, $2D ; duration, params
#_1A97DD: #_242D: db B5
#_1A97DE: #_242E: db $04, $55 ; duration, params
#_1A97E0: #_2430: db C5
#_1A97E1: #_2431: db $03, $23 ; duration, params
#_1A97E3: #_2433: db A5
#_1A97E4: #_2434: db !PART_END

;===================================================================================================

SFX2_3F:
#_1A97E5: #_2435: db !INSTR, $0D
#_1A97E7: #_2437: db $06, $1E ; duration, params
#_1A97E9: #_2439: db E6
#_1A97EA: #_243A: db D6
#_1A97EB: #_243B: db E6
#_1A97EC: #_243C: db F6
#_1A97ED: #_243D: db G6
#_1A97EE: #_243E: db !PART_END

;===================================================================================================

SFX2_29:
#_1A97EF: #_243F: db !INSTR, $01
#_1A97F1: #_2441: db $08, $3C ; duration, params
#_1A97F3: #_2443: db !SLIDE_ONCE, $B7, $00, $05
#_1A97F7: #_2447: db E5
#_1A97F8: #_2448: db $08, $14 ; duration, params
#_1A97FA: #_244A: db !SLIDE_ONCE, $B5, $00, $08
#_1A97FE: #_244E: db G5
#_1A97FF: #_244F: db $08, $37 ; duration, params
#_1A9801: #_2451: db !SLIDE_TO, $00, $08, $B2
#_1A9805: #_2455: db $08, $0A ; duration, params
#_1A9807: #_2457: db !SLIDE_TO, $00, $08, $B7
#_1A980B: #_245B: db $08, $23 ; duration, params
#_1A980D: #_245D: db !SLIDE_TO, $00, $05, $BC
#_1A9811: #_2461: db !PART_END

;===================================================================================================

SFX2_3B:
#_1A9812: #_2462: db !INSTR, $06
#_1A9814: #_2464: db $06, $28 ; duration, params
#_1A9816: #_2466: db A5
#_1A9817: #_2467: db C5
#_1A9818: #_2468: db Ds5
#_1A9819: #_2469: db Fs5
#_1A981A: #_246A: db A5
#_1A981B: #_246B: db !PART_END

;===================================================================================================

SFX3_14:
#_1A981C: #_246C: db !INSTR, $06
#_1A981E: #_246E: db $04, $50 ; duration, params
#_1A9820: #_2470: db C5
#_1A9821: #_2471: db $04, $0A ; duration, params
#_1A9823: #_2473: db A4
#_1A9824: #_2474: db $04, $5A ; duration, params
#_1A9826: #_2476: db F5
#_1A9827: #_2477: db !PART_END

;===================================================================================================

SFX2_0B:
#_1A9828: #_2478: db !INSTR, $02
#_1A982A: #_247A: db $06, $50 ; duration, params
#_1A982C: #_247C: db E4
#_1A982D: #_247D: db $0C ; duration
#_1A982E: #_247E: db F4
#_1A982F: #_247F: db !PART_END

;===================================================================================================

SFX3_3F:
#_1A9830: #_2480: db !INSTR, $0B
#_1A9832: #_2482: db $10, $64 ; duration, params
#_1A9834: #_2484: db A3
#_1A9835: #_2485: db As3
#_1A9836: #_2486: db B3
#_1A9837: #_2487: db $60 ; duration
#_1A9838: #_2488: db C4
#_1A9839: #_2489: db !PART_END

;===================================================================================================

SFX3_3C:
#_1A983A: #_248A: db !INSTR, $0B
#_1A983C: #_248C: db $10, $64 ; duration, params
#_1A983E: #_248E: db C5
#_1A983F: #_248F: db Cs5
#_1A9840: #_2490: db D5
#_1A9841: #_2491: db $60 ; duration
#_1A9842: #_2492: db Ds5
#_1A9843: #_2493: db !PART_END

;===================================================================================================

SFX3_3D:
#_1A9844: #_2494: db !INSTR, $0B
#_1A9846: #_2496: db $10, $64 ; duration, params
#_1A9848: #_2498: db F4
#_1A9849: #_2499: db Fs4
#_1A984A: #_249A: db G4
#_1A984B: #_249B: db $60 ; duration
#_1A984C: #_249C: db Gs4
#_1A984D: #_249D: db !PART_END

;===================================================================================================

SFX3_3E:
#_1A984E: #_249E: db !INSTR, $05
#_1A9850: #_24A0: db $30, $64 ; duration, params
#_1A9852: #_24A2: db D3
#_1A9853: #_24A3: db $06, $0A ; duration, params
#_1A9855: #_24A5: db F3
#_1A9856: #_24A6: db C3
#_1A9857: #_24A7: db $06, $14 ; duration, params
#_1A9859: #_24A9: db F3
#_1A985A: #_24AA: db C3
#_1A985B: #_24AB: db $06, $28 ; duration, params
#_1A985D: #_24AD: db F3
#_1A985E: #_24AE: db C3
#_1A985F: #_24AF: db $06, $50 ; duration, params
#_1A9861: #_24B1: db F3
#_1A9862: #_24B2: db C3
#_1A9863: #_24B3: db F3
#_1A9864: #_24B4: db C3
#_1A9865: #_24B5: db F3
#_1A9866: #_24B6: db $30 ; duration
#_1A9867: #_24B7: db C3
#_1A9868: #_24B8: db !PART_END

;===================================================================================================

SFX3_0F:
#_1A9869: #_24B9: db !INSTR, $0B
#_1A986B: #_24BB: db $10, $78 ; duration, params
#_1A986D: #_24BD: db A5
#_1A986E: #_24BE: db As5
#_1A986F: #_24BF: db B5
#_1A9870: #_24C0: db $60 ; duration
#_1A9871: #_24C1: db C6
#_1A9872: #_24C2: db !PART_END

;===================================================================================================

SFX2_0F:
#_1A9873: #_24C3: db !INSTR, $06
#_1A9875: #_24C5: db $0C, $64 ; duration, params
#_1A9877: #_24C7: db !SLIDE_ONCE, $93, $00, $09
#_1A987B: #_24CB: db C5
#_1A987C: #_24CC: db $06, $5A ; duration, params
#_1A987E: #_24CE: db !SLIDE_ONCE, $B5, $00, $06
#_1A9882: #_24D2: db G5
#_1A9883: #_24D3: db $06, $55 ; duration, params
#_1A9885: #_24D5: db !SLIDE_TO, $00, $06, $B2
#_1A9889: #_24D9: db $06, $5F ; duration, params
#_1A988B: #_24DB: db !SLIDE_TO, $00, $06, $B7
#_1A988F: #_24DF: db $06, $4B ; duration, params
#_1A9891: #_24E1: db !SLIDE_TO, $00, $06, $B4
#_1A9895: #_24E5: db $06, $55 ; duration, params
#_1A9897: #_24E7: db !SLIDE_TO, $00, $06, $B9
#_1A989B: #_24EB: db $06, $3C ; duration, params
#_1A989D: #_24ED: db !SLIDE_TO, $00, $06, $B5
#_1A98A1: #_24F1: db $06, $46 ; duration, params
#_1A98A3: #_24F3: db !SLIDE_TO, $00, $06, $BB
#_1A98A7: #_24F7: db $06, $32 ; duration, params
#_1A98A9: #_24F9: db !SLIDE_TO, $00, $06, $B7
#_1A98AD: #_24FD: db $06, $3C ; duration, params
#_1A98AF: #_24FF: db !SLIDE_TO, $00, $06, $BC
#_1A98B3: #_2503: db $06, $2D ; duration, params
#_1A98B5: #_2505: db !SLIDE_TO, $00, $03, $BC
#_1A98B9: #_2509: db !PART_END

;===================================================================================================

SFX3_19:
#_1A98BA: #_250A: db !INSTR, $07
#_1A98BC: #_250C: db $08, $28 ; duration, params
#_1A98BE: #_250E: db !SLIDE_ONCE, $AB, $00, $05
#_1A98C2: #_2512: db E4
#_1A98C3: #_2513: db $08, $32 ; duration, params
#_1A98C5: #_2515: db !SLIDE_ONCE, $A9, $00, $08
#_1A98C9: #_2519: db G4
#_1A98CA: #_251A: db $08, $2D ; duration, params
#_1A98CC: #_251C: db !SLIDE_TO, $00, $08, $A6
#_1A98D0: #_2520: db $08, $1E ; duration, params
#_1A98D2: #_2522: db !SLIDE_TO, $00, $08, $AB
#_1A98D6: #_2526: db $08, $19 ; duration, params
#_1A98D8: #_2528: db !SLIDE_TO, $00, $05, $A6
#_1A98DC: #_252C: db !PART_END

;===================================================================================================

UnusedSFX_252D:
#_1A98DD: #_252D: db !INSTR, $05
#_1A98DF: #_252F: db $06, $28 ; duration, params
#_1A98E1: #_2531: db C6
#_1A98E2: #_2532: db !PART_END

;===================================================================================================

UnusedSFX_2533:
#_1A98E3: #_2533: db !INSTR, $00
#_1A98E5: #_2535: db $08, $32 ; duration, params
#_1A98E7: #_2537: db G4
#_1A98E8: #_2538: db D5
#_1A98E9: #_2539: db F4
#_1A98EA: #_253A: db G4
#_1A98EB: #_253B: db $08, $28 ; duration, params
#_1A98ED: #_253D: db E4
#_1A98EE: #_253E: db D4
#_1A98EF: #_253F: db E4
#_1A98F0: #_2540: db C4
#_1A98F1: #_2541: db $08, $1E ; duration, params
#_1A98F3: #_2543: db G4
#_1A98F4: #_2544: db F5
#_1A98F5: #_2545: db F4
#_1A98F6: #_2546: db G5
#_1A98F7: #_2547: db $08, $0A ; duration, params
#_1A98F9: #_2549: db A4
#_1A98FA: #_254A: db D5
#_1A98FB: #_254B: db C4
#_1A98FC: #_254C: db E4
#_1A98FD: #_254D: db !PART_END

;===================================================================================================

SFX3_02:
#_1A98FE: #_254E: db !INSTR, $01
#_1A9900: #_2550: db $08, $28 ; duration, params
#_1A9902: #_2552: db !SLIDE_ONCE, $AB, $00, $05
#_1A9906: #_2556: db E4
#_1A9907: #_2557: db $08, $32 ; duration, params
#_1A9909: #_2559: db !SLIDE_ONCE, $A9, $00, $08
#_1A990D: #_255D: db G4
#_1A990E: #_255E: db $08, $23 ; duration, params
#_1A9910: #_2560: db !SLIDE_TO, $00, $08, $9A
#_1A9914: #_2564: db $08, $28 ; duration, params
#_1A9916: #_2566: db !SLIDE_TO, $00, $08, $AB
#_1A991A: #_256A: db $08, $19 ; duration, params
#_1A991C: #_256C: db !SLIDE_TO, $00, $08, $9A
#_1A9920: #_2570: db $08, $0F ; duration, params
#_1A9922: #_2572: db !SLIDE_TO, $00, $05, $9F
#_1A9926: #_2576: db !PART_END

;===================================================================================================

SFX2_1E:
#_1A9927: #_2577: db !INSTR, $01
#_1A9929: #_2579: db $08, $28 ; duration, params
#_1A992B: #_257B: db !SLIDE_ONCE, $B7, $00, $05
#_1A992F: #_257F: db E5
#_1A9930: #_2580: db $08, $32 ; duration, params
#_1A9932: #_2582: db !SLIDE_ONCE, $B5, $00, $08
#_1A9936: #_2586: db G5
#_1A9937: #_2587: db $08, $2D ; duration, params
#_1A9939: #_2589: db !SLIDE_TO, $00, $08, $B2
#_1A993D: #_258D: db $08, $28 ; duration, params
#_1A993F: #_258F: db !SLIDE_TO, $00, $08, $B7
#_1A9943: #_2593: db $08, $23 ; duration, params
#_1A9945: #_2595: db !SLIDE_TO, $00, $08, $B2
#_1A9949: #_2599: db $08, $1E ; duration, params
#_1A994B: #_259B: db !SLIDE_TO, $00, $08, $B7
#_1A994F: #_259F: db $08, $0F ; duration, params
#_1A9951: #_25A1: db !SLIDE_TO, $00, $05, $B2
#_1A9955: #_25A5: db !PART_END

;===================================================================================================

SFX3_17:
#_1A9956: #_25A6: db !INSTR, $08
#_1A9958: #_25A8: db $0C, $50 ; duration, params
#_1A995A: #_25AA: db C5
#_1A995B: #_25AB: db C5
#_1A995C: #_25AC: db !PART_END

;===================================================================================================

SFX2_09:
#_1A995D: #_25AD: db !INSTR, $00
#_1A995F: #_25AF: db $09, $50 ; duration, params
#_1A9961: #_25B1: db !SLIDE_ONCE, $B7, $00, $06
#_1A9965: #_25B5: db C6
#_1A9966: #_25B6: db !PART_END

;===================================================================================================

SFX2_07:
SFX3_05:
#_1A9967: #_25B7: db !INSTR, $00
#_1A9969: #_25B9: db $06, $50 ; duration, params
#_1A996B: #_25BB: db !SLIDE_ONCE, $93, $00, $06
#_1A996F: #_25BF: db C5
#_1A9970: #_25C0: db $06, $50 ; duration, params
#_1A9972: #_25C2: db !SLIDE_TO, $00, $03, $8C
#_1A9976: #_25C6: db !PART_END

;===================================================================================================

SFX2_0A:
#_1A9977: #_25C7: db !INSTR, $06
#_1A9979: #_25C9: db $04, $50 ; duration, params
#_1A997B: #_25CB: db Ds5
#_1A997C: #_25CC: db $06 ; duration
#_1A997D: #_25CD: db C5
#_1A997E: #_25CE: db $04 ; duration
#_1A997F: #_25CF: db Ds5
#_1A9980: #_25D0: db $06 ; duration
#_1A9981: #_25D1: db C5
#_1A9982: #_25D2: db $04 ; duration
#_1A9983: #_25D3: db Ds5
#_1A9984: #_25D4: db $06 ; duration
#_1A9985: #_25D5: db C5
#_1A9986: #_25D6: db !PART_END

;===================================================================================================

SFX2_06:
#_1A9987: #_25D7: db !INSTR, $03
#_1A9989: #_25D9: db $18, $50 ; duration, params
#_1A998B: #_25DB: db C5
#_1A998C: #_25DC: db !PART_END

;===================================================================================================

SFX2_05:
#_1A998D: #_25DD: db !INSTR, $06
#_1A998F: #_25DF: db $06, $78 ; duration, params
#_1A9991: #_25E1: db C5
#_1A9992: #_25E2: db !PART_END

;===================================================================================================

SFX2_08:
#_1A9993: #_25E3: db !INSTR, $02
#_1A9995: #_25E5: db $0A, $78 ; duration, params
#_1A9997: #_25E7: db !SLIDE_ONCE, $B0, $00, $07
#_1A999B: #_25EB: db C3
#_1A999C: #_25EC: db !INSTR, $02
#_1A999E: #_25EE: db $06, $32 ; duration, params
#_1A99A0: #_25F0: db !SLIDE_ONCE, $B5, $00, $06
#_1A99A4: #_25F4: db G5
#_1A99A5: #_25F5: db $06, $2D ; duration, params
#_1A99A7: #_25F7: db !SLIDE_TO, $00, $06, $B2
#_1A99AB: #_25FB: db $06, $28 ; duration, params
#_1A99AD: #_25FD: db !SLIDE_TO, $00, $06, $B7
#_1A99B1: #_2601: db $06, $23 ; duration, params
#_1A99B3: #_2603: db !SLIDE_TO, $00, $06, $B2
#_1A99B7: #_2607: db $06, $14 ; duration, params
#_1A99B9: #_2609: db !SLIDE_TO, $00, $06, $B7
#_1A99BD: #_260D: db $06, $0F ; duration, params
#_1A99BF: #_260F: db !SLIDE_TO, $00, $03, $B2
#_1A99C3: #_2613: db !PART_END

;===================================================================================================

SFX2_01:
#_1A99C4: #_2614: db !INSTR, $01
#_1A99C6: #_2616: db $04, $46 ; duration, params
#_1A99C8: #_2618: db !SLIDE_ONCE, $9F, $00, $04
#_1A99CC: #_261C: db C2
#_1A99CD: #_261D: db $0C, $78 ; duration, params
#_1A99CF: #_261F: db !SLIDE_ONCE, $9F, $00, $09
#_1A99D3: #_2623: db G5
#_1A99D4: #_2624: db !PART_END

;===================================================================================================

SFX2_02:
#_1A99D5: #_2625: db !INSTR, $01
#_1A99D7: #_2627: db $06, $78 ; duration, params
#_1A99D9: #_2629: db !SLIDE_ONCE, $98, $00, $06
#_1A99DD: #_262D: db C5
#_1A99DE: #_262E: db $07 ; duration
#_1A99DF: #_262F: db !SLIDE_TO, $00, $04, $AB
#_1A99E3: #_2633: db !PART_END

;===================================================================================================

SFX2_03:
#_1A99E4: #_2634: db !INSTR, $02
#_1A99E6: #_2636: db $0C, $78 ; duration, params
#_1A99E8: #_2638: db !SLIDE_ONCE, $93, $00, $0C
#_1A99EC: #_263C: db G6
#_1A99ED: #_263D: db $07 ; duration
#_1A99EE: #_263E: db !SLIDE_TO, $00, $04, $A4
#_1A99F2: #_2642: db !PART_END

;===================================================================================================

SFX2_04:
#_1A99F3: #_2643: db !INSTR, $02
#_1A99F5: #_2645: db $0F, $78 ; duration, params
#_1A99F7: #_2647: db !SLIDE_ONCE, $8C, $00, $0F
#_1A99FB: #_264B: db C6
#_1A99FC: #_264C: db $0D ; duration
#_1A99FD: #_264D: db !SLIDE_TO, $00, $0A, $9F
#_1A9A01: #_2651: db !PART_END

;===================================================================================================

SFX1_01:
#_1A9A02: #_2652: db !INSTR, $01
#_1A9A04: #_2654: db $60, $50 ; duration, params
#_1A9A06: #_2656: db !PART_END

;===================================================================================================

UnusedSFX_2657:
#_1A9A07: #_2657: db !SLIDE_ONCE, $9F, $00, $60
#_1A9A0B: #_265B: db G3
#_1A9A0C: #_265C: db $63 ; duration
#_1A9A0D: #_265D: db !SLIDE_TO, $00, $60, $9F
#_1A9A11: #_2661: db !SFX_LOOP

;===================================================================================================

SFX1_02:
#_1A9A12: #_2662: db !INSTR, $01
#_1A9A14: #_2664: db $60, $00 ; duration, params
#_1A9A16: #_2666: db $50 ; duration
#_1A9A17: #_2667: db !SLIDE_ONCE, $98, $00, $60
#_1A9A1B: #_266B: db C3
#_1A9A1C: #_266C: db $60 ; duration
#_1A9A1D: #_266D: db !SLIDE_TO, $00, $60, $98
#_1A9A21: #_2671: db $63 ; duration
#_1A9A22: #_2672: db !SLIDE_TO, $00, $60, $98
#_1A9A26: #_2676: db !SFX_LOOP

;===================================================================================================

SFX1_03:
#_1A9A27: #_2677: db !INSTR, $01
#_1A9A29: #_2679: db $60, $32 ; duration, params
#_1A9A2B: #_267B: db !PART_END

;===================================================================================================

UnusedSFX_267C:
#_1A9A2C: #_267C: db !SLIDE_ONCE, $95, $00, $60
#_1A9A30: #_2680: db A2
#_1A9A31: #_2681: db $63 ; duration
#_1A9A32: #_2682: db !SLIDE_TO, $00, $60, $95
#_1A9A36: #_2686: db !SFX_LOOP

;===================================================================================================

SFX1_04:
#_1A9A37: #_2687: db !INSTR, $01
#_1A9A39: #_2689: db $60, $00 ; duration, params
#_1A9A3B: #_268B: db $32 ; duration
#_1A9A3C: #_268C: db !SLIDE_ONCE, $91, $00, $60
#_1A9A40: #_2690: db F2
#_1A9A41: #_2691: db $60 ; duration
#_1A9A42: #_2692: db !SLIDE_TO, $00, $60, $91
#_1A9A46: #_2696: db $63 ; duration
#_1A9A47: #_2697: db !SLIDE_TO, $00, $60, $91
#_1A9A4B: #_269B: db !SFX_LOOP

;===================================================================================================

SFX2_0C:
#_1A9A4C: #_269C: db !INSTR, $13
#_1A9A4E: #_269E: db $60, $7F ; duration, params
#_1A9A50: #_26A0: db G3
#_1A9A51: #_26A1: db !PART_END

;===================================================================================================

UnusedSFX_26A2:
#_1A9A52: #_26A2: db !INSTR, $07
#_1A9A54: #_26A4: db $0C, $00 ; duration, params
#_1A9A56: #_26A6: db F2
#_1A9A57: #_26A7: db $0C, $7F ; duration, params
#_1A9A59: #_26A9: db A2
#_1A9A5A: #_26AA: db $18, $00 ; duration, params
#_1A9A5C: #_26AC: db D2
#_1A9A5D: #_26AD: db $0C, $7F ; duration, params
#_1A9A5F: #_26AF: db G2
#_1A9A60: #_26B0: db $0C, $7F ; duration, params
#_1A9A62: #_26B2: db E2
#_1A9A63: #_26B3: db $30, $00 ; duration, params
#_1A9A65: #_26B5: db E2
#_1A9A66: #_26B6: db $0C, $7F ; duration, params
#_1A9A68: #_26B8: db D2
#_1A9A69: #_26B9: db $24, $00 ; duration, params
#_1A9A6B: #_26BB: db G2
#_1A9A6C: #_26BC: db $0C, $7F ; duration, params
#_1A9A6E: #_26BE: db F2
#_1A9A6F: #_26BF: db !INSTR, $14
#_1A9A71: #_26C1: db $60, $7F ; duration, params
#_1A9A73: #_26C3: db !SLIDE_ONCE, $85, $00, $60
#_1A9A77: #_26C7: db G1
#_1A9A78: #_26C8: db $33, $6B ; duration, params
#_1A9A7A: #_26CA: db !SLIDE_TO, $00, $30, $89
#_1A9A7E: #_26CE: db !PART_END

;===================================================================================================

SFX3_22:
#_1A9A7F: #_26CF: db !INSTR, $14
#_1A9A81: #_26D1: db $18, $7F ; duration, params
#_1A9A83: #_26D3: db !SLIDE_ONCE, $98, $00, $18
#_1A9A87: #_26D7: db F2
#_1A9A88: #_26D8: db $18 ; duration
#_1A9A89: #_26D9: db !SLIDE_TO, $00, $18, $97
#_1A9A8D: #_26DD: db $18 ; duration
#_1A9A8E: #_26DE: db !SLIDE_TO, $00, $18, $90
#_1A9A92: #_26E2: db $18 ; duration
#_1A9A93: #_26E3: db !SLIDE_TO, $00, $18, $95
#_1A9A97: #_26E7: db $18 ; duration
#_1A9A98: #_26E8: db !SLIDE_TO, $00, $18, $8E
#_1A9A9C: #_26EC: db $60 ; duration
#_1A9A9D: #_26ED: db !SLIDE_TO, $00, $60, $89
#_1A9AA1: #_26F1: db $63 ; duration
#_1A9AA2: #_26F2: db !SLIDE_TO, $00, $60, $80
#_1A9AA6: #_26F6: db !PART_END

;===================================================================================================

SFX3_28:
#_1A9AA7: #_26F7: db !INSTR, $07
#_1A9AA9: #_26F9: db $0C, $28 ; duration, params
#_1A9AAB: #_26FB: db !SLIDE_ONCE, $C0, $00, $0C
#_1A9AAF: #_26FF: db F6
#_1A9AB0: #_2700: db $18 ; duration
#_1A9AB1: #_2701: db !SLIDE_TO, $00, $18, $C2
#_1A9AB5: #_2705: db $0C, $3C ; duration, params
#_1A9AB7: #_2707: db !SLIDE_ONCE, $C0, $00, $0C
#_1A9ABB: #_270B: db F6
#_1A9ABC: #_270C: db $18 ; duration
#_1A9ABD: #_270D: db !SLIDE_TO, $00, $18, $C2
#_1A9AC1: #_2711: db $0C, $50 ; duration, params
#_1A9AC3: #_2713: db !SLIDE_ONCE, $C0, $00, $0C
#_1A9AC7: #_2717: db F6
#_1A9AC8: #_2718: db $18 ; duration
#_1A9AC9: #_2719: db !SLIDE_TO, $00, $18, $C2
#_1A9ACD: #_271D: db $0C, $3C ; duration, params
#_1A9ACF: #_271F: db !SLIDE_ONCE, $C0, $00, $0C
#_1A9AD3: #_2723: db F6
#_1A9AD4: #_2724: db $18 ; duration
#_1A9AD5: #_2725: db !SLIDE_TO, $00, $18, $C2
#_1A9AD9: #_2729: db $0C, $28 ; duration, params
#_1A9ADB: #_272B: db !SLIDE_ONCE, $C0, $00, $0C
#_1A9ADF: #_272F: db F6
#_1A9AE0: #_2730: db $1B ; duration
#_1A9AE1: #_2731: db !SLIDE_TO, $00, $18, $C2
#_1A9AE5: #_2735: db !PART_END

;===================================================================================================

SFX1_08:
#_1A9AE6: #_2736: db $04, $00 ; duration, params
#_1A9AE8: #_2738: db E4

;===================================================================================================

SFX1_07:
#_1A9AE9: #_2739: db !INSTR, $13
#_1A9AEB: #_273B: db $08, $00 ; duration, params
#_1A9AED: #_273D: db $7C ; duration
#_1A9AEE: #_273E: db D2
#_1A9AEF: #_273F: db $08, $4E ; duration, params
#_1A9AF1: #_2741: db $22 ; duration
#_1A9AF2: #_2742: db Cs2
#_1A9AF3: #_2743: db $0C, $64 ; duration, params
#_1A9AF5: #_2745: db $56 ; duration
#_1A9AF6: #_2746: db C2
#_1A9AF7: #_2747: db $12, $56 ; duration, params
#_1A9AF9: #_2749: db $7C ; duration
#_1A9AFA: #_274A: db Cs2
#_1A9AFB: #_274B: db $0C, $2C ; duration, params
#_1A9AFD: #_274D: db $58 ; duration
#_1A9AFE: #_274E: db B1
#_1A9AFF: #_274F: db $12, $5C ; duration, params
#_1A9B01: #_2751: db $3A ; duration
#_1A9B02: #_2752: db A1
#_1A9B03: #_2753: db $0C, $62 ; duration, params
#_1A9B05: #_2755: db $4A ; duration
#_1A9B06: #_2756: db B1
#_1A9B07: #_2757: db $08, $2C ; duration, params
#_1A9B09: #_2759: db $44 ; duration
#_1A9B0A: #_275A: db C2
#_1A9B0B: #_275B: db $0C, $44 ; duration, params
#_1A9B0D: #_275D: db $2C ; duration
#_1A9B0E: #_275E: db A1
#_1A9B0F: #_275F: db $18, $60 ; duration, params
#_1A9B11: #_2761: db $51 ; duration
#_1A9B12: #_2762: db B1
#_1A9B13: #_2763: db $08, $36 ; duration, params
#_1A9B15: #_2765: db $44 ; duration
#_1A9B16: #_2766: db C2
#_1A9B17: #_2767: db $30, $4E ; duration, params
#_1A9B19: #_2769: db $4E ; duration
#_1A9B1A: #_276A: db B1
#_1A9B1B: #_276B: db !SFX_LOOP

;===================================================================================================

SFX3_20:
#_1A9B1C: #_276C: db !INSTR, $0F
#_1A9B1E: #_276E: db $04, $50 ; duration, params
#_1A9B20: #_2770: db A5
#_1A9B21: #_2771: db $04, $3C ; duration, params
#_1A9B23: #_2773: db A5
#_1A9B24: #_2774: db $04, $28 ; duration, params
#_1A9B26: #_2776: db A5
#_1A9B27: #_2777: db $04, $14 ; duration, params
#_1A9B29: #_2779: db A5
#_1A9B2A: #_277A: db $04, $0A ; duration, params
#_1A9B2C: #_277C: db A5
#_1A9B2D: #_277D: db !PART_END

;===================================================================================================

UnusedSFX_277E:
#_1A9B2E: #_277E: db !INSTR, $14
#_1A9B30: #_2780: db $18, $14 ; duration, params
#_1A9B32: #_2782: db !SLIDE_ONCE, $B4, $00, $18
#_1A9B36: #_2786: db F5
#_1A9B37: #_2787: db $60 ; duration
#_1A9B38: #_2788: db !SLIDE_TO, $00, $60, $B5
#_1A9B3C: #_278C: db $60, $1E ; duration, params
#_1A9B3E: #_278E: db !SLIDE_TO, $00, $60, $B5
#_1A9B42: #_2792: db $60 ; duration
#_1A9B43: #_2793: db !SLIDE_TO, $00, $60, $AD
#_1A9B47: #_2797: db $63 ; duration
#_1A9B48: #_2798: db !SLIDE_TO, $00, $60, $A6
#_1A9B4C: #_279C: db !PART_END

;===================================================================================================

UnusedSFX_279D:
#_1A9B4D: #_279D: db !INSTR, $0D
#_1A9B4F: #_279F: db $30, $00 ; duration, params
#_1A9B51: #_27A1: db E5
#_1A9B52: #_27A2: db $18, $0A ; duration, params
#_1A9B54: #_27A4: db !SLIDE_ONCE, $B3, $00, $18
#_1A9B58: #_27A8: db Fs5
#_1A9B59: #_27A9: db $60 ; duration
#_1A9B5A: #_27AA: db !SLIDE_TO, $00, $60, $B3
#_1A9B5E: #_27AE: db $18, $0F ; duration, params
#_1A9B60: #_27B0: db !SLIDE_TO, $00, $18, $B6
#_1A9B64: #_27B4: db $60 ; duration
#_1A9B65: #_27B5: db !SLIDE_TO, $00, $60, $B3
#_1A9B69: #_27B9: db $18 ; duration
#_1A9B6A: #_27BA: db !SLIDE_TO, $00, $18, $B4
#_1A9B6E: #_27BE: db $60 ; duration
#_1A9B6F: #_27BF: db !SLIDE_TO, $00, $60, $B1
#_1A9B73: #_27C3: db $63 ; duration
#_1A9B74: #_27C4: db !SLIDE_TO, $00, $60, $AB
#_1A9B78: #_27C8: db !PART_END

;===================================================================================================

UnusedSFX_27C9:
#_1A9B79: #_27C9: db !INSTR, $12
#_1A9B7B: #_27CB: db $12, $5A ; duration, params
#_1A9B7D: #_27CD: db !SLIDE_ONCE, $89, $00, $12
#_1A9B81: #_27D1: db Cs2
#_1A9B82: #_27D2: db $0C ; duration
#_1A9B83: #_27D3: db !SLIDE_TO, $00, $0C, $92
#_1A9B87: #_27D7: db $24 ; duration
#_1A9B88: #_27D8: db !SLIDE_TO, $00, $24, $97
#_1A9B8C: #_27DC: db $7F ; duration
#_1A9B8D: #_27DD: db !SLIDE_TO, $00, $48, $82
#_1A9B91: #_27E1: db !PART_END

;===================================================================================================

SFX3_21:
#_1A9B92: #_27E2: db !INSTR, $14
#_1A9B94: #_27E4: db $06, $5A ; duration, params
#_1A9B96: #_27E6: db !SLIDE_ONCE, $8C, $00, $06
#_1A9B9A: #_27EA: db Fs2
#_1A9B9B: #_27EB: db $12 ; duration
#_1A9B9C: #_27EC: db !SLIDE_TO, $00, $12, $99
#_1A9BA0: #_27F0: db $12 ; duration
#_1A9BA1: #_27F1: db !SLIDE_TO, $00, $0F, $91
#_1A9BA5: #_27F5: db !PART_END

;===================================================================================================

UnusedSFX_27F6:
#_1A9BA6: #_27F6: db !INSTR, $0D
#_1A9BA8: #_27F8: db $12, $64 ; duration, params
#_1A9BAA: #_27FA: db !SLIDE_ONCE, $AB, $00, $0C
#_1A9BAE: #_27FE: db G5
#_1A9BAF: #_27FF: db $12, $64 ; duration, params
#_1A9BB1: #_2801: db !SLIDE_ONCE, $B2, $00, $0C
#_1A9BB5: #_2805: db D6
#_1A9BB6: #_2806: db !PART_END

;===================================================================================================

UnusedSFX_2807:
#_1A9BB7: #_2807: db !INSTR, $0D
#_1A9BB9: #_2809: db $12, $64 ; duration, params
#_1A9BBB: #_280B: db !SLIDE_ONCE, $B2, $00, $0C
#_1A9BBF: #_280F: db D6
#_1A9BC0: #_2810: db $12, $64 ; duration, params
#_1A9BC2: #_2812: db !SLIDE_ONCE, $B7, $00, $0C
#_1A9BC6: #_2816: db G6
#_1A9BC7: #_2817: db !PART_END

;===================================================================================================

UnusedSFX_2818:
#_1A9BC8: #_2818: db !INSTR, $0D
#_1A9BCA: #_281A: db $12, $64 ; duration, params
#_1A9BCC: #_281C: db !SLIDE_ONCE, $BA, $00, $0C
#_1A9BD0: #_2820: db A4
#_1A9BD1: #_2821: db $12, $64 ; duration, params
#_1A9BD3: #_2823: db !SLIDE_ONCE, $AB, $00, $0C
#_1A9BD7: #_2827: db D4
#_1A9BD8: #_2828: db !PART_END

;===================================================================================================

UnusedSFX_2829:
#_1A9BD9: #_2829: db $06, $64 ; duration, params
#_1A9BDB: #_282B: db C3
#_1A9BDC: #_282C: db C3
#_1A9BDD: #_282D: db $30, $64 ; duration, params
#_1A9BDF: #_282F: db C3
#_1A9BE0: #_2830: db !PART_END

;===================================================================================================

UnusedSFX_2831:
#_1A9BE1: #_2831: db !INSTR, $04
#_1A9BE3: #_2833: db $06, $78 ; duration, params
#_1A9BE5: #_2835: db !SLIDE_ONCE, $B0, $00, $06
#_1A9BE9: #_2839: db C4
#_1A9BEA: #_283A: db !INSTR, $02
#_1A9BEC: #_283C: db $09, $46 ; duration, params
#_1A9BEE: #_283E: db !SLIDE_ONCE, $B0, $00, $06
#_1A9BF2: #_2842: db G5
#_1A9BF3: #_2843: db !PART_END

;===================================================================================================

SFX2_26:
#_1A9BF4: #_2844: db !INSTR, $15
#_1A9BF6: #_2846: db $18, $64 ; duration, params
#_1A9BF8: #_2848: db C5
#_1A9BF9: #_2849: db !PART_END

;===================================================================================================

SFX_284A:
#_1A9BFA: #_284A: db !INSTR, $0D
#_1A9BFC: #_284C: db $18, $32 ; duration, params
#_1A9BFE: #_284E: db Cs2

;===================================================================================================

SFX1_05:
SFX1_06:
#_1A9BFF: #_284F: db !PART_END

base off

;===================================================================================================

SFX_Instruments:
#_1A9C00: dw $00E1, INSTRUMENT_DATA_SFX ; Transfer size, transfer address

base INSTRUMENT_DATA_SFX
;                   VOLL VOLR      Pitch      SRCN   ADSR1  GAIN  Mult
#_1A9C04: #_3E00: db $70, $70 : dw $1000 : db $00, $F6, $6A, $B8, $03
#_1A9C0D: #_3E09: db $70, $70 : dw $1000 : db $01, $8E, $E0, $B8, $02
#_1A9C16: #_3E12: db $70, $70 : dw $1000 : db $14, $FE, $6A, $B8, $02
#_1A9C1F: #_3E1B: db $70, $70 : dw $1000 : db $03, $FE, $F8, $B8, $0D
#_1A9C28: #_3E24: db $70, $70 : dw $1000 : db $04, $FE, $6A, $7F, $03
#_1A9C31: #_3E2D: db $70, $70 : dw $1000 : db $02, $FE, $6A, $7F, $03
#_1A9C3A: #_3E36: db $70, $70 : dw $1000 : db $05, $FE, $6A, $70, $03
#_1A9C43: #_3E3F: db $70, $70 : dw $1000 : db $06, $FE, $6A, $70, $03
#_1A9C4C: #_3E48: db $70, $70 : dw $1000 : db $08, $FA, $6A, $70, $03
#_1A9C55: #_3E51: db $70, $70 : dw $1000 : db $06, $FE, $6A, $70, $01
#_1A9C5E: #_3E5A: db $70, $70 : dw $1000 : db $07, $FE, $6A, $70, $05
#_1A9C67: #_3E63: db $70, $70 : dw $1000 : db $0B, $FE, $6A, $B8, $03
#_1A9C70: #_3E6C: db $70, $70 : dw $1000 : db $0C, $FE, $E0, $B8, $02
#_1A9C79: #_3E75: db $70, $70 : dw $1000 : db $0D, $F9, $6E, $B8, $03
#_1A9C82: #_3E7E: db $70, $70 : dw $1000 : db $0E, $FE, $F5, $B8, $07
#_1A9C8B: #_3E87: db $70, $70 : dw $1000 : db $0F, $FE, $F5, $B8, $06
#_1A9C94: #_3E90: db $70, $70 : dw $1000 : db $01, $FE, $FC, $B8, $03
#_1A9C9D: #_3E99: db $70, $70 : dw $1000 : db $10, $8E, $E0, $B8, $03
#_1A9CA6: #_3EA2: db $70, $70 : dw $1000 : db $08, $8E, $E0, $B8, $02
#_1A9CAF: #_3EAB: db $70, $70 : dw $1000 : db $14, $8E, $E0, $B8, $02
#_1A9CB8: #_3EB4: db $70, $70 : dw $1000 : db $0A, $88, $E0, $B8, $02
#_1A9CC1: #_3EBD: db $70, $70 : dw $1000 : db $17, $8E, $E0, $B8, $02
#_1A9CCA: #_3EC6: db $70, $70 : dw $1000 : db $15, $FF, $E0, $B8, $04
#_1A9CD3: #_3ECF: db $70, $70 : dw $1000 : db $03, $DF, $11, $B8, $0F
#_1A9CDC: #_3ED8: db $70, $70 : dw $1000 : db $01, $88, $E0, $B8, $01
base off

;===================================================================================================

Fairy_Theme:
#_1A9CE5: dw $020C, $2880 ; Transfer size, transfer address

base $2880

Song0B_FairyTheme:
#_1A9CE9: #_2880: dw Song0B_Segment0

Song0B_Loop:
#_1A9CEB: #_2882: dw Song0B_Segment1
#_1A9CED: #_2884: dw Song0B_Segment2
#_1A9CEF: #_2886: dw !SONG_LOOP, Song0B_Loop
#_1A9CF3: #_288A: dw $0000

Song0B_Segment1:
#_1A9CF5: #_288C: dw Song0B_Segment1_Track0
#_1A9CF7: #_288E: dw Song0B_Segment1_Track1
#_1A9CF9: #_2890: dw Song0B_Segment1_Track2
#_1A9CFB: #_2892: dw Song0B_Segment1_Track3
#_1A9CFD: #_2894: dw Song0B_Segment1_Track4
#_1A9CFF: #_2896: dw Song0B_Segment1_Track5
#_1A9D01: #_2898: dw Song0B_Segment1_Track6
#_1A9D03: #_289A: dw $0000

Song0B_Segment2:
#_1A9D05: #_289C: dw Song0B_Segment2_Track0
#_1A9D07: #_289E: dw Song0B_Segment2_Track1
#_1A9D09: #_28A0: dw Song0B_Segment2_Track2
#_1A9D0B: #_28A2: dw Song0B_Segment2_Track3
#_1A9D0D: #_28A4: dw Song0B_Segment2_Track4
#_1A9D0F: #_28A6: dw Song0B_Segment2_Track5
#_1A9D11: #_28A8: dw Song0B_Segment2_Track6
#_1A9D13: #_28AA: dw $0000

Song0B_Segment0:
#_1A9D15: #_28AC: dw Song0B_Segment0_Track0
#_1A9D17: #_28AE: dw $0000
#_1A9D19: #_28B0: dw $0000
#_1A9D1B: #_28B2: dw $0000
#_1A9D1D: #_28B4: dw $0000
#_1A9D1F: #_28B6: dw $0000
#_1A9D21: #_28B8: dw $0000
#_1A9D23: #_28BA: dw $0000

;===================================================================================================

Song0B_Segment1_Track0:
#_1A9D25: #_28BC: db !INSTR, $0F
#_1A9D27: #_28BE: db !VOLUME, $8C
#_1A9D29: #_28C0: db !PAN, $02
#_1A9D2B: #_28C2: db $30, $7D ; duration, params
#_1A9D2D: #_28C4: db As5
#_1A9D2E: #_28C5: db Gs5
#_1A9D2F: #_28C6: db G5
#_1A9D30: #_28C7: db Gs5
#_1A9D31: #_28C8: db Gs5
#_1A9D32: #_28C9: db Fs5
#_1A9D33: #_28CA: db F5
#_1A9D34: #_28CB: db Fs5
#_1A9D35: #_28CC: db Fs5
#_1A9D36: #_28CD: db F5
#_1A9D37: #_28CE: db E5
#_1A9D38: #_28CF: db F5
#_1A9D39: #_28D0: db F5
#_1A9D3A: #_28D1: db Ds5
#_1A9D3B: #_28D2: db D5
#_1A9D3C: #_28D3: db Ds5
#_1A9D3D: #_28D4: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0B_Segment1_Track1:
#_1A9D3E: #_28D5: db !INSTR, $0F
#_1A9D40: #_28D7: db !VOLUME, $8C
#_1A9D42: #_28D9: db !PAN, $04
#_1A9D44: #_28DB: db $0C ; duration
#_1A9D45: #_28DC: db R
#_1A9D46: #_28DD: db $30, $7D ; duration, params
#_1A9D48: #_28DF: db Ds5
#_1A9D49: #_28E0: db Ds5
#_1A9D4A: #_28E1: db Ds5
#_1A9D4B: #_28E2: db Ds5
#_1A9D4C: #_28E3: db Cs5
#_1A9D4D: #_28E4: db Cs5
#_1A9D4E: #_28E5: db Cs5
#_1A9D4F: #_28E6: db Cs5
#_1A9D50: #_28E7: db B4
#_1A9D51: #_28E8: db B4
#_1A9D52: #_28E9: db B4
#_1A9D53: #_28EA: db B4
#_1A9D54: #_28EB: db As4
#_1A9D55: #_28EC: db As4
#_1A9D56: #_28ED: db As4
#_1A9D57: #_28EE: db $24 ; duration
#_1A9D58: #_28EF: db As4

;---------------------------------------------------------------------------------------------------

Song0B_Segment1_Track2:
#_1A9D59: #_28F0: db !INSTR, $0F
#_1A9D5B: #_28F2: db !VOLUME, $8C
#_1A9D5D: #_28F4: db !PAN, $06
#_1A9D5F: #_28F6: db $18 ; duration
#_1A9D60: #_28F7: db R
#_1A9D61: #_28F8: db $30, $7D ; duration, params
#_1A9D63: #_28FA: db B4
#_1A9D64: #_28FB: db B4
#_1A9D65: #_28FC: db B4
#_1A9D66: #_28FD: db B4
#_1A9D67: #_28FE: db As4
#_1A9D68: #_28FF: db As4
#_1A9D69: #_2900: db As4
#_1A9D6A: #_2901: db As4
#_1A9D6B: #_2902: db Gs4
#_1A9D6C: #_2903: db Gs4
#_1A9D6D: #_2904: db Gs4
#_1A9D6E: #_2905: db Gs4
#_1A9D6F: #_2906: db Fs4
#_1A9D70: #_2907: db Fs4
#_1A9D71: #_2908: db Fs4
#_1A9D72: #_2909: db $18 ; duration
#_1A9D73: #_290A: db Fs4

;---------------------------------------------------------------------------------------------------

Song0B_Segment1_Track3:
#_1A9D74: #_290B: db !INSTR, $0F
#_1A9D76: #_290D: db !VOLUME, $8C
#_1A9D78: #_290F: db !PAN, $08
#_1A9D7A: #_2911: db $24 ; duration
#_1A9D7B: #_2912: db R
#_1A9D7C: #_2913: db $30, $7D ; duration, params
#_1A9D7E: #_2915: db Gs4
#_1A9D7F: #_2916: db Gs4
#_1A9D80: #_2917: db Gs4
#_1A9D81: #_2918: db Gs4
#_1A9D82: #_2919: db Fs4
#_1A9D83: #_291A: db Fs4
#_1A9D84: #_291B: db Fs4
#_1A9D85: #_291C: db Fs4
#_1A9D86: #_291D: db F4
#_1A9D87: #_291E: db F4
#_1A9D88: #_291F: db F4
#_1A9D89: #_2920: db F4
#_1A9D8A: #_2921: db Ds4
#_1A9D8B: #_2922: db Ds4
#_1A9D8C: #_2923: db Ds4
#_1A9D8D: #_2924: db $0C ; duration
#_1A9D8E: #_2925: db Ds4

;---------------------------------------------------------------------------------------------------

Song0B_Segment1_Track4:
#_1A9D8F: #_2926: db !INSTR, $0F
#_1A9D91: #_2928: db !VOLUME, $C8
#_1A9D93: #_292A: db !PAN, $0A
#_1A9D95: #_292C: db $24, $7D ; duration, params
#_1A9D97: #_292E: db B1
#_1A9D98: #_292F: db $48 ; duration
#_1A9D99: #_2930: db As3
#_1A9D9A: #_2931: db $24 ; duration
#_1A9D9B: #_2932: db Ds3
#_1A9D9C: #_2933: db Cs4
#_1A9D9D: #_2934: db $0C ; duration
#_1A9D9E: #_2935: db Ds3
#_1A9D9F: #_2936: db $24 ; duration
#_1A9DA0: #_2937: db As1
#_1A9DA1: #_2938: db $48 ; duration
#_1A9DA2: #_2939: db Gs3
#_1A9DA3: #_293A: db $24 ; duration
#_1A9DA4: #_293B: db As1
#_1A9DA5: #_293C: db Cs4
#_1A9DA6: #_293D: db $0C ; duration
#_1A9DA7: #_293E: db Cs3
#_1A9DA8: #_293F: db $24 ; duration
#_1A9DA9: #_2940: db Gs1
#_1A9DAA: #_2941: db $3C ; duration
#_1A9DAB: #_2942: db Fs3
#_1A9DAC: #_2943: db $24 ; duration
#_1A9DAD: #_2944: db Gs1
#_1A9DAE: #_2945: db F3
#_1A9DAF: #_2946: db $18 ; duration
#_1A9DB0: #_2947: db Cs3
#_1A9DB1: #_2948: db $24 ; duration
#_1A9DB2: #_2949: db Fs1
#_1A9DB3: #_294A: db $3C ; duration
#_1A9DB4: #_294B: db F3
#_1A9DB5: #_294C: db $24 ; duration
#_1A9DB6: #_294D: db Fs1
#_1A9DB7: #_294E: db Ds3
#_1A9DB8: #_294F: db $18 ; duration
#_1A9DB9: #_2950: db Cs4

;---------------------------------------------------------------------------------------------------

Song0B_Segment1_Track5:
#_1A9DBA: #_2951: db !INSTR, $0F
#_1A9DBC: #_2953: db !VOLUME, $C8
#_1A9DBE: #_2955: db !PAN, $0E
#_1A9DC0: #_2957: db $0C ; duration
#_1A9DC1: #_2958: db R
#_1A9DC2: #_2959: db $60, $7D ; duration, params
#_1A9DC4: #_295B: db B2
#_1A9DC5: #_295C: db $0C ; duration
#_1A9DC6: #_295D: db !TIE
#_1A9DC7: #_295E: db $24 ; duration
#_1A9DC8: #_295F: db As3
#_1A9DC9: #_2960: db As3
#_1A9DCA: #_2961: db $0C ; duration
#_1A9DCB: #_2962: db !TIE
#_1A9DCC: #_2963: db $60 ; duration
#_1A9DCD: #_2964: db As2
#_1A9DCE: #_2965: db $0C ; duration
#_1A9DCF: #_2966: db !TIE
#_1A9DD0: #_2967: db $24 ; duration
#_1A9DD1: #_2968: db Gs3
#_1A9DD2: #_2969: db Gs3
#_1A9DD3: #_296A: db $0C ; duration
#_1A9DD4: #_296B: db !TIE
#_1A9DD5: #_296C: db $54 ; duration
#_1A9DD6: #_296D: db Gs2
#_1A9DD7: #_296E: db $0C ; duration
#_1A9DD8: #_296F: db !TIE
#_1A9DD9: #_2970: db $24 ; duration
#_1A9DDA: #_2971: db Gs2
#_1A9DDB: #_2972: db Gs3
#_1A9DDC: #_2973: db $0C ; duration
#_1A9DDD: #_2974: db B2
#_1A9DDE: #_2975: db !TIE
#_1A9DDF: #_2976: db $54 ; duration
#_1A9DE0: #_2977: db Fs2
#_1A9DE1: #_2978: db $0C ; duration
#_1A9DE2: #_2979: db !TIE
#_1A9DE3: #_297A: db $24 ; duration
#_1A9DE4: #_297B: db Fs2
#_1A9DE5: #_297C: db Gs3
#_1A9DE6: #_297D: db $0C ; duration
#_1A9DE7: #_297E: db B3

;---------------------------------------------------------------------------------------------------

Song0B_Segment1_Track6:
#_1A9DE8: #_297F: db !INSTR, $0F
#_1A9DEA: #_2981: db !VOLUME, $C8
#_1A9DEC: #_2983: db !PAN, $12
#_1A9DEE: #_2985: db $18 ; duration
#_1A9DEF: #_2986: db R
#_1A9DF0: #_2987: db $54, $7D ; duration, params
#_1A9DF2: #_2989: db Ds3
#_1A9DF3: #_298A: db $18 ; duration
#_1A9DF4: #_298B: db !TIE
#_1A9DF5: #_298C: db $24 ; duration
#_1A9DF6: #_298D: db Gs3
#_1A9DF7: #_298E: db $18 ; duration
#_1A9DF8: #_298F: db Gs3
#_1A9DF9: #_2990: db !TIE
#_1A9DFA: #_2991: db $54 ; duration
#_1A9DFB: #_2992: db Cs3
#_1A9DFC: #_2993: db $18 ; duration
#_1A9DFD: #_2994: db !TIE
#_1A9DFE: #_2995: db $24 ; duration
#_1A9DFF: #_2996: db Fs3
#_1A9E00: #_2997: db $18 ; duration
#_1A9E01: #_2998: db Fs3
#_1A9E02: #_2999: db !TIE
#_1A9E03: #_299A: db $48 ; duration
#_1A9E04: #_299B: db B2
#_1A9E05: #_299C: db $18 ; duration
#_1A9E06: #_299D: db !TIE
#_1A9E07: #_299E: db $24 ; duration
#_1A9E08: #_299F: db Fs3
#_1A9E09: #_29A0: db F3
#_1A9E0A: #_29A1: db $18 ; duration
#_1A9E0B: #_29A2: db !TIE
#_1A9E0C: #_29A3: db $48 ; duration
#_1A9E0D: #_29A4: db As2
#_1A9E0E: #_29A5: db $18 ; duration
#_1A9E0F: #_29A6: db !TIE
#_1A9E10: #_29A7: db $24 ; duration
#_1A9E11: #_29A8: db F3
#_1A9E12: #_29A9: db Fs3

;---------------------------------------------------------------------------------------------------

Song0B_Segment2_Track0:
#_1A9E13: #_29AA: db $30, $7D ; duration, params
#_1A9E15: #_29AC: db As5
#_1A9E16: #_29AD: db Gs5
#_1A9E17: #_29AE: db G5
#_1A9E18: #_29AF: db Gs5
#_1A9E19: #_29B0: db B5
#_1A9E1A: #_29B1: db As5
#_1A9E1B: #_29B2: db A5
#_1A9E1C: #_29B3: db As5
#_1A9E1D: #_29B4: db Cs6
#_1A9E1E: #_29B5: db B5
#_1A9E1F: #_29B6: db As5
#_1A9E20: #_29B7: db B5
#_1A9E21: #_29B8: db As5
#_1A9E22: #_29B9: db Gs5
#_1A9E23: #_29BA: db Fs5
#_1A9E24: #_29BB: db F5
#_1A9E25: #_29BC: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0B_Segment2_Track1:
#_1A9E26: #_29BD: db $0C ; duration
#_1A9E27: #_29BE: db R
#_1A9E28: #_29BF: db $30, $7D ; duration, params
#_1A9E2A: #_29C1: db Ds5
#_1A9E2B: #_29C2: db Ds5
#_1A9E2C: #_29C3: db Ds5
#_1A9E2D: #_29C4: db Ds5
#_1A9E2E: #_29C5: db E5
#_1A9E2F: #_29C6: db E5
#_1A9E30: #_29C7: db E5
#_1A9E31: #_29C8: db E5
#_1A9E32: #_29C9: db Ds5
#_1A9E33: #_29CA: db Ds5
#_1A9E34: #_29CB: db Ds5
#_1A9E35: #_29CC: db Ds5
#_1A9E36: #_29CD: db B4
#_1A9E37: #_29CE: db B4
#_1A9E38: #_29CF: db B4
#_1A9E39: #_29D0: db $24 ; duration
#_1A9E3A: #_29D1: db B4

;---------------------------------------------------------------------------------------------------

Song0B_Segment2_Track2:
#_1A9E3B: #_29D2: db $18 ; duration
#_1A9E3C: #_29D3: db R
#_1A9E3D: #_29D4: db $30, $7D ; duration, params
#_1A9E3F: #_29D6: db B4
#_1A9E40: #_29D7: db B4
#_1A9E41: #_29D8: db B4
#_1A9E42: #_29D9: db B4
#_1A9E43: #_29DA: db Cs5
#_1A9E44: #_29DB: db Cs5
#_1A9E45: #_29DC: db Cs5
#_1A9E46: #_29DD: db Cs5
#_1A9E47: #_29DE: db B4
#_1A9E48: #_29DF: db B4
#_1A9E49: #_29E0: db B4
#_1A9E4A: #_29E1: db B4
#_1A9E4B: #_29E2: db Gs4
#_1A9E4C: #_29E3: db Gs4
#_1A9E4D: #_29E4: db Gs4
#_1A9E4E: #_29E5: db $18 ; duration
#_1A9E4F: #_29E6: db Gs4

;---------------------------------------------------------------------------------------------------

Song0B_Segment2_Track3:
#_1A9E50: #_29E7: db $24 ; duration
#_1A9E51: #_29E8: db R
#_1A9E52: #_29E9: db $30, $7D ; duration, params
#_1A9E54: #_29EB: db Gs4
#_1A9E55: #_29EC: db Gs4
#_1A9E56: #_29ED: db Gs4
#_1A9E57: #_29EE: db Gs4
#_1A9E58: #_29EF: db G4
#_1A9E59: #_29F0: db G4
#_1A9E5A: #_29F1: db G4
#_1A9E5B: #_29F2: db G4
#_1A9E5C: #_29F3: db Gs4
#_1A9E5D: #_29F4: db Gs4
#_1A9E5E: #_29F5: db Gs4
#_1A9E5F: #_29F6: db Gs4
#_1A9E60: #_29F7: db F4
#_1A9E61: #_29F8: db F4
#_1A9E62: #_29F9: db F4
#_1A9E63: #_29FA: db $0C ; duration
#_1A9E64: #_29FB: db F4

;---------------------------------------------------------------------------------------------------

Song0B_Segment2_Track4:
#_1A9E65: #_29FC: db $24, $7D ; duration, params
#_1A9E67: #_29FE: db B1
#_1A9E68: #_29FF: db $3C ; duration
#_1A9E69: #_2A00: db As3
#_1A9E6A: #_2A01: db $24 ; duration
#_1A9E6B: #_2A02: db B1
#_1A9E6C: #_2A03: db Gs3
#_1A9E6D: #_2A04: db $18 ; duration
#_1A9E6E: #_2A05: db Gs3
#_1A9E6F: #_2A06: db $24 ; duration
#_1A9E70: #_2A07: db As1
#_1A9E71: #_2A08: db $3C ; duration
#_1A9E72: #_2A09: db Cs4
#_1A9E73: #_2A0A: db $24 ; duration
#_1A9E74: #_2A0B: db Ds2
#_1A9E75: #_2A0C: db As3
#_1A9E76: #_2A0D: db $18 ; duration
#_1A9E77: #_2A0E: db Cs4
#_1A9E78: #_2A0F: db $24 ; duration
#_1A9E79: #_2A10: db Gs1
#_1A9E7A: #_2A11: db $3C ; duration
#_1A9E7B: #_2A12: db B3
#_1A9E7C: #_2A13: db $24 ; duration
#_1A9E7D: #_2A14: db Gs1
#_1A9E7E: #_2A15: db As3
#_1A9E7F: #_2A16: db $18 ; duration
#_1A9E80: #_2A17: db Gs3
#_1A9E81: #_2A18: db $24 ; duration
#_1A9E82: #_2A19: db Cs2
#_1A9E83: #_2A1A: db $3C ; duration
#_1A9E84: #_2A1B: db B3
#_1A9E85: #_2A1C: db $24 ; duration
#_1A9E86: #_2A1D: db Cs2
#_1A9E87: #_2A1E: db Gs3
#_1A9E88: #_2A1F: db $18 ; duration
#_1A9E89: #_2A20: db Gs4

;---------------------------------------------------------------------------------------------------

Song0B_Segment2_Track5:
#_1A9E8A: #_2A21: db $0C ; duration
#_1A9E8B: #_2A22: db R
#_1A9E8C: #_2A23: db $54, $7D ; duration, params
#_1A9E8E: #_2A25: db B2
#_1A9E8F: #_2A26: db $0C ; duration
#_1A9E90: #_2A27: db !TIE
#_1A9E91: #_2A28: db $24 ; duration
#_1A9E92: #_2A29: db B2
#_1A9E93: #_2A2A: db Ds4
#_1A9E94: #_2A2B: db $0C ; duration
#_1A9E95: #_2A2C: db Ds3
#_1A9E96: #_2A2D: db !TIE
#_1A9E97: #_2A2E: db $54 ; duration
#_1A9E98: #_2A2F: db As2
#_1A9E99: #_2A30: db $0C ; duration
#_1A9E9A: #_2A31: db !TIE
#_1A9E9B: #_2A32: db $24 ; duration
#_1A9E9C: #_2A33: db Ds3
#_1A9E9D: #_2A34: db E4
#_1A9E9E: #_2A35: db $0C ; duration
#_1A9E9F: #_2A36: db As3
#_1A9EA0: #_2A37: db !TIE
#_1A9EA1: #_2A38: db $54 ; duration
#_1A9EA2: #_2A39: db Gs2
#_1A9EA3: #_2A3A: db $0C ; duration
#_1A9EA4: #_2A3B: db !TIE
#_1A9EA5: #_2A3C: db $24 ; duration
#_1A9EA6: #_2A3D: db Gs2
#_1A9EA7: #_2A3E: db Cs4
#_1A9EA8: #_2A3F: db $0C ; duration
#_1A9EA9: #_2A40: db Ds3
#_1A9EAA: #_2A41: db !TIE
#_1A9EAB: #_2A42: db $54 ; duration
#_1A9EAC: #_2A43: db Cs3
#_1A9EAD: #_2A44: db $0C ; duration
#_1A9EAE: #_2A45: db !TIE
#_1A9EAF: #_2A46: db $24 ; duration
#_1A9EB0: #_2A47: db Cs3
#_1A9EB1: #_2A48: db F4
#_1A9EB2: #_2A49: db $0C ; duration
#_1A9EB3: #_2A4A: db F4

;---------------------------------------------------------------------------------------------------

Song0B_Segment2_Track6:
#_1A9EB4: #_2A4B: db $18 ; duration
#_1A9EB5: #_2A4C: db R
#_1A9EB6: #_2A4D: db $48, $7D ; duration, params
#_1A9EB8: #_2A4F: db Ds3
#_1A9EB9: #_2A50: db $18 ; duration
#_1A9EBA: #_2A51: db !TIE
#_1A9EBB: #_2A52: db $24 ; duration
#_1A9EBC: #_2A53: db As3
#_1A9EBD: #_2A54: db As3
#_1A9EBE: #_2A55: db $18 ; duration
#_1A9EBF: #_2A56: db !TIE
#_1A9EC0: #_2A57: db $48 ; duration
#_1A9EC1: #_2A58: db Cs3
#_1A9EC2: #_2A59: db $18 ; duration
#_1A9EC3: #_2A5A: db !TIE
#_1A9EC4: #_2A5B: db $24 ; duration
#_1A9EC5: #_2A5C: db Cs4
#_1A9EC6: #_2A5D: db Ds4
#_1A9EC7: #_2A5E: db $18 ; duration
#_1A9EC8: #_2A5F: db !TIE
#_1A9EC9: #_2A60: db $48 ; duration
#_1A9ECA: #_2A61: db Ds3
#_1A9ECB: #_2A62: db $18 ; duration
#_1A9ECC: #_2A63: db !TIE
#_1A9ECD: #_2A64: db $24 ; duration
#_1A9ECE: #_2A65: db B3
#_1A9ECF: #_2A66: db B3
#_1A9ED0: #_2A67: db $18 ; duration
#_1A9ED1: #_2A68: db !TIE
#_1A9ED2: #_2A69: db $48 ; duration
#_1A9ED3: #_2A6A: db Gs3
#_1A9ED4: #_2A6B: db $18 ; duration
#_1A9ED5: #_2A6C: db !TIE
#_1A9ED6: #_2A6D: db $24 ; duration
#_1A9ED7: #_2A6E: db B3
#_1A9ED8: #_2A6F: db Ds4

;---------------------------------------------------------------------------------------------------

Song0B_Segment0_Track0:
#_1A9ED9: #_2A70: db !SET_PERC, $19
#_1A9EDB: #_2A72: db !MASTER_VOLUME, $B4
#_1A9EDD: #_2A74: db !ECHO_CONFIG, $FF, $00, $00
#_1A9EE1: #_2A78: db !ECHO_FILTER, $02, $50, $02
#_1A9EE5: #_2A7C: db !ECHO_GRAD, $28, $28, $28
#_1A9EE9: #_2A80: db !TEMPO, $21
#_1A9EEB: #_2A82: db !INSTR, $0F
#_1A9EED: #_2A84: db !VOLUME, $8C
#_1A9EEF: #_2A86: db !PAN, $02
#_1A9EF1: #_2A88: db $18 ; duration
#_1A9EF2: #_2A89: db R
#_1A9EF3: #_2A8A: db !PART_END
#_1A9EF4: #_2A8B: db $00
base off

;===================================================================================================

SongBank_Overworld_Main:
#_1A9EF5: dw $2DAE, SONG_POINTERS ; Transfer size, transfer address

base SONG_POINTERS
#_1A9EF9: #_D000o: dw Song01_TriforceIntro
#_1A9EFB: #_D002o: dw Song02_LightWorldOverture
#_1A9EFD: #_D004o: dw Song03_LegendsTheme_Rain
#_1A9EFF: #_D006o: dw Song04_BunnyTheme
#_1A9F01: #_D008o: dw Song05_LostWoods
#_1A9F03: #_D00Ao: dw Song06_LegendsTheme_Attract
#_1A9F05: #_D00Co: dw Song07_KakarikoVillage
#_1A9F07: #_D00Eo: dw Song08_MirrorWarp
#_1A9F09: #_D010o: dw Song09_DarkWorld
#_1A9F0B: #_D012o: dw Song0A_PullingTheMasterSword
#_1A9F0D: #_D014o: dw Song0B_FairyTheme
#_1A9F0F: #_D016o: dw Song0C_Fugitive
#_1A9F11: #_D018o: dw Song0D_SkullWoodsMarch
#_1A9F13: #_D01Ao: dw Song0E_MinigameTheme
#_1A9F15: #_D01Co: dw Song0F_IntroFanfare
#_1A9F17: #_D01Eo: dw $0000
#_1A9F19: #_D020o: dw $0000
#_1A9F1B: #_D022o: dw $0000
#_1A9F1D: #_D024o: dw $0000
#_1A9F1F: #_D026o: dw $0000
#_1A9F21: #_D028o: dw $0000
#_1A9F23: #_D02Ao: dw $0000
#_1A9F25: #_D02Co: dw $0000
#_1A9F27: #_D02Eo: dw $0000
#_1A9F29: #_D030o: dw $0000
#_1A9F2B: #_D032o: dw $0000
#_1A9F2D: #_D034o: dw $0000

;===================================================================================================

Song01_TriforceIntro:
#_1A9F2F: #_D036o: dw Song01_Segment0
#_1A9F31: #_D038o: dw Song01_Segment1
#_1A9F33: #_D03Ao: dw !SONG_END

Song01_Segment0:
#_1A9F35: #_D03Co: dw Song01_Segment0_Track0
#_1A9F37: #_D03Eo: dw Song01_Segment0_Track1
#_1A9F39: #_D040o: dw Song01_Segment0_Track2
#_1A9F3B: #_D042o: dw Song01_Segment0_Track3
#_1A9F3D: #_D044o: dw Song01_Segment0_Track4
#_1A9F3F: #_D046o: dw $0000
#_1A9F41: #_D048o: dw $0000
#_1A9F43: #_D04Ao: dw $0000

;---------------------------------------------------------------------------------------------------

Song01_Segment0_Track0:
#_1A9F45: #_D04Co: db !SET_PERC, $19
#_1A9F47: #_D04Eo: db !MASTER_VOLUME, $C8
#_1A9F49: #_D050o: db !TEMPO, $1D
#_1A9F4B: #_D052o: db !TEMPO_GRAD, $8C, $29
#_1A9F4E: #_D055o: db !ECHO_CONFIG, $FF, $00, $00
#_1A9F52: #_D059o: db !ECHO_FILTER, $02, $1E, $02
#_1A9F56: #_D05Do: db !ECHO_GRAD, $28, $78, $78
#_1A9F5A: #_D061o: db !INSTR, $0F
#_1A9F5C: #_D063o: db !VOLUME, $C8
#_1A9F5E: #_D065o: db $06 ; duration
#_1A9F5F: #_D066o: db R
#_1A9F60: #_D067o: db $06, $7D ; duration, params
#_1A9F62: #_D069o: db Cs5
#_1A9F63: #_D06Ao: db As4
#_1A9F64: #_D06Bo: db G4
#_1A9F65: #_D06Co: db $0C ; duration
#_1A9F66: #_D06Do: db !TIE
#_1A9F67: #_D06Eo: db $06 ; duration
#_1A9F68: #_D06Fo: db As4
#_1A9F69: #_D070o: db G4
#_1A9F6A: #_D071o: db F4
#_1A9F6B: #_D072o: db $0C ; duration
#_1A9F6C: #_D073o: db !TIE
#_1A9F6D: #_D074o: db $06 ; duration
#_1A9F6E: #_D075o: db G4
#_1A9F6F: #_D076o: db F4
#_1A9F70: #_D077o: db Ds4
#_1A9F71: #_D078o: db $0C ; duration
#_1A9F72: #_D079o: db !TIE
#_1A9F73: #_D07Ao: db $06 ; duration
#_1A9F74: #_D07Bo: db F4
#_1A9F75: #_D07Co: db Ds4
#_1A9F76: #_D07Do: db Cs4
#_1A9F77: #_D07Eo: db $0C ; duration
#_1A9F78: #_D07Fo: db !TIE
#_1A9F79: #_D080o: db $06 ; duration
#_1A9F7A: #_D081o: db Ds4
#_1A9F7B: #_D082o: db Cs4
#_1A9F7C: #_D083o: db As3
#_1A9F7D: #_D084o: db $0C ; duration
#_1A9F7E: #_D085o: db !TIE
#_1A9F7F: #_D086o: db $06 ; duration
#_1A9F80: #_D087o: db Cs4
#_1A9F81: #_D088o: db As3
#_1A9F82: #_D089o: db G3
#_1A9F83: #_D08Ao: db $0C ; duration
#_1A9F84: #_D08Bo: db !TIE
#_1A9F85: #_D08Co: db $06 ; duration
#_1A9F86: #_D08Do: db As3
#_1A9F87: #_D08Eo: db !TEMPO_GRAD, $78, $17
#_1A9F8A: #_D091o: db G3
#_1A9F8B: #_D092o: db F3
#_1A9F8C: #_D093o: db $0C ; duration
#_1A9F8D: #_D094o: db !TIE
#_1A9F8E: #_D095o: db $06 ; duration
#_1A9F8F: #_D096o: db G3
#_1A9F90: #_D097o: db F3
#_1A9F91: #_D098o: db Ds3
#_1A9F92: #_D099o: db !TIE
#_1A9F93: #_D09Ao: db $1E ; duration
#_1A9F94: #_D09Bo: db As2
#_1A9F95: #_D09Co: db $12 ; duration
#_1A9F96: #_D09Do: db Cs4
#_1A9F97: #_D09Eo: db $0C ; duration
#_1A9F98: #_D09Fo: db !TIE
#_1A9F99: #_D0A0o: db $48 ; duration
#_1A9F9A: #_D0A1o: db F5
#_1A9F9B: #_D0A2o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song01_Segment0_Track1:
#_1A9F9C: #_D0A3o: db !INSTR, $0F
#_1A9F9E: #_D0A5o: db !VOLUME, $C8
#_1A9FA0: #_D0A7o: db $1E, $7D ; duration, params
#_1A9FA2: #_D0A9o: db Ds5
#_1A9FA3: #_D0AAo: db Cs5
#_1A9FA4: #_D0ABo: db As4
#_1A9FA5: #_D0ACo: db $06 ; duration
#_1A9FA6: #_D0ADo: db G4
#_1A9FA7: #_D0AEo: db $18 ; duration
#_1A9FA8: #_D0AFo: db !TIE
#_1A9FA9: #_D0B0o: db $1E ; duration
#_1A9FAA: #_D0B1o: db F4
#_1A9FAB: #_D0B2o: db Ds4
#_1A9FAC: #_D0B3o: db $0C ; duration
#_1A9FAD: #_D0B4o: db Cs4
#_1A9FAE: #_D0B5o: db $12 ; duration
#_1A9FAF: #_D0B6o: db !TIE
#_1A9FB0: #_D0B7o: db $24 ; duration
#_1A9FB1: #_D0B8o: db As3
#_1A9FB2: #_D0B9o: db $1E ; duration
#_1A9FB3: #_D0BAo: db G2
#_1A9FB4: #_D0BBo: db $0C ; duration
#_1A9FB5: #_D0BCo: db F4
#_1A9FB6: #_D0BDo: db $12 ; duration
#_1A9FB7: #_D0BEo: db !TIE
#_1A9FB8: #_D0BFo: db $42 ; duration
#_1A9FB9: #_D0C0o: db G5

;---------------------------------------------------------------------------------------------------

Song01_Segment0_Track2:
#_1A9FBA: #_D0C1o: db !INSTR, $0F
#_1A9FBC: #_D0C3o: db !VOLUME, $C8
#_1A9FBE: #_D0C5o: db $18 ; duration
#_1A9FBF: #_D0C6o: db R
#_1A9FC0: #_D0C7o: db $1E, $7D ; duration, params
#_1A9FC2: #_D0C9o: db F4
#_1A9FC3: #_D0CAo: db Ds4
#_1A9FC4: #_D0CBo: db $0C ; duration
#_1A9FC5: #_D0CCo: db Cs4
#_1A9FC6: #_D0CDo: db $12 ; duration
#_1A9FC7: #_D0CEo: db !TIE
#_1A9FC8: #_D0CFo: db $1E ; duration
#_1A9FC9: #_D0D0o: db As3
#_1A9FCA: #_D0D1o: db G3
#_1A9FCB: #_D0D2o: db $12 ; duration
#_1A9FCC: #_D0D3o: db F3
#_1A9FCD: #_D0D4o: db $0C ; duration
#_1A9FCE: #_D0D5o: db !TIE
#_1A9FCF: #_D0D6o: db $1E ; duration
#_1A9FD0: #_D0D7o: db Ds3
#_1A9FD1: #_D0D8o: db $12 ; duration
#_1A9FD2: #_D0D9o: db Cs3
#_1A9FD3: #_D0DAo: db $1E ; duration
#_1A9FD4: #_D0DBo: db F3
#_1A9FD5: #_D0DCo: db $06 ; duration
#_1A9FD6: #_D0DDo: db G4
#_1A9FD7: #_D0DEo: db $54 ; duration
#_1A9FD8: #_D0DFo: db !TIE

;---------------------------------------------------------------------------------------------------

Song01_Segment0_Track3:
#_1A9FD9: #_D0E0o: db !INSTR, $0F
#_1A9FDB: #_D0E2o: db !VOLUME, $C8
#_1A9FDD: #_D0E4o: db $60 ; duration
#_1A9FDE: #_D0E5o: db R
#_1A9FDF: #_D0E6o: db R
#_1A9FE0: #_D0E7o: db $42 ; duration
#_1A9FE1: #_D0E8o: db R
#_1A9FE2: #_D0E9o: db $1E, $7D ; duration, params
#_1A9FE4: #_D0EBo: db G3
#_1A9FE5: #_D0ECo: db $54 ; duration
#_1A9FE6: #_D0EDo: db As4

;---------------------------------------------------------------------------------------------------

Song01_Segment0_Track4:
#_1A9FE7: #_D0EEo: db !INSTR, $0F
#_1A9FE9: #_D0F0o: db !VOLUME, $C8
#_1A9FEB: #_D0F2o: db $60 ; duration
#_1A9FEC: #_D0F3o: db R
#_1A9FED: #_D0F4o: db R
#_1A9FEE: #_D0F5o: db $48 ; duration
#_1A9FEF: #_D0F6o: db R
#_1A9FF0: #_D0F7o: db $18, $7D ; duration, params
#_1A9FF2: #_D0F9o: db As3
#_1A9FF3: #_D0FAo: db $06 ; duration
#_1A9FF4: #_D0FBo: db !TIE
#_1A9FF5: #_D0FCo: db $4E ; duration
#_1A9FF6: #_D0FDo: db Cs5
#_1A9FF7: #_D0FEo: db !PART_END

;===================================================================================================

Song02_LightWorldOverture:
#_1A9FF8: #_D0FFo: dw Song02_Segment0

Song02_Loop:
#_1A9FFA: #_D101o: dw Song02_Segment1
#_1A9FFC: #_D103o: dw Song02_Segment2
#_1A9FFE: #_D105o: dw !SONG_LOOP, Song02_Loop
#_1AA002: #_D109o: dw $0000

Song02_Segment0:
#_1AA004: #_D10Bo: dw Song02_Segment0_Track0
#_1AA006: #_D10Do: dw Song02_Segment0_Track1
#_1AA008: #_D10Fo: dw Song02_Segment0_Track2
#_1AA00A: #_D111o: dw Song02_Segment0_Track3
#_1AA00C: #_D113o: dw Song02_Segment0_Track4
#_1AA00E: #_D115o: dw Song02_Segment0_Track5
#_1AA010: #_D117o: dw Song02_Segment0_Track6
#_1AA012: #_D119o: dw Song02_Segment0_Track7

Song02_Segment1:
#_1AA014: #_D11Bo: dw Song02_Segment1_Track0
#_1AA016: #_D11Do: dw Song02_Segment1_Track1
#_1AA018: #_D11Fo: dw Song02_Segment1_Track2
#_1AA01A: #_D121o: dw Song02_Segment1_Track3
#_1AA01C: #_D123o: dw Song02_Segment1_Track4
#_1AA01E: #_D125o: dw Song02_Segment1_Track5
#_1AA020: #_D127o: dw $0000
#_1AA022: #_D129o: dw Song02_Segment1_Track7

Song02_Segment2:
#_1AA024: #_D12Bo: dw Song02_Segment2_Track0
#_1AA026: #_D12Do: dw Song02_Segment2_Track1
#_1AA028: #_D12Fo: dw Song02_Segment2_Track2
#_1AA02A: #_D131o: dw Song02_Segment2_Track3
#_1AA02C: #_D133o: dw Song02_Segment2_Track4
#_1AA02E: #_D135o: dw Song02_Segment2_Track5
#_1AA030: #_D137o: dw Song02_Segment2_Track6
#_1AA032: #_D139o: dw Song02_Segment2_Track7

;---------------------------------------------------------------------------------------------------

Song02_Segment0_Track0:
#_1AA034: #_D13Bo: db !SET_PERC, $19
#_1AA036: #_D13Do: db !ECHO_CONFIG, $BB, $00, $00
#_1AA03A: #_D141o: db !ECHO_FILTER, $02, $1E, $02
#_1AA03E: #_D145o: db !ECHO_GRAD, $28, $00, $00
#_1AA042: #_D149o: db !TEMPO, $1C
#_1AA044: #_D14Bo: db !MASTER_VOLUME, $A0
#_1AA046: #_D14Do: db !VOLUME, $FA
#_1AA048: #_D14Fo: db !PAN, $0A
#_1AA04A: #_D151o: db !INSTR, $0B
#_1AA04C: #_D153o: db !VIBRATO, $12, $1C, $26
#_1AA050: #_D157o: db !GLOBAL_TRANS, $00
#_1AA052: #_D159o: db $30, $5D ; duration, params
#_1AA054: #_D15Bo: db As4
#_1AA055: #_D15Co: db $10 ; duration
#_1AA056: #_D15Do: db R
#_1AA057: #_D15Eo: db $04, $2D ; duration, params
#_1AA059: #_D160o: db As4
#_1AA05A: #_D161o: db As4
#_1AA05B: #_D162o: db $08, $2B ; duration, params
#_1AA05D: #_D164o: db As4
#_1AA05E: #_D165o: db As4
#_1AA05F: #_D166o: db $08, $2D ; duration, params
#_1AA061: #_D168o: db As4
#_1AA062: #_D169o: db !CALL_PART : dw Song02_Sub_D623 : db 2
#_1AA066: #_D16Do: db $0C, $3F ; duration, params
#_1AA068: #_D16Fo: db As4
#_1AA069: #_D170o: db $06, $39 ; duration, params
#_1AA06B: #_D172o: db F4
#_1AA06C: #_D173o: db $06, $3B ; duration, params
#_1AA06E: #_D175o: db F4
#_1AA06F: #_D176o: db $0C, $5B ; duration, params
#_1AA071: #_D178o: db F4
#_1AA072: #_D179o: db $06, $3D ; duration, params
#_1AA074: #_D17Bo: db F4
#_1AA075: #_D17Co: db F4
#_1AA076: #_D17Do: db $0C, $5F ; duration, params
#_1AA078: #_D17Fo: db F4
#_1AA079: #_D180o: db $06, $4F ; duration, params
#_1AA07B: #_D182o: db F4
#_1AA07C: #_D183o: db $06, $3F ; duration, params
#_1AA07E: #_D185o: db F4
#_1AA07F: #_D186o: db $0C, $5F ; duration, params
#_1AA081: #_D188o: db F4
#_1AA082: #_D189o: db F4
#_1AA083: #_D18Ao: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Segment0_Track1:
#_1AA084: #_D18Bo: db !VOLUME, $FF
#_1AA086: #_D18Do: db !INSTR, $11
#_1AA088: #_D18Fo: db !PAN, $0A
#_1AA08A: #_D191o: db !VIBRATO, $08, $1E, $1E
#_1AA08E: #_D195o: db $18, $5D ; duration, params
#_1AA090: #_D197o: db As2
#_1AA091: #_D198o: db $08, $3B ; duration, params
#_1AA093: #_D19Ao: db As2
#_1AA094: #_D19Bo: db As2
#_1AA095: #_D19Co: db As2
#_1AA096: #_D19Do: db $18, $5D ; duration, params
#_1AA098: #_D19Fo: db As2
#_1AA099: #_D1A0o: db $08, $3B ; duration, params
#_1AA09B: #_D1A2o: db As2
#_1AA09C: #_D1A3o: db As2
#_1AA09D: #_D1A4o: db As2
#_1AA09E: #_D1A5o: db $18, $5D ; duration, params
#_1AA0A0: #_D1A7o: db Gs2
#_1AA0A1: #_D1A8o: db $08, $3B ; duration, params
#_1AA0A3: #_D1AAo: db Gs2
#_1AA0A4: #_D1ABo: db Gs2
#_1AA0A5: #_D1ACo: db Gs2
#_1AA0A6: #_D1ADo: db $18, $5D ; duration, params
#_1AA0A8: #_D1AFo: db Gs2
#_1AA0A9: #_D1B0o: db $08, $3B ; duration, params
#_1AA0AB: #_D1B2o: db Gs2
#_1AA0AC: #_D1B3o: db Gs2
#_1AA0AD: #_D1B4o: db Gs2
#_1AA0AE: #_D1B5o: db $18, $5D ; duration, params
#_1AA0B0: #_D1B7o: db Fs2
#_1AA0B1: #_D1B8o: db $08, $3B ; duration, params
#_1AA0B3: #_D1BAo: db Fs2
#_1AA0B4: #_D1BBo: db Fs2
#_1AA0B5: #_D1BCo: db Fs2
#_1AA0B6: #_D1BDo: db $18, $5D ; duration, params
#_1AA0B8: #_D1BFo: db Fs2
#_1AA0B9: #_D1C0o: db $08, $3B ; duration, params
#_1AA0BB: #_D1C2o: db Fs2
#_1AA0BC: #_D1C3o: db Fs2
#_1AA0BD: #_D1C4o: db Fs2
#_1AA0BE: #_D1C5o: db $18, $5B ; duration, params
#_1AA0C0: #_D1C7o: db F2
#_1AA0C1: #_D1C8o: db F2
#_1AA0C2: #_D1C9o: db $18, $5D ; duration, params
#_1AA0C4: #_D1CBo: db F2
#_1AA0C5: #_D1CCo: db $0C, $5F ; duration, params
#_1AA0C7: #_D1CEo: db G2
#_1AA0C8: #_D1CFo: db A2

;---------------------------------------------------------------------------------------------------

Song02_Segment0_Track2:
#_1AA0C9: #_D1D0o: db !VOLUME, $C8
#_1AA0CB: #_D1D2o: db !INSTR, $13
#_1AA0CD: #_D1D4o: db !PAN, $0A
#_1AA0CF: #_D1D6o: db $06, $79 ; duration, params
#_1AA0D1: #_D1D8o: db D4
#_1AA0D2: #_D1D9o: db $06, $75 ; duration, params
#_1AA0D4: #_D1DBo: db D4
#_1AA0D5: #_D1DCo: db $06, $78 ; duration, params
#_1AA0D7: #_D1DEo: db D4
#_1AA0D8: #_D1DFo: db $06, $77 ; duration, params
#_1AA0DA: #_D1E1o: db D4
#_1AA0DB: #_D1E2o: db $06, $7A ; duration, params
#_1AA0DD: #_D1E4o: db D4
#_1AA0DE: #_D1E5o: db $06, $79 ; duration, params
#_1AA0E0: #_D1E7o: db D4
#_1AA0E1: #_D1E8o: db $06, $7C ; duration, params
#_1AA0E3: #_D1EAo: db D4
#_1AA0E4: #_D1EBo: db $06, $7B ; duration, params
#_1AA0E6: #_D1EDo: db D4
#_1AA0E7: #_D1EEo: db $18, $7C ; duration, params
#_1AA0E9: #_D1F0o: db D4
#_1AA0EA: #_D1F1o: db $08, $79 ; duration, params
#_1AA0EC: #_D1F3o: db D4
#_1AA0ED: #_D1F4o: db D4
#_1AA0EE: #_D1F5o: db D4
#_1AA0EF: #_D1F6o: db !CALL_PART : dw Song02_Sub_D63C : db 2
#_1AA0F3: #_D1FAo: db $03, $7E ; duration, params
#_1AA0F5: #_D1FCo: db D4
#_1AA0F6: #_D1FDo: db $15, $7D ; duration, params
#_1AA0F8: #_D1FFo: db D4
#_1AA0F9: #_D200o: db $03, $7E ; duration, params
#_1AA0FB: #_D202o: db D4
#_1AA0FC: #_D203o: db $15, $7D ; duration, params
#_1AA0FE: #_D205o: db D4
#_1AA0FF: #_D206o: db $03, $7E ; duration, params
#_1AA101: #_D208o: db D4
#_1AA102: #_D209o: db $15, $7D ; duration, params
#_1AA104: #_D20Bo: db D4
#_1AA105: #_D20Co: db $0C, $7F ; duration, params
#_1AA107: #_D20Eo: db D4
#_1AA108: #_D20Fo: db D4

;---------------------------------------------------------------------------------------------------

Song02_Segment0_Track3:
#_1AA109: #_D210o: db !VOLUME, $E6
#_1AA10B: #_D212o: db !PAN, $08
#_1AA10D: #_D214o: db !INSTR, $0B
#_1AA10F: #_D216o: db !VIBRATO, $0D, $1C, $26
#_1AA113: #_D21Ao: db $30, $5D ; duration, params
#_1AA115: #_D21Co: db F4
#_1AA116: #_D21Do: db $10 ; duration
#_1AA117: #_D21Eo: db R
#_1AA118: #_D21Fo: db $08, $57 ; duration, params
#_1AA11A: #_D221o: db F4
#_1AA11B: #_D222o: db $08, $59 ; duration, params
#_1AA11D: #_D224o: db F4
#_1AA11E: #_D225o: db F4
#_1AA11F: #_D226o: db $08, $49 ; duration, params
#_1AA121: #_D228o: db F4
#_1AA122: #_D229o: db !CALL_PART : dw Song02_Sub_D65C : db 2
#_1AA126: #_D22Do: db $0C, $3F ; duration, params
#_1AA128: #_D22Fo: db F4
#_1AA129: #_D230o: db $06, $59 ; duration, params
#_1AA12B: #_D232o: db Fs3
#_1AA12C: #_D233o: db $06, $5B ; duration, params
#_1AA12E: #_D235o: db Fs3
#_1AA12F: #_D236o: db $0C ; duration
#_1AA130: #_D237o: db G3
#_1AA131: #_D238o: db $06, $5D ; duration, params
#_1AA133: #_D23Ao: db G3
#_1AA134: #_D23Bo: db G3
#_1AA135: #_D23Co: db $0C, $5F ; duration, params
#_1AA137: #_D23Eo: db Gs3
#_1AA138: #_D23Fo: db $06 ; duration
#_1AA139: #_D240o: db Gs3
#_1AA13A: #_D241o: db Gs3
#_1AA13B: #_D242o: db $0C ; duration
#_1AA13C: #_D243o: db A3
#_1AA13D: #_D244o: db A3

;---------------------------------------------------------------------------------------------------

Song02_Segment0_Track4:
#_1AA13E: #_D245o: db !VOLUME, $DC
#_1AA140: #_D247o: db !PAN, $0C
#_1AA142: #_D249o: db !INSTR, $0B
#_1AA144: #_D24Bo: db !VIBRATO, $0E, $20, $2A
#_1AA148: #_D24Fo: db $30, $5D ; duration, params
#_1AA14A: #_D251o: db C4
#_1AA14B: #_D252o: db $10 ; duration
#_1AA14C: #_D253o: db R
#_1AA14D: #_D254o: db $08, $57 ; duration, params
#_1AA14F: #_D256o: db C4
#_1AA150: #_D257o: db $08, $59 ; duration, params
#_1AA152: #_D259o: db C4
#_1AA153: #_D25Ao: db C4
#_1AA154: #_D25Bo: db $08, $49 ; duration, params
#_1AA156: #_D25Do: db C4
#_1AA157: #_D25Eo: db !CALL_PART : dw Song02_Sub_D674 : db 2
#_1AA15B: #_D262o: db $0C, $3F ; duration, params
#_1AA15D: #_D264o: db C4
#_1AA15E: #_D265o: db $06, $59 ; duration, params
#_1AA160: #_D267o: db As3
#_1AA161: #_D268o: db $06, $5B ; duration, params
#_1AA163: #_D26Ao: db As3
#_1AA164: #_D26Bo: db $0C ; duration
#_1AA165: #_D26Co: db B3
#_1AA166: #_D26Do: db $06, $5D ; duration, params
#_1AA168: #_D26Fo: db B3
#_1AA169: #_D270o: db B3
#_1AA16A: #_D271o: db $0C, $5F ; duration, params
#_1AA16C: #_D273o: db C4
#_1AA16D: #_D274o: db $06 ; duration
#_1AA16E: #_D275o: db C4
#_1AA16F: #_D276o: db C4
#_1AA170: #_D277o: db $0C ; duration
#_1AA171: #_D278o: db Cs4
#_1AA172: #_D279o: db Cs4

;---------------------------------------------------------------------------------------------------

Song02_Segment0_Track5:
#_1AA173: #_D27Ao: db !VOLUME, $DC
#_1AA175: #_D27Co: db !INSTR, $11
#_1AA177: #_D27Eo: db !PAN, $0A
#_1AA179: #_D280o: db !VIBRATO, $08, $1E, $1E
#_1AA17D: #_D284o: db $18, $5B ; duration, params
#_1AA17F: #_D286o: db F3
#_1AA180: #_D287o: db $08, $39 ; duration, params
#_1AA182: #_D289o: db F3
#_1AA183: #_D28Ao: db F3
#_1AA184: #_D28Bo: db F3
#_1AA185: #_D28Co: db $18, $5B ; duration, params
#_1AA187: #_D28Eo: db F3
#_1AA188: #_D28Fo: db $08, $39 ; duration, params
#_1AA18A: #_D291o: db F3
#_1AA18B: #_D292o: db F3
#_1AA18C: #_D293o: db F3
#_1AA18D: #_D294o: db $18, $5B ; duration, params
#_1AA18F: #_D296o: db Ds3
#_1AA190: #_D297o: db $08, $39 ; duration, params
#_1AA192: #_D299o: db Ds3
#_1AA193: #_D29Ao: db Ds3
#_1AA194: #_D29Bo: db Ds3
#_1AA195: #_D29Co: db $18, $5B ; duration, params
#_1AA197: #_D29Eo: db Ds3
#_1AA198: #_D29Fo: db $08, $39 ; duration, params
#_1AA19A: #_D2A1o: db Ds3
#_1AA19B: #_D2A2o: db Ds3
#_1AA19C: #_D2A3o: db Ds3
#_1AA19D: #_D2A4o: db $18, $5B ; duration, params
#_1AA19F: #_D2A6o: db Cs3
#_1AA1A0: #_D2A7o: db $08, $39 ; duration, params
#_1AA1A2: #_D2A9o: db Cs3
#_1AA1A3: #_D2AAo: db Cs3
#_1AA1A4: #_D2ABo: db Cs3
#_1AA1A5: #_D2ACo: db $18, $5B ; duration, params
#_1AA1A7: #_D2AEo: db Cs3
#_1AA1A8: #_D2AFo: db $08, $39 ; duration, params
#_1AA1AA: #_D2B1o: db Cs3
#_1AA1AB: #_D2B2o: db Cs3
#_1AA1AC: #_D2B3o: db Cs3
#_1AA1AD: #_D2B4o: db $18, $59 ; duration, params
#_1AA1AF: #_D2B6o: db Ds3
#_1AA1B0: #_D2B7o: db $18, $5B ; duration, params
#_1AA1B2: #_D2B9o: db Ds3
#_1AA1B3: #_D2BAo: db $18, $5D ; duration, params
#_1AA1B5: #_D2BCo: db Ds3
#_1AA1B6: #_D2BDo: db $0C, $5F ; duration, params
#_1AA1B8: #_D2BFo: db E3
#_1AA1B9: #_D2C0o: db F3

;---------------------------------------------------------------------------------------------------

Song02_Segment0_Track6:
#_1AA1BA: #_D2C1o: db !VOLUME, $C8
#_1AA1BC: #_D2C3o: db !PAN, $0A
#_1AA1BE: #_D2C5o: db !INSTR, $13
#_1AA1C0: #_D2C7o: db !CALL_PART : dw Song02_Sub_D68C : db 3
#_1AA1C4: #_D2CBo: db !VOLUME, $FF
#_1AA1C6: #_D2CDo: db !INSTR, $0C
#_1AA1C8: #_D2CFo: db $30, $7F ; duration, params
#_1AA1CA: #_D2D1o: db E3
#_1AA1CB: #_D2D2o: db E3

;---------------------------------------------------------------------------------------------------

Song02_Segment0_Track7:
#_1AA1CC: #_D2D3o: db !VOLUME, $B4
#_1AA1CE: #_D2D5o: db !PAN, $02
#_1AA1D0: #_D2D7o: db !INSTR, $0B
#_1AA1D2: #_D2D9o: db !VIBRATO, $13, $1B, $28
#_1AA1D6: #_D2DDo: db $0A ; duration
#_1AA1D7: #_D2DEo: db R
#_1AA1D8: #_D2DFo: db $30, $5D ; duration, params
#_1AA1DA: #_D2E1o: db As4
#_1AA1DB: #_D2E2o: db $10 ; duration
#_1AA1DC: #_D2E3o: db R
#_1AA1DD: #_D2E4o: db $04, $2D ; duration, params
#_1AA1DF: #_D2E6o: db As4
#_1AA1E0: #_D2E7o: db As4
#_1AA1E1: #_D2E8o: db $08, $2B ; duration, params
#_1AA1E3: #_D2EAo: db As4
#_1AA1E4: #_D2EBo: db As4
#_1AA1E5: #_D2ECo: db $08, $2D ; duration, params
#_1AA1E7: #_D2EEo: db As4
#_1AA1E8: #_D2EFo: db !CALL_PART : dw Song02_Sub_D623 : db 2
#_1AA1EC: #_D2F3o: db $0C, $3F ; duration, params
#_1AA1EE: #_D2F5o: db As4
#_1AA1EF: #_D2F6o: db $06, $39 ; duration, params
#_1AA1F1: #_D2F8o: db F4
#_1AA1F2: #_D2F9o: db $06, $3B ; duration, params
#_1AA1F4: #_D2FBo: db F4
#_1AA1F5: #_D2FCo: db $0C, $5B ; duration, params
#_1AA1F7: #_D2FEo: db F4
#_1AA1F8: #_D2FFo: db $06, $3D ; duration, params
#_1AA1FA: #_D301o: db F4
#_1AA1FB: #_D302o: db F4
#_1AA1FC: #_D303o: db $0C, $5F ; duration, params
#_1AA1FE: #_D305o: db F4
#_1AA1FF: #_D306o: db $06, $4F ; duration, params
#_1AA201: #_D308o: db F4
#_1AA202: #_D309o: db $06, $3F ; duration, params
#_1AA204: #_D30Bo: db F4
#_1AA205: #_D30Co: db $0C, $5F ; duration, params
#_1AA207: #_D30Eo: db F4
#_1AA208: #_D30Fo: db $02 ; duration
#_1AA209: #_D310o: db F4

;---------------------------------------------------------------------------------------------------

Song02_Segment1_Track0:
#_1AA20A: #_D311o: db !CALL_PART : dw Song02_Sub_D6A0 : db 1
#_1AA20E: #_D315o: db !CALL_PART : dw Song02_Sub_D6DA : db 1
#_1AA212: #_D319o: db $0C ; duration
#_1AA213: #_D31Ao: db F5
#_1AA214: #_D31Bo: db $06, $3D ; duration, params
#_1AA216: #_D31Do: db F4
#_1AA217: #_D31Eo: db F4
#_1AA218: #_D31Fo: db $0C, $4E ; duration, params
#_1AA21A: #_D321o: db F4
#_1AA21B: #_D322o: db $06, $3E ; duration, params
#_1AA21D: #_D324o: db F4
#_1AA21E: #_D325o: db F4
#_1AA21F: #_D326o: db $0C, $4E ; duration, params
#_1AA221: #_D328o: db F4
#_1AA222: #_D329o: db $06, $3F ; duration, params
#_1AA224: #_D32Bo: db F4
#_1AA225: #_D32Co: db F4
#_1AA226: #_D32Do: db $0C, $4F ; duration, params
#_1AA228: #_D32Fo: db F4
#_1AA229: #_D330o: db F4
#_1AA22A: #_D331o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Segment1_Track1:
#_1AA22B: #_D332o: db !CALL_PART : dw Song02_Sub_D724 : db 1
#_1AA22F: #_D336o: db $18, $5D ; duration, params
#_1AA231: #_D338o: db Fs2
#_1AA232: #_D339o: db $08, $4D ; duration, params
#_1AA234: #_D33Bo: db Fs2
#_1AA235: #_D33Co: db Fs2
#_1AA236: #_D33Do: db E2
#_1AA237: #_D33Eo: db $18 ; duration
#_1AA238: #_D33Fo: db Fs2
#_1AA239: #_D340o: db Fs2
#_1AA23A: #_D341o: db $18, $5D ; duration, params
#_1AA23C: #_D343o: db Cs3
#_1AA23D: #_D344o: db $08, $4D ; duration, params
#_1AA23F: #_D346o: db Cs3
#_1AA240: #_D347o: db Cs3
#_1AA241: #_D348o: db C3
#_1AA242: #_D349o: db $18 ; duration
#_1AA243: #_D34Ao: db Cs3
#_1AA244: #_D34Bo: db Cs3
#_1AA245: #_D34Co: db $18, $5D ; duration, params
#_1AA247: #_D34Eo: db B2
#_1AA248: #_D34Fo: db $08, $4D ; duration, params
#_1AA24A: #_D351o: db B2
#_1AA24B: #_D352o: db B2
#_1AA24C: #_D353o: db As2
#_1AA24D: #_D354o: db $18 ; duration
#_1AA24E: #_D355o: db B2
#_1AA24F: #_D356o: db $08 ; duration
#_1AA250: #_D357o: db B2
#_1AA251: #_D358o: db B2
#_1AA252: #_D359o: db B2
#_1AA253: #_D35Ao: db $18, $5D ; duration, params
#_1AA255: #_D35Co: db As2
#_1AA256: #_D35Do: db $08, $4D ; duration, params
#_1AA258: #_D35Fo: db As2
#_1AA259: #_D360o: db As2
#_1AA25A: #_D361o: db Gs2
#_1AA25B: #_D362o: db $18 ; duration
#_1AA25C: #_D363o: db As2
#_1AA25D: #_D364o: db $08 ; duration
#_1AA25E: #_D365o: db As2
#_1AA25F: #_D366o: db As2
#_1AA260: #_D367o: db As2
#_1AA261: #_D368o: db $18, $5D ; duration, params
#_1AA263: #_D36Ao: db C3
#_1AA264: #_D36Bo: db $08, $4D ; duration, params
#_1AA266: #_D36Do: db C3
#_1AA267: #_D36Eo: db C3
#_1AA268: #_D36Fo: db B2
#_1AA269: #_D370o: db $18 ; duration
#_1AA26A: #_D371o: db C3
#_1AA26B: #_D372o: db $08 ; duration
#_1AA26C: #_D373o: db C3
#_1AA26D: #_D374o: db C3
#_1AA26E: #_D375o: db C3
#_1AA26F: #_D376o: db $18, $5D ; duration, params
#_1AA271: #_D378o: db F2
#_1AA272: #_D379o: db F2
#_1AA273: #_D37Ao: db F2
#_1AA274: #_D37Bo: db $0C, $4D ; duration, params
#_1AA276: #_D37Do: db G2
#_1AA277: #_D37Eo: db A2

;---------------------------------------------------------------------------------------------------

Song02_Segment1_Track2:
#_1AA278: #_D37Fo: db !VOLUME, $B4
#_1AA27A: #_D381o: db !INSTR, $13
#_1AA27C: #_D383o: db !PAN, $0A
#_1AA27E: #_D385o: db !CALL_PART : dw Song02_Sub_D73B : db 7
#_1AA282: #_D389o: db $0C, $6D ; duration, params
#_1AA284: #_D38Bo: db D4
#_1AA285: #_D38Co: db $06, $6B ; duration, params
#_1AA287: #_D38Eo: db D4
#_1AA288: #_D38Fo: db D4
#_1AA289: #_D390o: db $0C, $6D ; duration, params
#_1AA28B: #_D392o: db D4
#_1AA28C: #_D393o: db $06, $6B ; duration, params
#_1AA28E: #_D395o: db D4
#_1AA28F: #_D396o: db D4
#_1AA290: #_D397o: db $0C, $6D ; duration, params
#_1AA292: #_D399o: db D4
#_1AA293: #_D39Ao: db $06, $6B ; duration, params
#_1AA295: #_D39Co: db D4
#_1AA296: #_D39Do: db D4
#_1AA297: #_D39Eo: db $06, $69 ; duration, params
#_1AA299: #_D3A0o: db D4
#_1AA29A: #_D3A1o: db D4
#_1AA29B: #_D3A2o: db D4
#_1AA29C: #_D3A3o: db D4

;---------------------------------------------------------------------------------------------------

Song02_Segment1_Track3:
#_1AA29D: #_D3A4o: db !VOLUME, $DC
#_1AA29F: #_D3A6o: db !PAN, $12
#_1AA2A1: #_D3A8o: db !INSTR, $0A
#_1AA2A3: #_D3AAo: db !VIBRATO, $12, $1A, $28
#_1AA2A7: #_D3AEo: db !CALL_PART : dw Song02_Sub_D74D : db 1
#_1AA2AB: #_D3B2o: db F3
#_1AA2AC: #_D3B3o: db $08 ; duration
#_1AA2AD: #_D3B4o: db !TIE
#_1AA2AE: #_D3B5o: db F3
#_1AA2AF: #_D3B6o: db Ds3
#_1AA2B0: #_D3B7o: db $30 ; duration
#_1AA2B1: #_D3B8o: db F3
#_1AA2B2: #_D3B9o: db $18 ; duration
#_1AA2B3: #_D3BAo: db Fs3
#_1AA2B4: #_D3BBo: db $0C ; duration
#_1AA2B5: #_D3BCo: db Fs3
#_1AA2B6: #_D3BDo: db $06 ; duration
#_1AA2B7: #_D3BEo: db Fs3
#_1AA2B8: #_D3BFo: db Gs3
#_1AA2B9: #_D3C0o: db $30 ; duration
#_1AA2BA: #_D3C1o: db As3
#_1AA2BB: #_D3C2o: db $18 ; duration
#_1AA2BC: #_D3C3o: db F3
#_1AA2BD: #_D3C4o: db $0C ; duration
#_1AA2BE: #_D3C5o: db F3
#_1AA2BF: #_D3C6o: db $06 ; duration
#_1AA2C0: #_D3C7o: db F3
#_1AA2C1: #_D3C8o: db Fs3
#_1AA2C2: #_D3C9o: db $30 ; duration
#_1AA2C3: #_D3CAo: db Gs3
#_1AA2C4: #_D3CBo: db !CALL_PART : dw Song02_Sub_D76A : db 1

;---------------------------------------------------------------------------------------------------

Song02_Segment1_Track4:
#_1AA2C8: #_D3CFo: db !VOLUME, $C8
#_1AA2CA: #_D3D1o: db !PAN, $0A
#_1AA2CC: #_D3D3o: db !INSTR, $02
#_1AA2CE: #_D3D5o: db !CALL_PART : dw Song02_Sub_D77E : db 1
#_1AA2D2: #_D3D9o: db R
#_1AA2D3: #_D3DAo: db R
#_1AA2D4: #_D3DBo: db R
#_1AA2D5: #_D3DCo: db $30, $7F ; duration, params
#_1AA2D7: #_D3DEo: db F1
#_1AA2D8: #_D3DFo: db $18 ; duration
#_1AA2D9: #_D3E0o: db F1
#_1AA2DA: #_D3E1o: db F1

;---------------------------------------------------------------------------------------------------

Song02_Segment1_Track5:
#_1AA2DB: #_D3E2o: db !VOLUME, $E6
#_1AA2DD: #_D3E4o: db !PAN, $0A
#_1AA2DF: #_D3E6o: db !INSTR, $0B
#_1AA2E1: #_D3E8o: db !VIBRATO, $13, $19, $28
#_1AA2E5: #_D3ECo: db !TUNE, $14
#_1AA2E7: #_D3EEo: db !CALL_PART : dw Song02_Sub_D784 : db 1
#_1AA2EB: #_D3F2o: db $30, $6D ; duration, params
#_1AA2ED: #_D3F4o: db Cs5
#_1AA2EE: #_D3F5o: db $10 ; duration
#_1AA2EF: #_D3F6o: db R
#_1AA2F0: #_D3F7o: db $08 ; duration
#_1AA2F1: #_D3F8o: db Cs5
#_1AA2F2: #_D3F9o: db $08, $5D ; duration, params
#_1AA2F4: #_D3FBo: db Cs5
#_1AA2F5: #_D3FCo: db $08, $6D ; duration, params
#_1AA2F7: #_D3FEo: db C5
#_1AA2F8: #_D3FFo: db $08, $4D ; duration, params
#_1AA2FA: #_D401o: db As4
#_1AA2FB: #_D402o: db C5
#_1AA2FC: #_D403o: db R
#_1AA2FD: #_D404o: db As4
#_1AA2FE: #_D405o: db $30, $6D ; duration, params
#_1AA300: #_D407o: db Gs4
#_1AA301: #_D408o: db $18, $4D ; duration, params
#_1AA303: #_D40Ao: db Gs4
#_1AA304: #_D40Bo: db $0C, $2D ; duration, params
#_1AA306: #_D40Do: db Fs4
#_1AA307: #_D40Eo: db $06, $5D ; duration, params
#_1AA309: #_D410o: db Fs4
#_1AA30A: #_D411o: db $06, $2D ; duration, params
#_1AA30C: #_D413o: db Gs4
#_1AA30D: #_D414o: db $30, $4D ; duration, params
#_1AA30F: #_D416o: db As4
#_1AA310: #_D417o: db $0C, $6D ; duration, params
#_1AA312: #_D419o: db Gs4
#_1AA313: #_D41Ao: db $0C, $4D ; duration, params
#_1AA315: #_D41Co: db Fs4
#_1AA316: #_D41Do: db $0C, $2D ; duration, params
#_1AA318: #_D41Fo: db F4
#_1AA319: #_D420o: db $06, $5D ; duration, params
#_1AA31B: #_D422o: db F4
#_1AA31C: #_D423o: db $06, $2D ; duration, params
#_1AA31E: #_D425o: db Fs4
#_1AA31F: #_D426o: db $30, $4D ; duration, params
#_1AA321: #_D428o: db Gs4
#_1AA322: #_D429o: db $0C, $6D ; duration, params
#_1AA324: #_D42Bo: db Fs4
#_1AA325: #_D42Co: db $0C, $4D ; duration, params
#_1AA327: #_D42Eo: db F4
#_1AA328: #_D42Fo: db $0C, $2D ; duration, params
#_1AA32A: #_D431o: db E4
#_1AA32B: #_D432o: db $06 ; duration
#_1AA32C: #_D433o: db E4
#_1AA32D: #_D434o: db F4
#_1AA32E: #_D435o: db $30, $6D ; duration, params
#_1AA330: #_D437o: db G4
#_1AA331: #_D438o: db $18 ; duration
#_1AA332: #_D439o: db As4
#_1AA333: #_D43Ao: db $0C ; duration
#_1AA334: #_D43Bo: db A4
#_1AA335: #_D43Co: db $06, $4D ; duration, params
#_1AA337: #_D43Eo: db A3
#_1AA338: #_D43Fo: db A3
#_1AA339: #_D440o: db $0C, $4E ; duration, params
#_1AA33B: #_D442o: db A3
#_1AA33C: #_D443o: db $06 ; duration
#_1AA33D: #_D444o: db A3
#_1AA33E: #_D445o: db A3
#_1AA33F: #_D446o: db $0C ; duration
#_1AA340: #_D447o: db A3
#_1AA341: #_D448o: db $06, $4F ; duration, params
#_1AA343: #_D44Ao: db A3
#_1AA344: #_D44Bo: db A3
#_1AA345: #_D44Co: db $0C ; duration
#_1AA346: #_D44Do: db A3
#_1AA347: #_D44Eo: db A3

;---------------------------------------------------------------------------------------------------

Song02_Segment1_Track7:
#_1AA348: #_D44Fo: db !VOLUME, $78
#_1AA34A: #_D451o: db !PAN, $02
#_1AA34C: #_D453o: db !INSTR, $0B
#_1AA34E: #_D455o: db !VIBRATO, $11, $1A, $27
#_1AA352: #_D459o: db !TUNE, $1E
#_1AA354: #_D45Bo: db !CALL_PART : dw Song02_Sub_D7A8 : db 1
#_1AA358: #_D45Fo: db !CALL_PART : dw Song02_Sub_D6DA : db 1
#_1AA35C: #_D463o: db $0C ; duration
#_1AA35D: #_D464o: db F5
#_1AA35E: #_D465o: db $06, $4D ; duration, params
#_1AA360: #_D467o: db F4
#_1AA361: #_D468o: db F4
#_1AA362: #_D469o: db $0C, $4E ; duration, params
#_1AA364: #_D46Bo: db F4
#_1AA365: #_D46Co: db $06 ; duration
#_1AA366: #_D46Do: db F4
#_1AA367: #_D46Eo: db F4
#_1AA368: #_D46Fo: db $0C ; duration
#_1AA369: #_D470o: db F4
#_1AA36A: #_D471o: db $06, $4F ; duration, params
#_1AA36C: #_D473o: db F4
#_1AA36D: #_D474o: db F4
#_1AA36E: #_D475o: db $0C ; duration
#_1AA36F: #_D476o: db F4
#_1AA370: #_D477o: db $03 ; duration
#_1AA371: #_D478o: db F4

;---------------------------------------------------------------------------------------------------

Song02_Segment2_Track0:
#_1AA372: #_D479o: db !CALL_PART : dw Song02_Sub_D6A0 : db 1
#_1AA376: #_D47Do: db !CALL_PART : dw Song02_Sub_D7CE : db 1
#_1AA37A: #_D481o: db $0C ; duration
#_1AA37B: #_D482o: db F5
#_1AA37C: #_D483o: db $06, $3D ; duration, params
#_1AA37E: #_D485o: db F4
#_1AA37F: #_D486o: db F4
#_1AA380: #_D487o: db $0C, $4E ; duration, params
#_1AA382: #_D489o: db F4
#_1AA383: #_D48Ao: db $06, $3E ; duration, params
#_1AA385: #_D48Co: db F4
#_1AA386: #_D48Do: db F4
#_1AA387: #_D48Eo: db $0C, $4E ; duration, params
#_1AA389: #_D490o: db F4
#_1AA38A: #_D491o: db $06, $3F ; duration, params
#_1AA38C: #_D493o: db F4
#_1AA38D: #_D494o: db F4
#_1AA38E: #_D495o: db $0C, $4F ; duration, params
#_1AA390: #_D497o: db F4
#_1AA391: #_D498o: db F4
#_1AA392: #_D499o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Segment2_Track1:
#_1AA393: #_D49Ao: db !CALL_PART : dw Song02_Sub_D724 : db 1
#_1AA397: #_D49Eo: db Fs2
#_1AA398: #_D49Fo: db $08 ; duration
#_1AA399: #_D4A0o: db Fs2
#_1AA39A: #_D4A1o: db Fs2
#_1AA39B: #_D4A2o: db E2
#_1AA39C: #_D4A3o: db $18 ; duration
#_1AA39D: #_D4A4o: db Fs2
#_1AA39E: #_D4A5o: db Fs2
#_1AA39F: #_D4A6o: db F2
#_1AA3A0: #_D4A7o: db $08 ; duration
#_1AA3A1: #_D4A8o: db F2
#_1AA3A2: #_D4A9o: db F2
#_1AA3A3: #_D4AAo: db Ds2
#_1AA3A4: #_D4ABo: db $18 ; duration
#_1AA3A5: #_D4ACo: db F2
#_1AA3A6: #_D4ADo: db F2
#_1AA3A7: #_D4AEo: db !CALL_PART : dw Song02_Sub_D806 : db 2
#_1AA3AB: #_D4B2o: db B2
#_1AA3AC: #_D4B3o: db $08 ; duration
#_1AA3AD: #_D4B4o: db B2
#_1AA3AE: #_D4B5o: db B2
#_1AA3AF: #_D4B6o: db As2
#_1AA3B0: #_D4B7o: db $18 ; duration
#_1AA3B1: #_D4B8o: db B2
#_1AA3B2: #_D4B9o: db $08 ; duration
#_1AA3B3: #_D4BAo: db B2
#_1AA3B4: #_D4BBo: db B2
#_1AA3B5: #_D4BCo: db B2
#_1AA3B6: #_D4BDo: db $18 ; duration
#_1AA3B7: #_D4BEo: db As2
#_1AA3B8: #_D4BFo: db $08 ; duration
#_1AA3B9: #_D4C0o: db As2
#_1AA3BA: #_D4C1o: db As2
#_1AA3BB: #_D4C2o: db Gs2
#_1AA3BC: #_D4C3o: db $18 ; duration
#_1AA3BD: #_D4C4o: db As2
#_1AA3BE: #_D4C5o: db $08 ; duration
#_1AA3BF: #_D4C6o: db As2
#_1AA3C0: #_D4C7o: db As2
#_1AA3C1: #_D4C8o: db As2
#_1AA3C2: #_D4C9o: db $18 ; duration
#_1AA3C3: #_D4CAo: db C3
#_1AA3C4: #_D4CBo: db $08 ; duration
#_1AA3C5: #_D4CCo: db C3
#_1AA3C6: #_D4CDo: db C3
#_1AA3C7: #_D4CEo: db B2
#_1AA3C8: #_D4CFo: db $18 ; duration
#_1AA3C9: #_D4D0o: db C3
#_1AA3CA: #_D4D1o: db $08 ; duration
#_1AA3CB: #_D4D2o: db C3
#_1AA3CC: #_D4D3o: db C3
#_1AA3CD: #_D4D4o: db C3
#_1AA3CE: #_D4D5o: db $18 ; duration
#_1AA3CF: #_D4D6o: db F2
#_1AA3D0: #_D4D7o: db F2
#_1AA3D1: #_D4D8o: db F2
#_1AA3D2: #_D4D9o: db $0C ; duration
#_1AA3D3: #_D4DAo: db G2
#_1AA3D4: #_D4DBo: db A2

;---------------------------------------------------------------------------------------------------

Song02_Segment2_Track2:
#_1AA3D5: #_D4DCo: db !CALL_PART : dw Song02_Sub_D73B : db 4
#_1AA3D9: #_D4E0o: db !CALL_PART : dw Song02_Sub_D81C : db 2
#_1AA3DD: #_D4E4o: db !CALL_PART : dw Song02_Sub_D73B : db 3
#_1AA3E1: #_D4E8o: db $0C, $6D ; duration, params
#_1AA3E3: #_D4EAo: db D4
#_1AA3E4: #_D4EBo: db $06, $6B ; duration, params
#_1AA3E6: #_D4EDo: db D4
#_1AA3E7: #_D4EEo: db D4
#_1AA3E8: #_D4EFo: db $0C, $6D ; duration, params
#_1AA3EA: #_D4F1o: db D4
#_1AA3EB: #_D4F2o: db $06, $6B ; duration, params
#_1AA3ED: #_D4F4o: db D4
#_1AA3EE: #_D4F5o: db D4
#_1AA3EF: #_D4F6o: db $0C, $6D ; duration, params
#_1AA3F1: #_D4F8o: db D4
#_1AA3F2: #_D4F9o: db $06, $6B ; duration, params
#_1AA3F4: #_D4FBo: db D4
#_1AA3F5: #_D4FCo: db D4
#_1AA3F6: #_D4FDo: db $06, $69 ; duration, params
#_1AA3F8: #_D4FFo: db D4
#_1AA3F9: #_D500o: db D4
#_1AA3FA: #_D501o: db D4
#_1AA3FB: #_D502o: db D4

;---------------------------------------------------------------------------------------------------

Song02_Segment2_Track3:
#_1AA3FC: #_D503o: db !PAN, $12
#_1AA3FE: #_D505o: db !INSTR, $0A
#_1AA400: #_D507o: db !VIBRATO, $12, $1A, $28
#_1AA404: #_D50Bo: db !CALL_PART : dw Song02_Sub_D74D : db 1
#_1AA408: #_D50Fo: db $30 ; duration
#_1AA409: #_D510o: db F3
#_1AA40A: #_D511o: db A3
#_1AA40B: #_D512o: db !CALL_PART : dw Song02_Sub_D850 : db 2
#_1AA40F: #_D516o: db $18 ; duration
#_1AA410: #_D517o: db Fs3
#_1AA411: #_D518o: db $0C ; duration
#_1AA412: #_D519o: db Fs3
#_1AA413: #_D51Ao: db $06 ; duration
#_1AA414: #_D51Bo: db Fs3
#_1AA415: #_D51Co: db F3
#_1AA416: #_D51Do: db $30 ; duration
#_1AA417: #_D51Eo: db Fs3
#_1AA418: #_D51Fo: db $18 ; duration
#_1AA419: #_D520o: db F3
#_1AA41A: #_D521o: db $0C ; duration
#_1AA41B: #_D522o: db F3
#_1AA41C: #_D523o: db $06 ; duration
#_1AA41D: #_D524o: db F3
#_1AA41E: #_D525o: db Ds3
#_1AA41F: #_D526o: db $30 ; duration
#_1AA420: #_D527o: db F3
#_1AA421: #_D528o: db !CALL_PART : dw Song02_Sub_D76A : db 1

;---------------------------------------------------------------------------------------------------

Song02_Segment2_Track4:
#_1AA425: #_D52Co: db !VOLUME, $DC
#_1AA427: #_D52Eo: db !PAN, $10
#_1AA429: #_D530o: db !INSTR, $0A
#_1AA42B: #_D532o: db !VIBRATO, $13, $19, $26
#_1AA42F: #_D536o: db !CALL_PART : dw Song02_Sub_D77E : db 1
#_1AA433: #_D53Ao: db $18, $7B ; duration, params
#_1AA435: #_D53Co: db As3
#_1AA436: #_D53Do: db E4
#_1AA437: #_D53Eo: db $30 ; duration
#_1AA438: #_D53Fo: db G4
#_1AA439: #_D540o: db C4
#_1AA43A: #_D541o: db A3
#_1AA43B: #_D542o: db $18 ; duration
#_1AA43C: #_D543o: db As3
#_1AA43D: #_D544o: db E4
#_1AA43E: #_D545o: db $30 ; duration
#_1AA43F: #_D546o: db G4
#_1AA440: #_D547o: db C4
#_1AA441: #_D548o: db A3
#_1AA442: #_D549o: db !CALL_PART : dw Song02_Sub_D77E : db 1

;---------------------------------------------------------------------------------------------------

Song02_Segment2_Track5:
#_1AA446: #_D54Do: db !VOLUME, $E6
#_1AA448: #_D54Fo: db !INSTR, $0B
#_1AA44A: #_D551o: db !CALL_PART : dw Song02_Sub_D784 : db 1
#_1AA44E: #_D555o: db $48, $5B ; duration, params
#_1AA450: #_D557o: db Cs5
#_1AA451: #_D558o: db $18 ; duration
#_1AA452: #_D559o: db E5
#_1AA453: #_D55Ao: db $0C ; duration
#_1AA454: #_D55Bo: db Ds5
#_1AA455: #_D55Co: db R
#_1AA456: #_D55Do: db $30 ; duration
#_1AA457: #_D55Eo: db C5
#_1AA458: #_D55Fo: db $18 ; duration
#_1AA459: #_D560o: db A4
#_1AA45A: #_D561o: db $48 ; duration
#_1AA45B: #_D562o: db As4
#_1AA45C: #_D563o: db $18 ; duration
#_1AA45D: #_D564o: db Cs5
#_1AA45E: #_D565o: db $0C ; duration
#_1AA45F: #_D566o: db C5
#_1AA460: #_D567o: db R
#_1AA461: #_D568o: db $30 ; duration
#_1AA462: #_D569o: db A4
#_1AA463: #_D56Ao: db $18 ; duration
#_1AA464: #_D56Bo: db A4
#_1AA465: #_D56Co: db $48 ; duration
#_1AA466: #_D56Do: db As4
#_1AA467: #_D56Eo: db $18 ; duration
#_1AA468: #_D56Fo: db Cs5
#_1AA469: #_D570o: db $0C ; duration
#_1AA46A: #_D571o: db C5
#_1AA46B: #_D572o: db R
#_1AA46C: #_D573o: db $30 ; duration
#_1AA46D: #_D574o: db A4
#_1AA46E: #_D575o: db $18 ; duration
#_1AA46F: #_D576o: db F4
#_1AA470: #_D577o: db $48 ; duration
#_1AA471: #_D578o: db Fs4
#_1AA472: #_D579o: db $18 ; duration
#_1AA473: #_D57Ao: db B4
#_1AA474: #_D57Bo: db $0C ; duration
#_1AA475: #_D57Co: db As4
#_1AA476: #_D57Do: db R
#_1AA477: #_D57Eo: db $30 ; duration
#_1AA478: #_D57Fo: db F4
#_1AA479: #_D580o: db $18 ; duration
#_1AA47A: #_D581o: db Cs4
#_1AA47B: #_D582o: db $0C, $2B ; duration, params
#_1AA47D: #_D584o: db E4
#_1AA47E: #_D585o: db $06 ; duration
#_1AA47F: #_D586o: db E4
#_1AA480: #_D587o: db F4
#_1AA481: #_D588o: db $30, $6D ; duration, params
#_1AA483: #_D58Ao: db G4
#_1AA484: #_D58Bo: db $18 ; duration
#_1AA485: #_D58Co: db As4
#_1AA486: #_D58Do: db $0C ; duration
#_1AA487: #_D58Eo: db A4
#_1AA488: #_D58Fo: db $06, $4D ; duration, params
#_1AA48A: #_D591o: db A3
#_1AA48B: #_D592o: db A3
#_1AA48C: #_D593o: db $0C, $4E ; duration, params
#_1AA48E: #_D595o: db A3
#_1AA48F: #_D596o: db $06 ; duration
#_1AA490: #_D597o: db A3
#_1AA491: #_D598o: db A3
#_1AA492: #_D599o: db $0C ; duration
#_1AA493: #_D59Ao: db A3
#_1AA494: #_D59Bo: db $06, $4F ; duration, params
#_1AA496: #_D59Do: db A3
#_1AA497: #_D59Eo: db A3
#_1AA498: #_D59Fo: db $0C ; duration
#_1AA499: #_D5A0o: db A3
#_1AA49A: #_D5A1o: db A3

;---------------------------------------------------------------------------------------------------

Song02_Segment2_Track6:
#_1AA49B: #_D5A2o: db !VOLUME, $A0
#_1AA49D: #_D5A4o: db !INSTR, $13
#_1AA49F: #_D5A6o: db !PAN, $0B
#_1AA4A1: #_D5A8o: db !CALL_PART : dw Song02_Sub_D77E : db 1
#_1AA4A5: #_D5ACo: db $03, $7D ; duration, params
#_1AA4A7: #_D5AEo: db D3
#_1AA4A8: #_D5AFo: db $06, $78 ; duration, params
#_1AA4AA: #_D5B1o: db D3
#_1AA4AB: #_D5B2o: db $06, $77 ; duration, params
#_1AA4AD: #_D5B4o: db D3
#_1AA4AE: #_D5B5o: db $06, $78 ; duration, params
#_1AA4B0: #_D5B7o: db D3
#_1AA4B1: #_D5B8o: db $06, $7A ; duration, params
#_1AA4B3: #_D5BAo: db D3
#_1AA4B4: #_D5BBo: db $06, $79 ; duration, params
#_1AA4B6: #_D5BDo: db D3
#_1AA4B7: #_D5BEo: db $06, $7A ; duration, params
#_1AA4B9: #_D5C0o: db D3
#_1AA4BA: #_D5C1o: db $06, $7C ; duration, params
#_1AA4BC: #_D5C3o: db D3
#_1AA4BD: #_D5C4o: db $03 ; duration
#_1AA4BE: #_D5C5o: db D3
#_1AA4BF: #_D5C6o: db !INSTR, $0C
#_1AA4C1: #_D5C8o: db !VOLUME, $FA
#_1AA4C3: #_D5CAo: db $30, $7F ; duration, params
#_1AA4C5: #_D5CCo: db E3
#_1AA4C6: #_D5CDo: db !CALL_PART : dw Song02_Sub_D858 : db 1
#_1AA4CA: #_D5D1o: db !INSTR, $13
#_1AA4CC: #_D5D3o: db !VOLUME, $A0
#_1AA4CE: #_D5D5o: db $03, $7D ; duration, params
#_1AA4D0: #_D5D7o: db D3
#_1AA4D1: #_D5D8o: db $06, $78 ; duration, params
#_1AA4D3: #_D5DAo: db D3
#_1AA4D4: #_D5DBo: db $06, $77 ; duration, params
#_1AA4D6: #_D5DDo: db D3
#_1AA4D7: #_D5DEo: db $06, $78 ; duration, params
#_1AA4D9: #_D5E0o: db D3
#_1AA4DA: #_D5E1o: db $06, $7A ; duration, params
#_1AA4DC: #_D5E3o: db D3
#_1AA4DD: #_D5E4o: db $06, $79 ; duration, params
#_1AA4DF: #_D5E6o: db D3
#_1AA4E0: #_D5E7o: db $06, $7A ; duration, params
#_1AA4E2: #_D5E9o: db D3
#_1AA4E3: #_D5EAo: db $06, $7C ; duration, params
#_1AA4E5: #_D5ECo: db D3
#_1AA4E6: #_D5EDo: db $03, $7B ; duration, params
#_1AA4E8: #_D5EFo: db D3
#_1AA4E9: #_D5F0o: db !INSTR, $0C
#_1AA4EB: #_D5F2o: db !VOLUME, $FA
#_1AA4ED: #_D5F4o: db $30, $7F ; duration, params
#_1AA4EF: #_D5F6o: db E3
#_1AA4F0: #_D5F7o: db !CALL_PART : dw Song02_Sub_D858 : db 1
#_1AA4F4: #_D5FBo: db !CALL_PART : dw Song02_Sub_D865 : db 1
#_1AA4F8: #_D5FFo: db $30 ; duration
#_1AA4F9: #_D600o: db F1
#_1AA4FA: #_D601o: db $18 ; duration
#_1AA4FB: #_D602o: db F1
#_1AA4FC: #_D603o: db F1

;---------------------------------------------------------------------------------------------------

Song02_Segment2_Track7:
#_1AA4FD: #_D604o: db !CALL_PART : dw Song02_Sub_D7A8 : db 1
#_1AA501: #_D608o: db !CALL_PART : dw Song02_Sub_D7CE : db 1
#_1AA505: #_D60Co: db $0C ; duration
#_1AA506: #_D60Do: db F5
#_1AA507: #_D60Eo: db $06, $4D ; duration, params
#_1AA509: #_D610o: db F4
#_1AA50A: #_D611o: db F4
#_1AA50B: #_D612o: db $0C, $4E ; duration, params
#_1AA50D: #_D614o: db F4
#_1AA50E: #_D615o: db $06 ; duration
#_1AA50F: #_D616o: db F4
#_1AA510: #_D617o: db F4
#_1AA511: #_D618o: db $0C ; duration
#_1AA512: #_D619o: db F4
#_1AA513: #_D61Ao: db $06, $4F ; duration, params
#_1AA515: #_D61Co: db F4
#_1AA516: #_D61Do: db F4
#_1AA517: #_D61Eo: db $0C ; duration
#_1AA518: #_D61Fo: db F4
#_1AA519: #_D620o: db $03 ; duration
#_1AA51A: #_D621o: db F4
#_1AA51B: #_D622o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D623:
#_1AA51C: #_D623o: db $08, $5F ; duration, params
#_1AA51E: #_D625o: db As4
#_1AA51F: #_D626o: db R
#_1AA520: #_D627o: db $08, $59 ; duration, params
#_1AA522: #_D629o: db Gs4
#_1AA523: #_D62Ao: db $18, $5D ; duration, params
#_1AA525: #_D62Co: db As4
#_1AA526: #_D62Do: db $10, $3D ; duration, params
#_1AA528: #_D62Fo: db !TIE
#_1AA529: #_D630o: db $04, $2D ; duration, params
#_1AA52B: #_D632o: db As4
#_1AA52C: #_D633o: db As4
#_1AA52D: #_D634o: db $08, $2B ; duration, params
#_1AA52F: #_D636o: db As4
#_1AA530: #_D637o: db As4
#_1AA531: #_D638o: db $08, $2D ; duration, params
#_1AA533: #_D63Ao: db As4
#_1AA534: #_D63Bo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D63C:
#_1AA535: #_D63Co: db $06 ; duration
#_1AA536: #_D63Do: db D4
#_1AA537: #_D63Eo: db $06, $75 ; duration, params
#_1AA539: #_D640o: db D4
#_1AA53A: #_D641o: db $06, $78 ; duration, params
#_1AA53C: #_D643o: db D4
#_1AA53D: #_D644o: db $06, $77 ; duration, params
#_1AA53F: #_D646o: db D4
#_1AA540: #_D647o: db $06, $7A ; duration, params
#_1AA542: #_D649o: db D4
#_1AA543: #_D64Ao: db $06, $79 ; duration, params
#_1AA545: #_D64Co: db D4
#_1AA546: #_D64Do: db $06, $7C ; duration, params
#_1AA548: #_D64Fo: db D4
#_1AA549: #_D650o: db $06, $7B ; duration, params
#_1AA54B: #_D652o: db D4
#_1AA54C: #_D653o: db $18, $7C ; duration, params
#_1AA54E: #_D655o: db D4
#_1AA54F: #_D656o: db $08, $79 ; duration, params
#_1AA551: #_D658o: db D4
#_1AA552: #_D659o: db D4
#_1AA553: #_D65Ao: db D4
#_1AA554: #_D65Bo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D65C:
#_1AA555: #_D65Co: db $08, $5F ; duration, params
#_1AA557: #_D65Eo: db F4
#_1AA558: #_D65Fo: db R
#_1AA559: #_D660o: db $08, $59 ; duration, params
#_1AA55B: #_D662o: db F4
#_1AA55C: #_D663o: db $18, $5D ; duration, params
#_1AA55E: #_D665o: db F4
#_1AA55F: #_D666o: db $10, $37 ; duration, params
#_1AA561: #_D668o: db !TIE
#_1AA562: #_D669o: db $08, $57 ; duration, params
#_1AA564: #_D66Bo: db F4
#_1AA565: #_D66Co: db $08, $59 ; duration, params
#_1AA567: #_D66Eo: db F4
#_1AA568: #_D66Fo: db F4
#_1AA569: #_D670o: db $08, $49 ; duration, params
#_1AA56B: #_D672o: db F4
#_1AA56C: #_D673o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D674:
#_1AA56D: #_D674o: db $08, $5F ; duration, params
#_1AA56F: #_D676o: db C4
#_1AA570: #_D677o: db R
#_1AA571: #_D678o: db $08, $59 ; duration, params
#_1AA573: #_D67Ao: db C4
#_1AA574: #_D67Bo: db $18, $5D ; duration, params
#_1AA576: #_D67Do: db C4
#_1AA577: #_D67Eo: db $10, $37 ; duration, params
#_1AA579: #_D680o: db !TIE
#_1AA57A: #_D681o: db $08, $57 ; duration, params
#_1AA57C: #_D683o: db C4
#_1AA57D: #_D684o: db $08, $59 ; duration, params
#_1AA57F: #_D686o: db C4
#_1AA580: #_D687o: db C4
#_1AA581: #_D688o: db $08, $49 ; duration, params
#_1AA583: #_D68Ao: db C4
#_1AA584: #_D68Bo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D68C:
#_1AA585: #_D68Co: db $03, $79 ; duration, params
#_1AA587: #_D68Eo: db D4
#_1AA588: #_D68Fo: db $06, $77 ; duration, params
#_1AA58A: #_D691o: db D4
#_1AA58B: #_D692o: db $06, $75 ; duration, params
#_1AA58D: #_D694o: db D4
#_1AA58E: #_D695o: db $06, $76 ; duration, params
#_1AA590: #_D697o: db D4
#_1AA591: #_D698o: db $06, $77 ; duration, params
#_1AA593: #_D69Ao: db D4
#_1AA594: #_D69Bo: db $06, $78 ; duration, params
#_1AA596: #_D69Do: db D4
#_1AA597: #_D69Eo: db $06, $79 ; duration, params
#_1AA599: #_D6A0o: db D4
#_1AA59A: #_D6A1o: db $06, $7A ; duration, params
#_1AA59C: #_D6A3o: db D4
#_1AA59D: #_D6A4o: db $06, $7B ; duration, params
#_1AA59F: #_D6A6o: db D4
#_1AA5A0: #_D6A7o: db $2D ; duration
#_1AA5A1: #_D6A8o: db R
#_1AA5A2: #_D6A9o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D6A0:
#_1AA5A3: #_D6AAo: db !VOLUME, $FA
#_1AA5A5: #_D6ACo: db !PAN, $0A
#_1AA5A7: #_D6AEo: db !INSTR, $0B
#_1AA5A9: #_D6B0o: db !VIBRATO, $12, $1C, $26
#_1AA5AD: #_D6B4o: db $0C, $4D ; duration, params
#_1AA5AF: #_D6B6o: db As4
#_1AA5B0: #_D6B7o: db R
#_1AA5B1: #_D6B8o: db $2A, $6D ; duration, params
#_1AA5B3: #_D6BAo: db F4
#_1AA5B4: #_D6BBo: db $06, $4D ; duration, params
#_1AA5B6: #_D6BDo: db As4
#_1AA5B7: #_D6BEo: db $06, $5D ; duration, params
#_1AA5B9: #_D6C0o: db As4
#_1AA5BA: #_D6C1o: db $06, $4D ; duration, params
#_1AA5BC: #_D6C3o: db C5
#_1AA5BD: #_D6C4o: db $06, $5D ; duration, params
#_1AA5BF: #_D6C6o: db D5
#_1AA5C0: #_D6C7o: db $06, $4D ; duration, params
#_1AA5C2: #_D6C9o: db Ds5
#_1AA5C3: #_D6CAo: db $30, $6D ; duration, params
#_1AA5C5: #_D6CCo: db F5
#_1AA5C6: #_D6CDo: db $0C ; duration
#_1AA5C7: #_D6CEo: db R
#_1AA5C8: #_D6CFo: db $0C, $2D ; duration, params
#_1AA5CA: #_D6D1o: db F5
#_1AA5CB: #_D6D2o: db $08, $7D ; duration, params
#_1AA5CD: #_D6D4o: db F5
#_1AA5CE: #_D6D5o: db $08, $5D ; duration, params
#_1AA5D0: #_D6D7o: db Fs5
#_1AA5D1: #_D6D8o: db Gs5
#_1AA5D2: #_D6D9o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D6DA:
#_1AA5D3: #_D6DAo: db $30, $6D ; duration, params
#_1AA5D5: #_D6DCo: db As5
#_1AA5D6: #_D6DDo: db $10 ; duration
#_1AA5D7: #_D6DEo: db R
#_1AA5D8: #_D6DFo: db $08, $2D ; duration, params
#_1AA5DA: #_D6E1o: db As5
#_1AA5DB: #_D6E2o: db $08, $5D ; duration, params
#_1AA5DD: #_D6E4o: db As5
#_1AA5DE: #_D6E5o: db $08, $6D ; duration, params
#_1AA5E0: #_D6E7o: db Gs5
#_1AA5E1: #_D6E8o: db $08, $4D ; duration, params
#_1AA5E3: #_D6EAo: db Fs5
#_1AA5E4: #_D6EBo: db Gs5
#_1AA5E5: #_D6ECo: db R
#_1AA5E6: #_D6EDo: db Fs5
#_1AA5E7: #_D6EEo: db $30, $6D ; duration, params
#_1AA5E9: #_D6F0o: db F5
#_1AA5EA: #_D6F1o: db $18, $4D ; duration, params
#_1AA5EC: #_D6F3o: db F5
#_1AA5ED: #_D6F4o: db $0C, $2D ; duration, params
#_1AA5EF: #_D6F6o: db Ds5
#_1AA5F0: #_D6F7o: db $06, $5D ; duration, params
#_1AA5F2: #_D6F9o: db Ds5
#_1AA5F3: #_D6FAo: db $06, $2D ; duration, params
#_1AA5F5: #_D6FCo: db F5
#_1AA5F6: #_D6FDo: db $30, $4D ; duration, params
#_1AA5F8: #_D6FFo: db Fs5
#_1AA5F9: #_D700o: db $0C, $6D ; duration, params
#_1AA5FB: #_D702o: db F5
#_1AA5FC: #_D703o: db $0C, $4D ; duration, params
#_1AA5FE: #_D705o: db Ds5
#_1AA5FF: #_D706o: db $0C, $2D ; duration, params
#_1AA601: #_D708o: db Cs5
#_1AA602: #_D709o: db $06, $5D ; duration, params
#_1AA604: #_D70Bo: db Cs5
#_1AA605: #_D70Co: db $06, $2D ; duration, params
#_1AA607: #_D70Eo: db Ds5
#_1AA608: #_D70Fo: db $30, $4D ; duration, params
#_1AA60A: #_D711o: db F5
#_1AA60B: #_D712o: db $0C, $6D ; duration, params
#_1AA60D: #_D714o: db Ds5
#_1AA60E: #_D715o: db $0C, $4D ; duration, params
#_1AA610: #_D717o: db Cs5
#_1AA611: #_D718o: db $0C, $2D ; duration, params
#_1AA613: #_D71Ao: db C5
#_1AA614: #_D71Bo: db $06 ; duration
#_1AA615: #_D71Co: db C5
#_1AA616: #_D71Do: db D5
#_1AA617: #_D71Eo: db $30, $6D ; duration, params
#_1AA619: #_D720o: db E5
#_1AA61A: #_D721o: db $18 ; duration
#_1AA61B: #_D722o: db G5
#_1AA61C: #_D723o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D724:
#_1AA61D: #_D724o: db $18, $5D ; duration, params
#_1AA61F: #_D726o: db As2
#_1AA620: #_D727o: db $08, $4D ; duration, params
#_1AA622: #_D729o: db As2
#_1AA623: #_D72Ao: db As2
#_1AA624: #_D72Bo: db Gs2
#_1AA625: #_D72Co: db $18 ; duration
#_1AA626: #_D72Do: db As2
#_1AA627: #_D72Eo: db As2
#_1AA628: #_D72Fo: db $18, $5D ; duration, params
#_1AA62A: #_D731o: db Gs2
#_1AA62B: #_D732o: db $08, $4D ; duration, params
#_1AA62D: #_D734o: db Gs2
#_1AA62E: #_D735o: db Gs2
#_1AA62F: #_D736o: db Fs2
#_1AA630: #_D737o: db $18 ; duration
#_1AA631: #_D738o: db Gs2
#_1AA632: #_D739o: db Gs2
#_1AA633: #_D73Ao: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D73B:
#_1AA634: #_D73Bo: db $18, $6D ; duration, params
#_1AA636: #_D73Do: db D4
#_1AA637: #_D73Eo: db $08, $6B ; duration, params
#_1AA639: #_D740o: db D4
#_1AA63A: #_D741o: db D4
#_1AA63B: #_D742o: db D4
#_1AA63C: #_D743o: db $0C ; duration
#_1AA63D: #_D744o: db D4
#_1AA63E: #_D745o: db D4
#_1AA63F: #_D746o: db $06, $79 ; duration, params
#_1AA641: #_D748o: db D4
#_1AA642: #_D749o: db D4
#_1AA643: #_D74Ao: db D4
#_1AA644: #_D74Bo: db D4
#_1AA645: #_D74Co: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D74D:
#_1AA646: #_D74Do: db $18 ; duration
#_1AA647: #_D74Eo: db R
#_1AA648: #_D74Fo: db $18, $7B ; duration, params
#_1AA64A: #_D751o: db As3
#_1AA64B: #_D752o: db $30 ; duration
#_1AA64C: #_D753o: db F3
#_1AA64D: #_D754o: db $12 ; duration
#_1AA64E: #_D755o: db !TIE
#_1AA64F: #_D756o: db $06 ; duration
#_1AA650: #_D757o: db As3
#_1AA651: #_D758o: db As3
#_1AA652: #_D759o: db C4
#_1AA653: #_D75Ao: db D4
#_1AA654: #_D75Bo: db Ds4
#_1AA655: #_D75Co: db $30 ; duration
#_1AA656: #_D75Do: db F4
#_1AA657: #_D75Eo: db $12 ; duration
#_1AA658: #_D75Fo: db !TIE
#_1AA659: #_D760o: db $06 ; duration
#_1AA65A: #_D761o: db Fs3
#_1AA65B: #_D762o: db Fs3
#_1AA65C: #_D763o: db Gs3
#_1AA65D: #_D764o: db As3
#_1AA65E: #_D765o: db C4
#_1AA65F: #_D766o: db $18 ; duration
#_1AA660: #_D767o: db Cs4
#_1AA661: #_D768o: db Fs3
#_1AA662: #_D769o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D76A:
#_1AA663: #_D76Ao: db $18 ; duration
#_1AA664: #_D76Bo: db E3
#_1AA665: #_D76Co: db $0C ; duration
#_1AA666: #_D76Do: db E3
#_1AA667: #_D76Eo: db $06 ; duration
#_1AA668: #_D76Fo: db E3
#_1AA669: #_D770o: db F3
#_1AA66A: #_D771o: db $0C ; duration
#_1AA66B: #_D772o: db G3
#_1AA66C: #_D773o: db $06 ; duration
#_1AA66D: #_D774o: db G3
#_1AA66E: #_D775o: db A3
#_1AA66F: #_D776o: db $0C ; duration
#_1AA670: #_D777o: db As3
#_1AA671: #_D778o: db C4
#_1AA672: #_D779o: db $30, $77 ; duration, params
#_1AA674: #_D77Bo: db A3
#_1AA675: #_D77Co: db A3
#_1AA676: #_D77Do: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D77E:
#_1AA677: #_D77Eo: db $60 ; duration
#_1AA678: #_D77Fo: db R
#_1AA679: #_D780o: db R
#_1AA67A: #_D781o: db R
#_1AA67B: #_D782o: db R
#_1AA67C: #_D783o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D784:
#_1AA67D: #_D784o: db $0C, $4D ; duration, params
#_1AA67F: #_D786o: db D4
#_1AA680: #_D787o: db R
#_1AA681: #_D788o: db $2A, $6D ; duration, params
#_1AA683: #_D78Ao: db As3
#_1AA684: #_D78Bo: db $06, $4D ; duration, params
#_1AA686: #_D78Do: db D4
#_1AA687: #_D78Eo: db $06, $5D ; duration, params
#_1AA689: #_D790o: db D4
#_1AA68A: #_D791o: db $06, $4D ; duration, params
#_1AA68C: #_D793o: db Ds4
#_1AA68D: #_D794o: db $06, $5D ; duration, params
#_1AA68F: #_D796o: db F4
#_1AA690: #_D797o: db $06, $4D ; duration, params
#_1AA692: #_D799o: db G4
#_1AA693: #_D79Ao: db $30, $6D ; duration, params
#_1AA695: #_D79Co: db Gs4
#_1AA696: #_D79Do: db $0C ; duration
#_1AA697: #_D79Eo: db R
#_1AA698: #_D79Fo: db $0C, $2D ; duration, params
#_1AA69A: #_D7A1o: db Gs4
#_1AA69B: #_D7A2o: db $08, $5D ; duration, params
#_1AA69D: #_D7A4o: db Gs4
#_1AA69E: #_D7A5o: db As4
#_1AA69F: #_D7A6o: db C5
#_1AA6A0: #_D7A7o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D7A8:
#_1AA6A1: #_D7A8o: db $09 ; duration
#_1AA6A2: #_D7A9o: db R
#_1AA6A3: #_D7AAo: db $0C, $4D ; duration, params
#_1AA6A5: #_D7ACo: db As4
#_1AA6A6: #_D7ADo: db R
#_1AA6A7: #_D7AEo: db $2A, $6D ; duration, params
#_1AA6A9: #_D7B0o: db F4
#_1AA6AA: #_D7B1o: db $06, $4D ; duration, params
#_1AA6AC: #_D7B3o: db As4
#_1AA6AD: #_D7B4o: db $06, $5D ; duration, params
#_1AA6AF: #_D7B6o: db As4
#_1AA6B0: #_D7B7o: db $06, $4D ; duration, params
#_1AA6B2: #_D7B9o: db C5
#_1AA6B3: #_D7BAo: db $06, $5D ; duration, params
#_1AA6B5: #_D7BCo: db D5
#_1AA6B6: #_D7BDo: db $06, $4D ; duration, params
#_1AA6B8: #_D7BFo: db Ds5
#_1AA6B9: #_D7C0o: db $30, $6D ; duration, params
#_1AA6BB: #_D7C2o: db F5
#_1AA6BC: #_D7C3o: db $0C ; duration
#_1AA6BD: #_D7C4o: db R
#_1AA6BE: #_D7C5o: db $0C, $2D ; duration, params
#_1AA6C0: #_D7C7o: db F5
#_1AA6C1: #_D7C8o: db $08, $5D ; duration, params
#_1AA6C3: #_D7CAo: db F5
#_1AA6C4: #_D7CBo: db Fs5
#_1AA6C5: #_D7CCo: db Gs5
#_1AA6C6: #_D7CDo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D7CE:
#_1AA6C7: #_D7CEo: db $48 ; duration
#_1AA6C8: #_D7CFo: db As5
#_1AA6C9: #_D7D0o: db $18 ; duration
#_1AA6CA: #_D7D1o: db Cs6
#_1AA6CB: #_D7D2o: db $0C ; duration
#_1AA6CC: #_D7D3o: db C6
#_1AA6CD: #_D7D4o: db R
#_1AA6CE: #_D7D5o: db $30 ; duration
#_1AA6CF: #_D7D6o: db A5
#_1AA6D0: #_D7D7o: db $18 ; duration
#_1AA6D1: #_D7D8o: db F5
#_1AA6D2: #_D7D9o: db $48 ; duration
#_1AA6D3: #_D7DAo: db Fs5
#_1AA6D4: #_D7DBo: db $18 ; duration
#_1AA6D5: #_D7DCo: db As5
#_1AA6D6: #_D7DDo: db $0C ; duration
#_1AA6D7: #_D7DEo: db A5
#_1AA6D8: #_D7DFo: db R
#_1AA6D9: #_D7E0o: db $30 ; duration
#_1AA6DA: #_D7E1o: db F5
#_1AA6DB: #_D7E2o: db $18 ; duration
#_1AA6DC: #_D7E3o: db F5
#_1AA6DD: #_D7E4o: db $48 ; duration
#_1AA6DE: #_D7E5o: db Fs5
#_1AA6DF: #_D7E6o: db $18 ; duration
#_1AA6E0: #_D7E7o: db As5
#_1AA6E1: #_D7E8o: db $0C ; duration
#_1AA6E2: #_D7E9o: db A5
#_1AA6E3: #_D7EAo: db R
#_1AA6E4: #_D7EBo: db $30 ; duration
#_1AA6E5: #_D7ECo: db F5
#_1AA6E6: #_D7EDo: db $18 ; duration
#_1AA6E7: #_D7EEo: db D5
#_1AA6E8: #_D7EFo: db $48 ; duration
#_1AA6E9: #_D7F0o: db Ds5
#_1AA6EA: #_D7F1o: db $18 ; duration
#_1AA6EB: #_D7F2o: db Fs5
#_1AA6EC: #_D7F3o: db $0C ; duration
#_1AA6ED: #_D7F4o: db F5
#_1AA6EE: #_D7F5o: db R
#_1AA6EF: #_D7F6o: db $30 ; duration
#_1AA6F0: #_D7F7o: db Cs5
#_1AA6F1: #_D7F8o: db $18 ; duration
#_1AA6F2: #_D7F9o: db As4
#_1AA6F3: #_D7FAo: db $0C, $2B ; duration, params
#_1AA6F5: #_D7FCo: db C5
#_1AA6F6: #_D7FDo: db $06 ; duration
#_1AA6F7: #_D7FEo: db C5
#_1AA6F8: #_D7FFo: db D5
#_1AA6F9: #_D800o: db $30, $6D ; duration, params
#_1AA6FB: #_D802o: db E5
#_1AA6FC: #_D803o: db $18 ; duration
#_1AA6FD: #_D804o: db G5
#_1AA6FE: #_D805o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D806:
#_1AA6FF: #_D806o: db $08, $4F ; duration, params
#_1AA701: #_D808o: db E2
#_1AA702: #_D809o: db As2
#_1AA703: #_D80Ao: db Cs3
#_1AA704: #_D80Bo: db E3
#_1AA705: #_D80Co: db As3
#_1AA706: #_D80Do: db Cs4
#_1AA707: #_D80Eo: db $18 ; duration
#_1AA708: #_D80Fo: db E4
#_1AA709: #_D810o: db R
#_1AA70A: #_D811o: db $18, $4D ; duration, params
#_1AA70C: #_D813o: db F4
#_1AA70D: #_D814o: db $08 ; duration
#_1AA70E: #_D815o: db F2
#_1AA70F: #_D816o: db F2
#_1AA710: #_D817o: db F2
#_1AA711: #_D818o: db $18 ; duration
#_1AA712: #_D819o: db F2
#_1AA713: #_D81Ao: db R
#_1AA714: #_D81Bo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D81C:
#_1AA715: #_D81Co: db $06, $6D ; duration, params
#_1AA717: #_D81Eo: db D4
#_1AA718: #_D81Fo: db $06, $67 ; duration, params
#_1AA71A: #_D821o: db D4
#_1AA71B: #_D822o: db $06, $69 ; duration, params
#_1AA71D: #_D824o: db D4
#_1AA71E: #_D825o: db $06, $68 ; duration, params
#_1AA720: #_D827o: db D4
#_1AA721: #_D828o: db $06, $69 ; duration, params
#_1AA723: #_D82Ao: db D4
#_1AA724: #_D82Bo: db $06, $6B ; duration, params
#_1AA726: #_D82Do: db D4
#_1AA727: #_D82Eo: db $06, $6A ; duration, params
#_1AA729: #_D830o: db D4
#_1AA72A: #_D831o: db $06, $6B ; duration, params
#_1AA72C: #_D833o: db D4
#_1AA72D: #_D834o: db $0C, $6D ; duration, params
#_1AA72F: #_D836o: db D4
#_1AA730: #_D837o: db D4
#_1AA731: #_D838o: db $06, $79 ; duration, params
#_1AA733: #_D83Ao: db D4
#_1AA734: #_D83Bo: db D4
#_1AA735: #_D83Co: db D4
#_1AA736: #_D83Do: db D4
#_1AA737: #_D83Eo: db $18, $6D ; duration, params
#_1AA739: #_D840o: db D4
#_1AA73A: #_D841o: db $08, $6B ; duration, params
#_1AA73C: #_D843o: db D4
#_1AA73D: #_D844o: db D4
#_1AA73E: #_D845o: db D4
#_1AA73F: #_D846o: db $0C ; duration
#_1AA740: #_D847o: db D4
#_1AA741: #_D848o: db D4
#_1AA742: #_D849o: db $06, $79 ; duration, params
#_1AA744: #_D84Bo: db D4
#_1AA745: #_D84Co: db D4
#_1AA746: #_D84Do: db D4
#_1AA747: #_D84Eo: db D4
#_1AA748: #_D84Fo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D850:
#_1AA749: #_D850o: db $18 ; duration
#_1AA74A: #_D851o: db E3
#_1AA74B: #_D852o: db $48 ; duration
#_1AA74C: #_D853o: db As3
#_1AA74D: #_D854o: db $30 ; duration
#_1AA74E: #_D855o: db A3
#_1AA74F: #_D856o: db F3
#_1AA750: #_D857o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D858:
#_1AA751: #_D858o: db !INSTR, $02
#_1AA753: #_D85Ao: db !VOLUME, $C8
#_1AA755: #_D85Co: db $18 ; duration
#_1AA756: #_D85Do: db R
#_1AA757: #_D85Eo: db $08 ; duration
#_1AA758: #_D85Fo: db F1
#_1AA759: #_D860o: db F1
#_1AA75A: #_D861o: db F1
#_1AA75B: #_D862o: db $30 ; duration
#_1AA75C: #_D863o: db F1
#_1AA75D: #_D864o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song02_Sub_D865:
#_1AA75E: #_D865o: db $60 ; duration
#_1AA75F: #_D866o: db R
#_1AA760: #_D867o: db R
#_1AA761: #_D868o: db R
#_1AA762: #_D869o: db !PART_END

;===================================================================================================

Song03_LegendsTheme_Rain:
#_1AA763: #_D86Ao: dw Song03_Segment0

Song03_Loop:
#_1AA765: #_D86Co: dw Song03_Segment1
#_1AA767: #_D86Eo: dw Song03_Segment1
#_1AA769: #_D870o: dw Song03_Segment2
#_1AA76B: #_D872o: dw !SONG_LOOP, Song03_Loop
#_1AA76F: #_D876o: dw $0000

Song03_Unused0:
#_1AA771: #_D878o: dw Song03_Unused0_Track0
#_1AA773: #_D87Ao: dw Song03_Unused0_Track1
#_1AA775: #_D87Co: dw Song03_Unused0_Track2
#_1AA777: #_D87Eo: dw Song03_Unused0_Track3
#_1AA779: #_D880o: dw Song03_Unused0_Track4
#_1AA77B: #_D882o: dw Song03_Unused0_Track5
#_1AA77D: #_D884o: dw $0000
#_1AA77F: #_D886o: dw $0000

Song03_Segment0:
#_1AA781: #_D888o: dw Song03_Segment0_Track0
#_1AA783: #_D88Ao: dw Song03_Segment0_Track1
#_1AA785: #_D88Co: dw Song03_Segment0_Track2
#_1AA787: #_D88Eo: dw Song03_Segment0_Track3
#_1AA789: #_D890o: dw $0000
#_1AA78B: #_D892o: dw $0000
#_1AA78D: #_D894o: dw $0000
#_1AA78F: #_D896o: dw $0000

Song03_Segment1:
#_1AA791: #_D898o: dw Song03_Segment1_Track0
#_1AA793: #_D89Ao: dw Song03_Segment1_Track1
#_1AA795: #_D89Co: dw Song03_Segment1_Track2
#_1AA797: #_D89Eo: dw Song03_Segment1_Track3
#_1AA799: #_D8A0o: dw Song03_Segment1_Track4
#_1AA79B: #_D8A2o: dw Song03_Segment1_Track5
#_1AA79D: #_D8A4o: dw $0000
#_1AA79F: #_D8A6o: dw $0000

Song03_Unused1:
#_1AA7A1: #_D8A8o: dw Song03_Unused1_Track0
#_1AA7A3: #_D8AAo: dw Song03_Unused1_Track1
#_1AA7A5: #_D8ACo: dw Song03_Unused1_Track2
#_1AA7A7: #_D8AEo: dw Song03_Unused1_Track3
#_1AA7A9: #_D8B0o: dw Song03_Unused1_Track4
#_1AA7AB: #_D8B2o: dw Song03_Unused1_Track5
#_1AA7AD: #_D8B4o: dw $0000
#_1AA7AF: #_D8B6o: dw $0000

Song03_Unused2:
#_1AA7B1: #_D8B8o: dw Song03_Unused2_Track0
#_1AA7B3: #_D8BAo: dw Song03_Unused2_Track1
#_1AA7B5: #_D8BCo: dw Song03_Unused2_Track2
#_1AA7B7: #_D8BEo: dw Song03_Unused2_Track3
#_1AA7B9: #_D8C0o: dw Song03_Unused2_Track4
#_1AA7BB: #_D8C2o: dw Song03_Unused2_Track5
#_1AA7BD: #_D8C4o: dw $0000
#_1AA7BF: #_D8C6o: dw $0000

Song03_Segment2:
#_1AA7C1: #_D8C8o: dw Song03_Segment2_Track0
#_1AA7C3: #_D8CAo: dw Song03_Segment2_Track1
#_1AA7C5: #_D8CCo: dw Song03_Segment2_Track2
#_1AA7C7: #_D8CEo: dw Song03_Segment2_Track3
#_1AA7C9: #_D8D0o: dw Song03_Segment2_Track4
#_1AA7CB: #_D8D2o: dw Song03_Segment2_Track5
#_1AA7CD: #_D8D4o: dw $0000
#_1AA7CF: #_D8D6o: dw $0000

;---------------------------------------------------------------------------------------------------

Song03_Unused0_Track0:
#_1AA7D1: #_D8D8o: db $18 ; duration
#_1AA7D2: #_D8D9o: db R
#_1AA7D3: #_D8DAo: db $48, $7B ; duration, params
#_1AA7D5: #_D8DCo: db B4
#_1AA7D6: #_D8DDo: db $18 ; duration
#_1AA7D7: #_D8DEo: db R
#_1AA7D8: #_D8DFo: db $48 ; duration
#_1AA7D9: #_D8E0o: db C5
#_1AA7DA: #_D8E1o: db $18 ; duration
#_1AA7DB: #_D8E2o: db R
#_1AA7DC: #_D8E3o: db $48 ; duration
#_1AA7DD: #_D8E4o: db Cs5
#_1AA7DE: #_D8E5o: db $18 ; duration
#_1AA7DF: #_D8E6o: db R
#_1AA7E0: #_D8E7o: db $48 ; duration
#_1AA7E1: #_D8E8o: db D5
#_1AA7E2: #_D8E9o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song03_Unused0_Track1:
#_1AA7E3: #_D8EAo: db $18 ; duration
#_1AA7E4: #_D8EBo: db R
#_1AA7E5: #_D8ECo: db $48, $7B ; duration, params
#_1AA7E7: #_D8EEo: db Fs4
#_1AA7E8: #_D8EFo: db $18 ; duration
#_1AA7E9: #_D8F0o: db R
#_1AA7EA: #_D8F1o: db $48 ; duration
#_1AA7EB: #_D8F2o: db G4
#_1AA7EC: #_D8F3o: db $18 ; duration
#_1AA7ED: #_D8F4o: db R
#_1AA7EE: #_D8F5o: db $48 ; duration
#_1AA7EF: #_D8F6o: db Gs4
#_1AA7F0: #_D8F7o: db $18 ; duration
#_1AA7F1: #_D8F8o: db R
#_1AA7F2: #_D8F9o: db $48 ; duration
#_1AA7F3: #_D8FAo: db A4

;---------------------------------------------------------------------------------------------------

Song03_Unused0_Track2:
#_1AA7F4: #_D8FBo: db $0C, $7D ; duration, params
#_1AA7F6: #_D8FDo: db E2
#_1AA7F7: #_D8FEo: db B2
#_1AA7F8: #_D8FFo: db $48 ; duration
#_1AA7F9: #_D900o: db E3
#_1AA7FA: #_D901o: db !CALL_PART : dw Song03_Sub_DC20 : db 3

;---------------------------------------------------------------------------------------------------

Song03_Unused0_Track3:
#_1AA7FE: #_D905o: db $18 ; duration
#_1AA7FF: #_D906o: db R
#_1AA800: #_D907o: db $48, $7B ; duration, params
#_1AA802: #_D909o: db E4
#_1AA803: #_D90Ao: db $18 ; duration
#_1AA804: #_D90Bo: db R
#_1AA805: #_D90Co: db $48 ; duration
#_1AA806: #_D90Do: db F4
#_1AA807: #_D90Eo: db $18 ; duration
#_1AA808: #_D90Fo: db R
#_1AA809: #_D910o: db $48 ; duration
#_1AA80A: #_D911o: db Fs4
#_1AA80B: #_D912o: db $18 ; duration
#_1AA80C: #_D913o: db R
#_1AA80D: #_D914o: db $48 ; duration
#_1AA80E: #_D915o: db G4

;---------------------------------------------------------------------------------------------------

Song03_Unused0_Track4:
#_1AA80F: #_D916o: db !CALL_PART : dw Song03_Sub_DC26 : db 1
#_1AA813: #_D91Ao: db D5
#_1AA814: #_D91Bo: db D5
#_1AA815: #_D91Co: db D5
#_1AA816: #_D91Do: db D5
#_1AA817: #_D91Eo: db D5
#_1AA818: #_D91Fo: db D5
#_1AA819: #_D920o: db D5
#_1AA81A: #_D921o: db D5
#_1AA81B: #_D922o: db D5
#_1AA81C: #_D923o: db D5
#_1AA81D: #_D924o: db D5
#_1AA81E: #_D925o: db D5
#_1AA81F: #_D926o: db D5
#_1AA820: #_D927o: db D5
#_1AA821: #_D928o: db D5
#_1AA822: #_D929o: db D5

;---------------------------------------------------------------------------------------------------

Song03_Unused0_Track5:
#_1AA823: #_D92Ao: db !CALL_PART : dw Song03_Sub_DC59 : db 1
#_1AA827: #_D92Eo: db A4
#_1AA828: #_D92Fo: db A4
#_1AA829: #_D930o: db A4
#_1AA82A: #_D931o: db A4
#_1AA82B: #_D932o: db A4
#_1AA82C: #_D933o: db A4
#_1AA82D: #_D934o: db A4
#_1AA82E: #_D935o: db A4
#_1AA82F: #_D936o: db A4
#_1AA830: #_D937o: db A4
#_1AA831: #_D938o: db A4
#_1AA832: #_D939o: db A4
#_1AA833: #_D93Ao: db A4
#_1AA834: #_D93Bo: db A4
#_1AA835: #_D93Co: db A4
#_1AA836: #_D93Do: db A4

;---------------------------------------------------------------------------------------------------

Song03_Segment0_Track0:
#_1AA837: #_D93Eo: db !SET_PERC, $18
#_1AA839: #_D940o: db !MASTER_VOLUME, $C8
#_1AA83B: #_D942o: db !TEMPO, $1D
#_1AA83D: #_D944o: db !ECHO_CONFIG, $FF, $00, $00
#_1AA841: #_D948o: db !ECHO_FILTER, $02, $1E, $02
#_1AA845: #_D94Co: db !ECHO_GRAD, $1E, $28, $28
#_1AA849: #_D950o: db !INSTR, $0A
#_1AA84B: #_D952o: db !VOLUME, $C8
#_1AA84D: #_D954o: db !VIBRATO, $14, $19, $1E
#_1AA851: #_D958o: db $18 ; duration
#_1AA852: #_D959o: db R
#_1AA853: #_D95Ao: db $48, $7B ; duration, params
#_1AA855: #_D95Co: db G4
#_1AA856: #_D95Do: db $18 ; duration
#_1AA857: #_D95Eo: db R
#_1AA858: #_D95Fo: db $48 ; duration
#_1AA859: #_D960o: db Gs4
#_1AA85A: #_D961o: db $18 ; duration
#_1AA85B: #_D962o: db R
#_1AA85C: #_D963o: db $48 ; duration
#_1AA85D: #_D964o: db A4
#_1AA85E: #_D965o: db $18 ; duration
#_1AA85F: #_D966o: db R
#_1AA860: #_D967o: db $48 ; duration
#_1AA861: #_D968o: db As4
#_1AA862: #_D969o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song03_Segment0_Track1:
#_1AA863: #_D96Ao: db !INSTR, $0A
#_1AA865: #_D96Co: db !VOLUME, $C8
#_1AA867: #_D96Eo: db !VIBRATO, $14, $19, $1E
#_1AA86B: #_D972o: db $18 ; duration
#_1AA86C: #_D973o: db R
#_1AA86D: #_D974o: db $48, $7B ; duration, params
#_1AA86F: #_D976o: db D4
#_1AA870: #_D977o: db $18 ; duration
#_1AA871: #_D978o: db R
#_1AA872: #_D979o: db $48 ; duration
#_1AA873: #_D97Ao: db Ds4
#_1AA874: #_D97Bo: db $18 ; duration
#_1AA875: #_D97Co: db R
#_1AA876: #_D97Do: db $48 ; duration
#_1AA877: #_D97Eo: db E4
#_1AA878: #_D97Fo: db $18 ; duration
#_1AA879: #_D980o: db R
#_1AA87A: #_D981o: db $48 ; duration
#_1AA87B: #_D982o: db F4

;---------------------------------------------------------------------------------------------------

Song03_Segment0_Track2:
#_1AA87C: #_D983o: db !CALL_PART : dw Song03_Sub_DC8C : db 1
#_1AA880: #_D987o: db !CALL_PART : dw Song03_Sub_DC9B : db 3

;---------------------------------------------------------------------------------------------------

Song03_Segment0_Track3:
#_1AA884: #_D98Bo: db !INSTR, $0A
#_1AA886: #_D98Do: db !VOLUME, $C8
#_1AA888: #_D98Fo: db !VIBRATO, $14, $19, $1E
#_1AA88C: #_D993o: db $18 ; duration
#_1AA88D: #_D994o: db R
#_1AA88E: #_D995o: db $48, $7B ; duration, params
#_1AA890: #_D997o: db C4
#_1AA891: #_D998o: db $18 ; duration
#_1AA892: #_D999o: db R
#_1AA893: #_D99Ao: db $48 ; duration
#_1AA894: #_D99Bo: db Cs4
#_1AA895: #_D99Co: db $18 ; duration
#_1AA896: #_D99Do: db R
#_1AA897: #_D99Eo: db $48 ; duration
#_1AA898: #_D99Fo: db D4
#_1AA899: #_D9A0o: db $18 ; duration
#_1AA89A: #_D9A1o: db R
#_1AA89B: #_D9A2o: db $48 ; duration
#_1AA89C: #_D9A3o: db Ds4

;---------------------------------------------------------------------------------------------------

Song03_Segment1_Track0:
#_1AA89D: #_D9A4o: db !INSTR, $12
#_1AA89F: #_D9A6o: db !VOLUME, $C8
#_1AA8A1: #_D9A8o: db !VIBRATO, $14, $19, $1E
#_1AA8A5: #_D9ACo: db $18 ; duration
#_1AA8A6: #_D9ADo: db R
#_1AA8A7: #_D9AEo: db $48, $7B ; duration, params
#_1AA8A9: #_D9B0o: db G4
#_1AA8AA: #_D9B1o: db $18 ; duration
#_1AA8AB: #_D9B2o: db R
#_1AA8AC: #_D9B3o: db $48 ; duration
#_1AA8AD: #_D9B4o: db Gs4
#_1AA8AE: #_D9B5o: db $18 ; duration
#_1AA8AF: #_D9B6o: db R
#_1AA8B0: #_D9B7o: db $48 ; duration
#_1AA8B1: #_D9B8o: db A4
#_1AA8B2: #_D9B9o: db $18 ; duration
#_1AA8B3: #_D9BAo: db R
#_1AA8B4: #_D9BBo: db $48 ; duration
#_1AA8B5: #_D9BCo: db As4
#_1AA8B6: #_D9BDo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song03_Segment1_Track1:
#_1AA8B7: #_D9BEo: db !INSTR, $12
#_1AA8B9: #_D9C0o: db !VOLUME, $C8
#_1AA8BB: #_D9C2o: db !VIBRATO, $14, $19, $1E
#_1AA8BF: #_D9C6o: db $18 ; duration
#_1AA8C0: #_D9C7o: db R
#_1AA8C1: #_D9C8o: db $48, $7B ; duration, params
#_1AA8C3: #_D9CAo: db D4
#_1AA8C4: #_D9CBo: db $18 ; duration
#_1AA8C5: #_D9CCo: db R
#_1AA8C6: #_D9CDo: db $48 ; duration
#_1AA8C7: #_D9CEo: db Ds4
#_1AA8C8: #_D9CFo: db $18 ; duration
#_1AA8C9: #_D9D0o: db R
#_1AA8CA: #_D9D1o: db $48 ; duration
#_1AA8CB: #_D9D2o: db E4
#_1AA8CC: #_D9D3o: db $18 ; duration
#_1AA8CD: #_D9D4o: db R
#_1AA8CE: #_D9D5o: db $48 ; duration
#_1AA8CF: #_D9D6o: db F4

;---------------------------------------------------------------------------------------------------

Song03_Segment1_Track2:
#_1AA8D0: #_D9D7o: db !CALL_PART : dw Song03_Sub_DC8C : db 1
#_1AA8D4: #_D9DBo: db !CALL_PART : dw Song03_Sub_DC9B : db 3

;---------------------------------------------------------------------------------------------------

Song03_Segment1_Track3:
#_1AA8D8: #_D9DFo: db !INSTR, $12
#_1AA8DA: #_D9E1o: db !VOLUME, $C8
#_1AA8DC: #_D9E3o: db !VIBRATO, $14, $19, $1E
#_1AA8E0: #_D9E7o: db $18 ; duration
#_1AA8E1: #_D9E8o: db R
#_1AA8E2: #_D9E9o: db $48, $7B ; duration, params
#_1AA8E4: #_D9EBo: db C4
#_1AA8E5: #_D9ECo: db $18 ; duration
#_1AA8E6: #_D9EDo: db R
#_1AA8E7: #_D9EEo: db $48 ; duration
#_1AA8E8: #_D9EFo: db Cs4
#_1AA8E9: #_D9F0o: db $18 ; duration
#_1AA8EA: #_D9F1o: db R
#_1AA8EB: #_D9F2o: db $48 ; duration
#_1AA8EC: #_D9F3o: db D4
#_1AA8ED: #_D9F4o: db $18 ; duration
#_1AA8EE: #_D9F5o: db R
#_1AA8EF: #_D9F6o: db $48 ; duration
#_1AA8F0: #_D9F7o: db Ds4

;---------------------------------------------------------------------------------------------------

Song03_Segment1_Track4:
#_1AA8F1: #_D9F8o: db !INSTR, $0A
#_1AA8F3: #_D9FAo: db !VOLUME, $C8
#_1AA8F5: #_D9FCo: db !VIBRATO, $14, $19, $1E
#_1AA8F9: #_DA00o: db $06, $7B ; duration, params
#_1AA8FB: #_DA02o: db G4
#_1AA8FC: #_DA03o: db G4
#_1AA8FD: #_DA04o: db G4
#_1AA8FE: #_DA05o: db G4
#_1AA8FF: #_DA06o: db G4
#_1AA900: #_DA07o: db G4
#_1AA901: #_DA08o: db G4
#_1AA902: #_DA09o: db G4
#_1AA903: #_DA0Ao: db G4
#_1AA904: #_DA0Bo: db G4
#_1AA905: #_DA0Co: db G4
#_1AA906: #_DA0Do: db G4
#_1AA907: #_DA0Eo: db G4
#_1AA908: #_DA0Fo: db G4
#_1AA909: #_DA10o: db G4
#_1AA90A: #_DA11o: db G4
#_1AA90B: #_DA12o: db Gs4
#_1AA90C: #_DA13o: db Gs4
#_1AA90D: #_DA14o: db Gs4
#_1AA90E: #_DA15o: db Gs4
#_1AA90F: #_DA16o: db Gs4
#_1AA910: #_DA17o: db Gs4
#_1AA911: #_DA18o: db Gs4
#_1AA912: #_DA19o: db Gs4
#_1AA913: #_DA1Ao: db Gs4
#_1AA914: #_DA1Bo: db Gs4
#_1AA915: #_DA1Co: db Gs4
#_1AA916: #_DA1Do: db Gs4
#_1AA917: #_DA1Eo: db Gs4
#_1AA918: #_DA1Fo: db Gs4
#_1AA919: #_DA20o: db Gs4
#_1AA91A: #_DA21o: db Gs4
#_1AA91B: #_DA22o: db A4
#_1AA91C: #_DA23o: db A4
#_1AA91D: #_DA24o: db A4
#_1AA91E: #_DA25o: db A4
#_1AA91F: #_DA26o: db A4
#_1AA920: #_DA27o: db A4
#_1AA921: #_DA28o: db A4
#_1AA922: #_DA29o: db A4
#_1AA923: #_DA2Ao: db A4
#_1AA924: #_DA2Bo: db A4
#_1AA925: #_DA2Co: db A4
#_1AA926: #_DA2Do: db A4
#_1AA927: #_DA2Eo: db A4
#_1AA928: #_DA2Fo: db A4
#_1AA929: #_DA30o: db A4
#_1AA92A: #_DA31o: db A4
#_1AA92B: #_DA32o: db As4
#_1AA92C: #_DA33o: db As4
#_1AA92D: #_DA34o: db As4
#_1AA92E: #_DA35o: db As4
#_1AA92F: #_DA36o: db As4
#_1AA930: #_DA37o: db As4
#_1AA931: #_DA38o: db As4
#_1AA932: #_DA39o: db As4
#_1AA933: #_DA3Ao: db As4
#_1AA934: #_DA3Bo: db As4
#_1AA935: #_DA3Co: db As4
#_1AA936: #_DA3Do: db As4
#_1AA937: #_DA3Eo: db As4
#_1AA938: #_DA3Fo: db As4
#_1AA939: #_DA40o: db As4
#_1AA93A: #_DA41o: db As4

;---------------------------------------------------------------------------------------------------

Song03_Segment1_Track5:
#_1AA93B: #_DA42o: db !INSTR, $0A
#_1AA93D: #_DA44o: db !VOLUME, $C8
#_1AA93F: #_DA46o: db !VIBRATO, $14, $19, $1E
#_1AA943: #_DA4Ao: db $06, $7B ; duration, params
#_1AA945: #_DA4Co: db D4
#_1AA946: #_DA4Do: db D4
#_1AA947: #_DA4Eo: db D4
#_1AA948: #_DA4Fo: db D4
#_1AA949: #_DA50o: db D4
#_1AA94A: #_DA51o: db D4
#_1AA94B: #_DA52o: db D4
#_1AA94C: #_DA53o: db D4
#_1AA94D: #_DA54o: db D4
#_1AA94E: #_DA55o: db D4
#_1AA94F: #_DA56o: db D4
#_1AA950: #_DA57o: db D4
#_1AA951: #_DA58o: db D4
#_1AA952: #_DA59o: db D4
#_1AA953: #_DA5Ao: db D4
#_1AA954: #_DA5Bo: db D4
#_1AA955: #_DA5Co: db Ds4
#_1AA956: #_DA5Do: db Ds4
#_1AA957: #_DA5Eo: db Ds4
#_1AA958: #_DA5Fo: db Ds4
#_1AA959: #_DA60o: db Ds4
#_1AA95A: #_DA61o: db Ds4
#_1AA95B: #_DA62o: db Ds4
#_1AA95C: #_DA63o: db Ds4
#_1AA95D: #_DA64o: db Ds4
#_1AA95E: #_DA65o: db Ds4
#_1AA95F: #_DA66o: db Ds4
#_1AA960: #_DA67o: db Ds4
#_1AA961: #_DA68o: db Ds4
#_1AA962: #_DA69o: db Ds4
#_1AA963: #_DA6Ao: db Ds4
#_1AA964: #_DA6Bo: db Ds4
#_1AA965: #_DA6Co: db E4
#_1AA966: #_DA6Do: db E4
#_1AA967: #_DA6Eo: db E4
#_1AA968: #_DA6Fo: db E4
#_1AA969: #_DA70o: db E4
#_1AA96A: #_DA71o: db E4
#_1AA96B: #_DA72o: db E4
#_1AA96C: #_DA73o: db E4
#_1AA96D: #_DA74o: db E4
#_1AA96E: #_DA75o: db E4
#_1AA96F: #_DA76o: db E4
#_1AA970: #_DA77o: db E4
#_1AA971: #_DA78o: db E4
#_1AA972: #_DA79o: db E4
#_1AA973: #_DA7Ao: db E4
#_1AA974: #_DA7Bo: db E4
#_1AA975: #_DA7Co: db F4
#_1AA976: #_DA7Do: db F4
#_1AA977: #_DA7Eo: db F4
#_1AA978: #_DA7Fo: db F4
#_1AA979: #_DA80o: db F4
#_1AA97A: #_DA81o: db F4
#_1AA97B: #_DA82o: db F4
#_1AA97C: #_DA83o: db F4
#_1AA97D: #_DA84o: db F4
#_1AA97E: #_DA85o: db F4
#_1AA97F: #_DA86o: db F4
#_1AA980: #_DA87o: db F4
#_1AA981: #_DA88o: db F4
#_1AA982: #_DA89o: db F4
#_1AA983: #_DA8Ao: db F4
#_1AA984: #_DA8Bo: db F4

;---------------------------------------------------------------------------------------------------

Song03_Unused1_Track0:
#_1AA985: #_DA8Co: db $18 ; duration
#_1AA986: #_DA8Do: db R
#_1AA987: #_DA8Eo: db $48, $7B ; duration, params
#_1AA989: #_DA90o: db Ds5
#_1AA98A: #_DA91o: db $18 ; duration
#_1AA98B: #_DA92o: db R
#_1AA98C: #_DA93o: db $48 ; duration
#_1AA98D: #_DA94o: db D5
#_1AA98E: #_DA95o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song03_Unused1_Track1:
#_1AA98F: #_DA96o: db $18 ; duration
#_1AA990: #_DA97o: db R
#_1AA991: #_DA98o: db $48, $7B ; duration, params
#_1AA993: #_DA9Ao: db As4
#_1AA994: #_DA9Bo: db $18 ; duration
#_1AA995: #_DA9Co: db R
#_1AA996: #_DA9Do: db $48 ; duration
#_1AA997: #_DA9Eo: db A4

;---------------------------------------------------------------------------------------------------

Song03_Unused1_Track2:
#_1AA998: #_DA9Fo: db $0C, $7D ; duration, params
#_1AA99A: #_DAA1o: db Gs2
#_1AA99B: #_DAA2o: db Ds3
#_1AA99C: #_DAA3o: db $48 ; duration
#_1AA99D: #_DAA4o: db Gs3
#_1AA99E: #_DAA5o: db $0C ; duration
#_1AA99F: #_DAA6o: db A2
#_1AA9A0: #_DAA7o: db E3
#_1AA9A1: #_DAA8o: db $48 ; duration
#_1AA9A2: #_DAA9o: db A3

;---------------------------------------------------------------------------------------------------

Song03_Unused1_Track3:
#_1AA9A3: #_DAAAo: db $18 ; duration
#_1AA9A4: #_DAABo: db R
#_1AA9A5: #_DAACo: db $48, $7B ; duration, params
#_1AA9A7: #_DAAEo: db Gs4
#_1AA9A8: #_DAAFo: db $18 ; duration
#_1AA9A9: #_DAB0o: db R
#_1AA9AA: #_DAB1o: db $48 ; duration
#_1AA9AB: #_DAB2o: db G4

;---------------------------------------------------------------------------------------------------

Song03_Unused1_Track4:
#_1AA9AC: #_DAB3o: db $06, $7B ; duration, params
#_1AA9AE: #_DAB5o: db Ds5
#_1AA9AF: #_DAB6o: db Ds5
#_1AA9B0: #_DAB7o: db Ds5
#_1AA9B1: #_DAB8o: db Ds5
#_1AA9B2: #_DAB9o: db Ds5
#_1AA9B3: #_DABAo: db Ds5
#_1AA9B4: #_DABBo: db Ds5
#_1AA9B5: #_DABCo: db Ds5
#_1AA9B6: #_DABDo: db Ds5
#_1AA9B7: #_DABEo: db Ds5
#_1AA9B8: #_DABFo: db Ds5
#_1AA9B9: #_DAC0o: db Ds5
#_1AA9BA: #_DAC1o: db Ds5
#_1AA9BB: #_DAC2o: db Ds5
#_1AA9BC: #_DAC3o: db Ds5
#_1AA9BD: #_DAC4o: db Ds5
#_1AA9BE: #_DAC5o: db D5
#_1AA9BF: #_DAC6o: db D5
#_1AA9C0: #_DAC7o: db D5
#_1AA9C1: #_DAC8o: db D5
#_1AA9C2: #_DAC9o: db D5
#_1AA9C3: #_DACAo: db D5
#_1AA9C4: #_DACBo: db D5
#_1AA9C5: #_DACCo: db D5
#_1AA9C6: #_DACDo: db D5
#_1AA9C7: #_DACEo: db D5
#_1AA9C8: #_DACFo: db D5
#_1AA9C9: #_DAD0o: db D5
#_1AA9CA: #_DAD1o: db D5
#_1AA9CB: #_DAD2o: db D5
#_1AA9CC: #_DAD3o: db D5
#_1AA9CD: #_DAD4o: db D5

;---------------------------------------------------------------------------------------------------

Song03_Unused1_Track5:
#_1AA9CE: #_DAD5o: db $06, $7B ; duration, params
#_1AA9D0: #_DAD7o: db As4
#_1AA9D1: #_DAD8o: db As4
#_1AA9D2: #_DAD9o: db As4
#_1AA9D3: #_DADAo: db As4
#_1AA9D4: #_DADBo: db As4
#_1AA9D5: #_DADCo: db As4
#_1AA9D6: #_DADDo: db As4
#_1AA9D7: #_DADEo: db As4
#_1AA9D8: #_DADFo: db As4
#_1AA9D9: #_DAE0o: db As4
#_1AA9DA: #_DAE1o: db As4
#_1AA9DB: #_DAE2o: db As4
#_1AA9DC: #_DAE3o: db As4
#_1AA9DD: #_DAE4o: db As4
#_1AA9DE: #_DAE5o: db As4
#_1AA9DF: #_DAE6o: db As4
#_1AA9E0: #_DAE7o: db A4
#_1AA9E1: #_DAE8o: db A4
#_1AA9E2: #_DAE9o: db A4
#_1AA9E3: #_DAEAo: db A4
#_1AA9E4: #_DAEBo: db A4
#_1AA9E5: #_DAECo: db A4
#_1AA9E6: #_DAEDo: db A4
#_1AA9E7: #_DAEEo: db A4
#_1AA9E8: #_DAEFo: db A4
#_1AA9E9: #_DAF0o: db A4
#_1AA9EA: #_DAF1o: db A4
#_1AA9EB: #_DAF2o: db A4
#_1AA9EC: #_DAF3o: db A4
#_1AA9ED: #_DAF4o: db A4
#_1AA9EE: #_DAF5o: db A4
#_1AA9EF: #_DAF6o: db A4

;---------------------------------------------------------------------------------------------------

Song03_Unused2_Track0:
#_1AA9F0: #_DAF7o: db $18 ; duration
#_1AA9F1: #_DAF8o: db R
#_1AA9F2: #_DAF9o: db $48, $7B ; duration, params
#_1AA9F4: #_DAFBo: db Ds5
#_1AA9F5: #_DAFCo: db $18 ; duration
#_1AA9F6: #_DAFDo: db R
#_1AA9F7: #_DAFEo: db $48 ; duration
#_1AA9F8: #_DAFFo: db E5
#_1AA9F9: #_DB00o: db $18 ; duration
#_1AA9FA: #_DB01o: db R
#_1AA9FB: #_DB02o: db $48 ; duration
#_1AA9FC: #_DB03o: db Ds5
#_1AA9FD: #_DB04o: db $18 ; duration
#_1AA9FE: #_DB05o: db R
#_1AA9FF: #_DB06o: db $48 ; duration
#_1AAA00: #_DB07o: db D5
#_1AAA01: #_DB08o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song03_Unused2_Track1:
#_1AAA02: #_DB09o: db $18 ; duration
#_1AAA03: #_DB0Ao: db R
#_1AAA04: #_DB0Bo: db $48, $7B ; duration, params
#_1AAA06: #_DB0Do: db As4
#_1AAA07: #_DB0Eo: db $18 ; duration
#_1AAA08: #_DB0Fo: db R
#_1AAA09: #_DB10o: db $48 ; duration
#_1AAA0A: #_DB11o: db B4
#_1AAA0B: #_DB12o: db $18 ; duration
#_1AAA0C: #_DB13o: db R
#_1AAA0D: #_DB14o: db $48 ; duration
#_1AAA0E: #_DB15o: db As4
#_1AAA0F: #_DB16o: db $18 ; duration
#_1AAA10: #_DB17o: db R
#_1AAA11: #_DB18o: db $48 ; duration
#_1AAA12: #_DB19o: db A4

;---------------------------------------------------------------------------------------------------

Song03_Unused2_Track2:
#_1AAA13: #_DB1Ao: db $0C, $7D ; duration, params
#_1AAA15: #_DB1Co: db Gs2
#_1AAA16: #_DB1Do: db Ds3
#_1AAA17: #_DB1Eo: db $48 ; duration
#_1AAA18: #_DB1Fo: db Gs3
#_1AAA19: #_DB20o: db !CALL_PART : dw Song03_Sub_DCA1 : db 3

;---------------------------------------------------------------------------------------------------

Song03_Unused2_Track3:
#_1AAA1D: #_DB24o: db $18 ; duration
#_1AAA1E: #_DB25o: db R
#_1AAA1F: #_DB26o: db $48, $7B ; duration, params
#_1AAA21: #_DB28o: db Gs4
#_1AAA22: #_DB29o: db $18 ; duration
#_1AAA23: #_DB2Ao: db R
#_1AAA24: #_DB2Bo: db $48 ; duration
#_1AAA25: #_DB2Co: db A4
#_1AAA26: #_DB2Do: db $18 ; duration
#_1AAA27: #_DB2Eo: db R
#_1AAA28: #_DB2Fo: db $48 ; duration
#_1AAA29: #_DB30o: db Gs4
#_1AAA2A: #_DB31o: db $18 ; duration
#_1AAA2B: #_DB32o: db R
#_1AAA2C: #_DB33o: db $48 ; duration
#_1AAA2D: #_DB34o: db G4

;---------------------------------------------------------------------------------------------------

Song03_Unused2_Track4:
#_1AAA2E: #_DB35o: db $06, $7B ; duration, params
#_1AAA30: #_DB37o: db Ds5
#_1AAA31: #_DB38o: db Ds5
#_1AAA32: #_DB39o: db Ds5
#_1AAA33: #_DB3Ao: db Ds5
#_1AAA34: #_DB3Bo: db Ds5
#_1AAA35: #_DB3Co: db Ds5
#_1AAA36: #_DB3Do: db Ds5
#_1AAA37: #_DB3Eo: db Ds5
#_1AAA38: #_DB3Fo: db Ds5
#_1AAA39: #_DB40o: db Ds5
#_1AAA3A: #_DB41o: db Ds5
#_1AAA3B: #_DB42o: db Ds5
#_1AAA3C: #_DB43o: db Ds5
#_1AAA3D: #_DB44o: db Ds5
#_1AAA3E: #_DB45o: db Ds5
#_1AAA3F: #_DB46o: db Ds5
#_1AAA40: #_DB47o: db E5
#_1AAA41: #_DB48o: db E5
#_1AAA42: #_DB49o: db E5
#_1AAA43: #_DB4Ao: db E5
#_1AAA44: #_DB4Bo: db E5
#_1AAA45: #_DB4Co: db E5
#_1AAA46: #_DB4Do: db E5
#_1AAA47: #_DB4Eo: db E5
#_1AAA48: #_DB4Fo: db E5
#_1AAA49: #_DB50o: db E5
#_1AAA4A: #_DB51o: db E5
#_1AAA4B: #_DB52o: db E5
#_1AAA4C: #_DB53o: db E5
#_1AAA4D: #_DB54o: db E5
#_1AAA4E: #_DB55o: db E5
#_1AAA4F: #_DB56o: db E5
#_1AAA50: #_DB57o: db Ds5
#_1AAA51: #_DB58o: db Ds5
#_1AAA52: #_DB59o: db Ds5
#_1AAA53: #_DB5Ao: db Ds5
#_1AAA54: #_DB5Bo: db Ds5
#_1AAA55: #_DB5Co: db Ds5
#_1AAA56: #_DB5Do: db Ds5
#_1AAA57: #_DB5Eo: db Ds5
#_1AAA58: #_DB5Fo: db Ds5
#_1AAA59: #_DB60o: db Ds5
#_1AAA5A: #_DB61o: db Ds5
#_1AAA5B: #_DB62o: db Ds5
#_1AAA5C: #_DB63o: db Ds5
#_1AAA5D: #_DB64o: db Ds5
#_1AAA5E: #_DB65o: db Ds5
#_1AAA5F: #_DB66o: db Ds5
#_1AAA60: #_DB67o: db D5
#_1AAA61: #_DB68o: db D5
#_1AAA62: #_DB69o: db D5
#_1AAA63: #_DB6Ao: db D5
#_1AAA64: #_DB6Bo: db D5
#_1AAA65: #_DB6Co: db D5
#_1AAA66: #_DB6Do: db D5
#_1AAA67: #_DB6Eo: db D5
#_1AAA68: #_DB6Fo: db D5
#_1AAA69: #_DB70o: db D5
#_1AAA6A: #_DB71o: db D5
#_1AAA6B: #_DB72o: db D5
#_1AAA6C: #_DB73o: db D5
#_1AAA6D: #_DB74o: db D5
#_1AAA6E: #_DB75o: db D5
#_1AAA6F: #_DB76o: db D5

;---------------------------------------------------------------------------------------------------

Song03_Unused2_Track5:
#_1AAA70: #_DB77o: db $06, $7B ; duration, params
#_1AAA72: #_DB79o: db As4
#_1AAA73: #_DB7Ao: db As4
#_1AAA74: #_DB7Bo: db As4
#_1AAA75: #_DB7Co: db As4
#_1AAA76: #_DB7Do: db As4
#_1AAA77: #_DB7Eo: db As4
#_1AAA78: #_DB7Fo: db As4
#_1AAA79: #_DB80o: db As4
#_1AAA7A: #_DB81o: db As4
#_1AAA7B: #_DB82o: db As4
#_1AAA7C: #_DB83o: db As4
#_1AAA7D: #_DB84o: db As4
#_1AAA7E: #_DB85o: db As4
#_1AAA7F: #_DB86o: db As4
#_1AAA80: #_DB87o: db As4
#_1AAA81: #_DB88o: db As4
#_1AAA82: #_DB89o: db B4
#_1AAA83: #_DB8Ao: db B4
#_1AAA84: #_DB8Bo: db B4
#_1AAA85: #_DB8Co: db B4
#_1AAA86: #_DB8Do: db B4
#_1AAA87: #_DB8Eo: db B4
#_1AAA88: #_DB8Fo: db B4
#_1AAA89: #_DB90o: db B4
#_1AAA8A: #_DB91o: db B4
#_1AAA8B: #_DB92o: db B4
#_1AAA8C: #_DB93o: db B4
#_1AAA8D: #_DB94o: db B4
#_1AAA8E: #_DB95o: db B4
#_1AAA8F: #_DB96o: db B4
#_1AAA90: #_DB97o: db B4
#_1AAA91: #_DB98o: db B4
#_1AAA92: #_DB99o: db As4
#_1AAA93: #_DB9Ao: db As4
#_1AAA94: #_DB9Bo: db As4
#_1AAA95: #_DB9Co: db As4
#_1AAA96: #_DB9Do: db As4
#_1AAA97: #_DB9Eo: db As4
#_1AAA98: #_DB9Fo: db As4
#_1AAA99: #_DBA0o: db As4
#_1AAA9A: #_DBA1o: db As4
#_1AAA9B: #_DBA2o: db As4
#_1AAA9C: #_DBA3o: db As4
#_1AAA9D: #_DBA4o: db As4
#_1AAA9E: #_DBA5o: db As4
#_1AAA9F: #_DBA6o: db As4
#_1AAAA0: #_DBA7o: db As4
#_1AAAA1: #_DBA8o: db As4
#_1AAAA2: #_DBA9o: db A4
#_1AAAA3: #_DBAAo: db A4
#_1AAAA4: #_DBABo: db A4
#_1AAAA5: #_DBACo: db A4
#_1AAAA6: #_DBADo: db A4
#_1AAAA7: #_DBAEo: db A4
#_1AAAA8: #_DBAFo: db A4
#_1AAAA9: #_DBB0o: db A4
#_1AAAAA: #_DBB1o: db A4
#_1AAAAB: #_DBB2o: db A4
#_1AAAAC: #_DBB3o: db A4
#_1AAAAD: #_DBB4o: db A4
#_1AAAAE: #_DBB5o: db A4
#_1AAAAF: #_DBB6o: db A4
#_1AAAB0: #_DBB7o: db A4
#_1AAAB1: #_DBB8o: db A4

;---------------------------------------------------------------------------------------------------

Song03_Segment2_Track0:
#_1AAAB2: #_DBB9o: db $18 ; duration
#_1AAAB3: #_DBBAo: db R
#_1AAAB4: #_DBBBo: db $48, $7B ; duration, params
#_1AAAB6: #_DBBDo: db B4
#_1AAAB7: #_DBBEo: db $18 ; duration
#_1AAAB8: #_DBBFo: db R
#_1AAAB9: #_DBC0o: db $48 ; duration
#_1AAABA: #_DBC1o: db C5
#_1AAABB: #_DBC2o: db $18 ; duration
#_1AAABC: #_DBC3o: db R
#_1AAABD: #_DBC4o: db $48 ; duration
#_1AAABE: #_DBC5o: db Cs5
#_1AAABF: #_DBC6o: db $18 ; duration
#_1AAAC0: #_DBC7o: db R
#_1AAAC1: #_DBC8o: db $48 ; duration
#_1AAAC2: #_DBC9o: db C5
#_1AAAC3: #_DBCAo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song03_Segment2_Track1:
#_1AAAC4: #_DBCBo: db $18 ; duration
#_1AAAC5: #_DBCCo: db R
#_1AAAC6: #_DBCDo: db $48, $7B ; duration, params
#_1AAAC8: #_DBCFo: db Fs4
#_1AAAC9: #_DBD0o: db $18 ; duration
#_1AAACA: #_DBD1o: db R
#_1AAACB: #_DBD2o: db $48 ; duration
#_1AAACC: #_DBD3o: db G4
#_1AAACD: #_DBD4o: db $18 ; duration
#_1AAACE: #_DBD5o: db R
#_1AAACF: #_DBD6o: db $48 ; duration
#_1AAAD0: #_DBD7o: db Gs4
#_1AAAD1: #_DBD8o: db $18 ; duration
#_1AAAD2: #_DBD9o: db R
#_1AAAD3: #_DBDAo: db $48 ; duration
#_1AAAD4: #_DBDBo: db G4

;---------------------------------------------------------------------------------------------------

Song03_Segment2_Track2:
#_1AAAD5: #_DBDCo: db $0C, $7D ; duration, params
#_1AAAD7: #_DBDEo: db E2
#_1AAAD8: #_DBDFo: db B2
#_1AAAD9: #_DBE0o: db $48 ; duration
#_1AAADA: #_DBE1o: db E3
#_1AAADB: #_DBE2o: db !CALL_PART : dw Song03_Sub_DC20 : db 3

;---------------------------------------------------------------------------------------------------

Song03_Segment2_Track3:
#_1AAADF: #_DBE6o: db $18 ; duration
#_1AAAE0: #_DBE7o: db R
#_1AAAE1: #_DBE8o: db $48, $7B ; duration, params
#_1AAAE3: #_DBEAo: db E4
#_1AAAE4: #_DBEBo: db $18 ; duration
#_1AAAE5: #_DBECo: db R
#_1AAAE6: #_DBEDo: db $48 ; duration
#_1AAAE7: #_DBEEo: db F4
#_1AAAE8: #_DBEFo: db $18 ; duration
#_1AAAE9: #_DBF0o: db R
#_1AAAEA: #_DBF1o: db $48 ; duration
#_1AAAEB: #_DBF2o: db Fs4
#_1AAAEC: #_DBF3o: db $18 ; duration
#_1AAAED: #_DBF4o: db R
#_1AAAEE: #_DBF5o: db $48 ; duration
#_1AAAEF: #_DBF6o: db F4

;---------------------------------------------------------------------------------------------------

Song03_Segment2_Track4:
#_1AAAF0: #_DBF7o: db !CALL_PART : dw Song03_Sub_DC26 : db 1
#_1AAAF4: #_DBFBo: db C5
#_1AAAF5: #_DBFCo: db C5
#_1AAAF6: #_DBFDo: db C5
#_1AAAF7: #_DBFEo: db C5
#_1AAAF8: #_DBFFo: db C5
#_1AAAF9: #_DC00o: db C5
#_1AAAFA: #_DC01o: db C5
#_1AAAFB: #_DC02o: db C5
#_1AAAFC: #_DC03o: db C5
#_1AAAFD: #_DC04o: db C5
#_1AAAFE: #_DC05o: db C5
#_1AAAFF: #_DC06o: db C5
#_1AAB00: #_DC07o: db C5
#_1AAB01: #_DC08o: db C5
#_1AAB02: #_DC09o: db C5
#_1AAB03: #_DC0Ao: db C5

;---------------------------------------------------------------------------------------------------

Song03_Segment2_Track5:
#_1AAB04: #_DC0Bo: db !CALL_PART : dw Song03_Sub_DC59 : db 1
#_1AAB08: #_DC0Fo: db G4
#_1AAB09: #_DC10o: db G4
#_1AAB0A: #_DC11o: db G4
#_1AAB0B: #_DC12o: db G4
#_1AAB0C: #_DC13o: db G4
#_1AAB0D: #_DC14o: db G4
#_1AAB0E: #_DC15o: db G4
#_1AAB0F: #_DC16o: db G4
#_1AAB10: #_DC17o: db G4
#_1AAB11: #_DC18o: db G4
#_1AAB12: #_DC19o: db G4
#_1AAB13: #_DC1Ao: db G4
#_1AAB14: #_DC1Bo: db G4
#_1AAB15: #_DC1Co: db G4
#_1AAB16: #_DC1Do: db G4
#_1AAB17: #_DC1Eo: db G4
#_1AAB18: #_DC1Fo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song03_Sub_DC20:
#_1AAB19: #_DC20o: db $0C ; duration
#_1AAB1A: #_DC21o: db E2
#_1AAB1B: #_DC22o: db B2
#_1AAB1C: #_DC23o: db $48 ; duration
#_1AAB1D: #_DC24o: db E3
#_1AAB1E: #_DC25o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song03_Sub_DC26:
#_1AAB1F: #_DC26o: db $06, $7B ; duration, params
#_1AAB21: #_DC28o: db B4
#_1AAB22: #_DC29o: db B4
#_1AAB23: #_DC2Ao: db B4
#_1AAB24: #_DC2Bo: db B4
#_1AAB25: #_DC2Co: db B4
#_1AAB26: #_DC2Do: db B4
#_1AAB27: #_DC2Eo: db B4
#_1AAB28: #_DC2Fo: db B4
#_1AAB29: #_DC30o: db B4
#_1AAB2A: #_DC31o: db B4
#_1AAB2B: #_DC32o: db B4
#_1AAB2C: #_DC33o: db B4
#_1AAB2D: #_DC34o: db B4
#_1AAB2E: #_DC35o: db B4
#_1AAB2F: #_DC36o: db B4
#_1AAB30: #_DC37o: db B4
#_1AAB31: #_DC38o: db C5
#_1AAB32: #_DC39o: db C5
#_1AAB33: #_DC3Ao: db C5
#_1AAB34: #_DC3Bo: db C5
#_1AAB35: #_DC3Co: db C5
#_1AAB36: #_DC3Do: db C5
#_1AAB37: #_DC3Eo: db C5
#_1AAB38: #_DC3Fo: db C5
#_1AAB39: #_DC40o: db C5
#_1AAB3A: #_DC41o: db C5
#_1AAB3B: #_DC42o: db C5
#_1AAB3C: #_DC43o: db C5
#_1AAB3D: #_DC44o: db C5
#_1AAB3E: #_DC45o: db C5
#_1AAB3F: #_DC46o: db C5
#_1AAB40: #_DC47o: db C5
#_1AAB41: #_DC48o: db Cs5
#_1AAB42: #_DC49o: db Cs5
#_1AAB43: #_DC4Ao: db Cs5
#_1AAB44: #_DC4Bo: db Cs5
#_1AAB45: #_DC4Co: db Cs5
#_1AAB46: #_DC4Do: db Cs5
#_1AAB47: #_DC4Eo: db Cs5
#_1AAB48: #_DC4Fo: db Cs5
#_1AAB49: #_DC50o: db Cs5
#_1AAB4A: #_DC51o: db Cs5
#_1AAB4B: #_DC52o: db Cs5
#_1AAB4C: #_DC53o: db Cs5
#_1AAB4D: #_DC54o: db Cs5
#_1AAB4E: #_DC55o: db Cs5
#_1AAB4F: #_DC56o: db Cs5
#_1AAB50: #_DC57o: db Cs5
#_1AAB51: #_DC58o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song03_Sub_DC59:
#_1AAB52: #_DC59o: db $06, $7B ; duration, params
#_1AAB54: #_DC5Bo: db Fs4
#_1AAB55: #_DC5Co: db Fs4
#_1AAB56: #_DC5Do: db Fs4
#_1AAB57: #_DC5Eo: db Fs4
#_1AAB58: #_DC5Fo: db Fs4
#_1AAB59: #_DC60o: db Fs4
#_1AAB5A: #_DC61o: db Fs4
#_1AAB5B: #_DC62o: db Fs4
#_1AAB5C: #_DC63o: db Fs4
#_1AAB5D: #_DC64o: db Fs4
#_1AAB5E: #_DC65o: db Fs4
#_1AAB5F: #_DC66o: db Fs4
#_1AAB60: #_DC67o: db Fs4
#_1AAB61: #_DC68o: db Fs4
#_1AAB62: #_DC69o: db Fs4
#_1AAB63: #_DC6Ao: db Fs4
#_1AAB64: #_DC6Bo: db G4
#_1AAB65: #_DC6Co: db G4
#_1AAB66: #_DC6Do: db G4
#_1AAB67: #_DC6Eo: db G4
#_1AAB68: #_DC6Fo: db G4
#_1AAB69: #_DC70o: db G4
#_1AAB6A: #_DC71o: db G4
#_1AAB6B: #_DC72o: db G4
#_1AAB6C: #_DC73o: db G4
#_1AAB6D: #_DC74o: db G4
#_1AAB6E: #_DC75o: db G4
#_1AAB6F: #_DC76o: db G4
#_1AAB70: #_DC77o: db G4
#_1AAB71: #_DC78o: db G4
#_1AAB72: #_DC79o: db G4
#_1AAB73: #_DC7Ao: db G4
#_1AAB74: #_DC7Bo: db Gs4
#_1AAB75: #_DC7Co: db Gs4
#_1AAB76: #_DC7Do: db Gs4
#_1AAB77: #_DC7Eo: db Gs4
#_1AAB78: #_DC7Fo: db Gs4
#_1AAB79: #_DC80o: db Gs4
#_1AAB7A: #_DC81o: db Gs4
#_1AAB7B: #_DC82o: db Gs4
#_1AAB7C: #_DC83o: db Gs4
#_1AAB7D: #_DC84o: db Gs4
#_1AAB7E: #_DC85o: db Gs4
#_1AAB7F: #_DC86o: db Gs4
#_1AAB80: #_DC87o: db Gs4
#_1AAB81: #_DC88o: db Gs4
#_1AAB82: #_DC89o: db Gs4
#_1AAB83: #_DC8Ao: db Gs4
#_1AAB84: #_DC8Bo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song03_Sub_DC8C:
#_1AAB85: #_DC8Co: db !INSTR, $0A
#_1AAB87: #_DC8Eo: db !VOLUME, $D2
#_1AAB89: #_DC90o: db !VIBRATO, $14, $19, $1E
#_1AAB8D: #_DC94o: db $0C, $7D ; duration, params
#_1AAB8F: #_DC96o: db C2
#_1AAB90: #_DC97o: db G2
#_1AAB91: #_DC98o: db $48 ; duration
#_1AAB92: #_DC99o: db C3
#_1AAB93: #_DC9Ao: db !PART_END

;---------------------------------------------------------------------------------------------------

Song03_Sub_DC9B:
#_1AAB94: #_DC9Bo: db $0C ; duration
#_1AAB95: #_DC9Co: db C2
#_1AAB96: #_DC9Do: db G2
#_1AAB97: #_DC9Eo: db $48 ; duration
#_1AAB98: #_DC9Fo: db C3
#_1AAB99: #_DCA0o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song03_Sub_DCA1:
#_1AAB9A: #_DCA1o: db $0C ; duration
#_1AAB9B: #_DCA2o: db Gs2
#_1AAB9C: #_DCA3o: db Ds3
#_1AAB9D: #_DCA4o: db $48 ; duration
#_1AAB9E: #_DCA5o: db Gs3
#_1AAB9F: #_DCA6o: db !PART_END

;===================================================================================================

Song04_BunnyTheme:
#_1AABA0: #_DCA7o: dw Song04_Segment0
#_1AABA2: #_DCA9o: dw Song04_Segment1
#_1AABA4: #_DCABo: dw Song04_Segment2
#_1AABA6: #_DCADo: dw Song04_Segment3
#_1AABA8: #_DCAFo: dw !SONG_LOOP, Song04_BunnyTheme
#_1AABAC: #_DCB3o: dw $0000

Song04_Segment1:
#_1AABAE: #_DCB5o: dw Song04_Segment1_Track0
#_1AABB0: #_DCB7o: dw Song04_Segment1_Track1
#_1AABB2: #_DCB9o: dw Song04_Segment1_Track2
#_1AABB4: #_DCBBo: dw Song04_Segment1_Track3
#_1AABB6: #_DCBDo: dw Song04_Segment1_Track4
#_1AABB8: #_DCBFo: dw $0000
#_1AABBA: #_DCC1o: dw $0000
#_1AABBC: #_DCC3o: dw $0000

Song04_Segment2:
#_1AABBE: #_DCC5o: dw Song04_Segment2_Track0
#_1AABC0: #_DCC7o: dw Song04_Segment2_Track1
#_1AABC2: #_DCC9o: dw Song04_Segment2_Track2
#_1AABC4: #_DCCBo: dw Song04_Segment2_Track3
#_1AABC6: #_DCCDo: dw Song04_Segment2_Track4
#_1AABC8: #_DCCFo: dw $0000
#_1AABCA: #_DCD1o: dw $0000
#_1AABCC: #_DCD3o: dw $0000

Song04_Segment0:
#_1AABCE: #_DCD5o: dw Song04_Segment0_Track0
#_1AABD0: #_DCD7o: dw Song04_Segment0_Track1
#_1AABD2: #_DCD9o: dw Song04_Segment0_Track2
#_1AABD4: #_DCDBo: dw $0000
#_1AABD6: #_DCDDo: dw $0000
#_1AABD8: #_DCDFo: dw $0000
#_1AABDA: #_DCE1o: dw $0000
#_1AABDC: #_DCE3o: dw $0000

Song04_Segment3:
#_1AABDE: #_DCE5o: dw Song04_Segment3_Track0
#_1AABE0: #_DCE7o: dw Song04_Segment3_Track1
#_1AABE2: #_DCE9o: dw Song04_Segment3_Track2
#_1AABE4: #_DCEBo: dw Song04_Segment3_Track3
#_1AABE6: #_DCEDo: dw Song04_Segment3_Track4
#_1AABE8: #_DCEFo: dw $0000
#_1AABEA: #_DCF1o: dw $0000
#_1AABEC: #_DCF3o: dw $0000

;---------------------------------------------------------------------------------------------------

Song04_Segment1_Track0:
#_1AABEE: #_DCF5o: db !MASTER_VOLUME, $C8
#_1AABF0: #_DCF7o: db !TEMPO, $23
#_1AABF2: #_DCF9o: db !VOLUME, $C8
#_1AABF4: #_DCFBo: db !INSTR, $12
#_1AABF6: #_DCFDo: db !VIBRATO, $14, $14, $14
#_1AABFA: #_DD01o: db !CALL_PART : dw Song04_Sub_DE4D : db 1
#_1AABFE: #_DD05o: db $24, $7D ; duration, params
#_1AAC00: #_DD07o: db A4
#_1AAC01: #_DD08o: db $3C, $5D ; duration, params
#_1AAC03: #_DD0Ao: db D4
#_1AAC04: #_DD0Bo: db $30 ; duration
#_1AAC05: #_DD0Co: db !TIE
#_1AAC06: #_DD0Do: db R
#_1AAC07: #_DD0Eo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song04_Segment1_Track1:
#_1AAC08: #_DD0Fo: db !VOLUME, $A0
#_1AAC0A: #_DD11o: db !INSTR, $12
#_1AAC0C: #_DD13o: db !VIBRATO, $0A, $1E, $0A
#_1AAC10: #_DD17o: db $0C, $3D ; duration, params
#_1AAC12: #_DD19o: db D3
#_1AAC13: #_DD1Ao: db A3
#_1AAC14: #_DD1Bo: db A3
#_1AAC15: #_DD1Co: db A3
#_1AAC16: #_DD1Do: db A3
#_1AAC17: #_DD1Eo: db A3
#_1AAC18: #_DD1Fo: db A3
#_1AAC19: #_DD20o: db A3
#_1AAC1A: #_DD21o: db !CALL_PART : dw Song04_Sub_DE63 : db 3

;---------------------------------------------------------------------------------------------------

Song04_Segment1_Track2:
#_1AAC1E: #_DD25o: db !VOLUME, $C8
#_1AAC20: #_DD27o: db !INSTR, $12
#_1AAC22: #_DD29o: db !VIBRATO, $14, $1E, $14
#_1AAC26: #_DD2Do: db !CALL_PART : dw Song04_Sub_DE6C : db 4

;---------------------------------------------------------------------------------------------------

Song04_Segment1_Track3:
#_1AAC2A: #_DD31o: db !CALL_PART : dw Song04_Sub_DE79 : db 1
#_1AAC2E: #_DD35o: db $24, $7D ; duration, params
#_1AAC30: #_DD37o: db F4
#_1AAC31: #_DD38o: db $3C, $5D ; duration, params
#_1AAC33: #_DD3Ao: db B3
#_1AAC34: #_DD3Bo: db $30 ; duration
#_1AAC35: #_DD3Co: db !TIE
#_1AAC36: #_DD3Do: db R

;---------------------------------------------------------------------------------------------------

Song04_Segment1_Track4:
#_1AAC37: #_DD3Eo: db !CALL_PART : dw Song04_Sub_DE97 : db 1
#_1AAC3B: #_DD42o: db $24, $7D ; duration, params
#_1AAC3D: #_DD44o: db E5
#_1AAC3E: #_DD45o: db $3C, $5D ; duration, params
#_1AAC40: #_DD47o: db A4
#_1AAC41: #_DD48o: db $30 ; duration
#_1AAC42: #_DD49o: db !TIE
#_1AAC43: #_DD4Ao: db R

;---------------------------------------------------------------------------------------------------

Song04_Segment2_Track0:
#_1AAC44: #_DD4Bo: db !CALL_PART : dw Song04_Sub_DEB5 : db 1
#_1AAC48: #_DD4Fo: db $24, $7D ; duration, params
#_1AAC4A: #_DD51o: db A4
#_1AAC4B: #_DD52o: db $3C, $5D ; duration, params
#_1AAC4D: #_DD54o: db D5
#_1AAC4E: #_DD55o: db $30 ; duration
#_1AAC4F: #_DD56o: db !TIE
#_1AAC50: #_DD57o: db R
#_1AAC51: #_DD58o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song04_Segment2_Track1:
#_1AAC52: #_DD59o: db !VOLUME, $A0
#_1AAC54: #_DD5Bo: db !INSTR, $12
#_1AAC56: #_DD5Do: db !VIBRATO, $0A, $1E, $0A
#_1AAC5A: #_DD61o: db $0C, $3D ; duration, params
#_1AAC5C: #_DD63o: db D3
#_1AAC5D: #_DD64o: db A3
#_1AAC5E: #_DD65o: db A3
#_1AAC5F: #_DD66o: db A3
#_1AAC60: #_DD67o: db A3
#_1AAC61: #_DD68o: db A3
#_1AAC62: #_DD69o: db A3
#_1AAC63: #_DD6Ao: db A3
#_1AAC64: #_DD6Bo: db !CALL_PART : dw Song04_Sub_DE63 : db 3

;---------------------------------------------------------------------------------------------------

Song04_Segment2_Track2:
#_1AAC68: #_DD6Fo: db !VOLUME, $C8
#_1AAC6A: #_DD71o: db !INSTR, $12
#_1AAC6C: #_DD73o: db !VIBRATO, $14, $1E, $14
#_1AAC70: #_DD77o: db !CALL_PART : dw Song04_Sub_DE6C : db 4

;---------------------------------------------------------------------------------------------------

Song04_Segment2_Track3:
#_1AAC74: #_DD7Bo: db !CALL_PART : dw Song04_Sub_DE79 : db 1
#_1AAC78: #_DD7Fo: db $24, $7D ; duration, params
#_1AAC7A: #_DD81o: db F4
#_1AAC7B: #_DD82o: db $3C, $5D ; duration, params
#_1AAC7D: #_DD84o: db B4
#_1AAC7E: #_DD85o: db $30 ; duration
#_1AAC7F: #_DD86o: db !TIE
#_1AAC80: #_DD87o: db R

;---------------------------------------------------------------------------------------------------

Song04_Segment2_Track4:
#_1AAC81: #_DD88o: db !CALL_PART : dw Song04_Sub_DE97 : db 1
#_1AAC85: #_DD8Co: db $24, $7D ; duration, params
#_1AAC87: #_DD8Eo: db E5
#_1AAC88: #_DD8Fo: db $3C, $5D ; duration, params
#_1AAC8A: #_DD91o: db A5
#_1AAC8B: #_DD92o: db $30 ; duration
#_1AAC8C: #_DD93o: db !TIE
#_1AAC8D: #_DD94o: db R

;---------------------------------------------------------------------------------------------------

Song04_Segment0_Track0:
#_1AAC8E: #_DD95o: db !SET_PERC, $17
#_1AAC90: #_DD97o: db !MASTER_VOLUME, $C8
#_1AAC92: #_DD99o: db !TEMPO, $25
#_1AAC94: #_DD9Bo: db !ECHO_CONFIG, $FF, $00, $00
#_1AAC98: #_DD9Fo: db !ECHO_FILTER, $02, $14, $02
#_1AAC9C: #_DDA3o: db !ECHO_GRAD, $28, $14, $14
#_1AACA0: #_DDA7o: db !VOLUME, $C8
#_1AACA2: #_DDA9o: db !INSTR, $12
#_1AACA4: #_DDABo: db !VIBRATO, $14, $14, $14
#_1AACA8: #_DDAFo: db $60 ; duration
#_1AACA9: #_DDB0o: db R
#_1AACAA: #_DDB1o: db R
#_1AACAB: #_DDB2o: db R
#_1AACAC: #_DDB3o: db R
#_1AACAD: #_DDB4o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song04_Segment0_Track1:
#_1AACAE: #_DDB5o: db !VOLUME, $A0
#_1AACB0: #_DDB7o: db !INSTR, $12
#_1AACB2: #_DDB9o: db !VIBRATO, $0A, $1E, $0A
#_1AACB6: #_DDBDo: db $0C, $3D ; duration, params
#_1AACB8: #_DDBFo: db D3
#_1AACB9: #_DDC0o: db A3
#_1AACBA: #_DDC1o: db A3
#_1AACBB: #_DDC2o: db A3
#_1AACBC: #_DDC3o: db A3
#_1AACBD: #_DDC4o: db A3
#_1AACBE: #_DDC5o: db A3
#_1AACBF: #_DDC6o: db A3
#_1AACC0: #_DDC7o: db !CALL_PART : dw Song04_Sub_DE63 : db 3

;---------------------------------------------------------------------------------------------------

Song04_Segment0_Track2:
#_1AACC4: #_DDCBo: db !VOLUME, $C8
#_1AACC6: #_DDCDo: db !INSTR, $12
#_1AACC8: #_DDCFo: db !VIBRATO, $14, $1E, $14
#_1AACCC: #_DDD3o: db !CALL_PART : dw Song04_Sub_DE6C : db 4

;---------------------------------------------------------------------------------------------------

Song04_Segment3_Track0:
#_1AACD0: #_DDD7o: db !CALL_PART : dw Song04_Sub_DE97 : db 1
#_1AACD4: #_DDDBo: db $24, $7D ; duration, params
#_1AACD6: #_DDDDo: db E5
#_1AACD7: #_DDDEo: db $3C, $5D ; duration, params
#_1AACD9: #_DDE0o: db A4
#_1AACDA: #_DDE1o: db $30 ; duration
#_1AACDB: #_DDE2o: db !TIE
#_1AACDC: #_DDE3o: db $18, $7D ; duration, params
#_1AACDE: #_DDE5o: db A4
#_1AACDF: #_DDE6o: db $06 ; duration
#_1AACE0: #_DDE7o: db Gs4
#_1AACE1: #_DDE8o: db G4
#_1AACE2: #_DDE9o: db $0C ; duration
#_1AACE3: #_DDEAo: db Fs4
#_1AACE4: #_DDEBo: db $60 ; duration
#_1AACE5: #_DDECo: db !TIE
#_1AACE6: #_DDEDo: db $30 ; duration
#_1AACE7: #_DDEEo: db !TIE
#_1AACE8: #_DDEFo: db R
#_1AACE9: #_DDF0o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song04_Segment3_Track1:
#_1AACEA: #_DDF1o: db !VOLUME, $A0
#_1AACEC: #_DDF3o: db !INSTR, $12
#_1AACEE: #_DDF5o: db !VIBRATO, $0A, $1E, $0A
#_1AACF2: #_DDF9o: db $0C, $3D ; duration, params
#_1AACF4: #_DDFBo: db D3
#_1AACF5: #_DDFCo: db A3
#_1AACF6: #_DDFDo: db A3
#_1AACF7: #_DDFEo: db A3
#_1AACF8: #_DDFFo: db A3
#_1AACF9: #_DE00o: db A3
#_1AACFA: #_DE01o: db A3
#_1AACFB: #_DE02o: db A3
#_1AACFC: #_DE03o: db !CALL_PART : dw Song04_Sub_DE63 : db 3
#_1AAD00: #_DE07o: db !CALL_PART : dw Song04_Sub_DED3 : db 2

;---------------------------------------------------------------------------------------------------

Song04_Segment3_Track2:
#_1AAD04: #_DE0Bo: db !VOLUME, $C8
#_1AAD06: #_DE0Do: db !INSTR, $12
#_1AAD08: #_DE0Fo: db !VIBRATO, $14, $1E, $14
#_1AAD0C: #_DE13o: db !CALL_PART : dw Song04_Sub_DE6C : db 4
#_1AAD10: #_DE17o: db !CALL_PART : dw Song04_Sub_DEDC : db 2

;---------------------------------------------------------------------------------------------------

Song04_Segment3_Track3:
#_1AAD14: #_DE1Bo: db !CALL_PART : dw Song04_Sub_DE79 : db 1
#_1AAD18: #_DE1Fo: db $24, $7D ; duration, params
#_1AAD1A: #_DE21o: db F4
#_1AAD1B: #_DE22o: db $3C, $5D ; duration, params
#_1AAD1D: #_DE24o: db B3
#_1AAD1E: #_DE25o: db $30 ; duration
#_1AAD1F: #_DE26o: db !TIE
#_1AAD20: #_DE27o: db $18, $7D ; duration, params
#_1AAD22: #_DE29o: db B3
#_1AAD23: #_DE2Ao: db $06 ; duration
#_1AAD24: #_DE2Bo: db As3
#_1AAD25: #_DE2Co: db A3
#_1AAD26: #_DE2Do: db $0C ; duration
#_1AAD27: #_DE2Eo: db Gs3
#_1AAD28: #_DE2Fo: db $60 ; duration
#_1AAD29: #_DE30o: db !TIE
#_1AAD2A: #_DE31o: db $30 ; duration
#_1AAD2B: #_DE32o: db !TIE
#_1AAD2C: #_DE33o: db R

;---------------------------------------------------------------------------------------------------

Song04_Segment3_Track4:
#_1AAD2D: #_DE34o: db !CALL_PART : dw Song04_Sub_DEB5 : db 1
#_1AAD31: #_DE38o: db $24, $7D ; duration, params
#_1AAD33: #_DE3Ao: db A4
#_1AAD34: #_DE3Bo: db $3C, $5D ; duration, params
#_1AAD36: #_DE3Do: db D4
#_1AAD37: #_DE3Eo: db $30 ; duration
#_1AAD38: #_DE3Fo: db !TIE
#_1AAD39: #_DE40o: db $30, $08 ; duration, params
#_1AAD3B: #_DE42o: db D4
#_1AAD3C: #_DE43o: db $18 ; duration
#_1AAD3D: #_DE44o: db R
#_1AAD3E: #_DE45o: db R
#_1AAD3F: #_DE46o: db R
#_1AAD40: #_DE47o: db R
#_1AAD41: #_DE48o: db R
#_1AAD42: #_DE49o: db R
#_1AAD43: #_DE4Ao: db R
#_1AAD44: #_DE4Bo: db R
#_1AAD45: #_DE4Co: db !PART_END

;---------------------------------------------------------------------------------------------------

Song04_Sub_DE4D:
#_1AAD46: #_DE4Do: db $0C, $3D ; duration, params
#_1AAD48: #_DE4Fo: db D4
#_1AAD49: #_DE50o: db $18 ; duration
#_1AAD4A: #_DE51o: db R
#_1AAD4B: #_DE52o: db $0C ; duration
#_1AAD4C: #_DE53o: db E4
#_1AAD4D: #_DE54o: db $18 ; duration
#_1AAD4E: #_DE55o: db R
#_1AAD4F: #_DE56o: db $0C ; duration
#_1AAD50: #_DE57o: db F4
#_1AAD51: #_DE58o: db R
#_1AAD52: #_DE59o: db R
#_1AAD53: #_DE5Ao: db C5
#_1AAD54: #_DE5Bo: db $18 ; duration
#_1AAD55: #_DE5Co: db R
#_1AAD56: #_DE5Do: db $0C ; duration
#_1AAD57: #_DE5Eo: db B4
#_1AAD58: #_DE5Fo: db R
#_1AAD59: #_DE60o: db G4
#_1AAD5A: #_DE61o: db R
#_1AAD5B: #_DE62o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song04_Sub_DE63:
#_1AAD5C: #_DE63o: db D3
#_1AAD5D: #_DE64o: db A3
#_1AAD5E: #_DE65o: db A3
#_1AAD5F: #_DE66o: db A3
#_1AAD60: #_DE67o: db A3
#_1AAD61: #_DE68o: db A3
#_1AAD62: #_DE69o: db A3
#_1AAD63: #_DE6Ao: db A3
#_1AAD64: #_DE6Bo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song04_Sub_DE6C:
#_1AAD65: #_DE6Co: db $0C, $4D ; duration, params
#_1AAD67: #_DE6Eo: db G2
#_1AAD68: #_DE6Fo: db $0C, $3D ; duration, params
#_1AAD6A: #_DE71o: db D3
#_1AAD6B: #_DE72o: db D3
#_1AAD6C: #_DE73o: db D3
#_1AAD6D: #_DE74o: db D3
#_1AAD6E: #_DE75o: db D3
#_1AAD6F: #_DE76o: db D3
#_1AAD70: #_DE77o: db D3
#_1AAD71: #_DE78o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song04_Sub_DE79:
#_1AAD72: #_DE79o: db !VOLUME, $C8
#_1AAD74: #_DE7Bo: db !INSTR, $12
#_1AAD76: #_DE7Do: db !VIBRATO, $14, $14, $14
#_1AAD7A: #_DE81o: db $0C, $3D ; duration, params
#_1AAD7C: #_DE83o: db B3
#_1AAD7D: #_DE84o: db $18 ; duration
#_1AAD7E: #_DE85o: db R
#_1AAD7F: #_DE86o: db $0C ; duration
#_1AAD80: #_DE87o: db C4
#_1AAD81: #_DE88o: db $18 ; duration
#_1AAD82: #_DE89o: db R
#_1AAD83: #_DE8Ao: db $0C ; duration
#_1AAD84: #_DE8Bo: db D4
#_1AAD85: #_DE8Co: db R
#_1AAD86: #_DE8Do: db R
#_1AAD87: #_DE8Eo: db A4
#_1AAD88: #_DE8Fo: db $18 ; duration
#_1AAD89: #_DE90o: db R
#_1AAD8A: #_DE91o: db $0C ; duration
#_1AAD8B: #_DE92o: db G4
#_1AAD8C: #_DE93o: db R
#_1AAD8D: #_DE94o: db E4
#_1AAD8E: #_DE95o: db R
#_1AAD8F: #_DE96o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song04_Sub_DE97:
#_1AAD90: #_DE97o: db !VOLUME, $A0
#_1AAD92: #_DE99o: db !INSTR, $12
#_1AAD94: #_DE9Bo: db !VIBRATO, $14, $14, $14
#_1AAD98: #_DE9Fo: db $0C, $3D ; duration, params
#_1AAD9A: #_DEA1o: db A4
#_1AAD9B: #_DEA2o: db $18 ; duration
#_1AAD9C: #_DEA3o: db R
#_1AAD9D: #_DEA4o: db $0C ; duration
#_1AAD9E: #_DEA5o: db B4
#_1AAD9F: #_DEA6o: db $18 ; duration
#_1AADA0: #_DEA7o: db R
#_1AADA1: #_DEA8o: db $0C ; duration
#_1AADA2: #_DEA9o: db C5
#_1AADA3: #_DEAAo: db R
#_1AADA4: #_DEABo: db R
#_1AADA5: #_DEACo: db G5
#_1AADA6: #_DEADo: db $18 ; duration
#_1AADA7: #_DEAEo: db R
#_1AADA8: #_DEAFo: db $0C ; duration
#_1AADA9: #_DEB0o: db Fs5
#_1AADAA: #_DEB1o: db R
#_1AADAB: #_DEB2o: db D5
#_1AADAC: #_DEB3o: db R
#_1AADAD: #_DEB4o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song04_Sub_DEB5:
#_1AADAE: #_DEB5o: db !VOLUME, $C8
#_1AADB0: #_DEB7o: db !INSTR, $12
#_1AADB2: #_DEB9o: db !VIBRATO, $14, $14, $14
#_1AADB6: #_DEBDo: db $0C, $3D ; duration, params
#_1AADB8: #_DEBFo: db D4
#_1AADB9: #_DEC0o: db $18 ; duration
#_1AADBA: #_DEC1o: db R
#_1AADBB: #_DEC2o: db $0C ; duration
#_1AADBC: #_DEC3o: db E4
#_1AADBD: #_DEC4o: db $18 ; duration
#_1AADBE: #_DEC5o: db R
#_1AADBF: #_DEC6o: db $0C ; duration
#_1AADC0: #_DEC7o: db F4
#_1AADC1: #_DEC8o: db R
#_1AADC2: #_DEC9o: db R
#_1AADC3: #_DECAo: db C5
#_1AADC4: #_DECBo: db $18 ; duration
#_1AADC5: #_DECCo: db R
#_1AADC6: #_DECDo: db $0C ; duration
#_1AADC7: #_DECEo: db B4
#_1AADC8: #_DECFo: db R
#_1AADC9: #_DED0o: db G4
#_1AADCA: #_DED1o: db R
#_1AADCB: #_DED2o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song04_Sub_DED3:
#_1AADCC: #_DED3o: db Cs3
#_1AADCD: #_DED4o: db Gs3
#_1AADCE: #_DED5o: db Gs3
#_1AADCF: #_DED6o: db Gs3
#_1AADD0: #_DED7o: db Gs3
#_1AADD1: #_DED8o: db Gs3
#_1AADD2: #_DED9o: db Gs3
#_1AADD3: #_DEDAo: db Gs3
#_1AADD4: #_DEDBo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song04_Sub_DEDC:
#_1AADD5: #_DEDCo: db Fs2
#_1AADD6: #_DEDDo: db Cs3
#_1AADD7: #_DEDEo: db Cs3
#_1AADD8: #_DEDFo: db Cs3
#_1AADD9: #_DEE0o: db Cs3
#_1AADDA: #_DEE1o: db Cs3
#_1AADDB: #_DEE2o: db Cs3
#_1AADDC: #_DEE3o: db Cs3
#_1AADDD: #_DEE4o: db !PART_END

;===================================================================================================

Song05_LostWoods:
#_1AADDE: #_DEE5o: dw Song05_Segment0
#_1AADE0: #_DEE7o: dw Song05_Segment1
#_1AADE2: #_DEE9o: dw Song05_Segment2
#_1AADE4: #_DEEBo: dw !SONG_LOOP, Song05_LostWoods
#_1AADE8: #_DEEFo: dw $0000

Song05_Segment0:
#_1AADEA: #_DEF1o: dw Song05_Segment0_Track0
#_1AADEC: #_DEF3o: dw Song05_Segment0_Track1
#_1AADEE: #_DEF5o: dw Song05_Segment0_Track2
#_1AADF0: #_DEF7o: dw Song05_Segment0_Track3
#_1AADF2: #_DEF9o: dw Song05_Segment0_Track4
#_1AADF4: #_DEFBo: dw $0000
#_1AADF6: #_DEFDo: dw $0000
#_1AADF8: #_DEFFo: dw Song05_Segment0_Track7

Song05_Segment1:
#_1AADFA: #_DF01o: dw Song05_Segment1_Track0
#_1AADFC: #_DF03o: dw Song05_Segment1_Track1
#_1AADFE: #_DF05o: dw Song05_Segment1_Track2
#_1AAE00: #_DF07o: dw Song05_Segment1_Track3
#_1AAE02: #_DF09o: dw Song05_Segment1_Track4
#_1AAE04: #_DF0Bo: dw $0000
#_1AAE06: #_DF0Do: dw $0000
#_1AAE08: #_DF0Fo: dw Song05_Segment1_Track7

Song05_Unused0:
#_1AAE0A: #_DF11o: dw Song05_Unused0_Track0
#_1AAE0C: #_DF13o: dw Song05_Unused0_Track1
#_1AAE0E: #_DF15o: dw Song05_Unused0_Track2
#_1AAE10: #_DF17o: dw Song05_Unused0_Track3
#_1AAE12: #_DF19o: dw Song05_Unused0_Track4
#_1AAE14: #_DF1Bo: dw $0000
#_1AAE16: #_DF1Do: dw $0000
#_1AAE18: #_DF1Fo: dw Song05_Unused0_Track7

Song05_Segment2:
#_1AAE1A: #_DF21o: dw Song05_Segment2_Track0
#_1AAE1C: #_DF23o: dw Song05_Segment2_Track1
#_1AAE1E: #_DF25o: dw Song05_Segment2_Track2
#_1AAE20: #_DF27o: dw Song05_Segment2_Track3
#_1AAE22: #_DF29o: dw Song05_Segment2_Track4
#_1AAE24: #_DF2Bo: dw $0000
#_1AAE26: #_DF2Do: dw $0000
#_1AAE28: #_DF2Fo: dw Song05_Segment2_Track7

;---------------------------------------------------------------------------------------------------

Song05_Segment0_Track0:
#_1AAE2A: #_DF31o: db !SET_PERC, $17
#_1AAE2C: #_DF33o: db !MASTER_VOLUME, $C8
#_1AAE2E: #_DF35o: db !TEMPO, $1D
#_1AAE30: #_DF37o: db !ECHO_CONFIG, $FF, $00, $00
#_1AAE34: #_DF3Bo: db !ECHO_FILTER, $02, $1E, $02
#_1AAE38: #_DF3Fo: db !ECHO_GRAD, $28, $1E, $1E
#_1AAE3C: #_DF43o: db !VOLUME, $C8
#_1AAE3E: #_DF45o: db !INSTR, $0A
#_1AAE40: #_DF47o: db !VIBRATO, $1E, $14, $1E
#_1AAE44: #_DF4Bo: db $0C ; duration
#_1AAE45: #_DF4Co: db R
#_1AAE46: #_DF4Do: db $0C, $29 ; duration, params
#_1AAE48: #_DF4Fo: db B4
#_1AAE49: #_DF50o: db $0C, $2B ; duration, params
#_1AAE4B: #_DF52o: db B4
#_1AAE4C: #_DF53o: db $18, $4B ; duration, params
#_1AAE4E: #_DF55o: db B4
#_1AAE4F: #_DF56o: db $0C, $29 ; duration, params
#_1AAE51: #_DF58o: db B4
#_1AAE52: #_DF59o: db B4
#_1AAE53: #_DF5Ao: db B4
#_1AAE54: #_DF5Bo: db !CALL_PART : dw Song05_Sub_E236 : db 1
#_1AAE58: #_DF5Fo: db R
#_1AAE59: #_DF60o: db B4
#_1AAE5A: #_DF61o: db $0C, $2B ; duration, params
#_1AAE5C: #_DF63o: db B4
#_1AAE5D: #_DF64o: db $30, $4B ; duration, params
#_1AAE5F: #_DF66o: db B4
#_1AAE60: #_DF67o: db $0C ; duration
#_1AAE61: #_DF68o: db R
#_1AAE62: #_DF69o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song05_Segment0_Track1:
#_1AAE63: #_DF6Ao: db !INSTR, $09
#_1AAE65: #_DF6Co: db !VOLUME, $B4
#_1AAE67: #_DF6Eo: db !VIBRATO, $1E, $14, $1E
#_1AAE6B: #_DF72o: db !CALL_PART : dw Song05_Sub_E250 : db 2

;---------------------------------------------------------------------------------------------------

Song05_Segment0_Track2:
#_1AAE6F: #_DF76o: db !VOLUME, $B4
#_1AAE71: #_DF78o: db !INSTR, $0A
#_1AAE73: #_DF7Ao: db !VIBRATO, $1E, $14, $1E
#_1AAE77: #_DF7Eo: db $0C ; duration
#_1AAE78: #_DF7Fo: db R
#_1AAE79: #_DF80o: db $0C, $29 ; duration, params
#_1AAE7B: #_DF82o: db Gs4
#_1AAE7C: #_DF83o: db $0C, $2B ; duration, params
#_1AAE7E: #_DF85o: db Gs4
#_1AAE7F: #_DF86o: db $18, $4B ; duration, params
#_1AAE81: #_DF88o: db Gs4
#_1AAE82: #_DF89o: db $0C, $29 ; duration, params
#_1AAE84: #_DF8Bo: db Gs4
#_1AAE85: #_DF8Co: db Gs4
#_1AAE86: #_DF8Do: db Gs4
#_1AAE87: #_DF8Eo: db R
#_1AAE88: #_DF8Fo: db A4
#_1AAE89: #_DF90o: db $0C, $2B ; duration, params
#_1AAE8B: #_DF92o: db A4
#_1AAE8C: #_DF93o: db $30, $4B ; duration, params
#_1AAE8E: #_DF95o: db A4
#_1AAE8F: #_DF96o: db $0C ; duration
#_1AAE90: #_DF97o: db R
#_1AAE91: #_DF98o: db R
#_1AAE92: #_DF99o: db $0C, $29 ; duration, params
#_1AAE94: #_DF9Bo: db Gs4
#_1AAE95: #_DF9Co: db $0C, $2B ; duration, params
#_1AAE97: #_DF9Eo: db Gs4
#_1AAE98: #_DF9Fo: db $18, $4B ; duration, params
#_1AAE9A: #_DFA1o: db Gs4
#_1AAE9B: #_DFA2o: db $0C, $29 ; duration, params
#_1AAE9D: #_DFA4o: db Gs4
#_1AAE9E: #_DFA5o: db Gs4
#_1AAE9F: #_DFA6o: db Gs4
#_1AAEA0: #_DFA7o: db R
#_1AAEA1: #_DFA8o: db A4
#_1AAEA2: #_DFA9o: db $0C, $2B ; duration, params
#_1AAEA4: #_DFABo: db A4
#_1AAEA5: #_DFACo: db $30, $4B ; duration, params
#_1AAEA7: #_DFAEo: db A4
#_1AAEA8: #_DFAFo: db $0C ; duration
#_1AAEA9: #_DFB0o: db R

;---------------------------------------------------------------------------------------------------

Song05_Segment0_Track3:
#_1AAEAA: #_DFB1o: db !VOLUME, $B4
#_1AAEAC: #_DFB3o: db !INSTR, $0A
#_1AAEAE: #_DFB5o: db !VIBRATO, $1E, $14, $1E
#_1AAEB2: #_DFB9o: db $0C ; duration
#_1AAEB3: #_DFBAo: db R
#_1AAEB4: #_DFBBo: db $0C, $29 ; duration, params
#_1AAEB6: #_DFBDo: db E4
#_1AAEB7: #_DFBEo: db $0C, $2B ; duration, params
#_1AAEB9: #_DFC0o: db E4
#_1AAEBA: #_DFC1o: db $18, $4B ; duration, params
#_1AAEBC: #_DFC3o: db E4
#_1AAEBD: #_DFC4o: db $0C, $29 ; duration, params
#_1AAEBF: #_DFC6o: db E4
#_1AAEC0: #_DFC7o: db E4
#_1AAEC1: #_DFC8o: db E4
#_1AAEC2: #_DFC9o: db R
#_1AAEC3: #_DFCAo: db F4
#_1AAEC4: #_DFCBo: db $0C, $2B ; duration, params
#_1AAEC6: #_DFCDo: db F4
#_1AAEC7: #_DFCEo: db $30, $4B ; duration, params
#_1AAEC9: #_DFD0o: db F4
#_1AAECA: #_DFD1o: db $0C ; duration
#_1AAECB: #_DFD2o: db R
#_1AAECC: #_DFD3o: db R
#_1AAECD: #_DFD4o: db $0C, $29 ; duration, params
#_1AAECF: #_DFD6o: db E4
#_1AAED0: #_DFD7o: db $0C, $2B ; duration, params
#_1AAED2: #_DFD9o: db E4
#_1AAED3: #_DFDAo: db $18, $4B ; duration, params
#_1AAED5: #_DFDCo: db E4
#_1AAED6: #_DFDDo: db $0C, $29 ; duration, params
#_1AAED8: #_DFDFo: db E4
#_1AAED9: #_DFE0o: db E4
#_1AAEDA: #_DFE1o: db E4
#_1AAEDB: #_DFE2o: db R
#_1AAEDC: #_DFE3o: db F4
#_1AAEDD: #_DFE4o: db $0C, $2B ; duration, params
#_1AAEDF: #_DFE6o: db F4
#_1AAEE0: #_DFE7o: db $30, $4B ; duration, params
#_1AAEE2: #_DFE9o: db F4
#_1AAEE3: #_DFEAo: db $0C ; duration
#_1AAEE4: #_DFEBo: db R

;---------------------------------------------------------------------------------------------------

Song05_Segment0_Track4:
#_1AAEE5: #_DFECo: db !VOLUME, $A0
#_1AAEE7: #_DFEEo: db !INSTR, $16
#_1AAEE9: #_DFF0o: db $60 ; duration
#_1AAEEA: #_DFF1o: db R
#_1AAEEB: #_DFF2o: db $40 ; duration
#_1AAEEC: #_DFF3o: db R
#_1AAEED: #_DFF4o: db $04, $3B ; duration, params
#_1AAEEF: #_DFF6o: db B5
#_1AAEF0: #_DFF7o: db A5
#_1AAEF1: #_DFF8o: db $18, $7D ; duration, params
#_1AAEF3: #_DFFAo: db B5
#_1AAEF4: #_DFFBo: db $60 ; duration
#_1AAEF5: #_DFFCo: db R
#_1AAEF6: #_DFFDo: db $3C ; duration
#_1AAEF7: #_DFFEo: db R
#_1AAEF8: #_DFFFo: db $06, $3B ; duration, params
#_1AAEFA: #_E001o: db B5
#_1AAEFB: #_E002o: db A5
#_1AAEFC: #_E003o: db $18, $7D ; duration, params
#_1AAEFE: #_E005o: db B5

;---------------------------------------------------------------------------------------------------

Song05_Segment0_Track7:
#_1AAEFF: #_E006o: db !VOLUME, $82
#_1AAF01: #_E008o: db !INSTR, $0A
#_1AAF03: #_E00Ao: db !VIBRATO, $1E, $14, $1E
#_1AAF07: #_E00Eo: db $14 ; duration
#_1AAF08: #_E00Fo: db R
#_1AAF09: #_E010o: db $0C, $29 ; duration, params
#_1AAF0B: #_E012o: db B4
#_1AAF0C: #_E013o: db $0C, $2B ; duration, params
#_1AAF0E: #_E015o: db B4
#_1AAF0F: #_E016o: db $18, $4B ; duration, params
#_1AAF11: #_E018o: db B4
#_1AAF12: #_E019o: db $0C, $29 ; duration, params
#_1AAF14: #_E01Bo: db B4
#_1AAF15: #_E01Co: db B4
#_1AAF16: #_E01Do: db B4
#_1AAF17: #_E01Eo: db !CALL_PART : dw Song05_Sub_E236 : db 1
#_1AAF1B: #_E022o: db R
#_1AAF1C: #_E023o: db B4
#_1AAF1D: #_E024o: db $0C, $2B ; duration, params
#_1AAF1F: #_E026o: db B4
#_1AAF20: #_E027o: db $30, $4B ; duration, params
#_1AAF22: #_E029o: db B4
#_1AAF23: #_E02Ao: db $04 ; duration
#_1AAF24: #_E02Bo: db R

;---------------------------------------------------------------------------------------------------

Song05_Segment1_Track0:
#_1AAF25: #_E02Co: db !CALL_PART : dw Song05_Sub_E25A : db 1
#_1AAF29: #_E030o: db !CALL_PART : dw Song05_Sub_E274 : db 1
#_1AAF2D: #_E034o: db !TIE
#_1AAF2E: #_E035o: db D4
#_1AAF2F: #_E036o: db D4
#_1AAF30: #_E037o: db $30 ; duration
#_1AAF31: #_E038o: db D4
#_1AAF32: #_E039o: db $0C ; duration
#_1AAF33: #_E03Ao: db R
#_1AAF34: #_E03Bo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song05_Segment1_Track1:
#_1AAF35: #_E03Co: db !VOLUME, $C8
#_1AAF37: #_E03Eo: db !VIBRATO, $1E, $14, $1E
#_1AAF3B: #_E042o: db $60, $6D ; duration, params
#_1AAF3D: #_E044o: db G3
#_1AAF3E: #_E045o: db C3
#_1AAF3F: #_E046o: db F3
#_1AAF40: #_E047o: db As2

;---------------------------------------------------------------------------------------------------

Song05_Segment1_Track2:
#_1AAF41: #_E048o: db !CALL_PART : dw Song05_Sub_E28A : db 1

;---------------------------------------------------------------------------------------------------

Song05_Segment1_Track3:
#_1AAF45: #_E04Co: db !VOLUME, $C8
#_1AAF47: #_E04Eo: db !INSTR, $0A
#_1AAF49: #_E050o: db !VIBRATO, $1E, $14, $1E
#_1AAF4D: #_E054o: db $0C ; duration
#_1AAF4E: #_E055o: db R
#_1AAF4F: #_E056o: db $0C, $29 ; duration, params
#_1AAF51: #_E058o: db G4
#_1AAF52: #_E059o: db G4
#_1AAF53: #_E05Ao: db G4
#_1AAF54: #_E05Bo: db $0C, $5B ; duration, params
#_1AAF56: #_E05Do: db G4
#_1AAF57: #_E05Eo: db $0C, $29 ; duration, params
#_1AAF59: #_E060o: db G4
#_1AAF5A: #_E061o: db G4
#_1AAF5B: #_E062o: db G4
#_1AAF5C: #_E063o: db R
#_1AAF5D: #_E064o: db G4
#_1AAF5E: #_E065o: db G4
#_1AAF5F: #_E066o: db $0C, $59 ; duration, params
#_1AAF61: #_E068o: db G4
#_1AAF62: #_E069o: db $0C, $2B ; duration, params
#_1AAF64: #_E06Bo: db G4
#_1AAF65: #_E06Co: db $0C, $29 ; duration, params
#_1AAF67: #_E06Eo: db G4
#_1AAF68: #_E06Fo: db G4
#_1AAF69: #_E070o: db G4
#_1AAF6A: #_E071o: db !CALL_PART : dw Song05_Sub_E2CA : db 2

;---------------------------------------------------------------------------------------------------

Song05_Segment1_Track4:
#_1AAF6E: #_E075o: db !VOLUME, $C8
#_1AAF70: #_E077o: db !INSTR, $0A
#_1AAF72: #_E079o: db !VIBRATO, $1E, $14, $1E
#_1AAF76: #_E07Do: db $0C ; duration
#_1AAF77: #_E07Eo: db R
#_1AAF78: #_E07Fo: db $0C, $29 ; duration, params
#_1AAF7A: #_E081o: db D4
#_1AAF7B: #_E082o: db D4
#_1AAF7C: #_E083o: db D4
#_1AAF7D: #_E084o: db $0C, $5B ; duration, params
#_1AAF7F: #_E086o: db D4
#_1AAF80: #_E087o: db $0C, $29 ; duration, params
#_1AAF82: #_E089o: db D4
#_1AAF83: #_E08Ao: db D4
#_1AAF84: #_E08Bo: db D4
#_1AAF85: #_E08Co: db R
#_1AAF86: #_E08Do: db C4
#_1AAF87: #_E08Eo: db C4
#_1AAF88: #_E08Fo: db C4
#_1AAF89: #_E090o: db $0C, $5B ; duration, params
#_1AAF8B: #_E092o: db C4
#_1AAF8C: #_E093o: db $0C, $29 ; duration, params
#_1AAF8E: #_E095o: db C4
#_1AAF8F: #_E096o: db C4
#_1AAF90: #_E097o: db C4
#_1AAF91: #_E098o: db R
#_1AAF92: #_E099o: db C4
#_1AAF93: #_E09Ao: db C4
#_1AAF94: #_E09Bo: db C4
#_1AAF95: #_E09Co: db $0C, $59 ; duration, params
#_1AAF97: #_E09Eo: db C4
#_1AAF98: #_E09Fo: db $0C, $2B ; duration, params
#_1AAF9A: #_E0A1o: db C4
#_1AAF9B: #_E0A2o: db $0C, $29 ; duration, params
#_1AAF9D: #_E0A4o: db C4
#_1AAF9E: #_E0A5o: db C4
#_1AAF9F: #_E0A6o: db R
#_1AAFA0: #_E0A7o: db As3
#_1AAFA1: #_E0A8o: db As3
#_1AAFA2: #_E0A9o: db As3
#_1AAFA3: #_E0AAo: db $0C, $59 ; duration, params
#_1AAFA5: #_E0ACo: db As3
#_1AAFA6: #_E0ADo: db $0C, $2B ; duration, params
#_1AAFA8: #_E0AFo: db As3
#_1AAFA9: #_E0B0o: db $0C, $29 ; duration, params
#_1AAFAB: #_E0B2o: db As3
#_1AAFAC: #_E0B3o: db As3

;---------------------------------------------------------------------------------------------------

Song05_Segment1_Track7:
#_1AAFAD: #_E0B4o: db !CALL_PART : dw Song05_Sub_E2D7 : db 1
#_1AAFB1: #_E0B8o: db !CALL_PART : dw Song05_Sub_E274 : db 1
#_1AAFB5: #_E0BCo: db !TIE
#_1AAFB6: #_E0BDo: db D4
#_1AAFB7: #_E0BEo: db D4
#_1AAFB8: #_E0BFo: db $30 ; duration
#_1AAFB9: #_E0C0o: db D4
#_1AAFBA: #_E0C1o: db $04 ; duration
#_1AAFBB: #_E0C2o: db R

;---------------------------------------------------------------------------------------------------

Song05_Unused0_Track0:
#_1AAFBC: #_E0C3o: db !CALL_PART : dw Song05_Sub_E25A : db 1
#_1AAFC0: #_E0C7o: db !CALL_PART : dw Song05_Sub_E274 : db 1
#_1AAFC4: #_E0CBo: db !TIE
#_1AAFC5: #_E0CCo: db D4
#_1AAFC6: #_E0CDo: db D4
#_1AAFC7: #_E0CEo: db $30 ; duration
#_1AAFC8: #_E0CFo: db D4
#_1AAFC9: #_E0D0o: db $0C ; duration
#_1AAFCA: #_E0D1o: db R
#_1AAFCB: #_E0D2o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song05_Unused0_Track1:
#_1AAFCC: #_E0D3o: db !INSTR, $0A
#_1AAFCE: #_E0D5o: db !VOLUME, $C8
#_1AAFD0: #_E0D7o: db !VIBRATO, $1E, $14, $1E
#_1AAFD4: #_E0DBo: db $60, $6D ; duration, params
#_1AAFD6: #_E0DDo: db G3
#_1AAFD7: #_E0DEo: db C3
#_1AAFD8: #_E0DFo: db F3
#_1AAFD9: #_E0E0o: db E3

;---------------------------------------------------------------------------------------------------

Song05_Unused0_Track2:
#_1AAFDA: #_E0E1o: db !CALL_PART : dw Song05_Sub_E28A : db 1

;---------------------------------------------------------------------------------------------------

Song05_Unused0_Track3:
#_1AAFDE: #_E0E5o: db !VOLUME, $C8
#_1AAFE0: #_E0E7o: db !INSTR, $0A
#_1AAFE2: #_E0E9o: db !VIBRATO, $1E, $14, $1E
#_1AAFE6: #_E0EDo: db !CALL_PART : dw Song05_Sub_E2F1 : db 2
#_1AAFEA: #_E0F1o: db $06, $5D ; duration, params
#_1AAFEC: #_E0F3o: db F4
#_1AAFED: #_E0F4o: db $06, $59 ; duration, params
#_1AAFEF: #_E0F6o: db F4
#_1AAFF0: #_E0F7o: db F4
#_1AAFF1: #_E0F8o: db F4
#_1AAFF2: #_E0F9o: db $06, $5B ; duration, params
#_1AAFF4: #_E0FBo: db F4
#_1AAFF5: #_E0FCo: db $06, $59 ; duration, params
#_1AAFF7: #_E0FEo: db F4
#_1AAFF8: #_E0FFo: db F4
#_1AAFF9: #_E100o: db F4
#_1AAFFA: #_E101o: db $06, $5D ; duration, params
#_1AAFFC: #_E103o: db F4
#_1AAFFD: #_E104o: db $06, $59 ; duration, params
#_1AAFFF: #_E106o: db F4
#_1AB000: #_E107o: db F4
#_1AB001: #_E108o: db F4
#_1AB002: #_E109o: db $06, $5B ; duration, params
#_1AB004: #_E10Bo: db F4
#_1AB005: #_E10Co: db $06, $59 ; duration, params
#_1AB007: #_E10Eo: db F4
#_1AB008: #_E10Fo: db F4
#_1AB009: #_E110o: db F4
#_1AB00A: #_E111o: db $06, $5D ; duration, params
#_1AB00C: #_E113o: db E4
#_1AB00D: #_E114o: db $06, $59 ; duration, params
#_1AB00F: #_E116o: db E4
#_1AB010: #_E117o: db E4
#_1AB011: #_E118o: db E4
#_1AB012: #_E119o: db $06, $5B ; duration, params
#_1AB014: #_E11Bo: db E4
#_1AB015: #_E11Co: db $06, $59 ; duration, params
#_1AB017: #_E11Eo: db E4
#_1AB018: #_E11Fo: db E4
#_1AB019: #_E120o: db E4
#_1AB01A: #_E121o: db $06, $5D ; duration, params
#_1AB01C: #_E123o: db E4
#_1AB01D: #_E124o: db $06, $59 ; duration, params
#_1AB01F: #_E126o: db E4
#_1AB020: #_E127o: db E4
#_1AB021: #_E128o: db E4
#_1AB022: #_E129o: db $06, $5B ; duration, params
#_1AB024: #_E12Bo: db E4
#_1AB025: #_E12Co: db $06, $59 ; duration, params
#_1AB027: #_E12Eo: db E4
#_1AB028: #_E12Fo: db E4
#_1AB029: #_E130o: db E4

;---------------------------------------------------------------------------------------------------

Song05_Unused0_Track4:
#_1AB02A: #_E131o: db !VOLUME, $C8
#_1AB02C: #_E133o: db !INSTR, $0A
#_1AB02E: #_E135o: db !VIBRATO, $1E, $14, $1E
#_1AB032: #_E139o: db $06, $5D ; duration, params
#_1AB034: #_E13Bo: db D4
#_1AB035: #_E13Co: db $06, $59 ; duration, params
#_1AB037: #_E13Eo: db D4
#_1AB038: #_E13Fo: db D4
#_1AB039: #_E140o: db D4
#_1AB03A: #_E141o: db $06, $5B ; duration, params
#_1AB03C: #_E143o: db D4
#_1AB03D: #_E144o: db $06, $59 ; duration, params
#_1AB03F: #_E146o: db D4
#_1AB040: #_E147o: db D4
#_1AB041: #_E148o: db D4
#_1AB042: #_E149o: db $06, $5D ; duration, params
#_1AB044: #_E14Bo: db D4
#_1AB045: #_E14Co: db $06, $59 ; duration, params
#_1AB047: #_E14Eo: db D4
#_1AB048: #_E14Fo: db D4
#_1AB049: #_E150o: db D4
#_1AB04A: #_E151o: db $06, $5B ; duration, params
#_1AB04C: #_E153o: db D4
#_1AB04D: #_E154o: db $06, $59 ; duration, params
#_1AB04F: #_E156o: db D4
#_1AB050: #_E157o: db D4
#_1AB051: #_E158o: db D4
#_1AB052: #_E159o: db !CALL_PART : dw Song05_Sub_E312 : db 2
#_1AB056: #_E15Do: db $06, $5D ; duration, params
#_1AB058: #_E15Fo: db B3
#_1AB059: #_E160o: db $06, $59 ; duration, params
#_1AB05B: #_E162o: db B3
#_1AB05C: #_E163o: db B3
#_1AB05D: #_E164o: db B3
#_1AB05E: #_E165o: db $06, $5B ; duration, params
#_1AB060: #_E167o: db B3
#_1AB061: #_E168o: db $06, $59 ; duration, params
#_1AB063: #_E16Ao: db B3
#_1AB064: #_E16Bo: db B3
#_1AB065: #_E16Co: db B3
#_1AB066: #_E16Do: db $06, $5D ; duration, params
#_1AB068: #_E16Fo: db B3
#_1AB069: #_E170o: db $06, $59 ; duration, params
#_1AB06B: #_E172o: db B3
#_1AB06C: #_E173o: db B3
#_1AB06D: #_E174o: db B3
#_1AB06E: #_E175o: db $06, $5B ; duration, params
#_1AB070: #_E177o: db B3
#_1AB071: #_E178o: db $06, $59 ; duration, params
#_1AB073: #_E17Ao: db B3
#_1AB074: #_E17Bo: db B3
#_1AB075: #_E17Co: db B3

;---------------------------------------------------------------------------------------------------

Song05_Unused0_Track7:
#_1AB076: #_E17Do: db !CALL_PART : dw Song05_Sub_E2D7 : db 1
#_1AB07A: #_E181o: db !CALL_PART : dw Song05_Sub_E274 : db 1
#_1AB07E: #_E185o: db !TIE
#_1AB07F: #_E186o: db D4
#_1AB080: #_E187o: db D4
#_1AB081: #_E188o: db $30 ; duration
#_1AB082: #_E189o: db D4
#_1AB083: #_E18Ao: db $04 ; duration
#_1AB084: #_E18Bo: db R

;---------------------------------------------------------------------------------------------------

Song05_Segment2_Track0:
#_1AB085: #_E18Co: db !VOLUME, $C8
#_1AB087: #_E18Eo: db !INSTR, $0A
#_1AB089: #_E190o: db !VIBRATO, $1E, $14, $1E
#_1AB08D: #_E194o: db !CALL_PART : dw Song05_Sub_E333 : db 1
#_1AB091: #_E198o: db $60, $58 ; duration, params
#_1AB093: #_E19Ao: db !TIE
#_1AB094: #_E19Bo: db $60, $48 ; duration, params
#_1AB096: #_E19Do: db !TIE
#_1AB097: #_E19Eo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song05_Segment2_Track1:
#_1AB098: #_E19Fo: db !VOLUME, $C8
#_1AB09A: #_E1A1o: db !VIBRATO, $1E, $14, $1E
#_1AB09E: #_E1A5o: db $60, $6D ; duration, params
#_1AB0A0: #_E1A7o: db Gs2
#_1AB0A1: #_E1A8o: db As2
#_1AB0A2: #_E1A9o: db C3
#_1AB0A3: #_E1AAo: db !TIE

;---------------------------------------------------------------------------------------------------

Song05_Segment2_Track2:
#_1AB0A4: #_E1ABo: db !VOLUME, $C8
#_1AB0A6: #_E1ADo: db !INSTR, $16
#_1AB0A8: #_E1AFo: db !VIBRATO, $1E, $14, $1E
#_1AB0AC: #_E1B3o: db $0C ; duration
#_1AB0AD: #_E1B4o: db R
#_1AB0AE: #_E1B5o: db $0C, $29 ; duration, params
#_1AB0B0: #_E1B7o: db G5
#_1AB0B1: #_E1B8o: db $0C, $2B ; duration, params
#_1AB0B3: #_E1BAo: db G5
#_1AB0B4: #_E1BBo: db G5
#_1AB0B5: #_E1BCo: db $0C, $2D ; duration, params
#_1AB0B7: #_E1BEo: db G5
#_1AB0B8: #_E1BFo: db $18, $29 ; duration, params
#_1AB0BA: #_E1C1o: db C5
#_1AB0BB: #_E1C2o: db $0C ; duration
#_1AB0BC: #_E1C3o: db C5
#_1AB0BD: #_E1C4o: db !TIE
#_1AB0BE: #_E1C5o: db D5
#_1AB0BF: #_E1C6o: db E5
#_1AB0C0: #_E1C7o: db $18 ; duration
#_1AB0C1: #_E1C8o: db F5
#_1AB0C2: #_E1C9o: db $0C ; duration
#_1AB0C3: #_E1CAo: db E5
#_1AB0C4: #_E1CBo: db F5
#_1AB0C5: #_E1CCo: db G5
#_1AB0C6: #_E1CDo: db $60, $58 ; duration, params
#_1AB0C8: #_E1CFo: db !TIE
#_1AB0C9: #_E1D0o: db $60, $48 ; duration, params
#_1AB0CB: #_E1D2o: db !TIE

;---------------------------------------------------------------------------------------------------

Song05_Segment2_Track3:
#_1AB0CC: #_E1D3o: db !VOLUME, $C8
#_1AB0CE: #_E1D5o: db !INSTR, $0A
#_1AB0D0: #_E1D7o: db !VIBRATO, $1E, $14, $1E
#_1AB0D4: #_E1DBo: db $0C ; duration
#_1AB0D5: #_E1DCo: db R
#_1AB0D6: #_E1DDo: db $0C, $29 ; duration, params
#_1AB0D8: #_E1DFo: db Gs3
#_1AB0D9: #_E1E0o: db Gs3
#_1AB0DA: #_E1E1o: db Gs3
#_1AB0DB: #_E1E2o: db $0C, $5B ; duration, params
#_1AB0DD: #_E1E4o: db Gs3
#_1AB0DE: #_E1E5o: db $0C, $29 ; duration, params
#_1AB0E0: #_E1E7o: db Gs3
#_1AB0E1: #_E1E8o: db Gs3
#_1AB0E2: #_E1E9o: db Gs3
#_1AB0E3: #_E1EAo: db R
#_1AB0E4: #_E1EBo: db As3
#_1AB0E5: #_E1ECo: db As3
#_1AB0E6: #_E1EDo: db $0C, $59 ; duration, params
#_1AB0E8: #_E1EFo: db As3
#_1AB0E9: #_E1F0o: db $0C, $2B ; duration, params
#_1AB0EB: #_E1F2o: db As3
#_1AB0EC: #_E1F3o: db $0C, $29 ; duration, params
#_1AB0EE: #_E1F5o: db As3
#_1AB0EF: #_E1F6o: db As3
#_1AB0F0: #_E1F7o: db As3
#_1AB0F1: #_E1F8o: db !CALL_PART : dw Song05_Sub_E34E : db 2

;---------------------------------------------------------------------------------------------------

Song05_Segment2_Track4:
#_1AB0F5: #_E1FCo: db !VOLUME, $C8
#_1AB0F7: #_E1FEo: db !INSTR, $0A
#_1AB0F9: #_E200o: db !VIBRATO, $1E, $14, $1E
#_1AB0FD: #_E204o: db $0C ; duration
#_1AB0FE: #_E205o: db R
#_1AB0FF: #_E206o: db $0C, $29 ; duration, params
#_1AB101: #_E208o: db Ds4
#_1AB102: #_E209o: db Ds4
#_1AB103: #_E20Ao: db Ds4
#_1AB104: #_E20Bo: db $0C, $5B ; duration, params
#_1AB106: #_E20Do: db Ds4
#_1AB107: #_E20Eo: db $0C, $29 ; duration, params
#_1AB109: #_E210o: db Ds4
#_1AB10A: #_E211o: db Ds4
#_1AB10B: #_E212o: db Ds4
#_1AB10C: #_E213o: db R
#_1AB10D: #_E214o: db F4
#_1AB10E: #_E215o: db F4
#_1AB10F: #_E216o: db F4
#_1AB110: #_E217o: db $0C, $5B ; duration, params
#_1AB112: #_E219o: db F4
#_1AB113: #_E21Ao: db $0C, $29 ; duration, params
#_1AB115: #_E21Co: db F4
#_1AB116: #_E21Do: db F4
#_1AB117: #_E21Eo: db F4
#_1AB118: #_E21Fo: db !CALL_PART : dw Song05_Sub_E35B : db 2

;---------------------------------------------------------------------------------------------------

Song05_Segment2_Track7:
#_1AB11C: #_E223o: db !VOLUME, $8C
#_1AB11E: #_E225o: db !INSTR, $0A
#_1AB120: #_E227o: db !VIBRATO, $1E, $14, $1E
#_1AB124: #_E22Bo: db !CALL_PART : dw Song05_Sub_E333 : db 1
#_1AB128: #_E22Fo: db $60, $58 ; duration, params
#_1AB12A: #_E231o: db !TIE
#_1AB12B: #_E232o: db $60, $48 ; duration, params
#_1AB12D: #_E234o: db !TIE
#_1AB12E: #_E235o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song05_Sub_E236:
#_1AB12F: #_E236o: db R
#_1AB130: #_E237o: db B4
#_1AB131: #_E238o: db $0C, $2B ; duration, params
#_1AB133: #_E23Ao: db B4
#_1AB134: #_E23Bo: db $30, $4B ; duration, params
#_1AB136: #_E23Do: db B4
#_1AB137: #_E23Eo: db $0C ; duration
#_1AB138: #_E23Fo: db R
#_1AB139: #_E240o: db R
#_1AB13A: #_E241o: db $0C, $29 ; duration, params
#_1AB13C: #_E243o: db B4
#_1AB13D: #_E244o: db $0C, $2B ; duration, params
#_1AB13F: #_E246o: db B4
#_1AB140: #_E247o: db $18, $4B ; duration, params
#_1AB142: #_E249o: db B4
#_1AB143: #_E24Ao: db $0C, $29 ; duration, params
#_1AB145: #_E24Co: db B4
#_1AB146: #_E24Do: db B4
#_1AB147: #_E24Eo: db B4
#_1AB148: #_E24Fo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song05_Sub_E250:
#_1AB149: #_E250o: db $48, $69 ; duration, params
#_1AB14B: #_E252o: db E3
#_1AB14C: #_E253o: db $18, $6D ; duration, params
#_1AB14E: #_E255o: db B2
#_1AB14F: #_E256o: db $30 ; duration
#_1AB150: #_E257o: db F3
#_1AB151: #_E258o: db C3
#_1AB152: #_E259o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song05_Sub_E25A:
#_1AB153: #_E25Ao: db !VOLUME, $C8
#_1AB155: #_E25Co: db !INSTR, $0A
#_1AB157: #_E25Eo: db !VIBRATO, $1E, $14, $1E
#_1AB15B: #_E262o: db $0C ; duration
#_1AB15C: #_E263o: db R
#_1AB15D: #_E264o: db $0C, $29 ; duration, params
#_1AB15F: #_E266o: db B4
#_1AB160: #_E267o: db $0C, $2B ; duration, params
#_1AB162: #_E269o: db B4
#_1AB163: #_E26Ao: db B4
#_1AB164: #_E26Bo: db $0C, $2D ; duration, params
#_1AB166: #_E26Do: db B4
#_1AB167: #_E26Eo: db $18, $29 ; duration, params
#_1AB169: #_E270o: db F4
#_1AB16A: #_E271o: db $0C ; duration
#_1AB16B: #_E272o: db F4
#_1AB16C: #_E273o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song05_Sub_E274:
#_1AB16D: #_E274o: db !TIE
#_1AB16E: #_E275o: db E4
#_1AB16F: #_E276o: db E4
#_1AB170: #_E277o: db $30 ; duration
#_1AB171: #_E278o: db E4
#_1AB172: #_E279o: db $0C ; duration
#_1AB173: #_E27Ao: db R
#_1AB174: #_E27Bo: db R
#_1AB175: #_E27Co: db A4
#_1AB176: #_E27Do: db $0C, $2B ; duration, params
#_1AB178: #_E27Fo: db A4
#_1AB179: #_E280o: db A4
#_1AB17A: #_E281o: db $0C, $2D ; duration, params
#_1AB17C: #_E283o: db A4
#_1AB17D: #_E284o: db $18, $29 ; duration, params
#_1AB17F: #_E286o: db E4
#_1AB180: #_E287o: db $0C ; duration
#_1AB181: #_E288o: db E4
#_1AB182: #_E289o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song05_Sub_E28A:
#_1AB183: #_E28Ao: db !VOLUME, $C8
#_1AB185: #_E28Co: db !INSTR, $16
#_1AB187: #_E28Eo: db !VIBRATO, $1E, $14, $1E
#_1AB18B: #_E292o: db $0C ; duration
#_1AB18C: #_E293o: db R
#_1AB18D: #_E294o: db $0C, $29 ; duration, params
#_1AB18F: #_E296o: db B5
#_1AB190: #_E297o: db $0C, $2B ; duration, params
#_1AB192: #_E299o: db B5
#_1AB193: #_E29Ao: db B5
#_1AB194: #_E29Bo: db $0C, $2D ; duration, params
#_1AB196: #_E29Do: db B5
#_1AB197: #_E29Eo: db $18, $49 ; duration, params
#_1AB199: #_E2A0o: db F5
#_1AB19A: #_E2A1o: db $0C, $29 ; duration, params
#_1AB19C: #_E2A3o: db F5
#_1AB19D: #_E2A4o: db !TIE
#_1AB19E: #_E2A5o: db E5
#_1AB19F: #_E2A6o: db $06 ; duration
#_1AB1A0: #_E2A7o: db E5
#_1AB1A1: #_E2A8o: db D5
#_1AB1A2: #_E2A9o: db $30, $49 ; duration, params
#_1AB1A4: #_E2ABo: db E5
#_1AB1A5: #_E2ACo: db $0C ; duration
#_1AB1A6: #_E2ADo: db R
#_1AB1A7: #_E2AEo: db R
#_1AB1A8: #_E2AFo: db $0C, $29 ; duration, params
#_1AB1AA: #_E2B1o: db A5
#_1AB1AB: #_E2B2o: db $0C, $2B ; duration, params
#_1AB1AD: #_E2B4o: db A5
#_1AB1AE: #_E2B5o: db A5
#_1AB1AF: #_E2B6o: db $0C, $2D ; duration, params
#_1AB1B1: #_E2B8o: db A5
#_1AB1B2: #_E2B9o: db $18, $49 ; duration, params
#_1AB1B4: #_E2BBo: db E5
#_1AB1B5: #_E2BCo: db $0C, $29 ; duration, params
#_1AB1B7: #_E2BEo: db E5
#_1AB1B8: #_E2BFo: db !TIE
#_1AB1B9: #_E2C0o: db D5
#_1AB1BA: #_E2C1o: db $06 ; duration
#_1AB1BB: #_E2C2o: db D5
#_1AB1BC: #_E2C3o: db C5
#_1AB1BD: #_E2C4o: db $30, $49 ; duration, params
#_1AB1BF: #_E2C6o: db D5
#_1AB1C0: #_E2C7o: db $0C ; duration
#_1AB1C1: #_E2C8o: db R
#_1AB1C2: #_E2C9o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song05_Sub_E2CA:
#_1AB1C3: #_E2CAo: db R
#_1AB1C4: #_E2CBo: db F4
#_1AB1C5: #_E2CCo: db F4
#_1AB1C6: #_E2CDo: db F4
#_1AB1C7: #_E2CEo: db $0C, $5B ; duration, params
#_1AB1C9: #_E2D0o: db F4
#_1AB1CA: #_E2D1o: db $0C, $29 ; duration, params
#_1AB1CC: #_E2D3o: db F4
#_1AB1CD: #_E2D4o: db F4
#_1AB1CE: #_E2D5o: db F4
#_1AB1CF: #_E2D6o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song05_Sub_E2D7:
#_1AB1D0: #_E2D7o: db !VOLUME, $8C
#_1AB1D2: #_E2D9o: db !INSTR, $0A
#_1AB1D4: #_E2DBo: db !VIBRATO, $1E, $14, $1E
#_1AB1D8: #_E2DFo: db $14 ; duration
#_1AB1D9: #_E2E0o: db R
#_1AB1DA: #_E2E1o: db $0C, $29 ; duration, params
#_1AB1DC: #_E2E3o: db B4
#_1AB1DD: #_E2E4o: db $0C, $2B ; duration, params
#_1AB1DF: #_E2E6o: db B4
#_1AB1E0: #_E2E7o: db B4
#_1AB1E1: #_E2E8o: db $0C, $2D ; duration, params
#_1AB1E3: #_E2EAo: db B4
#_1AB1E4: #_E2EBo: db $18, $29 ; duration, params
#_1AB1E6: #_E2EDo: db F4
#_1AB1E7: #_E2EEo: db $0C ; duration
#_1AB1E8: #_E2EFo: db F4
#_1AB1E9: #_E2F0o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song05_Sub_E2F1:
#_1AB1EA: #_E2F1o: db $06, $5D ; duration, params
#_1AB1EC: #_E2F3o: db G4
#_1AB1ED: #_E2F4o: db $06, $59 ; duration, params
#_1AB1EF: #_E2F6o: db G4
#_1AB1F0: #_E2F7o: db G4
#_1AB1F1: #_E2F8o: db G4
#_1AB1F2: #_E2F9o: db $06, $5B ; duration, params
#_1AB1F4: #_E2FBo: db G4
#_1AB1F5: #_E2FCo: db $06, $59 ; duration, params
#_1AB1F7: #_E2FEo: db G4
#_1AB1F8: #_E2FFo: db G4
#_1AB1F9: #_E300o: db G4
#_1AB1FA: #_E301o: db $06, $5D ; duration, params
#_1AB1FC: #_E303o: db G4
#_1AB1FD: #_E304o: db $06, $59 ; duration, params
#_1AB1FF: #_E306o: db G4
#_1AB200: #_E307o: db G4
#_1AB201: #_E308o: db G4
#_1AB202: #_E309o: db $06, $5B ; duration, params
#_1AB204: #_E30Bo: db G4
#_1AB205: #_E30Co: db $06, $59 ; duration, params
#_1AB207: #_E30Eo: db G4
#_1AB208: #_E30Fo: db G4
#_1AB209: #_E310o: db G4
#_1AB20A: #_E311o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song05_Sub_E312:
#_1AB20B: #_E312o: db $06, $5D ; duration, params
#_1AB20D: #_E314o: db C4
#_1AB20E: #_E315o: db $06, $59 ; duration, params
#_1AB210: #_E317o: db C4
#_1AB211: #_E318o: db C4
#_1AB212: #_E319o: db C4
#_1AB213: #_E31Ao: db $06, $5B ; duration, params
#_1AB215: #_E31Co: db C4
#_1AB216: #_E31Do: db $06, $59 ; duration, params
#_1AB218: #_E31Fo: db C4
#_1AB219: #_E320o: db C4
#_1AB21A: #_E321o: db C4
#_1AB21B: #_E322o: db $06, $5D ; duration, params
#_1AB21D: #_E324o: db C4
#_1AB21E: #_E325o: db $06, $59 ; duration, params
#_1AB220: #_E327o: db C4
#_1AB221: #_E328o: db C4
#_1AB222: #_E329o: db C4
#_1AB223: #_E32Ao: db $06, $5B ; duration, params
#_1AB225: #_E32Co: db C4
#_1AB226: #_E32Do: db $06, $59 ; duration, params
#_1AB228: #_E32Fo: db C4
#_1AB229: #_E330o: db C4
#_1AB22A: #_E331o: db C4
#_1AB22B: #_E332o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song05_Sub_E333:
#_1AB22C: #_E333o: db $0C ; duration
#_1AB22D: #_E334o: db R
#_1AB22E: #_E335o: db $0C, $29 ; duration, params
#_1AB230: #_E337o: db G4
#_1AB231: #_E338o: db $0C, $2B ; duration, params
#_1AB233: #_E33Ao: db G4
#_1AB234: #_E33Bo: db G4
#_1AB235: #_E33Co: db $0C, $2D ; duration, params
#_1AB237: #_E33Eo: db G4
#_1AB238: #_E33Fo: db $18, $29 ; duration, params
#_1AB23A: #_E341o: db C4
#_1AB23B: #_E342o: db $0C ; duration
#_1AB23C: #_E343o: db C4
#_1AB23D: #_E344o: db !TIE
#_1AB23E: #_E345o: db D4
#_1AB23F: #_E346o: db E4
#_1AB240: #_E347o: db $18 ; duration
#_1AB241: #_E348o: db F4
#_1AB242: #_E349o: db $0C ; duration
#_1AB243: #_E34Ao: db E4
#_1AB244: #_E34Bo: db F4
#_1AB245: #_E34Co: db G4
#_1AB246: #_E34Do: db !PART_END

;---------------------------------------------------------------------------------------------------

Song05_Sub_E34E:
#_1AB247: #_E34Eo: db R
#_1AB248: #_E34Fo: db G4
#_1AB249: #_E350o: db G4
#_1AB24A: #_E351o: db G4
#_1AB24B: #_E352o: db $0C, $5B ; duration, params
#_1AB24D: #_E354o: db G4
#_1AB24E: #_E355o: db $0C, $29 ; duration, params
#_1AB250: #_E357o: db G4
#_1AB251: #_E358o: db G4
#_1AB252: #_E359o: db G4
#_1AB253: #_E35Ao: db !PART_END

;---------------------------------------------------------------------------------------------------

Song05_Sub_E35B:
#_1AB254: #_E35Bo: db R
#_1AB255: #_E35Co: db C4
#_1AB256: #_E35Do: db C4
#_1AB257: #_E35Eo: db C4
#_1AB258: #_E35Fo: db $0C, $59 ; duration, params
#_1AB25A: #_E361o: db C4
#_1AB25B: #_E362o: db $0C, $2B ; duration, params
#_1AB25D: #_E364o: db C4
#_1AB25E: #_E365o: db $0C, $29 ; duration, params
#_1AB260: #_E367o: db C4
#_1AB261: #_E368o: db C4
#_1AB262: #_E369o: db !PART_END

;===================================================================================================

Song06_LegendsTheme_Attract:
#_1AB263: #_E36Ao: dw Song06_Segment0
#_1AB265: #_E36Co: dw Song06_Segment1

Song06_Loop:
#_1AB267: #_E36Eo: dw Song06_Segment2
#_1AB269: #_E370o: dw Song06_Segment2
#_1AB26B: #_E372o: dw Song06_Segment3
#_1AB26D: #_E374o: dw Song06_Segment4
#_1AB26F: #_E376o: dw !SONG_LOOP, Song06_Loop
#_1AB273: #_E37Ao: dw $0000

Song06_Unused0:
#_1AB275: #_E37Co: dw Song06_Unused0_Track0
#_1AB277: #_E37Eo: dw Song06_Unused0_Track1
#_1AB279: #_E380o: dw Song06_Unused0_Track2
#_1AB27B: #_E382o: dw Song06_Unused0_Track3
#_1AB27D: #_E384o: dw $0000
#_1AB27F: #_E386o: dw $0000
#_1AB281: #_E388o: dw $0000
#_1AB283: #_E38Ao: dw $0000

Song06_Segment0:
#_1AB285: #_E38Co: dw Song06_Segment0_Track0
#_1AB287: #_E38Eo: dw Song06_Segment0_Track1
#_1AB289: #_E390o: dw Song06_Segment0_Track2
#_1AB28B: #_E392o: dw Song06_Segment0_Track3
#_1AB28D: #_E394o: dw $0000
#_1AB28F: #_E396o: dw $0000
#_1AB291: #_E398o: dw $0000
#_1AB293: #_E39Ao: dw $0000

Song06_Segment1:
#_1AB295: #_E39Co: dw Song06_Segment1_Track0
#_1AB297: #_E39Eo: dw Song06_Segment1_Track1
#_1AB299: #_E3A0o: dw Song06_Segment1_Track2
#_1AB29B: #_E3A2o: dw Song06_Segment1_Track3
#_1AB29D: #_E3A4o: dw Song06_Segment1_Track4
#_1AB29F: #_E3A6o: dw Song06_Segment1_Track5
#_1AB2A1: #_E3A8o: dw $0000
#_1AB2A3: #_E3AAo: dw $0000

Song06_Segment2:
#_1AB2A5: #_E3ACo: dw Song06_Segment2_Track0
#_1AB2A7: #_E3AEo: dw Song06_Segment2_Track1
#_1AB2A9: #_E3B0o: dw Song06_Segment2_Track2
#_1AB2AB: #_E3B2o: dw Song06_Segment2_Track3
#_1AB2AD: #_E3B4o: dw Song06_Segment2_Track4
#_1AB2AF: #_E3B6o: dw Song06_Segment2_Track5
#_1AB2B1: #_E3B8o: dw $0000
#_1AB2B3: #_E3BAo: dw $0000

Song06_Segment3:
#_1AB2B5: #_E3BCo: dw Song06_Segment3_Track0
#_1AB2B7: #_E3BEo: dw Song06_Segment3_Track1
#_1AB2B9: #_E3C0o: dw Song06_Segment3_Track2
#_1AB2BB: #_E3C2o: dw Song06_Segment3_Track3
#_1AB2BD: #_E3C4o: dw Song06_Segment3_Track4
#_1AB2BF: #_E3C6o: dw Song06_Segment3_Track5
#_1AB2C1: #_E3C8o: dw $0000
#_1AB2C3: #_E3CAo: dw $0000

Song06_Segment4:
#_1AB2C5: #_E3CCo: dw Song06_Segment4_Track0
#_1AB2C7: #_E3CEo: dw Song06_Segment4_Track1
#_1AB2C9: #_E3D0o: dw Song06_Segment4_Track2
#_1AB2CB: #_E3D2o: dw Song06_Segment4_Track3
#_1AB2CD: #_E3D4o: dw Song06_Segment4_Track4
#_1AB2CF: #_E3D6o: dw Song06_Segment4_Track5
#_1AB2D1: #_E3D8o: dw $0000
#_1AB2D3: #_E3DAo: dw $0000

;---------------------------------------------------------------------------------------------------

Song06_Unused0_Track0:
#_1AB2D5: #_E3DCo: db !CALL_PART : dw Song06_Sub_E728 : db 1
#_1AB2D9: #_E3E0o: db $48 ; duration
#_1AB2DA: #_E3E1o: db C5
#_1AB2DB: #_E3E2o: db $0C ; duration
#_1AB2DC: #_E3E3o: db B4
#_1AB2DD: #_E3E4o: db A4
#_1AB2DE: #_E3E5o: db $48 ; duration
#_1AB2DF: #_E3E6o: db C5
#_1AB2E0: #_E3E7o: db $0C ; duration
#_1AB2E1: #_E3E8o: db B4
#_1AB2E2: #_E3E9o: db A4
#_1AB2E3: #_E3EAo: db $60 ; duration
#_1AB2E4: #_E3EBo: db B4
#_1AB2E5: #_E3ECo: db !TIE
#_1AB2E6: #_E3EDo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Unused0_Track1:
#_1AB2E7: #_E3EEo: db !CALL_PART : dw Song06_Sub_E740 : db 1
#_1AB2EB: #_E3F2o: db $18 ; duration
#_1AB2EC: #_E3F3o: db R
#_1AB2ED: #_E3F4o: db $48 ; duration
#_1AB2EE: #_E3F5o: db F4
#_1AB2EF: #_E3F6o: db $18 ; duration
#_1AB2F0: #_E3F7o: db R
#_1AB2F1: #_E3F8o: db $48 ; duration
#_1AB2F2: #_E3F9o: db As4
#_1AB2F3: #_E3FAo: db $18 ; duration
#_1AB2F4: #_E3FBo: db R
#_1AB2F5: #_E3FCo: db $48 ; duration
#_1AB2F6: #_E3FDo: db Gs4
#_1AB2F7: #_E3FEo: db $18 ; duration
#_1AB2F8: #_E3FFo: db R
#_1AB2F9: #_E400o: db $48 ; duration
#_1AB2FA: #_E401o: db A4
#_1AB2FB: #_E402o: db $18 ; duration
#_1AB2FC: #_E403o: db R
#_1AB2FD: #_E404o: db $48 ; duration
#_1AB2FE: #_E405o: db A4
#_1AB2FF: #_E406o: db $18 ; duration
#_1AB300: #_E407o: db R
#_1AB301: #_E408o: db $48 ; duration
#_1AB302: #_E409o: db Fs4
#_1AB303: #_E40Ao: db $60 ; duration
#_1AB304: #_E40Bo: db !TIE

;---------------------------------------------------------------------------------------------------

Song06_Unused0_Track2:
#_1AB305: #_E40Co: db !CALL_PART : dw Song06_Sub_E74E : db 1
#_1AB309: #_E410o: db $0C ; duration
#_1AB30A: #_E411o: db G2
#_1AB30B: #_E412o: db D3
#_1AB30C: #_E413o: db $48 ; duration
#_1AB30D: #_E414o: db G3
#_1AB30E: #_E415o: db $0C ; duration
#_1AB30F: #_E416o: db G2
#_1AB310: #_E417o: db D3
#_1AB311: #_E418o: db $48 ; duration
#_1AB312: #_E419o: db G3

;---------------------------------------------------------------------------------------------------

Song06_Unused0_Track3:
#_1AB313: #_E41Ao: db !CALL_PART : dw Song06_Sub_E776 : db 1
#_1AB317: #_E41Eo: db !CALL_PART : dw Song06_Sub_E78C : db 1
#_1AB31B: #_E422o: db $18 ; duration
#_1AB31C: #_E423o: db R
#_1AB31D: #_E424o: db $48 ; duration
#_1AB31E: #_E425o: db D4
#_1AB31F: #_E426o: db $18 ; duration
#_1AB320: #_E427o: db R
#_1AB321: #_E428o: db $48 ; duration
#_1AB322: #_E429o: db D4
#_1AB323: #_E42Ao: db $60 ; duration
#_1AB324: #_E42Bo: db !TIE

;---------------------------------------------------------------------------------------------------

Song06_Segment0_Track0:
#_1AB325: #_E42Co: db !SET_PERC, $17
#_1AB327: #_E42Eo: db !MASTER_VOLUME, $C8
#_1AB329: #_E430o: db !TEMPO, $1D
#_1AB32B: #_E432o: db !ECHO_CONFIG, $FF, $00, $00
#_1AB32F: #_E436o: db !ECHO_FILTER, $02, $1E, $02
#_1AB333: #_E43Ao: db !ECHO_GRAD, $1E, $28, $28
#_1AB337: #_E43Eo: db !INSTR, $0A
#_1AB339: #_E440o: db !VOLUME, $C8
#_1AB33B: #_E442o: db !VIBRATO, $14, $19, $1E
#_1AB33F: #_E446o: db $18 ; duration
#_1AB340: #_E447o: db R
#_1AB341: #_E448o: db $48, $7B ; duration, params
#_1AB343: #_E44Ao: db G4
#_1AB344: #_E44Bo: db $18 ; duration
#_1AB345: #_E44Co: db R
#_1AB346: #_E44Do: db $48 ; duration
#_1AB347: #_E44Eo: db Gs4
#_1AB348: #_E44Fo: db $18 ; duration
#_1AB349: #_E450o: db R
#_1AB34A: #_E451o: db $48 ; duration
#_1AB34B: #_E452o: db A4
#_1AB34C: #_E453o: db $18 ; duration
#_1AB34D: #_E454o: db R
#_1AB34E: #_E455o: db $48 ; duration
#_1AB34F: #_E456o: db As4
#_1AB350: #_E457o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Segment0_Track1:
#_1AB351: #_E458o: db !CALL_PART : dw Song06_Sub_E795 : db 1
#_1AB355: #_E45Co: db !CALL_PART : dw Song06_Sub_E78C : db 1
#_1AB359: #_E460o: db $18 ; duration
#_1AB35A: #_E461o: db R
#_1AB35B: #_E462o: db $48 ; duration
#_1AB35C: #_E463o: db F4

;---------------------------------------------------------------------------------------------------

Song06_Segment0_Track2:
#_1AB35D: #_E464o: db !CALL_PART : dw Song06_Sub_E7A3 : db 1
#_1AB361: #_E468o: db !CALL_PART : dw Song06_Sub_E7B2 : db 3

;---------------------------------------------------------------------------------------------------

Song06_Segment0_Track3:
#_1AB365: #_E46Co: db !CALL_PART : dw Song06_Sub_E7B8 : db 1
#_1AB369: #_E470o: db $18 ; duration
#_1AB36A: #_E471o: db R
#_1AB36B: #_E472o: db $48 ; duration
#_1AB36C: #_E473o: db D4
#_1AB36D: #_E474o: db $18 ; duration
#_1AB36E: #_E475o: db R
#_1AB36F: #_E476o: db $48 ; duration
#_1AB370: #_E477o: db Ds4

;---------------------------------------------------------------------------------------------------

Song06_Segment1_Track0:
#_1AB371: #_E478o: db !CALL_PART : dw Song06_Sub_E740 : db 1
#_1AB375: #_E47Co: db $18 ; duration
#_1AB376: #_E47Do: db R
#_1AB377: #_E47Eo: db $48 ; duration
#_1AB378: #_E47Fo: db Gs4
#_1AB379: #_E480o: db $18 ; duration
#_1AB37A: #_E481o: db R
#_1AB37B: #_E482o: db $48 ; duration
#_1AB37C: #_E483o: db A4
#_1AB37D: #_E484o: db $18 ; duration
#_1AB37E: #_E485o: db R
#_1AB37F: #_E486o: db $48 ; duration
#_1AB380: #_E487o: db As4
#_1AB381: #_E488o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Segment1_Track1:
#_1AB382: #_E489o: db !CALL_PART : dw Song06_Sub_E795 : db 1
#_1AB386: #_E48Do: db !CALL_PART : dw Song06_Sub_E78C : db 1
#_1AB38A: #_E491o: db $18 ; duration
#_1AB38B: #_E492o: db R
#_1AB38C: #_E493o: db $48 ; duration
#_1AB38D: #_E494o: db F4

;---------------------------------------------------------------------------------------------------

Song06_Segment1_Track2:
#_1AB38E: #_E495o: db !CALL_PART : dw Song06_Sub_E7A3 : db 1
#_1AB392: #_E499o: db !CALL_PART : dw Song06_Sub_E7B2 : db 3

;---------------------------------------------------------------------------------------------------

Song06_Segment1_Track3:
#_1AB396: #_E49Do: db !CALL_PART : dw Song06_Sub_E7B8 : db 1
#_1AB39A: #_E4A1o: db $18 ; duration
#_1AB39B: #_E4A2o: db R
#_1AB39C: #_E4A3o: db $48 ; duration
#_1AB39D: #_E4A4o: db D4
#_1AB39E: #_E4A5o: db $18 ; duration
#_1AB39F: #_E4A6o: db R
#_1AB3A0: #_E4A7o: db $48 ; duration
#_1AB3A1: #_E4A8o: db Ds4

;---------------------------------------------------------------------------------------------------

Song06_Segment1_Track4:
#_1AB3A2: #_E4A9o: db !CALL_PART : dw Song06_Sub_E7CA : db 1
#_1AB3A6: #_E4ADo: db Gs4
#_1AB3A7: #_E4AEo: db Gs4
#_1AB3A8: #_E4AFo: db Gs4
#_1AB3A9: #_E4B0o: db Gs4
#_1AB3AA: #_E4B1o: db Gs4
#_1AB3AB: #_E4B2o: db Gs4
#_1AB3AC: #_E4B3o: db Gs4
#_1AB3AD: #_E4B4o: db Gs4
#_1AB3AE: #_E4B5o: db Gs4
#_1AB3AF: #_E4B6o: db Gs4
#_1AB3B0: #_E4B7o: db Gs4
#_1AB3B1: #_E4B8o: db Gs4
#_1AB3B2: #_E4B9o: db Gs4
#_1AB3B3: #_E4BAo: db Gs4
#_1AB3B4: #_E4BBo: db Gs4
#_1AB3B5: #_E4BCo: db Gs4
#_1AB3B6: #_E4BDo: db A4
#_1AB3B7: #_E4BEo: db A4
#_1AB3B8: #_E4BFo: db A4
#_1AB3B9: #_E4C0o: db A4
#_1AB3BA: #_E4C1o: db A4
#_1AB3BB: #_E4C2o: db A4
#_1AB3BC: #_E4C3o: db A4
#_1AB3BD: #_E4C4o: db A4
#_1AB3BE: #_E4C5o: db A4
#_1AB3BF: #_E4C6o: db A4
#_1AB3C0: #_E4C7o: db A4
#_1AB3C1: #_E4C8o: db A4
#_1AB3C2: #_E4C9o: db A4
#_1AB3C3: #_E4CAo: db A4
#_1AB3C4: #_E4CBo: db A4
#_1AB3C5: #_E4CCo: db A4
#_1AB3C6: #_E4CDo: db As4
#_1AB3C7: #_E4CEo: db As4
#_1AB3C8: #_E4CFo: db As4
#_1AB3C9: #_E4D0o: db As4
#_1AB3CA: #_E4D1o: db As4
#_1AB3CB: #_E4D2o: db As4
#_1AB3CC: #_E4D3o: db As4
#_1AB3CD: #_E4D4o: db As4
#_1AB3CE: #_E4D5o: db As4
#_1AB3CF: #_E4D6o: db As4
#_1AB3D0: #_E4D7o: db As4
#_1AB3D1: #_E4D8o: db As4
#_1AB3D2: #_E4D9o: db As4
#_1AB3D3: #_E4DAo: db As4
#_1AB3D4: #_E4DBo: db As4
#_1AB3D5: #_E4DCo: db As4

;---------------------------------------------------------------------------------------------------

Song06_Segment1_Track5:
#_1AB3D6: #_E4DDo: db !INSTR, $0A
#_1AB3D8: #_E4DFo: db !VOLUME, $C8
#_1AB3DA: #_E4E1o: db !VIBRATO, $14, $19, $1E
#_1AB3DE: #_E4E5o: db $06, $7B ; duration, params
#_1AB3E0: #_E4E7o: db D4
#_1AB3E1: #_E4E8o: db D4
#_1AB3E2: #_E4E9o: db D4
#_1AB3E3: #_E4EAo: db D4
#_1AB3E4: #_E4EBo: db D4
#_1AB3E5: #_E4ECo: db D4
#_1AB3E6: #_E4EDo: db D4
#_1AB3E7: #_E4EEo: db D4
#_1AB3E8: #_E4EFo: db D4
#_1AB3E9: #_E4F0o: db D4
#_1AB3EA: #_E4F1o: db D4
#_1AB3EB: #_E4F2o: db D4
#_1AB3EC: #_E4F3o: db D4
#_1AB3ED: #_E4F4o: db D4
#_1AB3EE: #_E4F5o: db D4
#_1AB3EF: #_E4F6o: db D4
#_1AB3F0: #_E4F7o: db !CALL_PART : dw Song06_Sub_E7E5 : db 1
#_1AB3F4: #_E4FBo: db F4
#_1AB3F5: #_E4FCo: db F4
#_1AB3F6: #_E4FDo: db F4
#_1AB3F7: #_E4FEo: db F4
#_1AB3F8: #_E4FFo: db F4
#_1AB3F9: #_E500o: db F4
#_1AB3FA: #_E501o: db F4
#_1AB3FB: #_E502o: db F4
#_1AB3FC: #_E503o: db F4
#_1AB3FD: #_E504o: db F4
#_1AB3FE: #_E505o: db F4
#_1AB3FF: #_E506o: db F4
#_1AB400: #_E507o: db F4
#_1AB401: #_E508o: db F4
#_1AB402: #_E509o: db F4
#_1AB403: #_E50Ao: db F4

;---------------------------------------------------------------------------------------------------

Song06_Segment2_Track0:
#_1AB404: #_E50Bo: db !CALL_PART : dw Song06_Sub_E728 : db 1
#_1AB408: #_E50Fo: db $48 ; duration
#_1AB409: #_E510o: db C5
#_1AB40A: #_E511o: db $0C ; duration
#_1AB40B: #_E512o: db B4
#_1AB40C: #_E513o: db A4
#_1AB40D: #_E514o: db $48 ; duration
#_1AB40E: #_E515o: db C5
#_1AB40F: #_E516o: db $0C ; duration
#_1AB410: #_E517o: db B4
#_1AB411: #_E518o: db A4
#_1AB412: #_E519o: db $60 ; duration
#_1AB413: #_E51Ao: db B4
#_1AB414: #_E51Bo: db !TIE
#_1AB415: #_E51Co: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Segment2_Track1:
#_1AB416: #_E51Do: db !CALL_PART : dw Song06_Sub_E740 : db 1
#_1AB41A: #_E521o: db $18 ; duration
#_1AB41B: #_E522o: db R
#_1AB41C: #_E523o: db $48 ; duration
#_1AB41D: #_E524o: db F4
#_1AB41E: #_E525o: db $18 ; duration
#_1AB41F: #_E526o: db R
#_1AB420: #_E527o: db $48 ; duration
#_1AB421: #_E528o: db As4
#_1AB422: #_E529o: db $18 ; duration
#_1AB423: #_E52Ao: db R
#_1AB424: #_E52Bo: db $48 ; duration
#_1AB425: #_E52Co: db Gs4
#_1AB426: #_E52Do: db $18 ; duration
#_1AB427: #_E52Eo: db R
#_1AB428: #_E52Fo: db $48 ; duration
#_1AB429: #_E530o: db A4
#_1AB42A: #_E531o: db $18 ; duration
#_1AB42B: #_E532o: db R
#_1AB42C: #_E533o: db $48 ; duration
#_1AB42D: #_E534o: db Fs4
#_1AB42E: #_E535o: db $18 ; duration
#_1AB42F: #_E536o: db R
#_1AB430: #_E537o: db $48 ; duration
#_1AB431: #_E538o: db Fs4
#_1AB432: #_E539o: db $60 ; duration
#_1AB433: #_E53Ao: db !TIE

;---------------------------------------------------------------------------------------------------

Song06_Segment2_Track2:
#_1AB434: #_E53Bo: db !CALL_PART : dw Song06_Sub_E74E : db 1
#_1AB438: #_E53Fo: db $0C ; duration
#_1AB439: #_E540o: db G2
#_1AB43A: #_E541o: db D3
#_1AB43B: #_E542o: db $48 ; duration
#_1AB43C: #_E543o: db G3
#_1AB43D: #_E544o: db $0C ; duration
#_1AB43E: #_E545o: db G2
#_1AB43F: #_E546o: db D3
#_1AB440: #_E547o: db $48 ; duration
#_1AB441: #_E548o: db G3

;---------------------------------------------------------------------------------------------------

Song06_Segment2_Track3:
#_1AB442: #_E549o: db !CALL_PART : dw Song06_Sub_E776 : db 1
#_1AB446: #_E54Do: db !CALL_PART : dw Song06_Sub_E78C : db 1
#_1AB44A: #_E551o: db $18 ; duration
#_1AB44B: #_E552o: db R
#_1AB44C: #_E553o: db $48 ; duration
#_1AB44D: #_E554o: db E4
#_1AB44E: #_E555o: db $18 ; duration
#_1AB44F: #_E556o: db R
#_1AB450: #_E557o: db $48 ; duration
#_1AB451: #_E558o: db D4
#_1AB452: #_E559o: db $60 ; duration
#_1AB453: #_E55Ao: db !TIE

;---------------------------------------------------------------------------------------------------

Song06_Segment2_Track4:
#_1AB454: #_E55Bo: db !CALL_PART : dw Song06_Sub_E7CA : db 1
#_1AB458: #_E55Fo: db F4
#_1AB459: #_E560o: db F4
#_1AB45A: #_E561o: db F4
#_1AB45B: #_E562o: db F4
#_1AB45C: #_E563o: db F4
#_1AB45D: #_E564o: db F4
#_1AB45E: #_E565o: db F4
#_1AB45F: #_E566o: db F4
#_1AB460: #_E567o: db F4
#_1AB461: #_E568o: db F4
#_1AB462: #_E569o: db F4
#_1AB463: #_E56Ao: db F4
#_1AB464: #_E56Bo: db F4
#_1AB465: #_E56Co: db F4
#_1AB466: #_E56Do: db F4
#_1AB467: #_E56Eo: db F4
#_1AB468: #_E56Fo: db As4
#_1AB469: #_E570o: db As4
#_1AB46A: #_E571o: db As4
#_1AB46B: #_E572o: db As4
#_1AB46C: #_E573o: db As4
#_1AB46D: #_E574o: db As4
#_1AB46E: #_E575o: db As4
#_1AB46F: #_E576o: db As4
#_1AB470: #_E577o: db As4
#_1AB471: #_E578o: db As4
#_1AB472: #_E579o: db As4
#_1AB473: #_E57Ao: db As4
#_1AB474: #_E57Bo: db As4
#_1AB475: #_E57Co: db As4
#_1AB476: #_E57Do: db As4
#_1AB477: #_E57Eo: db As4
#_1AB478: #_E57Fo: db Gs4
#_1AB479: #_E580o: db Gs4
#_1AB47A: #_E581o: db Gs4
#_1AB47B: #_E582o: db Gs4
#_1AB47C: #_E583o: db Gs4
#_1AB47D: #_E584o: db Gs4
#_1AB47E: #_E585o: db Gs4
#_1AB47F: #_E586o: db Gs4
#_1AB480: #_E587o: db Gs4
#_1AB481: #_E588o: db Gs4
#_1AB482: #_E589o: db Gs4
#_1AB483: #_E58Ao: db Gs4
#_1AB484: #_E58Bo: db Gs4
#_1AB485: #_E58Co: db Gs4
#_1AB486: #_E58Do: db Gs4
#_1AB487: #_E58Eo: db Gs4
#_1AB488: #_E58Fo: db A4
#_1AB489: #_E590o: db A4
#_1AB48A: #_E591o: db A4
#_1AB48B: #_E592o: db A4
#_1AB48C: #_E593o: db A4
#_1AB48D: #_E594o: db A4
#_1AB48E: #_E595o: db A4
#_1AB48F: #_E596o: db A4
#_1AB490: #_E597o: db A4
#_1AB491: #_E598o: db A4
#_1AB492: #_E599o: db A4
#_1AB493: #_E59Ao: db A4
#_1AB494: #_E59Bo: db A4
#_1AB495: #_E59Co: db A4
#_1AB496: #_E59Do: db A4
#_1AB497: #_E59Eo: db A4
#_1AB498: #_E59Fo: db !CALL_PART : dw Song06_Sub_E806 : db 3

;---------------------------------------------------------------------------------------------------

Song06_Segment2_Track5:
#_1AB49C: #_E5A3o: db !INSTR, $0A
#_1AB49E: #_E5A5o: db !VOLUME, $C8
#_1AB4A0: #_E5A7o: db !VIBRATO, $14, $19, $1E
#_1AB4A4: #_E5ABo: db $06, $7B ; duration, params
#_1AB4A6: #_E5ADo: db E4
#_1AB4A7: #_E5AEo: db E4
#_1AB4A8: #_E5AFo: db E4
#_1AB4A9: #_E5B0o: db E4
#_1AB4AA: #_E5B1o: db E4
#_1AB4AB: #_E5B2o: db E4
#_1AB4AC: #_E5B3o: db E4
#_1AB4AD: #_E5B4o: db E4
#_1AB4AE: #_E5B5o: db E4
#_1AB4AF: #_E5B6o: db E4
#_1AB4B0: #_E5B7o: db E4
#_1AB4B1: #_E5B8o: db E4
#_1AB4B2: #_E5B9o: db E4
#_1AB4B3: #_E5BAo: db E4
#_1AB4B4: #_E5BBo: db E4
#_1AB4B5: #_E5BCo: db E4
#_1AB4B6: #_E5BDo: db C4
#_1AB4B7: #_E5BEo: db C4
#_1AB4B8: #_E5BFo: db C4
#_1AB4B9: #_E5C0o: db C4
#_1AB4BA: #_E5C1o: db C4
#_1AB4BB: #_E5C2o: db C4
#_1AB4BC: #_E5C3o: db C4
#_1AB4BD: #_E5C4o: db C4
#_1AB4BE: #_E5C5o: db C4
#_1AB4BF: #_E5C6o: db C4
#_1AB4C0: #_E5C7o: db C4
#_1AB4C1: #_E5C8o: db C4
#_1AB4C2: #_E5C9o: db C4
#_1AB4C3: #_E5CAo: db C4
#_1AB4C4: #_E5CBo: db C4
#_1AB4C5: #_E5CCo: db C4
#_1AB4C6: #_E5CDo: db G4
#_1AB4C7: #_E5CEo: db G4
#_1AB4C8: #_E5CFo: db G4
#_1AB4C9: #_E5D0o: db G4
#_1AB4CA: #_E5D1o: db G4
#_1AB4CB: #_E5D2o: db G4
#_1AB4CC: #_E5D3o: db G4
#_1AB4CD: #_E5D4o: db G4
#_1AB4CE: #_E5D5o: db G4
#_1AB4CF: #_E5D6o: db G4
#_1AB4D0: #_E5D7o: db G4
#_1AB4D1: #_E5D8o: db G4
#_1AB4D2: #_E5D9o: db G4
#_1AB4D3: #_E5DAo: db G4
#_1AB4D4: #_E5DBo: db G4
#_1AB4D5: #_E5DCo: db G4
#_1AB4D6: #_E5DDo: db !CALL_PART : dw Song06_Sub_E7E5 : db 1
#_1AB4DA: #_E5E1o: db E4
#_1AB4DB: #_E5E2o: db E4
#_1AB4DC: #_E5E3o: db E4
#_1AB4DD: #_E5E4o: db E4
#_1AB4DE: #_E5E5o: db E4
#_1AB4DF: #_E5E6o: db E4
#_1AB4E0: #_E5E7o: db E4
#_1AB4E1: #_E5E8o: db E4
#_1AB4E2: #_E5E9o: db E4
#_1AB4E3: #_E5EAo: db E4
#_1AB4E4: #_E5EBo: db E4
#_1AB4E5: #_E5ECo: db E4
#_1AB4E6: #_E5EDo: db E4
#_1AB4E7: #_E5EEo: db E4
#_1AB4E8: #_E5EFo: db E4
#_1AB4E9: #_E5F0o: db E4
#_1AB4EA: #_E5F1o: db !CALL_PART : dw Song06_Sub_E817 : db 2

;---------------------------------------------------------------------------------------------------

Song06_Segment3_Track0:
#_1AB4EE: #_E5F5o: db !CALL_PART : dw Song06_Sub_E828 : db 1
#_1AB4F2: #_E5F9o: db $48 ; duration
#_1AB4F3: #_E5FAo: db A4
#_1AB4F4: #_E5FBo: db $30 ; duration
#_1AB4F5: #_E5FCo: db F4
#_1AB4F6: #_E5FDo: db $18 ; duration
#_1AB4F7: #_E5FEo: db As4
#_1AB4F8: #_E5FFo: db F4
#_1AB4F9: #_E600o: db E4
#_1AB4FA: #_E601o: db As4
#_1AB4FB: #_E602o: db $48 ; duration
#_1AB4FC: #_E603o: db A4
#_1AB4FD: #_E604o: db !TIE
#_1AB4FE: #_E605o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Segment3_Track1:
#_1AB4FF: #_E606o: db !CALL_PART : dw Song06_Sub_E83F : db 1
#_1AB503: #_E60Ao: db F4
#_1AB504: #_E60Bo: db As4
#_1AB505: #_E60Co: db Gs4
#_1AB506: #_E60Do: db A4
#_1AB507: #_E60Eo: db Fs4
#_1AB508: #_E60Fo: db Fs4
#_1AB509: #_E610o: db !TIE

;---------------------------------------------------------------------------------------------------

Song06_Segment3_Track2:
#_1AB50A: #_E611o: db !CALL_PART : dw Song06_Sub_E84B : db 1
#_1AB50E: #_E615o: db $0C ; duration
#_1AB50F: #_E616o: db A2
#_1AB510: #_E617o: db E3
#_1AB511: #_E618o: db $30 ; duration
#_1AB512: #_E619o: db A3
#_1AB513: #_E61Ao: db $0C ; duration
#_1AB514: #_E61Bo: db A2
#_1AB515: #_E61Co: db E3
#_1AB516: #_E61Do: db $30 ; duration
#_1AB517: #_E61Eo: db A3
#_1AB518: #_E61Fo: db $0C ; duration
#_1AB519: #_E620o: db G2
#_1AB51A: #_E621o: db D3
#_1AB51B: #_E622o: db $30 ; duration
#_1AB51C: #_E623o: db G3
#_1AB51D: #_E624o: db $0C ; duration
#_1AB51E: #_E625o: db C2
#_1AB51F: #_E626o: db G2
#_1AB520: #_E627o: db $30 ; duration
#_1AB521: #_E628o: db C3
#_1AB522: #_E629o: db $0C ; duration
#_1AB523: #_E62Ao: db F2
#_1AB524: #_E62Bo: db C3
#_1AB525: #_E62Co: db $30 ; duration
#_1AB526: #_E62Do: db F3
#_1AB527: #_E62Eo: db $0C ; duration
#_1AB528: #_E62Fo: db F2
#_1AB529: #_E630o: db C3
#_1AB52A: #_E631o: db $30 ; duration
#_1AB52B: #_E632o: db F3

;---------------------------------------------------------------------------------------------------

Song06_Segment3_Track3:
#_1AB52C: #_E633o: db !CALL_PART : dw Song06_Sub_E85F : db 1
#_1AB530: #_E637o: db C4
#_1AB531: #_E638o: db G4
#_1AB532: #_E639o: db Ds4
#_1AB533: #_E63Ao: db E4
#_1AB534: #_E63Bo: db E4
#_1AB535: #_E63Co: db D4
#_1AB536: #_E63Do: db !TIE

;---------------------------------------------------------------------------------------------------

Song06_Segment3_Track4:
#_1AB537: #_E63Eo: db !CALL_PART : dw Song06_Sub_E86B : db 1
#_1AB53B: #_E642o: db !CALL_PART : dw Song06_Sub_E88E : db 2
#_1AB53F: #_E646o: db !CALL_PART : dw Song06_Sub_E89B : db 2
#_1AB543: #_E64Ao: db !CALL_PART : dw Song06_Sub_E8A8 : db 2

;---------------------------------------------------------------------------------------------------

Song06_Segment3_Track5:
#_1AB547: #_E64Eo: db !INSTR, $0A
#_1AB549: #_E650o: db !VOLUME, $C8
#_1AB54B: #_E652o: db !VIBRATO, $14, $19, $1E
#_1AB54F: #_E656o: db $06, $7B ; duration, params
#_1AB551: #_E658o: db D4
#_1AB552: #_E659o: db D4
#_1AB553: #_E65Ao: db D4
#_1AB554: #_E65Bo: db D4
#_1AB555: #_E65Co: db D4
#_1AB556: #_E65Do: db D4
#_1AB557: #_E65Eo: db D4
#_1AB558: #_E65Fo: db D4
#_1AB559: #_E660o: db D4
#_1AB55A: #_E661o: db D4
#_1AB55B: #_E662o: db D4
#_1AB55C: #_E663o: db D4
#_1AB55D: #_E664o: db D4
#_1AB55E: #_E665o: db D4
#_1AB55F: #_E666o: db D4
#_1AB560: #_E667o: db D4
#_1AB561: #_E668o: db D4
#_1AB562: #_E669o: db D4
#_1AB563: #_E66Ao: db D4
#_1AB564: #_E66Bo: db D4
#_1AB565: #_E66Co: db D4
#_1AB566: #_E66Do: db D4
#_1AB567: #_E66Eo: db D4
#_1AB568: #_E66Fo: db D4
#_1AB569: #_E670o: db !CALL_PART : dw Song06_Sub_E8A8 : db 2
#_1AB56D: #_E674o: db !CALL_PART : dw Song06_Sub_E8B5 : db 2
#_1AB571: #_E678o: db !CALL_PART : dw Song06_Sub_E8C2 : db 2

;---------------------------------------------------------------------------------------------------

Song06_Segment4_Track0:
#_1AB575: #_E67Co: db !CALL_PART : dw Song06_Sub_E828 : db 1
#_1AB579: #_E680o: db $48 ; duration
#_1AB57A: #_E681o: db A4
#_1AB57B: #_E682o: db $30 ; duration
#_1AB57C: #_E683o: db G4
#_1AB57D: #_E684o: db $18 ; duration
#_1AB57E: #_E685o: db C5
#_1AB57F: #_E686o: db G4
#_1AB580: #_E687o: db F4
#_1AB581: #_E688o: db G4
#_1AB582: #_E689o: db $48 ; duration
#_1AB583: #_E68Ao: db A4
#_1AB584: #_E68Bo: db B4
#_1AB585: #_E68Co: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Segment4_Track1:
#_1AB586: #_E68Do: db !CALL_PART : dw Song06_Sub_E83F : db 1
#_1AB58A: #_E691o: db F4
#_1AB58B: #_E692o: db As4
#_1AB58C: #_E693o: db Gs4
#_1AB58D: #_E694o: db A4
#_1AB58E: #_E695o: db Fs4
#_1AB58F: #_E696o: db Fs4
#_1AB590: #_E697o: db !TIE

;---------------------------------------------------------------------------------------------------

Song06_Segment4_Track2:
#_1AB591: #_E698o: db !CALL_PART : dw Song06_Sub_E84B : db 1
#_1AB595: #_E69Co: db $0C ; duration
#_1AB596: #_E69Do: db A2
#_1AB597: #_E69Eo: db E3
#_1AB598: #_E69Fo: db $30 ; duration
#_1AB599: #_E6A0o: db A3
#_1AB59A: #_E6A1o: db $0C ; duration
#_1AB59B: #_E6A2o: db A2
#_1AB59C: #_E6A3o: db E3
#_1AB59D: #_E6A4o: db $30 ; duration
#_1AB59E: #_E6A5o: db A3
#_1AB59F: #_E6A6o: db $0C ; duration
#_1AB5A0: #_E6A7o: db Gs2
#_1AB5A1: #_E6A8o: db Ds3
#_1AB5A2: #_E6A9o: db $30 ; duration
#_1AB5A3: #_E6AAo: db Gs3
#_1AB5A4: #_E6ABo: db $0C ; duration
#_1AB5A5: #_E6ACo: db Gs2
#_1AB5A6: #_E6ADo: db Ds3
#_1AB5A7: #_E6AEo: db $30 ; duration
#_1AB5A8: #_E6AFo: db Gs3
#_1AB5A9: #_E6B0o: db $0C ; duration
#_1AB5AA: #_E6B1o: db G2
#_1AB5AB: #_E6B2o: db D3
#_1AB5AC: #_E6B3o: db $30 ; duration
#_1AB5AD: #_E6B4o: db G3
#_1AB5AE: #_E6B5o: db $0C ; duration
#_1AB5AF: #_E6B6o: db Fs2
#_1AB5B0: #_E6B7o: db Cs3
#_1AB5B1: #_E6B8o: db $30 ; duration
#_1AB5B2: #_E6B9o: db Fs3

;---------------------------------------------------------------------------------------------------

Song06_Segment4_Track3:
#_1AB5B3: #_E6BAo: db !CALL_PART : dw Song06_Sub_E85F : db 1
#_1AB5B7: #_E6BEo: db C4
#_1AB5B8: #_E6BFo: db G4
#_1AB5B9: #_E6C0o: db Ds4
#_1AB5BA: #_E6C1o: db E4
#_1AB5BB: #_E6C2o: db E4
#_1AB5BC: #_E6C3o: db D4
#_1AB5BD: #_E6C4o: db !TIE

;---------------------------------------------------------------------------------------------------

Song06_Segment4_Track4:
#_1AB5BE: #_E6C5o: db !CALL_PART : dw Song06_Sub_E86B : db 1
#_1AB5C2: #_E6C9o: db !CALL_PART : dw Song06_Sub_E88E : db 2
#_1AB5C6: #_E6CDo: db !CALL_PART : dw Song06_Sub_E8CF : db 2
#_1AB5CA: #_E6D1o: db Fs4
#_1AB5CB: #_E6D2o: db Fs4
#_1AB5CC: #_E6D3o: db Fs4
#_1AB5CD: #_E6D4o: db Fs4
#_1AB5CE: #_E6D5o: db Fs4
#_1AB5CF: #_E6D6o: db Fs4
#_1AB5D0: #_E6D7o: db Fs4
#_1AB5D1: #_E6D8o: db Fs4
#_1AB5D2: #_E6D9o: db Fs4
#_1AB5D3: #_E6DAo: db Fs4
#_1AB5D4: #_E6DBo: db Fs4
#_1AB5D5: #_E6DCo: db Fs4
#_1AB5D6: #_E6DDo: db G4
#_1AB5D7: #_E6DEo: db G4
#_1AB5D8: #_E6DFo: db G4
#_1AB5D9: #_E6E0o: db G4
#_1AB5DA: #_E6E1o: db G4
#_1AB5DB: #_E6E2o: db G4
#_1AB5DC: #_E6E3o: db G4
#_1AB5DD: #_E6E4o: db G4
#_1AB5DE: #_E6E5o: db G4
#_1AB5DF: #_E6E6o: db G4
#_1AB5E0: #_E6E7o: db G4
#_1AB5E1: #_E6E8o: db G4

;---------------------------------------------------------------------------------------------------

Song06_Segment4_Track5:
#_1AB5E2: #_E6E9o: db !INSTR, $0A
#_1AB5E4: #_E6EBo: db !VOLUME, $C8
#_1AB5E6: #_E6EDo: db !VIBRATO, $14, $19, $1E
#_1AB5EA: #_E6F1o: db $06, $7B ; duration, params
#_1AB5EC: #_E6F3o: db D4
#_1AB5ED: #_E6F4o: db D4
#_1AB5EE: #_E6F5o: db D4
#_1AB5EF: #_E6F6o: db D4
#_1AB5F0: #_E6F7o: db D4
#_1AB5F1: #_E6F8o: db D4
#_1AB5F2: #_E6F9o: db D4
#_1AB5F3: #_E6FAo: db D4
#_1AB5F4: #_E6FBo: db D4
#_1AB5F5: #_E6FCo: db D4
#_1AB5F6: #_E6FDo: db D4
#_1AB5F7: #_E6FEo: db D4
#_1AB5F8: #_E6FFo: db D4
#_1AB5F9: #_E700o: db D4
#_1AB5FA: #_E701o: db D4
#_1AB5FB: #_E702o: db D4
#_1AB5FC: #_E703o: db D4
#_1AB5FD: #_E704o: db D4
#_1AB5FE: #_E705o: db D4
#_1AB5FF: #_E706o: db D4
#_1AB600: #_E707o: db D4
#_1AB601: #_E708o: db D4
#_1AB602: #_E709o: db D4
#_1AB603: #_E70Ao: db D4
#_1AB604: #_E70Bo: db !CALL_PART : dw Song06_Sub_E8A8 : db 4
#_1AB608: #_E70Fo: db D4
#_1AB609: #_E710o: db D4
#_1AB60A: #_E711o: db D4
#_1AB60B: #_E712o: db D4
#_1AB60C: #_E713o: db D4
#_1AB60D: #_E714o: db D4
#_1AB60E: #_E715o: db D4
#_1AB60F: #_E716o: db D4
#_1AB610: #_E717o: db D4
#_1AB611: #_E718o: db D4
#_1AB612: #_E719o: db D4
#_1AB613: #_E71Ao: db D4
#_1AB614: #_E71Bo: db E4
#_1AB615: #_E71Co: db E4
#_1AB616: #_E71Do: db E4
#_1AB617: #_E71Eo: db E4
#_1AB618: #_E71Fo: db E4
#_1AB619: #_E720o: db E4
#_1AB61A: #_E721o: db E4
#_1AB61B: #_E722o: db E4
#_1AB61C: #_E723o: db E4
#_1AB61D: #_E724o: db E4
#_1AB61E: #_E725o: db E4
#_1AB61F: #_E726o: db E4
#_1AB620: #_E727o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E728:
#_1AB621: #_E728o: db !INSTR, $0A
#_1AB623: #_E72Ao: db !VOLUME, $C8
#_1AB625: #_E72Co: db !VIBRATO, $14, $19, $1E
#_1AB629: #_E730o: db $48, $7B ; duration, params
#_1AB62B: #_E732o: db B4
#_1AB62C: #_E733o: db $0C ; duration
#_1AB62D: #_E734o: db A4
#_1AB62E: #_E735o: db G4
#_1AB62F: #_E736o: db $60 ; duration
#_1AB630: #_E737o: db A4
#_1AB631: #_E738o: db $48 ; duration
#_1AB632: #_E739o: db D5
#_1AB633: #_E73Ao: db $0C ; duration
#_1AB634: #_E73Bo: db C5
#_1AB635: #_E73Co: db As4
#_1AB636: #_E73Do: db $60 ; duration
#_1AB637: #_E73Eo: db C5
#_1AB638: #_E73Fo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E740:
#_1AB639: #_E740o: db !INSTR, $0A
#_1AB63B: #_E742o: db !VOLUME, $C8
#_1AB63D: #_E744o: db !VIBRATO, $14, $19, $1E
#_1AB641: #_E748o: db $18 ; duration
#_1AB642: #_E749o: db R
#_1AB643: #_E74Ao: db $48, $7B ; duration, params
#_1AB645: #_E74Co: db G4
#_1AB646: #_E74Do: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E74E:
#_1AB647: #_E74Eo: db !INSTR, $0A
#_1AB649: #_E750o: db !VOLUME, $D2
#_1AB64B: #_E752o: db !VIBRATO, $14, $19, $1E
#_1AB64F: #_E756o: db $0C, $7D ; duration, params
#_1AB651: #_E758o: db F2
#_1AB652: #_E759o: db C3
#_1AB653: #_E75Ao: db $48 ; duration
#_1AB654: #_E75Bo: db F3
#_1AB655: #_E75Co: db $0C ; duration
#_1AB656: #_E75Do: db As2
#_1AB657: #_E75Eo: db F3
#_1AB658: #_E75Fo: db $48 ; duration
#_1AB659: #_E760o: db As3
#_1AB65A: #_E761o: db $0C ; duration
#_1AB65B: #_E762o: db Ds2
#_1AB65C: #_E763o: db As2
#_1AB65D: #_E764o: db $48 ; duration
#_1AB65E: #_E765o: db Ds3
#_1AB65F: #_E766o: db $0C ; duration
#_1AB660: #_E767o: db Gs2
#_1AB661: #_E768o: db Ds3
#_1AB662: #_E769o: db $48 ; duration
#_1AB663: #_E76Ao: db Gs3
#_1AB664: #_E76Bo: db $0C ; duration
#_1AB665: #_E76Co: db A2
#_1AB666: #_E76Do: db E3
#_1AB667: #_E76Eo: db $48 ; duration
#_1AB668: #_E76Fo: db A3
#_1AB669: #_E770o: db $0C ; duration
#_1AB66A: #_E771o: db D2
#_1AB66B: #_E772o: db A2
#_1AB66C: #_E773o: db $48 ; duration
#_1AB66D: #_E774o: db D3
#_1AB66E: #_E775o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E776:
#_1AB66F: #_E776o: db !INSTR, $0A
#_1AB671: #_E778o: db !VOLUME, $C8
#_1AB673: #_E77Ao: db !VIBRATO, $14, $19, $1E
#_1AB677: #_E77Eo: db $18 ; duration
#_1AB678: #_E77Fo: db R
#_1AB679: #_E780o: db $48, $7B ; duration, params
#_1AB67B: #_E782o: db E4
#_1AB67C: #_E783o: db $18 ; duration
#_1AB67D: #_E784o: db R
#_1AB67E: #_E785o: db $48 ; duration
#_1AB67F: #_E786o: db C4
#_1AB680: #_E787o: db $18 ; duration
#_1AB681: #_E788o: db R
#_1AB682: #_E789o: db $48 ; duration
#_1AB683: #_E78Ao: db G4
#_1AB684: #_E78Bo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E78C:
#_1AB685: #_E78Co: db $18 ; duration
#_1AB686: #_E78Do: db R
#_1AB687: #_E78Eo: db $48 ; duration
#_1AB688: #_E78Fo: db Ds4
#_1AB689: #_E790o: db $18 ; duration
#_1AB68A: #_E791o: db R
#_1AB68B: #_E792o: db $48 ; duration
#_1AB68C: #_E793o: db E4
#_1AB68D: #_E794o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E795:
#_1AB68E: #_E795o: db !INSTR, $0A
#_1AB690: #_E797o: db !VOLUME, $C8
#_1AB692: #_E799o: db !VIBRATO, $14, $19, $1E
#_1AB696: #_E79Do: db $18 ; duration
#_1AB697: #_E79Eo: db R
#_1AB698: #_E79Fo: db $48, $7B ; duration, params
#_1AB69A: #_E7A1o: db D4
#_1AB69B: #_E7A2o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E7A3:
#_1AB69C: #_E7A3o: db !INSTR, $0A
#_1AB69E: #_E7A5o: db !VOLUME, $D2
#_1AB6A0: #_E7A7o: db !VIBRATO, $14, $19, $1E
#_1AB6A4: #_E7ABo: db $0C, $7D ; duration, params
#_1AB6A6: #_E7ADo: db C2
#_1AB6A7: #_E7AEo: db G2
#_1AB6A8: #_E7AFo: db $48 ; duration
#_1AB6A9: #_E7B0o: db C3
#_1AB6AA: #_E7B1o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E7B2:
#_1AB6AB: #_E7B2o: db $0C ; duration
#_1AB6AC: #_E7B3o: db C2
#_1AB6AD: #_E7B4o: db G2
#_1AB6AE: #_E7B5o: db $48 ; duration
#_1AB6AF: #_E7B6o: db C3
#_1AB6B0: #_E7B7o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E7B8:
#_1AB6B1: #_E7B8o: db !INSTR, $0A
#_1AB6B3: #_E7BAo: db !VOLUME, $C8
#_1AB6B5: #_E7BCo: db !VIBRATO, $14, $19, $1E
#_1AB6B9: #_E7C0o: db $18 ; duration
#_1AB6BA: #_E7C1o: db R
#_1AB6BB: #_E7C2o: db $48, $7B ; duration, params
#_1AB6BD: #_E7C4o: db C4
#_1AB6BE: #_E7C5o: db $18 ; duration
#_1AB6BF: #_E7C6o: db R
#_1AB6C0: #_E7C7o: db $48 ; duration
#_1AB6C1: #_E7C8o: db Cs4
#_1AB6C2: #_E7C9o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E7CA:
#_1AB6C3: #_E7CAo: db !INSTR, $0A
#_1AB6C5: #_E7CCo: db !VOLUME, $C8
#_1AB6C7: #_E7CEo: db !VIBRATO, $14, $19, $1E
#_1AB6CB: #_E7D2o: db $06, $7B ; duration, params
#_1AB6CD: #_E7D4o: db G4
#_1AB6CE: #_E7D5o: db G4
#_1AB6CF: #_E7D6o: db G4
#_1AB6D0: #_E7D7o: db G4
#_1AB6D1: #_E7D8o: db G4
#_1AB6D2: #_E7D9o: db G4
#_1AB6D3: #_E7DAo: db G4
#_1AB6D4: #_E7DBo: db G4
#_1AB6D5: #_E7DCo: db G4
#_1AB6D6: #_E7DDo: db G4
#_1AB6D7: #_E7DEo: db G4
#_1AB6D8: #_E7DFo: db G4
#_1AB6D9: #_E7E0o: db G4
#_1AB6DA: #_E7E1o: db G4
#_1AB6DB: #_E7E2o: db G4
#_1AB6DC: #_E7E3o: db G4
#_1AB6DD: #_E7E4o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E7E5:
#_1AB6DE: #_E7E5o: db Ds4
#_1AB6DF: #_E7E6o: db Ds4
#_1AB6E0: #_E7E7o: db Ds4
#_1AB6E1: #_E7E8o: db Ds4
#_1AB6E2: #_E7E9o: db Ds4
#_1AB6E3: #_E7EAo: db Ds4
#_1AB6E4: #_E7EBo: db Ds4
#_1AB6E5: #_E7ECo: db Ds4
#_1AB6E6: #_E7EDo: db Ds4
#_1AB6E7: #_E7EEo: db Ds4
#_1AB6E8: #_E7EFo: db Ds4
#_1AB6E9: #_E7F0o: db Ds4
#_1AB6EA: #_E7F1o: db Ds4
#_1AB6EB: #_E7F2o: db Ds4
#_1AB6EC: #_E7F3o: db Ds4
#_1AB6ED: #_E7F4o: db Ds4
#_1AB6EE: #_E7F5o: db E4
#_1AB6EF: #_E7F6o: db E4
#_1AB6F0: #_E7F7o: db E4
#_1AB6F1: #_E7F8o: db E4
#_1AB6F2: #_E7F9o: db E4
#_1AB6F3: #_E7FAo: db E4
#_1AB6F4: #_E7FBo: db E4
#_1AB6F5: #_E7FCo: db E4
#_1AB6F6: #_E7FDo: db E4
#_1AB6F7: #_E7FEo: db E4
#_1AB6F8: #_E7FFo: db E4
#_1AB6F9: #_E800o: db E4
#_1AB6FA: #_E801o: db E4
#_1AB6FB: #_E802o: db E4
#_1AB6FC: #_E803o: db E4
#_1AB6FD: #_E804o: db E4
#_1AB6FE: #_E805o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E806:
#_1AB6FF: #_E806o: db Fs4
#_1AB700: #_E807o: db Fs4
#_1AB701: #_E808o: db Fs4
#_1AB702: #_E809o: db Fs4
#_1AB703: #_E80Ao: db Fs4
#_1AB704: #_E80Bo: db Fs4
#_1AB705: #_E80Co: db Fs4
#_1AB706: #_E80Do: db Fs4
#_1AB707: #_E80Eo: db Fs4
#_1AB708: #_E80Fo: db Fs4
#_1AB709: #_E810o: db Fs4
#_1AB70A: #_E811o: db Fs4
#_1AB70B: #_E812o: db Fs4
#_1AB70C: #_E813o: db Fs4
#_1AB70D: #_E814o: db Fs4
#_1AB70E: #_E815o: db Fs4
#_1AB70F: #_E816o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E817:
#_1AB710: #_E817o: db D4
#_1AB711: #_E818o: db D4
#_1AB712: #_E819o: db D4
#_1AB713: #_E81Ao: db D4
#_1AB714: #_E81Bo: db D4
#_1AB715: #_E81Co: db D4
#_1AB716: #_E81Do: db D4
#_1AB717: #_E81Eo: db D4
#_1AB718: #_E81Fo: db D4
#_1AB719: #_E820o: db D4
#_1AB71A: #_E821o: db D4
#_1AB71B: #_E822o: db D4
#_1AB71C: #_E823o: db D4
#_1AB71D: #_E824o: db D4
#_1AB71E: #_E825o: db D4
#_1AB71F: #_E826o: db D4
#_1AB720: #_E827o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E828:
#_1AB721: #_E828o: db !INSTR, $0A
#_1AB723: #_E82Ao: db !VOLUME, $C8
#_1AB725: #_E82Co: db !VIBRATO, $14, $19, $1E
#_1AB729: #_E830o: db $30, $7B ; duration, params
#_1AB72B: #_E832o: db A4
#_1AB72C: #_E833o: db $18 ; duration
#_1AB72D: #_E834o: db D5
#_1AB72E: #_E835o: db $30 ; duration
#_1AB72F: #_E836o: db A4
#_1AB730: #_E837o: db $18 ; duration
#_1AB731: #_E838o: db D5
#_1AB732: #_E839o: db $30 ; duration
#_1AB733: #_E83Ao: db C5
#_1AB734: #_E83Bo: db $0C ; duration
#_1AB735: #_E83Co: db B4
#_1AB736: #_E83Do: db C5
#_1AB737: #_E83Eo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E83F:
#_1AB738: #_E83Fo: db !INSTR, $0A
#_1AB73A: #_E841o: db !VOLUME, $00
#_1AB73C: #_E843o: db !VIBRATO, $14, $19, $1E
#_1AB740: #_E847o: db $48, $7B ; duration, params
#_1AB742: #_E849o: db G4
#_1AB743: #_E84Ao: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E84B:
#_1AB744: #_E84Bo: db !INSTR, $0A
#_1AB746: #_E84Do: db !VOLUME, $D2
#_1AB748: #_E84Fo: db !VIBRATO, $14, $19, $1E
#_1AB74C: #_E853o: db $0C, $7D ; duration, params
#_1AB74E: #_E855o: db As2
#_1AB74F: #_E856o: db F3
#_1AB750: #_E857o: db $30 ; duration
#_1AB751: #_E858o: db As3
#_1AB752: #_E859o: db $0C ; duration
#_1AB753: #_E85Ao: db As2
#_1AB754: #_E85Bo: db F3
#_1AB755: #_E85Co: db $30 ; duration
#_1AB756: #_E85Do: db As3
#_1AB757: #_E85Eo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E85F:
#_1AB758: #_E85Fo: db !INSTR, $0A
#_1AB75A: #_E861o: db !VOLUME, $00
#_1AB75C: #_E863o: db !VIBRATO, $14, $19, $1E
#_1AB760: #_E867o: db $48, $7B ; duration, params
#_1AB762: #_E869o: db E4
#_1AB763: #_E86Ao: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E86B:
#_1AB764: #_E86Bo: db !INSTR, $0A
#_1AB766: #_E86Do: db !VOLUME, $C8
#_1AB768: #_E86Fo: db !VIBRATO, $14, $19, $1E
#_1AB76C: #_E873o: db $06, $7B ; duration, params
#_1AB76E: #_E875o: db F4
#_1AB76F: #_E876o: db F4
#_1AB770: #_E877o: db F4
#_1AB771: #_E878o: db F4
#_1AB772: #_E879o: db F4
#_1AB773: #_E87Ao: db F4
#_1AB774: #_E87Bo: db F4
#_1AB775: #_E87Co: db F4
#_1AB776: #_E87Do: db F4
#_1AB777: #_E87Eo: db F4
#_1AB778: #_E87Fo: db F4
#_1AB779: #_E880o: db F4
#_1AB77A: #_E881o: db F4
#_1AB77B: #_E882o: db F4
#_1AB77C: #_E883o: db F4
#_1AB77D: #_E884o: db F4
#_1AB77E: #_E885o: db F4
#_1AB77F: #_E886o: db F4
#_1AB780: #_E887o: db F4
#_1AB781: #_E888o: db F4
#_1AB782: #_E889o: db F4
#_1AB783: #_E88Ao: db F4
#_1AB784: #_E88Bo: db F4
#_1AB785: #_E88Co: db F4
#_1AB786: #_E88Do: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E88E:
#_1AB787: #_E88Eo: db E4
#_1AB788: #_E88Fo: db E4
#_1AB789: #_E890o: db E4
#_1AB78A: #_E891o: db E4
#_1AB78B: #_E892o: db E4
#_1AB78C: #_E893o: db E4
#_1AB78D: #_E894o: db E4
#_1AB78E: #_E895o: db E4
#_1AB78F: #_E896o: db E4
#_1AB790: #_E897o: db E4
#_1AB791: #_E898o: db E4
#_1AB792: #_E899o: db E4
#_1AB793: #_E89Ao: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E89B:
#_1AB794: #_E89Bo: db D4
#_1AB795: #_E89Co: db D4
#_1AB796: #_E89Do: db D4
#_1AB797: #_E89Eo: db D4
#_1AB798: #_E89Fo: db D4
#_1AB799: #_E8A0o: db D4
#_1AB79A: #_E8A1o: db D4
#_1AB79B: #_E8A2o: db D4
#_1AB79C: #_E8A3o: db D4
#_1AB79D: #_E8A4o: db D4
#_1AB79E: #_E8A5o: db D4
#_1AB79F: #_E8A6o: db D4
#_1AB7A0: #_E8A7o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E8A8:
#_1AB7A1: #_E8A8o: db C4
#_1AB7A2: #_E8A9o: db C4
#_1AB7A3: #_E8AAo: db C4
#_1AB7A4: #_E8ABo: db C4
#_1AB7A5: #_E8ACo: db C4
#_1AB7A6: #_E8ADo: db C4
#_1AB7A7: #_E8AEo: db C4
#_1AB7A8: #_E8AFo: db C4
#_1AB7A9: #_E8B0o: db C4
#_1AB7AA: #_E8B1o: db C4
#_1AB7AB: #_E8B2o: db C4
#_1AB7AC: #_E8B3o: db C4
#_1AB7AD: #_E8B4o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E8B5:
#_1AB7AE: #_E8B5o: db As3
#_1AB7AF: #_E8B6o: db As3
#_1AB7B0: #_E8B7o: db As3
#_1AB7B1: #_E8B8o: db As3
#_1AB7B2: #_E8B9o: db As3
#_1AB7B3: #_E8BAo: db As3
#_1AB7B4: #_E8BBo: db As3
#_1AB7B5: #_E8BCo: db As3
#_1AB7B6: #_E8BDo: db As3
#_1AB7B7: #_E8BEo: db As3
#_1AB7B8: #_E8BFo: db As3
#_1AB7B9: #_E8C0o: db As3
#_1AB7BA: #_E8C1o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E8C2:
#_1AB7BB: #_E8C2o: db A3
#_1AB7BC: #_E8C3o: db A3
#_1AB7BD: #_E8C4o: db A3
#_1AB7BE: #_E8C5o: db A3
#_1AB7BF: #_E8C6o: db A3
#_1AB7C0: #_E8C7o: db A3
#_1AB7C1: #_E8C8o: db A3
#_1AB7C2: #_E8C9o: db A3
#_1AB7C3: #_E8CAo: db A3
#_1AB7C4: #_E8CBo: db A3
#_1AB7C5: #_E8CCo: db A3
#_1AB7C6: #_E8CDo: db A3
#_1AB7C7: #_E8CEo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song06_Sub_E8CF:
#_1AB7C8: #_E8CFo: db Ds4
#_1AB7C9: #_E8D0o: db Ds4
#_1AB7CA: #_E8D1o: db Ds4
#_1AB7CB: #_E8D2o: db Ds4
#_1AB7CC: #_E8D3o: db Ds4
#_1AB7CD: #_E8D4o: db Ds4
#_1AB7CE: #_E8D5o: db Ds4
#_1AB7CF: #_E8D6o: db Ds4
#_1AB7D0: #_E8D7o: db Ds4
#_1AB7D1: #_E8D8o: db Ds4
#_1AB7D2: #_E8D9o: db Ds4
#_1AB7D3: #_E8DAo: db Ds4
#_1AB7D4: #_E8DBo: db !PART_END

;===================================================================================================

Song07_KakarikoVillage:
#_1AB7D5: #_E8DCo: dw Song07_Segment0

Song07_Loop:
#_1AB7D7: #_E8DEo: dw Song07_Segment1
#_1AB7D9: #_E8E0o: dw Song07_Segment2
#_1AB7DB: #_E8E2o: dw Song07_Segment1
#_1AB7DD: #_E8E4o: dw Song07_Segment3
#_1AB7DF: #_E8E6o: dw Song07_Segment4
#_1AB7E1: #_E8E8o: dw Song07_Segment5
#_1AB7E3: #_E8EAo: dw Song07_Segment6
#_1AB7E5: #_E8ECo: dw !SONG_LOOP, Song07_Loop
#_1AB7E9: #_E8F0o: dw $0000

Song07_Segment1:
#_1AB7EB: #_E8F2o: dw Song07_Segment1_Track0
#_1AB7ED: #_E8F4o: dw Song07_Segment1_Track1
#_1AB7EF: #_E8F6o: dw Song07_Segment1_Track2
#_1AB7F1: #_E8F8o: dw Song07_Segment1_Track3
#_1AB7F3: #_E8FAo: dw Song07_Segment1_Track4
#_1AB7F5: #_E8FCo: dw Song07_Segment1_Track5
#_1AB7F7: #_E8FEo: dw $0000
#_1AB7F9: #_E900o: dw $0000

Song07_Segment2:
#_1AB7FB: #_E902o: dw Song07_Segment2_Track0
#_1AB7FD: #_E904o: dw Song07_Segment2_Track1
#_1AB7FF: #_E906o: dw Song07_Segment2_Track2
#_1AB801: #_E908o: dw Song07_Segment2_Track3
#_1AB803: #_E90Ao: dw Song07_Segment2_Track4
#_1AB805: #_E90Co: dw Song07_Segment2_Track5
#_1AB807: #_E90Eo: dw $0000
#_1AB809: #_E910o: dw $0000

Song07_Segment3:
#_1AB80B: #_E912o: dw Song07_Segment3_Track0
#_1AB80D: #_E914o: dw Song07_Segment3_Track1
#_1AB80F: #_E916o: dw Song07_Segment3_Track2
#_1AB811: #_E918o: dw Song07_Segment3_Track3
#_1AB813: #_E91Ao: dw Song07_Segment3_Track4
#_1AB815: #_E91Co: dw Song07_Segment3_Track5
#_1AB817: #_E91Eo: dw $0000
#_1AB819: #_E920o: dw $0000

Song07_Segment4:
#_1AB81B: #_E922o: dw Song07_Segment4_Track0
#_1AB81D: #_E924o: dw Song07_Segment4_Track1
#_1AB81F: #_E926o: dw Song07_Segment4_Track2
#_1AB821: #_E928o: dw Song07_Segment4_Track3
#_1AB823: #_E92Ao: dw $0000
#_1AB825: #_E92Co: dw Song07_Segment4_Track5
#_1AB827: #_E92Eo: dw $0000
#_1AB829: #_E930o: dw $0000

Song07_Segment5:
#_1AB82B: #_E932o: dw Song07_Segment5_Track0
#_1AB82D: #_E934o: dw Song07_Segment5_Track1
#_1AB82F: #_E936o: dw Song07_Segment5_Track2
#_1AB831: #_E938o: dw Song07_Segment5_Track3
#_1AB833: #_E93Ao: dw $0000
#_1AB835: #_E93Co: dw Song07_Segment5_Track5
#_1AB837: #_E93Eo: dw $0000
#_1AB839: #_E940o: dw $0000

Song07_Segment0:
#_1AB83B: #_E942o: dw Song07_Segment0_Track0
#_1AB83D: #_E944o: dw Song07_Segment0_Track1
#_1AB83F: #_E946o: dw Song07_Segment0_Track2
#_1AB841: #_E948o: dw Song07_Segment0_Track3
#_1AB843: #_E94Ao: dw Song07_Segment0_Track4
#_1AB845: #_E94Co: dw Song07_Segment0_Track5
#_1AB847: #_E94Eo: dw $0000
#_1AB849: #_E950o: dw $0000

Song07_Segment6:
#_1AB84B: #_E952o: dw Song07_Segment6_Track0
#_1AB84D: #_E954o: dw Song07_Segment6_Track1
#_1AB84F: #_E956o: dw Song07_Segment6_Track2
#_1AB851: #_E958o: dw Song07_Segment6_Track3
#_1AB853: #_E95Ao: dw Song07_Segment6_Track4
#_1AB855: #_E95Co: dw Song07_Segment6_Track5
#_1AB857: #_E95Eo: dw $0000
#_1AB859: #_E960o: dw $0000

;---------------------------------------------------------------------------------------------------

Song07_Segment1_Track0:
#_1AB85B: #_E962o: db !CALL_PART : dw Song07_Sub_ECDD : db 1
#_1AB85F: #_E966o: db $48, $6D ; duration, params
#_1AB861: #_E968o: db F5
#_1AB862: #_E969o: db $30 ; duration
#_1AB863: #_E96Ao: db !TIE
#_1AB864: #_E96Bo: db $18, $7D ; duration, params
#_1AB866: #_E96Do: db F4
#_1AB867: #_E96Eo: db !CALL_PART : dw Song07_Sub_ECDD : db 1
#_1AB86B: #_E972o: db $48, $6D ; duration, params
#_1AB86D: #_E974o: db F5
#_1AB86E: #_E975o: db $30 ; duration
#_1AB86F: #_E976o: db !TIE
#_1AB870: #_E977o: db $18, $7D ; duration, params
#_1AB872: #_E979o: db F5
#_1AB873: #_E97Ao: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Segment1_Track1:
#_1AB874: #_E97Bo: db $22, $6D ; duration, params
#_1AB876: #_E97Do: db As2
#_1AB877: #_E97Eo: db $24 ; duration
#_1AB878: #_E97Fo: db D4
#_1AB879: #_E980o: db G2
#_1AB87A: #_E981o: db As3
#_1AB87B: #_E982o: db C3
#_1AB87C: #_E983o: db F4
#_1AB87D: #_E984o: db F2
#_1AB87E: #_E985o: db Ds4
#_1AB87F: #_E986o: db As2
#_1AB880: #_E987o: db D4
#_1AB881: #_E988o: db G2
#_1AB882: #_E989o: db As3
#_1AB883: #_E98Ao: db C3
#_1AB884: #_E98Bo: db F4
#_1AB885: #_E98Co: db F2
#_1AB886: #_E98Do: db $26 ; duration
#_1AB887: #_E98Eo: db Ds4

;---------------------------------------------------------------------------------------------------

Song07_Segment1_Track2:
#_1AB888: #_E98Fo: db !CALL_PART : dw Song07_Sub_ECEA : db 1
#_1AB88C: #_E993o: db $0C ; duration
#_1AB88D: #_E994o: db R
#_1AB88E: #_E995o: db $24 ; duration
#_1AB88F: #_E996o: db D3
#_1AB890: #_E997o: db $18 ; duration
#_1AB891: #_E998o: db G3
#_1AB892: #_E999o: db $0C ; duration
#_1AB893: #_E99Ao: db R
#_1AB894: #_E99Bo: db $24 ; duration
#_1AB895: #_E99Co: db G3
#_1AB896: #_E99Do: db $18 ; duration
#_1AB897: #_E99Eo: db As3
#_1AB898: #_E99Fo: db $0C ; duration
#_1AB899: #_E9A0o: db R
#_1AB89A: #_E9A1o: db $24 ; duration
#_1AB89B: #_E9A2o: db F3
#_1AB89C: #_E9A3o: db $18 ; duration
#_1AB89D: #_E9A4o: db C4
#_1AB89E: #_E9A5o: db $0C ; duration
#_1AB89F: #_E9A6o: db R
#_1AB8A0: #_E9A7o: db $24 ; duration
#_1AB8A1: #_E9A8o: db F3
#_1AB8A2: #_E9A9o: db $18 ; duration
#_1AB8A3: #_E9AAo: db As3
#_1AB8A4: #_E9ABo: db !CALL_PART : dw Song07_Sub_ECFC : db 1

;---------------------------------------------------------------------------------------------------

Song07_Segment1_Track3:
#_1AB8A8: #_E9AFo: db !CALL_PART : dw Song07_Sub_ED0F : db 1
#_1AB8AC: #_E9B3o: db $18 ; duration
#_1AB8AD: #_E9B4o: db R
#_1AB8AE: #_E9B5o: db $24 ; duration
#_1AB8AF: #_E9B6o: db G3
#_1AB8B0: #_E9B7o: db $0C ; duration
#_1AB8B1: #_E9B8o: db D3
#_1AB8B2: #_E9B9o: db $18 ; duration
#_1AB8B3: #_E9BAo: db R
#_1AB8B4: #_E9BBo: db $24 ; duration
#_1AB8B5: #_E9BCo: db As3
#_1AB8B6: #_E9BDo: db $0C ; duration
#_1AB8B7: #_E9BEo: db G3
#_1AB8B8: #_E9BFo: db $18 ; duration
#_1AB8B9: #_E9C0o: db R
#_1AB8BA: #_E9C1o: db $24 ; duration
#_1AB8BB: #_E9C2o: db C4
#_1AB8BC: #_E9C3o: db $0C ; duration
#_1AB8BD: #_E9C4o: db A3
#_1AB8BE: #_E9C5o: db $18 ; duration
#_1AB8BF: #_E9C6o: db R
#_1AB8C0: #_E9C7o: db $24 ; duration
#_1AB8C1: #_E9C8o: db As3
#_1AB8C2: #_E9C9o: db $0C ; duration
#_1AB8C3: #_E9CAo: db F3
#_1AB8C4: #_E9CBo: db !CALL_PART : dw Song07_Sub_ED21 : db 1

;---------------------------------------------------------------------------------------------------

Song07_Segment1_Track4:
#_1AB8C8: #_E9CFo: db !INSTR, $16
#_1AB8CA: #_E9D1o: db !VOLUME, $C8
#_1AB8CC: #_E9D3o: db !VIBRATO, $14, $14, $14
#_1AB8D0: #_E9D7o: db !CALL_PART : dw Song07_Sub_ECDD : db 1
#_1AB8D4: #_E9DBo: db $48, $6D ; duration, params
#_1AB8D6: #_E9DDo: db F5
#_1AB8D7: #_E9DEo: db $30 ; duration
#_1AB8D8: #_E9DFo: db !TIE
#_1AB8D9: #_E9E0o: db $18, $7D ; duration, params
#_1AB8DB: #_E9E2o: db F4
#_1AB8DC: #_E9E3o: db !CALL_PART : dw Song07_Sub_ECDD : db 1
#_1AB8E0: #_E9E7o: db $48, $6D ; duration, params
#_1AB8E2: #_E9E9o: db F5
#_1AB8E3: #_E9EAo: db $30 ; duration
#_1AB8E4: #_E9EBo: db !TIE
#_1AB8E5: #_E9ECo: db !INSTR, $0E
#_1AB8E7: #_E9EEo: db $18, $7D ; duration, params
#_1AB8E9: #_E9F0o: db F4

;---------------------------------------------------------------------------------------------------

Song07_Segment1_Track5:
#_1AB8EA: #_E9F1o: db !INSTR, $0A
#_1AB8EC: #_E9F3o: db !VOLUME, $A0
#_1AB8EE: #_E9F5o: db !VIBRATO, $1E, $14, $14
#_1AB8F2: #_E9F9o: db $08 ; duration
#_1AB8F3: #_E9FAo: db R
#_1AB8F4: #_E9FBo: db $30, $6D ; duration, params
#_1AB8F6: #_E9FDo: db As4
#_1AB8F7: #_E9FEo: db $18, $7D ; duration, params
#_1AB8F9: #_EA00o: db F4
#_1AB8FA: #_EA01o: db $30, $6D ; duration, params
#_1AB8FC: #_EA03o: db D5
#_1AB8FD: #_EA04o: db $18, $7D ; duration, params
#_1AB8FF: #_EA06o: db As4
#_1AB900: #_EA07o: db $48, $6D ; duration, params
#_1AB902: #_EA09o: db F5
#_1AB903: #_EA0Ao: db $30 ; duration
#_1AB904: #_EA0Bo: db !TIE
#_1AB905: #_EA0Co: db $18, $7D ; duration, params
#_1AB907: #_EA0Eo: db F4
#_1AB908: #_EA0Fo: db !CALL_PART : dw Song07_Sub_ECDD : db 1
#_1AB90C: #_EA13o: db $48, $6D ; duration, params
#_1AB90E: #_EA15o: db F5
#_1AB90F: #_EA16o: db $30 ; duration
#_1AB910: #_EA17o: db !TIE
#_1AB911: #_EA18o: db $10, $7D ; duration, params
#_1AB913: #_EA1Ao: db F5

;---------------------------------------------------------------------------------------------------

Song07_Segment2_Track0:
#_1AB914: #_EA1Bo: db $48, $6D ; duration, params
#_1AB916: #_EA1Do: db G5
#_1AB917: #_EA1Eo: db $30 ; duration
#_1AB918: #_EA1Fo: db A4
#_1AB919: #_EA20o: db $18, $7D ; duration, params
#_1AB91B: #_EA22o: db G5
#_1AB91C: #_EA23o: db $48, $6D ; duration, params
#_1AB91E: #_EA25o: db F5
#_1AB91F: #_EA26o: db D5
#_1AB920: #_EA27o: db D5
#_1AB921: #_EA28o: db !CALL_PART : dw Song07_Sub_ED34 : db 1
#_1AB925: #_EA2Co: db $30 ; duration
#_1AB926: #_EA2Do: db !TIE
#_1AB927: #_EA2Eo: db $18, $7D ; duration, params
#_1AB929: #_EA30o: db F4
#_1AB92A: #_EA31o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Segment2_Track1:
#_1AB92B: #_EA32o: db $22, $6D ; duration, params
#_1AB92D: #_EA34o: db Ds2
#_1AB92E: #_EA35o: db $24 ; duration
#_1AB92F: #_EA36o: db G3
#_1AB930: #_EA37o: db F2
#_1AB931: #_EA38o: db F3
#_1AB932: #_EA39o: db As2
#_1AB933: #_EA3Ao: db F3
#_1AB934: #_EA3Bo: db G2
#_1AB935: #_EA3Co: db D3
#_1AB936: #_EA3Do: db C3
#_1AB937: #_EA3Eo: db G3
#_1AB938: #_EA3Fo: db F2
#_1AB939: #_EA40o: db C3
#_1AB93A: #_EA41o: db As2
#_1AB93B: #_EA42o: db F3
#_1AB93C: #_EA43o: db As2
#_1AB93D: #_EA44o: db $26 ; duration
#_1AB93E: #_EA45o: db F3

;---------------------------------------------------------------------------------------------------

Song07_Segment2_Track2:
#_1AB93F: #_EA46o: db !CALL_PART : dw Song07_Sub_ED3D : db 1
#_1AB943: #_EA4Ao: db $0C ; duration
#_1AB944: #_EA4Bo: db R
#_1AB945: #_EA4Co: db $24 ; duration
#_1AB946: #_EA4Do: db D3
#_1AB947: #_EA4Eo: db $18 ; duration
#_1AB948: #_EA4Fo: db As3
#_1AB949: #_EA50o: db !CALL_PART : dw Song07_Sub_ED59 : db 1
#_1AB94D: #_EA54o: db $0C ; duration
#_1AB94E: #_EA55o: db R
#_1AB94F: #_EA56o: db $24 ; duration
#_1AB950: #_EA57o: db F3
#_1AB951: #_EA58o: db $1A ; duration
#_1AB952: #_EA59o: db As3

;---------------------------------------------------------------------------------------------------

Song07_Segment2_Track3:
#_1AB953: #_EA5Ao: db !CALL_PART : dw Song07_Sub_ED6C : db 1
#_1AB957: #_EA5Eo: db $18 ; duration
#_1AB958: #_EA5Fo: db R
#_1AB959: #_EA60o: db $24 ; duration
#_1AB95A: #_EA61o: db As3
#_1AB95B: #_EA62o: db $0C ; duration
#_1AB95C: #_EA63o: db F3
#_1AB95D: #_EA64o: db $18 ; duration
#_1AB95E: #_EA65o: db R
#_1AB95F: #_EA66o: db $24 ; duration
#_1AB960: #_EA67o: db As3
#_1AB961: #_EA68o: db $0C ; duration
#_1AB962: #_EA69o: db D3
#_1AB963: #_EA6Ao: db !CALL_PART : dw Song07_Sub_ED82 : db 1
#_1AB967: #_EA6Eo: db $18 ; duration
#_1AB968: #_EA6Fo: db R
#_1AB969: #_EA70o: db $24 ; duration
#_1AB96A: #_EA71o: db As3
#_1AB96B: #_EA72o: db $0E ; duration
#_1AB96C: #_EA73o: db F3

;---------------------------------------------------------------------------------------------------

Song07_Segment2_Track4:
#_1AB96D: #_EA74o: db $48, $6D ; duration, params
#_1AB96F: #_EA76o: db G4
#_1AB970: #_EA77o: db $30 ; duration
#_1AB971: #_EA78o: db A3
#_1AB972: #_EA79o: db $18 ; duration
#_1AB973: #_EA7Ao: db G4
#_1AB974: #_EA7Bo: db $48 ; duration
#_1AB975: #_EA7Co: db F4
#_1AB976: #_EA7Do: db D4
#_1AB977: #_EA7Eo: db D4
#_1AB978: #_EA7Fo: db $30 ; duration
#_1AB979: #_EA80o: db D4
#_1AB97A: #_EA81o: db $18 ; duration
#_1AB97B: #_EA82o: db C4
#_1AB97C: #_EA83o: db $48 ; duration
#_1AB97D: #_EA84o: db As3
#_1AB97E: #_EA85o: db $30 ; duration
#_1AB97F: #_EA86o: db !TIE
#_1AB980: #_EA87o: db !INSTR, $16
#_1AB982: #_EA89o: db $18, $7D ; duration, params
#_1AB984: #_EA8Bo: db F4

;---------------------------------------------------------------------------------------------------

Song07_Segment2_Track5:
#_1AB985: #_EA8Co: db !CALL_PART : dw Song07_Sub_ED95 : db 1
#_1AB989: #_EA90o: db $30 ; duration
#_1AB98A: #_EA91o: db A4
#_1AB98B: #_EA92o: db $18, $7D ; duration, params
#_1AB98D: #_EA94o: db G5
#_1AB98E: #_EA95o: db $48, $6D ; duration, params
#_1AB990: #_EA97o: db F5
#_1AB991: #_EA98o: db D5
#_1AB992: #_EA99o: db D5
#_1AB993: #_EA9Ao: db !CALL_PART : dw Song07_Sub_ED34 : db 1
#_1AB997: #_EA9Eo: db $30 ; duration
#_1AB998: #_EA9Fo: db !TIE
#_1AB999: #_EAA0o: db $10, $7D ; duration, params
#_1AB99B: #_EAA2o: db F4

;---------------------------------------------------------------------------------------------------

Song07_Segment3_Track0:
#_1AB99C: #_EAA3o: db $48, $6D ; duration, params
#_1AB99E: #_EAA5o: db G5
#_1AB99F: #_EAA6o: db $30 ; duration
#_1AB9A0: #_EAA7o: db A4
#_1AB9A1: #_EAA8o: db $18, $7D ; duration, params
#_1AB9A3: #_EAAAo: db G5
#_1AB9A4: #_EAABo: db $48, $6D ; duration, params
#_1AB9A6: #_EAADo: db F5
#_1AB9A7: #_EAAEo: db D5
#_1AB9A8: #_EAAFo: db D5
#_1AB9A9: #_EAB0o: db !CALL_PART : dw Song07_Sub_ED34 : db 1
#_1AB9AD: #_EAB4o: db $30 ; duration
#_1AB9AE: #_EAB5o: db !TIE
#_1AB9AF: #_EAB6o: db $18, $7D ; duration, params
#_1AB9B1: #_EAB8o: db As4
#_1AB9B2: #_EAB9o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Segment3_Track1:
#_1AB9B3: #_EABAo: db $22, $6D ; duration, params
#_1AB9B5: #_EABCo: db Ds2
#_1AB9B6: #_EABDo: db $24 ; duration
#_1AB9B7: #_EABEo: db G3
#_1AB9B8: #_EABFo: db F2
#_1AB9B9: #_EAC0o: db F3
#_1AB9BA: #_EAC1o: db As2
#_1AB9BB: #_EAC2o: db F3
#_1AB9BC: #_EAC3o: db G2
#_1AB9BD: #_EAC4o: db D3
#_1AB9BE: #_EAC5o: db C3
#_1AB9BF: #_EAC6o: db G3
#_1AB9C0: #_EAC7o: db F2
#_1AB9C1: #_EAC8o: db C3
#_1AB9C2: #_EAC9o: db As2
#_1AB9C3: #_EACAo: db F3
#_1AB9C4: #_EACBo: db As2
#_1AB9C5: #_EACCo: db $26 ; duration
#_1AB9C6: #_EACDo: db F3

;---------------------------------------------------------------------------------------------------

Song07_Segment3_Track2:
#_1AB9C7: #_EACEo: db !CALL_PART : dw Song07_Sub_ED3D : db 1
#_1AB9CB: #_EAD2o: db $0C ; duration
#_1AB9CC: #_EAD3o: db R
#_1AB9CD: #_EAD4o: db $24 ; duration
#_1AB9CE: #_EAD5o: db D3
#_1AB9CF: #_EAD6o: db $18 ; duration
#_1AB9D0: #_EAD7o: db As3
#_1AB9D1: #_EAD8o: db !CALL_PART : dw Song07_Sub_ED59 : db 1
#_1AB9D5: #_EADCo: db $0C ; duration
#_1AB9D6: #_EADDo: db R
#_1AB9D7: #_EADEo: db $24 ; duration
#_1AB9D8: #_EADFo: db F3
#_1AB9D9: #_EAE0o: db $1A ; duration
#_1AB9DA: #_EAE1o: db As3

;---------------------------------------------------------------------------------------------------

Song07_Segment3_Track3:
#_1AB9DB: #_EAE2o: db !CALL_PART : dw Song07_Sub_ED6C : db 1
#_1AB9DF: #_EAE6o: db $18 ; duration
#_1AB9E0: #_EAE7o: db R
#_1AB9E1: #_EAE8o: db $24 ; duration
#_1AB9E2: #_EAE9o: db As3
#_1AB9E3: #_EAEAo: db $0C ; duration
#_1AB9E4: #_EAEBo: db F3
#_1AB9E5: #_EAECo: db $18 ; duration
#_1AB9E6: #_EAEDo: db R
#_1AB9E7: #_EAEEo: db $24 ; duration
#_1AB9E8: #_EAEFo: db As3
#_1AB9E9: #_EAF0o: db $0C ; duration
#_1AB9EA: #_EAF1o: db D3
#_1AB9EB: #_EAF2o: db !CALL_PART : dw Song07_Sub_ED82 : db 1
#_1AB9EF: #_EAF6o: db $18 ; duration
#_1AB9F0: #_EAF7o: db R
#_1AB9F1: #_EAF8o: db $24 ; duration
#_1AB9F2: #_EAF9o: db As3
#_1AB9F3: #_EAFAo: db $0E ; duration
#_1AB9F4: #_EAFBo: db F3

;---------------------------------------------------------------------------------------------------

Song07_Segment3_Track4:
#_1AB9F5: #_EAFCo: db $48, $6D ; duration, params
#_1AB9F7: #_EAFEo: db G4
#_1AB9F8: #_EAFFo: db $30 ; duration
#_1AB9F9: #_EB00o: db A3
#_1AB9FA: #_EB01o: db $18 ; duration
#_1AB9FB: #_EB02o: db G4
#_1AB9FC: #_EB03o: db $48 ; duration
#_1AB9FD: #_EB04o: db F4
#_1AB9FE: #_EB05o: db D4
#_1AB9FF: #_EB06o: db D4
#_1ABA00: #_EB07o: db $30 ; duration
#_1ABA01: #_EB08o: db D4
#_1ABA02: #_EB09o: db $18 ; duration
#_1ABA03: #_EB0Ao: db C4
#_1ABA04: #_EB0Bo: db $48 ; duration
#_1ABA05: #_EB0Co: db As3
#_1ABA06: #_EB0Do: db $30 ; duration
#_1ABA07: #_EB0Eo: db !TIE
#_1ABA08: #_EB0Fo: db !INSTR, $16
#_1ABA0A: #_EB11o: db $18 ; duration
#_1ABA0B: #_EB12o: db R

;---------------------------------------------------------------------------------------------------

Song07_Segment3_Track5:
#_1ABA0C: #_EB13o: db !CALL_PART : dw Song07_Sub_ED95 : db 1
#_1ABA10: #_EB17o: db $30 ; duration
#_1ABA11: #_EB18o: db A4
#_1ABA12: #_EB19o: db $18, $7D ; duration, params
#_1ABA14: #_EB1Bo: db G5
#_1ABA15: #_EB1Co: db $48, $6D ; duration, params
#_1ABA17: #_EB1Eo: db F5
#_1ABA18: #_EB1Fo: db D5
#_1ABA19: #_EB20o: db D5
#_1ABA1A: #_EB21o: db !CALL_PART : dw Song07_Sub_ED34 : db 1
#_1ABA1E: #_EB25o: db $30 ; duration
#_1ABA1F: #_EB26o: db !TIE
#_1ABA20: #_EB27o: db $10, $7D ; duration, params
#_1ABA22: #_EB29o: db As4

;---------------------------------------------------------------------------------------------------

Song07_Segment4_Track0:
#_1ABA23: #_EB2Ao: db $48, $6D ; duration, params
#_1ABA25: #_EB2Co: db As4
#_1ABA26: #_EB2Do: db $30 ; duration
#_1ABA27: #_EB2Eo: db A4
#_1ABA28: #_EB2Fo: db $18, $7D ; duration, params
#_1ABA2A: #_EB31o: db C5
#_1ABA2B: #_EB32o: db $48, $6D ; duration, params
#_1ABA2D: #_EB34o: db As4
#_1ABA2E: #_EB35o: db F4
#_1ABA2F: #_EB36o: db $30 ; duration
#_1ABA30: #_EB37o: db Ds4
#_1ABA31: #_EB38o: db $18 ; duration
#_1ABA32: #_EB39o: db D4
#_1ABA33: #_EB3Ao: db $30 ; duration
#_1ABA34: #_EB3Bo: db Ds4
#_1ABA35: #_EB3Co: db $18, $7D ; duration, params
#_1ABA37: #_EB3Eo: db F4
#_1ABA38: #_EB3Fo: db $48, $6D ; duration, params
#_1ABA3A: #_EB41o: db D4
#_1ABA3B: #_EB42o: db $30 ; duration
#_1ABA3C: #_EB43o: db !TIE
#_1ABA3D: #_EB44o: db $18, $7D ; duration, params
#_1ABA3F: #_EB46o: db As4
#_1ABA40: #_EB47o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Segment4_Track1:
#_1ABA41: #_EB48o: db $24, $6D ; duration, params
#_1ABA43: #_EB4Ao: db Ds2
#_1ABA44: #_EB4Bo: db G3
#_1ABA45: #_EB4Co: db Ds2
#_1ABA46: #_EB4Do: db G3
#_1ABA47: #_EB4Eo: db D2
#_1ABA48: #_EB4Fo: db F3
#_1ABA49: #_EB50o: db D2
#_1ABA4A: #_EB51o: db F3
#_1ABA4B: #_EB52o: db C3
#_1ABA4C: #_EB53o: db G3
#_1ABA4D: #_EB54o: db F2
#_1ABA4E: #_EB55o: db C3
#_1ABA4F: #_EB56o: db As2
#_1ABA50: #_EB57o: db F3
#_1ABA51: #_EB58o: db Gs2
#_1ABA52: #_EB59o: db F3

;---------------------------------------------------------------------------------------------------

Song07_Segment4_Track2:
#_1ABA53: #_EB5Ao: db !CALL_PART : dw Song07_Sub_EDA3 : db 1
#_1ABA57: #_EB5Eo: db !CALL_PART : dw Song07_Sub_EDB9 : db 2
#_1ABA5B: #_EB62o: db !CALL_PART : dw Song07_Sub_ED59 : db 1
#_1ABA5F: #_EB66o: db $0C ; duration
#_1ABA60: #_EB67o: db R
#_1ABA61: #_EB68o: db $24 ; duration
#_1ABA62: #_EB69o: db F3
#_1ABA63: #_EB6Ao: db $18 ; duration
#_1ABA64: #_EB6Bo: db Gs3

;---------------------------------------------------------------------------------------------------

Song07_Segment4_Track3:
#_1ABA65: #_EB6Co: db !CALL_PART : dw Song07_Sub_EDC0 : db 1
#_1ABA69: #_EB70o: db $18 ; duration
#_1ABA6A: #_EB71o: db R
#_1ABA6B: #_EB72o: db $24 ; duration
#_1ABA6C: #_EB73o: db As3
#_1ABA6D: #_EB74o: db $0C ; duration
#_1ABA6E: #_EB75o: db G3
#_1ABA6F: #_EB76o: db !CALL_PART : dw Song07_Sub_EDD0 : db 2
#_1ABA73: #_EB7Ao: db !CALL_PART : dw Song07_Sub_ED82 : db 1
#_1ABA77: #_EB7Eo: db $18 ; duration
#_1ABA78: #_EB7Fo: db R
#_1ABA79: #_EB80o: db $24 ; duration
#_1ABA7A: #_EB81o: db Gs3
#_1ABA7B: #_EB82o: db $0C ; duration
#_1ABA7C: #_EB83o: db F3

;---------------------------------------------------------------------------------------------------

Song07_Segment4_Track5:
#_1ABA7D: #_EB84o: db !CALL_PART : dw Song07_Sub_EDD7 : db 1
#_1ABA81: #_EB88o: db $30 ; duration
#_1ABA82: #_EB89o: db A4
#_1ABA83: #_EB8Ao: db $18, $7D ; duration, params
#_1ABA85: #_EB8Co: db C5
#_1ABA86: #_EB8Do: db $48, $6D ; duration, params
#_1ABA88: #_EB8Fo: db As4
#_1ABA89: #_EB90o: db F4
#_1ABA8A: #_EB91o: db $30 ; duration
#_1ABA8B: #_EB92o: db Ds4
#_1ABA8C: #_EB93o: db $18 ; duration
#_1ABA8D: #_EB94o: db D4
#_1ABA8E: #_EB95o: db $30 ; duration
#_1ABA8F: #_EB96o: db Ds4
#_1ABA90: #_EB97o: db $18, $7D ; duration, params
#_1ABA92: #_EB99o: db F4
#_1ABA93: #_EB9Ao: db $48, $6D ; duration, params
#_1ABA95: #_EB9Co: db D4
#_1ABA96: #_EB9Do: db $30 ; duration
#_1ABA97: #_EB9Eo: db !TIE
#_1ABA98: #_EB9Fo: db $10, $7D ; duration, params
#_1ABA9A: #_EBA1o: db As4

;---------------------------------------------------------------------------------------------------

Song07_Segment5_Track0:
#_1ABA9B: #_EBA2o: db $48, $6D ; duration, params
#_1ABA9D: #_EBA4o: db As4
#_1ABA9E: #_EBA5o: db $30 ; duration
#_1ABA9F: #_EBA6o: db A4
#_1ABAA0: #_EBA7o: db $18, $7D ; duration, params
#_1ABAA2: #_EBA9o: db C5
#_1ABAA3: #_EBAAo: db $30, $6D ; duration, params
#_1ABAA5: #_EBACo: db As4
#_1ABAA6: #_EBADo: db $18, $7D ; duration, params
#_1ABAA8: #_EBAFo: db F4
#_1ABAA9: #_EBB0o: db $48, $6D ; duration, params
#_1ABAAB: #_EBB2o: db F5
#_1ABAAC: #_EBB3o: db Ds5
#_1ABAAD: #_EBB4o: db !CALL_PART : dw Song07_Sub_ED34 : db 1
#_1ABAB1: #_EBB8o: db !TIE
#_1ABAB2: #_EBB9o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Segment5_Track1:
#_1ABAB3: #_EBBAo: db $24, $6D ; duration, params
#_1ABAB5: #_EBBCo: db Ds2
#_1ABAB6: #_EBBDo: db G3
#_1ABAB7: #_EBBEo: db Ds2
#_1ABAB8: #_EBBFo: db G3
#_1ABAB9: #_EBC0o: db D2
#_1ABABA: #_EBC1o: db F3
#_1ABABB: #_EBC2o: db D2
#_1ABABC: #_EBC3o: db F3
#_1ABABD: #_EBC4o: db C3
#_1ABABE: #_EBC5o: db G3
#_1ABABF: #_EBC6o: db F2
#_1ABAC0: #_EBC7o: db C3
#_1ABAC1: #_EBC8o: db As2
#_1ABAC2: #_EBC9o: db F3
#_1ABAC3: #_EBCAo: db As2
#_1ABAC4: #_EBCBo: db D4

;---------------------------------------------------------------------------------------------------

Song07_Segment5_Track2:
#_1ABAC5: #_EBCCo: db !CALL_PART : dw Song07_Sub_EDA3 : db 1
#_1ABAC9: #_EBD0o: db !CALL_PART : dw Song07_Sub_EDB9 : db 2
#_1ABACD: #_EBD4o: db !CALL_PART : dw Song07_Sub_ED59 : db 1
#_1ABAD1: #_EBD8o: db $0C ; duration
#_1ABAD2: #_EBD9o: db R
#_1ABAD3: #_EBDAo: db $24 ; duration
#_1ABAD4: #_EBDBo: db F3
#_1ABAD5: #_EBDCo: db $18 ; duration
#_1ABAD6: #_EBDDo: db As3

;---------------------------------------------------------------------------------------------------

Song07_Segment5_Track3:
#_1ABAD7: #_EBDEo: db !CALL_PART : dw Song07_Sub_EDC0 : db 1
#_1ABADB: #_EBE2o: db $18 ; duration
#_1ABADC: #_EBE3o: db R
#_1ABADD: #_EBE4o: db $24 ; duration
#_1ABADE: #_EBE5o: db As3
#_1ABADF: #_EBE6o: db $0C ; duration
#_1ABAE0: #_EBE7o: db G3
#_1ABAE1: #_EBE8o: db !CALL_PART : dw Song07_Sub_EDD0 : db 2
#_1ABAE5: #_EBECo: db !CALL_PART : dw Song07_Sub_ED82 : db 1
#_1ABAE9: #_EBF0o: db $18 ; duration
#_1ABAEA: #_EBF1o: db R
#_1ABAEB: #_EBF2o: db $24 ; duration
#_1ABAEC: #_EBF3o: db As3
#_1ABAED: #_EBF4o: db $0C ; duration
#_1ABAEE: #_EBF5o: db F3

;---------------------------------------------------------------------------------------------------

Song07_Segment5_Track5:
#_1ABAEF: #_EBF6o: db !CALL_PART : dw Song07_Sub_EDD7 : db 1
#_1ABAF3: #_EBFAo: db $30 ; duration
#_1ABAF4: #_EBFBo: db A4
#_1ABAF5: #_EBFCo: db $18, $7D ; duration, params
#_1ABAF7: #_EBFEo: db C5
#_1ABAF8: #_EBFFo: db $30, $6D ; duration, params
#_1ABAFA: #_EC01o: db As4
#_1ABAFB: #_EC02o: db $18, $7D ; duration, params
#_1ABAFD: #_EC04o: db F4
#_1ABAFE: #_EC05o: db $48, $6D ; duration, params
#_1ABB00: #_EC07o: db F5
#_1ABB01: #_EC08o: db Ds5
#_1ABB02: #_EC09o: db !CALL_PART : dw Song07_Sub_ED34 : db 1
#_1ABB06: #_EC0Do: db $40 ; duration
#_1ABB07: #_EC0Eo: db !TIE

;---------------------------------------------------------------------------------------------------

Song07_Segment0_Track0:
#_1ABB08: #_EC0Fo: db !SET_PERC, $18
#_1ABB0A: #_EC11o: db !MASTER_VOLUME, $B4
#_1ABB0C: #_EC13o: db !TEMPO, $15
#_1ABB0E: #_EC15o: db !ECHO_CONFIG, $FF, $00, $00
#_1ABB12: #_EC19o: db !ECHO_FILTER, $02, $1E, $02
#_1ABB16: #_EC1Do: db !ECHO_GRAD, $1E, $0A, $0A
#_1ABB1A: #_EC21o: db !PAN, $0F
#_1ABB1C: #_EC23o: db !VOLUME, $C8
#_1ABB1E: #_EC25o: db !INSTR, $0A
#_1ABB20: #_EC27o: db !VIBRATO, $1E, $14, $14
#_1ABB24: #_EC2Bo: db $48 ; duration
#_1ABB25: #_EC2Co: db R
#_1ABB26: #_EC2Do: db R
#_1ABB27: #_EC2Eo: db !CALL_PART : dw Song07_Sub_EDE5 : db 1
#_1ABB2B: #_EC32o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Segment0_Track1:
#_1ABB2C: #_EC33o: db !PAN, $05
#_1ABB2E: #_EC35o: db !VOLUME, $C8
#_1ABB30: #_EC37o: db !INSTR, $09
#_1ABB32: #_EC39o: db !VIBRATO, $1E, $14, $14
#_1ABB36: #_EC3Do: db $22, $6D ; duration, params
#_1ABB38: #_EC3Fo: db As2
#_1ABB39: #_EC40o: db $24 ; duration
#_1ABB3A: #_EC41o: db D4
#_1ABB3B: #_EC42o: db G2
#_1ABB3C: #_EC43o: db As3
#_1ABB3D: #_EC44o: db C3
#_1ABB3E: #_EC45o: db F4
#_1ABB3F: #_EC46o: db F2
#_1ABB40: #_EC47o: db $26 ; duration
#_1ABB41: #_EC48o: db Ds4

;---------------------------------------------------------------------------------------------------

Song07_Segment0_Track2:
#_1ABB42: #_EC49o: db !CALL_PART : dw Song07_Sub_ECEA : db 1
#_1ABB46: #_EC4Do: db !CALL_PART : dw Song07_Sub_ECFC : db 1

;---------------------------------------------------------------------------------------------------

Song07_Segment0_Track3:
#_1ABB4A: #_EC51o: db !CALL_PART : dw Song07_Sub_ED0F : db 1
#_1ABB4E: #_EC55o: db !CALL_PART : dw Song07_Sub_ED21 : db 1

;---------------------------------------------------------------------------------------------------

Song07_Segment0_Track4:
#_1ABB52: #_EC59o: db !INSTR, $16
#_1ABB54: #_EC5Bo: db !VOLUME, $C8
#_1ABB56: #_EC5Do: db !VIBRATO, $14, $14, $14
#_1ABB5A: #_EC61o: db $48 ; duration
#_1ABB5B: #_EC62o: db R
#_1ABB5C: #_EC63o: db R
#_1ABB5D: #_EC64o: db !CALL_PART : dw Song07_Sub_EDE5 : db 1

;---------------------------------------------------------------------------------------------------

Song07_Segment0_Track5:
#_1ABB61: #_EC68o: db !CALL_PART : dw Song07_Sub_EDEC : db 1
#_1ABB65: #_EC6Co: db $48 ; duration
#_1ABB66: #_EC6Do: db R
#_1ABB67: #_EC6Eo: db R
#_1ABB68: #_EC6Fo: db $30 ; duration
#_1ABB69: #_EC70o: db R
#_1ABB6A: #_EC71o: db $10, $7D ; duration, params
#_1ABB6C: #_EC73o: db F4

;---------------------------------------------------------------------------------------------------

Song07_Segment6_Track0:
#_1ABB6D: #_EC74o: db !PAN, $0F
#_1ABB6F: #_EC76o: db !VOLUME, $C8
#_1ABB71: #_EC78o: db !INSTR, $0A
#_1ABB73: #_EC7Ao: db !VIBRATO, $1E, $14, $14
#_1ABB77: #_EC7Eo: db $48 ; duration
#_1ABB78: #_EC7Fo: db R
#_1ABB79: #_EC80o: db !CALL_PART : dw Song07_Sub_EDE5 : db 1
#_1ABB7D: #_EC84o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Segment6_Track1:
#_1ABB7E: #_EC85o: db !PAN, $05
#_1ABB80: #_EC87o: db !VOLUME, $C8
#_1ABB82: #_EC89o: db !INSTR, $09
#_1ABB84: #_EC8Bo: db !VIBRATO, $1E, $14, $14
#_1ABB88: #_EC8Fo: db $22, $6D ; duration, params
#_1ABB8A: #_EC91o: db G2
#_1ABB8B: #_EC92o: db $24 ; duration
#_1ABB8C: #_EC93o: db As3
#_1ABB8D: #_EC94o: db C3
#_1ABB8E: #_EC95o: db F4
#_1ABB8F: #_EC96o: db F2
#_1ABB90: #_EC97o: db $26 ; duration
#_1ABB91: #_EC98o: db Ds4

;---------------------------------------------------------------------------------------------------

Song07_Segment6_Track2:
#_1ABB92: #_EC99o: db !PAN, $0D
#_1ABB94: #_EC9Bo: db !INSTR, $09
#_1ABB96: #_EC9Do: db !VOLUME, $B4
#_1ABB98: #_EC9Fo: db !VIBRATO, $1E, $14, $14
#_1ABB9C: #_ECA3o: db $0A ; duration
#_1ABB9D: #_ECA4o: db R
#_1ABB9E: #_ECA5o: db $24, $7D ; duration, params
#_1ABBA0: #_ECA7o: db D3
#_1ABBA1: #_ECA8o: db $18 ; duration
#_1ABBA2: #_ECA9o: db G3
#_1ABBA3: #_ECAAo: db !CALL_PART : dw Song07_Sub_EDF7 : db 1

;---------------------------------------------------------------------------------------------------

Song07_Segment6_Track3:
#_1ABBA7: #_ECAEo: db !PAN, $0B
#_1ABBA9: #_ECB0o: db !INSTR, $09
#_1ABBAB: #_ECB2o: db !VOLUME, $B4
#_1ABBAD: #_ECB4o: db !VIBRATO, $1E, $14, $14
#_1ABBB1: #_ECB8o: db $16 ; duration
#_1ABBB2: #_ECB9o: db R
#_1ABBB3: #_ECBAo: db $24, $7D ; duration, params
#_1ABBB5: #_ECBCo: db G3
#_1ABBB6: #_ECBDo: db $0C ; duration
#_1ABBB7: #_ECBEo: db D3
#_1ABBB8: #_ECBFo: db !CALL_PART : dw Song07_Sub_EE04 : db 1

;---------------------------------------------------------------------------------------------------

Song07_Segment6_Track4:
#_1ABBBC: #_ECC3o: db !INSTR, $16
#_1ABBBE: #_ECC5o: db !VOLUME, $C8
#_1ABBC0: #_ECC7o: db !VIBRATO, $14, $14, $14
#_1ABBC4: #_ECCBo: db $48 ; duration
#_1ABBC5: #_ECCCo: db R
#_1ABBC6: #_ECCDo: db !CALL_PART : dw Song07_Sub_EDE5 : db 1

;---------------------------------------------------------------------------------------------------

Song07_Segment6_Track5:
#_1ABBCA: #_ECD1o: db !CALL_PART : dw Song07_Sub_EDEC : db 1
#_1ABBCE: #_ECD5o: db $48 ; duration
#_1ABBCF: #_ECD6o: db R
#_1ABBD0: #_ECD7o: db $30 ; duration
#_1ABBD1: #_ECD8o: db R
#_1ABBD2: #_ECD9o: db $10, $7D ; duration, params
#_1ABBD4: #_ECDBo: db F4
#_1ABBD5: #_ECDCo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_ECDD:
#_1ABBD6: #_ECDDo: db $30, $6D ; duration, params
#_1ABBD8: #_ECDFo: db As4
#_1ABBD9: #_ECE0o: db $18, $7D ; duration, params
#_1ABBDB: #_ECE2o: db F4
#_1ABBDC: #_ECE3o: db $30, $6D ; duration, params
#_1ABBDE: #_ECE5o: db D5
#_1ABBDF: #_ECE6o: db $18, $7D ; duration, params
#_1ABBE1: #_ECE8o: db As4
#_1ABBE2: #_ECE9o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_ECEA:
#_1ABBE3: #_ECEAo: db !PAN, $0D
#_1ABBE5: #_ECECo: db !INSTR, $09
#_1ABBE7: #_ECEEo: db !VOLUME, $B4
#_1ABBE9: #_ECF0o: db !VIBRATO, $1E, $14, $14
#_1ABBED: #_ECF4o: db $0A ; duration
#_1ABBEE: #_ECF5o: db R
#_1ABBEF: #_ECF6o: db $24, $7D ; duration, params
#_1ABBF1: #_ECF8o: db F3
#_1ABBF2: #_ECF9o: db $18 ; duration
#_1ABBF3: #_ECFAo: db As3
#_1ABBF4: #_ECFBo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_ECFC:
#_1ABBF5: #_ECFCo: db $0C ; duration
#_1ABBF6: #_ECFDo: db R
#_1ABBF7: #_ECFEo: db $24 ; duration
#_1ABBF8: #_ECFFo: db D3
#_1ABBF9: #_ED00o: db $18 ; duration
#_1ABBFA: #_ED01o: db G3
#_1ABBFB: #_ED02o: db $0C ; duration
#_1ABBFC: #_ED03o: db R
#_1ABBFD: #_ED04o: db $24 ; duration
#_1ABBFE: #_ED05o: db G3
#_1ABBFF: #_ED06o: db $18 ; duration
#_1ABC00: #_ED07o: db As3
#_1ABC01: #_ED08o: db $0C ; duration
#_1ABC02: #_ED09o: db R
#_1ABC03: #_ED0Ao: db $24 ; duration
#_1ABC04: #_ED0Bo: db F3
#_1ABC05: #_ED0Co: db $1A ; duration
#_1ABC06: #_ED0Do: db C4
#_1ABC07: #_ED0Eo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_ED0F:
#_1ABC08: #_ED0Fo: db !PAN, $0B
#_1ABC0A: #_ED11o: db !INSTR, $09
#_1ABC0C: #_ED13o: db !VOLUME, $B4
#_1ABC0E: #_ED15o: db !VIBRATO, $1E, $14, $14
#_1ABC12: #_ED19o: db $16 ; duration
#_1ABC13: #_ED1Ao: db R
#_1ABC14: #_ED1Bo: db $24, $7D ; duration, params
#_1ABC16: #_ED1Do: db As3
#_1ABC17: #_ED1Eo: db $0C ; duration
#_1ABC18: #_ED1Fo: db F3
#_1ABC19: #_ED20o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_ED21:
#_1ABC1A: #_ED21o: db $18 ; duration
#_1ABC1B: #_ED22o: db R
#_1ABC1C: #_ED23o: db $24 ; duration
#_1ABC1D: #_ED24o: db G3
#_1ABC1E: #_ED25o: db $0C ; duration
#_1ABC1F: #_ED26o: db D3
#_1ABC20: #_ED27o: db $18 ; duration
#_1ABC21: #_ED28o: db R
#_1ABC22: #_ED29o: db $24 ; duration
#_1ABC23: #_ED2Ao: db As3
#_1ABC24: #_ED2Bo: db $0C ; duration
#_1ABC25: #_ED2Co: db G3
#_1ABC26: #_ED2Do: db $18 ; duration
#_1ABC27: #_ED2Eo: db R
#_1ABC28: #_ED2Fo: db $24 ; duration
#_1ABC29: #_ED30o: db C4
#_1ABC2A: #_ED31o: db $0E ; duration
#_1ABC2B: #_ED32o: db A3
#_1ABC2C: #_ED33o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_ED34:
#_1ABC2D: #_ED34o: db $30 ; duration
#_1ABC2E: #_ED35o: db D5
#_1ABC2F: #_ED36o: db $18, $7D ; duration, params
#_1ABC31: #_ED38o: db C5
#_1ABC32: #_ED39o: db $48, $6D ; duration, params
#_1ABC34: #_ED3Bo: db As4
#_1ABC35: #_ED3Co: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_ED3D:
#_1ABC36: #_ED3Do: db !INSTR, $09
#_1ABC38: #_ED3Fo: db !VOLUME, $B4
#_1ABC3A: #_ED41o: db !VIBRATO, $1E, $14, $14
#_1ABC3E: #_ED45o: db $0A ; duration
#_1ABC3F: #_ED46o: db R
#_1ABC40: #_ED47o: db $24, $7D ; duration, params
#_1ABC42: #_ED49o: db As2
#_1ABC43: #_ED4Ao: db $18 ; duration
#_1ABC44: #_ED4Bo: db As3
#_1ABC45: #_ED4Co: db $0C ; duration
#_1ABC46: #_ED4Do: db R
#_1ABC47: #_ED4Eo: db $24 ; duration
#_1ABC48: #_ED4Fo: db C3
#_1ABC49: #_ED50o: db $18 ; duration
#_1ABC4A: #_ED51o: db A3
#_1ABC4B: #_ED52o: db $0C ; duration
#_1ABC4C: #_ED53o: db R
#_1ABC4D: #_ED54o: db $24 ; duration
#_1ABC4E: #_ED55o: db F3
#_1ABC4F: #_ED56o: db $18 ; duration
#_1ABC50: #_ED57o: db As3
#_1ABC51: #_ED58o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_ED59:
#_1ABC52: #_ED59o: db $0C ; duration
#_1ABC53: #_ED5Ao: db R
#_1ABC54: #_ED5Bo: db $24 ; duration
#_1ABC55: #_ED5Co: db G3
#_1ABC56: #_ED5Do: db $18 ; duration
#_1ABC57: #_ED5Eo: db As3
#_1ABC58: #_ED5Fo: db $0C ; duration
#_1ABC59: #_ED60o: db R
#_1ABC5A: #_ED61o: db $24 ; duration
#_1ABC5B: #_ED62o: db C3
#_1ABC5C: #_ED63o: db $18 ; duration
#_1ABC5D: #_ED64o: db A3
#_1ABC5E: #_ED65o: db $0C ; duration
#_1ABC5F: #_ED66o: db R
#_1ABC60: #_ED67o: db $24 ; duration
#_1ABC61: #_ED68o: db F3
#_1ABC62: #_ED69o: db $18 ; duration
#_1ABC63: #_ED6Ao: db As3
#_1ABC64: #_ED6Bo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_ED6C:
#_1ABC65: #_ED6Co: db !INSTR, $09
#_1ABC67: #_ED6Eo: db !VOLUME, $B4
#_1ABC69: #_ED70o: db !VIBRATO, $1E, $14, $14
#_1ABC6D: #_ED74o: db $16 ; duration
#_1ABC6E: #_ED75o: db R
#_1ABC6F: #_ED76o: db $24, $7D ; duration, params
#_1ABC71: #_ED78o: db As3
#_1ABC72: #_ED79o: db $0C ; duration
#_1ABC73: #_ED7Ao: db G3
#_1ABC74: #_ED7Bo: db $18 ; duration
#_1ABC75: #_ED7Co: db R
#_1ABC76: #_ED7Do: db $24 ; duration
#_1ABC77: #_ED7Eo: db A3
#_1ABC78: #_ED7Fo: db $0C ; duration
#_1ABC79: #_ED80o: db F3
#_1ABC7A: #_ED81o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_ED82:
#_1ABC7B: #_ED82o: db $18 ; duration
#_1ABC7C: #_ED83o: db R
#_1ABC7D: #_ED84o: db $24 ; duration
#_1ABC7E: #_ED85o: db As3
#_1ABC7F: #_ED86o: db $0C ; duration
#_1ABC80: #_ED87o: db G3
#_1ABC81: #_ED88o: db $18 ; duration
#_1ABC82: #_ED89o: db R
#_1ABC83: #_ED8Ao: db $24 ; duration
#_1ABC84: #_ED8Bo: db A3
#_1ABC85: #_ED8Co: db $0C ; duration
#_1ABC86: #_ED8Do: db C3
#_1ABC87: #_ED8Eo: db $18 ; duration
#_1ABC88: #_ED8Fo: db R
#_1ABC89: #_ED90o: db $24 ; duration
#_1ABC8A: #_ED91o: db As3
#_1ABC8B: #_ED92o: db $0C ; duration
#_1ABC8C: #_ED93o: db F3
#_1ABC8D: #_ED94o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_ED95:
#_1ABC8E: #_ED95o: db !INSTR, $0A
#_1ABC90: #_ED97o: db !VOLUME, $A0
#_1ABC92: #_ED99o: db !VIBRATO, $1E, $14, $14
#_1ABC96: #_ED9Do: db $08 ; duration
#_1ABC97: #_ED9Eo: db R
#_1ABC98: #_ED9Fo: db $48, $6D ; duration, params
#_1ABC9A: #_EDA1o: db G5
#_1ABC9B: #_EDA2o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_EDA3:
#_1ABC9C: #_EDA3o: db !INSTR, $09
#_1ABC9E: #_EDA5o: db !VOLUME, $B4
#_1ABCA0: #_EDA7o: db !VIBRATO, $1E, $14, $14
#_1ABCA4: #_EDABo: db $0C ; duration
#_1ABCA5: #_EDACo: db R
#_1ABCA6: #_EDADo: db $24, $7D ; duration, params
#_1ABCA8: #_EDAFo: db As2
#_1ABCA9: #_EDB0o: db $18 ; duration
#_1ABCAA: #_EDB1o: db As3
#_1ABCAB: #_EDB2o: db $0C ; duration
#_1ABCAC: #_EDB3o: db R
#_1ABCAD: #_EDB4o: db $24 ; duration
#_1ABCAE: #_EDB5o: db As2
#_1ABCAF: #_EDB6o: db $18 ; duration
#_1ABCB0: #_EDB7o: db As3
#_1ABCB1: #_EDB8o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_EDB9:
#_1ABCB2: #_EDB9o: db $0C ; duration
#_1ABCB3: #_EDBAo: db R
#_1ABCB4: #_EDBBo: db $24 ; duration
#_1ABCB5: #_EDBCo: db F3
#_1ABCB6: #_EDBDo: db $18 ; duration
#_1ABCB7: #_EDBEo: db As3
#_1ABCB8: #_EDBFo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_EDC0:
#_1ABCB9: #_EDC0o: db !INSTR, $09
#_1ABCBB: #_EDC2o: db !VOLUME, $B4
#_1ABCBD: #_EDC4o: db !VIBRATO, $1E, $14, $14
#_1ABCC1: #_EDC8o: db $18 ; duration
#_1ABCC2: #_EDC9o: db R
#_1ABCC3: #_EDCAo: db $24, $7D ; duration, params
#_1ABCC5: #_EDCCo: db As3
#_1ABCC6: #_EDCDo: db $0C ; duration
#_1ABCC7: #_EDCEo: db G3
#_1ABCC8: #_EDCFo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_EDD0:
#_1ABCC9: #_EDD0o: db $18 ; duration
#_1ABCCA: #_EDD1o: db R
#_1ABCCB: #_EDD2o: db $24 ; duration
#_1ABCCC: #_EDD3o: db As3
#_1ABCCD: #_EDD4o: db $0C ; duration
#_1ABCCE: #_EDD5o: db F3
#_1ABCCF: #_EDD6o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_EDD7:
#_1ABCD0: #_EDD7o: db !INSTR, $0A
#_1ABCD2: #_EDD9o: db !VOLUME, $A0
#_1ABCD4: #_EDDBo: db !VIBRATO, $1E, $14, $14
#_1ABCD8: #_EDDFo: db $08 ; duration
#_1ABCD9: #_EDE0o: db R
#_1ABCDA: #_EDE1o: db $48, $6D ; duration, params
#_1ABCDC: #_EDE3o: db As4
#_1ABCDD: #_EDE4o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_EDE5:
#_1ABCDE: #_EDE5o: db R
#_1ABCDF: #_EDE6o: db $30 ; duration
#_1ABCE0: #_EDE7o: db R
#_1ABCE1: #_EDE8o: db $18, $7D ; duration, params
#_1ABCE3: #_EDEAo: db F4
#_1ABCE4: #_EDEBo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_EDEC:
#_1ABCE5: #_EDECo: db !INSTR, $0A
#_1ABCE7: #_EDEEo: db !VOLUME, $A0
#_1ABCE9: #_EDF0o: db !VIBRATO, $1E, $14, $14
#_1ABCED: #_EDF4o: db $50 ; duration
#_1ABCEE: #_EDF5o: db R
#_1ABCEF: #_EDF6o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_EDF7:
#_1ABCF0: #_EDF7o: db $0C ; duration
#_1ABCF1: #_EDF8o: db R
#_1ABCF2: #_EDF9o: db $24 ; duration
#_1ABCF3: #_EDFAo: db G3
#_1ABCF4: #_EDFBo: db $18 ; duration
#_1ABCF5: #_EDFCo: db As3
#_1ABCF6: #_EDFDo: db $0C ; duration
#_1ABCF7: #_EDFEo: db R
#_1ABCF8: #_EDFFo: db $24 ; duration
#_1ABCF9: #_EE00o: db F3
#_1ABCFA: #_EE01o: db $1A ; duration
#_1ABCFB: #_EE02o: db C4
#_1ABCFC: #_EE03o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song07_Sub_EE04:
#_1ABCFD: #_EE04o: db $18 ; duration
#_1ABCFE: #_EE05o: db R
#_1ABCFF: #_EE06o: db $24 ; duration
#_1ABD00: #_EE07o: db As3
#_1ABD01: #_EE08o: db $0C ; duration
#_1ABD02: #_EE09o: db G3
#_1ABD03: #_EE0Ao: db $18 ; duration
#_1ABD04: #_EE0Bo: db R
#_1ABD05: #_EE0Co: db $24 ; duration
#_1ABD06: #_EE0Do: db C4
#_1ABD07: #_EE0Eo: db $0E ; duration
#_1ABD08: #_EE0Fo: db A3
#_1ABD09: #_EE10o: db !PART_END

;===================================================================================================

Song08_MirrorWarp:
#_1ABD0A: #_EE11o: dw Song08_Segment0
#_1ABD0C: #_EE13o: dw !SONG_END

Song08_Segment0:
#_1ABD0E: #_EE15o: dw Song08_Segment0_Track0
#_1ABD10: #_EE17o: dw Song08_Segment0_Track1
#_1ABD12: #_EE19o: dw Song08_Segment0_Track2
#_1ABD14: #_EE1Bo: dw Song08_Segment0_Track3
#_1ABD16: #_EE1Do: dw Song08_Segment0_Track4
#_1ABD18: #_EE1Fo: dw Song08_Segment0_Track5
#_1ABD1A: #_EE21o: dw Song08_Segment0_Track6
#_1ABD1C: #_EE23o: dw $0000

;---------------------------------------------------------------------------------------------------

Song08_Segment0_Track0:
#_1ABD1E: #_EE25o: db !SET_PERC, $19
#_1ABD20: #_EE27o: db !MASTER_VOLUME, $82
#_1ABD22: #_EE29o: db !MVOL_GRAD, $46, $A0
#_1ABD25: #_EE2Co: db !ECHO_CONFIG, $FF, $00, $00
#_1ABD29: #_EE30o: db !ECHO_FILTER, $02, $50, $02
#_1ABD2D: #_EE34o: db !ECHO_GRAD, $60, $64, $64
#_1ABD31: #_EE38o: db !TEMPO, $19
#_1ABD33: #_EE3Ao: db !VOLUME, $C8
#_1ABD35: #_EE3Co: db !VIBRATO, $00, $0A, $64
#_1ABD39: #_EE40o: db !INSTR, $06
#_1ABD3B: #_EE42o: db !PAN, $14
#_1ABD3D: #_EE44o: db !PAN_GRAD, $C0, $00
#_1ABD40: #_EE47o: db $60, $7D ; duration, params
#_1ABD42: #_EE49o: db C3
#_1ABD43: #_EE4Ao: db !SLIDE_ONCE, $30, $18, $A9
#_1ABD47: #_EE4Eo: db !MVOL_GRAD, $60, $64
#_1ABD4A: #_EE51o: db !ECHO_GRAD, $60, $00, $00
#_1ABD4E: #_EE55o: db !TIE
#_1ABD4F: #_EE56o: db !SLIDE_ONCE, $18, $18, $98
#_1ABD53: #_EE5Ao: db !PART_END

;---------------------------------------------------------------------------------------------------

Song08_Segment0_Track1:
#_1ABD54: #_EE5Bo: db !VOLUME, $C8
#_1ABD56: #_EE5Do: db !VIBRATO, $00, $0A, $64
#_1ABD5A: #_EE61o: db !INSTR, $06
#_1ABD5C: #_EE63o: db !PAN, $00
#_1ABD5E: #_EE65o: db !PAN_GRAD, $C0, $14
#_1ABD61: #_EE68o: db $60, $7D ; duration, params
#_1ABD63: #_EE6Ao: db G2
#_1ABD64: #_EE6Bo: db !SLIDE_ONCE, $32, $18, $A4
#_1ABD68: #_EE6Fo: db !TIE
#_1ABD69: #_EE70o: db !SLIDE_ONCE, $18, $18, $93

;---------------------------------------------------------------------------------------------------

Song08_Segment0_Track2:
#_1ABD6D: #_EE74o: db !VOLUME, $C8
#_1ABD6F: #_EE76o: db !INSTR, $0F
#_1ABD71: #_EE78o: db !PAN, $14
#_1ABD73: #_EE7Ao: db !PAN_GRAD, $60, $00
#_1ABD76: #_EE7Do: db $06, $7D ; duration, params
#_1ABD78: #_EE7Fo: db D6
#_1ABD79: #_EE80o: db $12, $7B ; duration, params
#_1ABD7B: #_EE82o: db D6
#_1ABD7C: #_EE83o: db $06, $7D ; duration, params
#_1ABD7E: #_EE85o: db D6
#_1ABD7F: #_EE86o: db $12, $7B ; duration, params
#_1ABD81: #_EE88o: db D6
#_1ABD82: #_EE89o: db $06, $7D ; duration, params
#_1ABD84: #_EE8Bo: db D6
#_1ABD85: #_EE8Co: db $12, $7B ; duration, params
#_1ABD87: #_EE8Eo: db D6
#_1ABD88: #_EE8Fo: db $06, $7D ; duration, params
#_1ABD8A: #_EE91o: db D6
#_1ABD8B: #_EE92o: db $12, $7B ; duration, params
#_1ABD8D: #_EE94o: db D6
#_1ABD8E: #_EE95o: db !PAN_GRAD, $60, $14
#_1ABD91: #_EE98o: db $06, $7D ; duration, params
#_1ABD93: #_EE9Ao: db D6
#_1ABD94: #_EE9Bo: db $12, $7B ; duration, params
#_1ABD96: #_EE9Do: db D6
#_1ABD97: #_EE9Eo: db $06, $7D ; duration, params
#_1ABD99: #_EEA0o: db D6
#_1ABD9A: #_EEA1o: db $12, $7B ; duration, params
#_1ABD9C: #_EEA3o: db D6
#_1ABD9D: #_EEA4o: db $06, $7D ; duration, params
#_1ABD9F: #_EEA6o: db D6
#_1ABDA0: #_EEA7o: db $12, $7B ; duration, params
#_1ABDA2: #_EEA9o: db D6
#_1ABDA3: #_EEAAo: db $06, $7D ; duration, params
#_1ABDA5: #_EEACo: db D6
#_1ABDA6: #_EEADo: db $12, $7B ; duration, params
#_1ABDA8: #_EEAFo: db D6

;---------------------------------------------------------------------------------------------------

Song08_Segment0_Track3:
#_1ABDA9: #_EEB0o: db !VOLUME, $FA
#_1ABDAB: #_EEB2o: db !INSTR, $0A
#_1ABDAD: #_EEB4o: db !PAN, $00
#_1ABDAF: #_EEB6o: db $30, $7D ; duration, params
#_1ABDB1: #_EEB8o: db B2
#_1ABDB2: #_EEB9o: db !SLIDE_ONCE, $00, $30, $9A
#_1ABDB6: #_EEBDo: db !TIE
#_1ABDB7: #_EEBEo: db !SLIDE_ONCE, $00, $30, $97
#_1ABDBB: #_EEC2o: db B2
#_1ABDBC: #_EEC3o: db !SLIDE_ONCE, $00, $30, $9A
#_1ABDC0: #_EEC7o: db !TIE
#_1ABDC1: #_EEC8o: db !SLIDE_ONCE, $00, $30, $97

;---------------------------------------------------------------------------------------------------

Song08_Segment0_Track4:
#_1ABDC5: #_EECCo: db !VOLUME, $C8
#_1ABDC7: #_EECEo: db !INSTR, $01
#_1ABDC9: #_EED0o: db !PAN, $0F
#_1ABDCB: #_EED2o: db $18, $7D ; duration, params
#_1ABDCD: #_EED4o: db G2
#_1ABDCE: #_EED5o: db !SLIDE_ONCE, $00, $18, $98
#_1ABDD2: #_EED9o: db !PAN, $05
#_1ABDD4: #_EEDBo: db A2
#_1ABDD5: #_EEDCo: db !SLIDE_ONCE, $00, $20, $B0
#_1ABDD9: #_EEE0o: db !PAN, $0F
#_1ABDDB: #_EEE2o: db B2
#_1ABDDC: #_EEE3o: db !SLIDE_ONCE, $00, $18, $BC
#_1ABDE0: #_EEE7o: db !PAN, $05
#_1ABDE2: #_EEE9o: db Cs3
#_1ABDE3: #_EEEAo: db !SLIDE_ONCE, $00, $18, $C3
#_1ABDE7: #_EEEEo: db !PAN, $0F
#_1ABDE9: #_EEF0o: db C3
#_1ABDEA: #_EEF1o: db !SLIDE_ONCE, $00, $18, $BC
#_1ABDEE: #_EEF5o: db !PAN, $05
#_1ABDF0: #_EEF7o: db As2
#_1ABDF1: #_EEF8o: db !SLIDE_ONCE, $00, $18, $B7
#_1ABDF5: #_EEFCo: db !PAN, $0F
#_1ABDF7: #_EEFEo: db Gs2
#_1ABDF8: #_EEFFo: db !SLIDE_ONCE, $00, $18, $AB
#_1ABDFC: #_EF03o: db !PAN, $05
#_1ABDFE: #_EF05o: db Fs2
#_1ABDFF: #_EF06o: db !SLIDE_ONCE, $00, $18, $9F

;---------------------------------------------------------------------------------------------------

Song08_Segment0_Track5:
#_1ABE03: #_EF0Ao: db !VOLUME, $C8
#_1ABE05: #_EF0Co: db !INSTR, $0F
#_1ABE07: #_EF0Eo: db !PAN, $00
#_1ABE09: #_EF10o: db !PAN_GRAD, $30, $14
#_1ABE0C: #_EF13o: db $06, $7D ; duration, params
#_1ABE0E: #_EF15o: db E5
#_1ABE0F: #_EF16o: db A5
#_1ABE10: #_EF17o: db G4
#_1ABE11: #_EF18o: db D6
#_1ABE12: #_EF19o: db C6
#_1ABE13: #_EF1Ao: db E6
#_1ABE14: #_EF1Bo: db D6
#_1ABE15: #_EF1Co: db C6
#_1ABE16: #_EF1Do: db !PAN_GRAD, $30, $00
#_1ABE19: #_EF20o: db A5
#_1ABE1A: #_EF21o: db G5
#_1ABE1B: #_EF22o: db B5
#_1ABE1C: #_EF23o: db A5
#_1ABE1D: #_EF24o: db G5
#_1ABE1E: #_EF25o: db D5
#_1ABE1F: #_EF26o: db C5
#_1ABE20: #_EF27o: db A4
#_1ABE21: #_EF28o: db !PAN_GRAD, $30, $14
#_1ABE24: #_EF2Bo: db G4
#_1ABE25: #_EF2Co: db E4
#_1ABE26: #_EF2Do: db A4
#_1ABE27: #_EF2Eo: db E4
#_1ABE28: #_EF2Fo: db D4
#_1ABE29: #_EF30o: db D4
#_1ABE2A: #_EF31o: db C4
#_1ABE2B: #_EF32o: db A3
#_1ABE2C: #_EF33o: db !PAN_GRAD, $30, $00
#_1ABE2F: #_EF36o: db G3
#_1ABE30: #_EF37o: db E3
#_1ABE31: #_EF38o: db D3
#_1ABE32: #_EF39o: db Fs3
#_1ABE33: #_EF3Ao: db Ds3
#_1ABE34: #_EF3Bo: db B2
#_1ABE35: #_EF3Co: db As2
#_1ABE36: #_EF3Do: db Gs2

;---------------------------------------------------------------------------------------------------

Song08_Segment0_Track6:
#_1ABE37: #_EF3Eo: db !VOLUME, $C8
#_1ABE39: #_EF40o: db !INSTR, $09
#_1ABE3B: #_EF42o: db $18, $7D ; duration, params
#_1ABE3D: #_EF44o: db G4
#_1ABE3E: #_EF45o: db !SLIDE_ONCE, $00, $18, $98
#_1ABE42: #_EF49o: db G4
#_1ABE43: #_EF4Ao: db !SLIDE_ONCE, $00, $20, $98
#_1ABE47: #_EF4Eo: db G4
#_1ABE48: #_EF4Fo: db !SLIDE_ONCE, $00, $18, $98
#_1ABE4C: #_EF53o: db G4
#_1ABE4D: #_EF54o: db !SLIDE_ONCE, $00, $18, $98
#_1ABE51: #_EF58o: db G4
#_1ABE52: #_EF59o: db !SLIDE_ONCE, $00, $18, $98
#_1ABE56: #_EF5Do: db G4
#_1ABE57: #_EF5Eo: db !SLIDE_ONCE, $00, $18, $98
#_1ABE5B: #_EF62o: db G4
#_1ABE5C: #_EF63o: db !SLIDE_ONCE, $00, $18, $98
#_1ABE60: #_EF67o: db G4
#_1ABE61: #_EF68o: db !SLIDE_ONCE, $00, $18, $98
#_1ABE65: #_EF6Co: db !PART_END

;===================================================================================================

Song09_DarkWorld:
#_1ABE66: #_EF6Do: dw Song09_Segment0

Song09_Loop:
#_1ABE68: #_EF6Fo: dw Song09_Segment1
#_1ABE6A: #_EF71o: dw Song09_Segment2
#_1ABE6C: #_EF73o: dw Song09_Segment3
#_1ABE6E: #_EF75o: dw Song09_Segment4
#_1ABE70: #_EF77o: dw Song09_Segment5
#_1ABE72: #_EF79o: dw Song09_Segment6
#_1ABE74: #_EF7Bo: dw Song09_Segment7
#_1ABE76: #_EF7Do: dw !SONG_LOOP, Song09_Loop
#_1ABE7A: #_EF81o: dw $0000

Song09_Segment1:
#_1ABE7C: #_EF83o: dw Song09_Segment1_Track0
#_1ABE7E: #_EF85o: dw Song09_Segment1_Track1
#_1ABE80: #_EF87o: dw Song09_Segment1_Track2
#_1ABE82: #_EF89o: dw Song09_Segment1_Track3
#_1ABE84: #_EF8Bo: dw Song09_Segment1_Track4
#_1ABE86: #_EF8Do: dw Song09_Segment1_Track5
#_1ABE88: #_EF8Fo: dw Song09_Segment1_Track6
#_1ABE8A: #_EF91o: dw Song09_Segment1_Track7

Song09_Segment3:
#_1ABE8C: #_EF93o: dw Song09_Segment3_Track0
#_1ABE8E: #_EF95o: dw Song09_Segment3_Track1
#_1ABE90: #_EF97o: dw Song09_Segment3_Track2
#_1ABE92: #_EF99o: dw Song09_Segment3_Track3
#_1ABE94: #_EF9Bo: dw Song09_Segment3_Track4
#_1ABE96: #_EF9Do: dw Song09_Segment3_Track5
#_1ABE98: #_EF9Fo: dw $0000
#_1ABE9A: #_EFA1o: dw Song09_Segment3_Track7

Song09_Segment4:
#_1ABE9C: #_EFA3o: dw Song09_Segment4_Track0
#_1ABE9E: #_EFA5o: dw Song09_Segment4_Track1
#_1ABEA0: #_EFA7o: dw Song09_Segment4_Track2
#_1ABEA2: #_EFA9o: dw Song09_Segment4_Track3
#_1ABEA4: #_EFABo: dw Song09_Segment4_Track4
#_1ABEA6: #_EFADo: dw Song09_Segment4_Track5
#_1ABEA8: #_EFAFo: dw Song09_Segment4_Track6
#_1ABEAA: #_EFB1o: dw Song09_Segment4_Track7

Song09_Segment5:
#_1ABEAC: #_EFB3o: dw Song09_Segment5_Track0
#_1ABEAE: #_EFB5o: dw Song09_Segment5_Track1
#_1ABEB0: #_EFB7o: dw Song09_Segment5_Track2
#_1ABEB2: #_EFB9o: dw Song09_Segment5_Track3
#_1ABEB4: #_EFBBo: dw Song09_Segment5_Track4
#_1ABEB6: #_EFBDo: dw $0000
#_1ABEB8: #_EFBFo: dw $0000
#_1ABEBA: #_EFC1o: dw Song09_Segment5_Track7

Song09_Segment0:
#_1ABEBC: #_EFC3o: dw Song09_Segment0_Track0
#_1ABEBE: #_EFC5o: dw Song09_Segment0_Track1
#_1ABEC0: #_EFC7o: dw Song09_Segment0_Track2
#_1ABEC2: #_EFC9o: dw Song09_Segment0_Track3
#_1ABEC4: #_EFCBo: dw Song09_Segment0_Track4
#_1ABEC6: #_EFCDo: dw Song09_Segment0_Track5
#_1ABEC8: #_EFCFo: dw $0000
#_1ABECA: #_EFD1o: dw $0000

Song09_Segment2:
#_1ABECC: #_EFD3o: dw Song09_Segment2_Track0
#_1ABECE: #_EFD5o: dw Song09_Segment2_Track1
#_1ABED0: #_EFD7o: dw Song09_Segment2_Track2
#_1ABED2: #_EFD9o: dw Song09_Segment2_Track3
#_1ABED4: #_EFDBo: dw Song09_Segment2_Track4
#_1ABED6: #_EFDDo: dw Song09_Segment2_Track5
#_1ABED8: #_EFDFo: dw Song09_Segment2_Track6
#_1ABEDA: #_EFE1o: dw Song09_Segment2_Track7

Song09_Segment6:
#_1ABEDC: #_EFE3o: dw Song09_Segment6_Track0
#_1ABEDE: #_EFE5o: dw Song09_Segment6_Track1
#_1ABEE0: #_EFE7o: dw Song09_Segment6_Track2
#_1ABEE2: #_EFE9o: dw Song09_Segment6_Track3
#_1ABEE4: #_EFEBo: dw Song09_Segment6_Track4
#_1ABEE6: #_EFEDo: dw Song09_Segment6_Track5
#_1ABEE8: #_EFEFo: dw $0000
#_1ABEEA: #_EFF1o: dw Song09_Segment6_Track7

Song09_Segment7:
#_1ABEEC: #_EFF3o: dw Song09_Segment7_Track0
#_1ABEEE: #_EFF5o: dw Song09_Segment7_Track1
#_1ABEF0: #_EFF7o: dw Song09_Segment7_Track2
#_1ABEF2: #_EFF9o: dw Song09_Segment7_Track3
#_1ABEF4: #_EFFBo: dw Song09_Segment7_Track4
#_1ABEF6: #_EFFDo: dw Song09_Segment7_Track5
#_1ABEF8: #_EFFFo: dw $0000
#_1ABEFA: #_F001o: dw $0000

;---------------------------------------------------------------------------------------------------

Song09_Segment1_Track0:
#_1ABEFC: #_F003o: db !CALL_PART : dw Song09_Sub_F556 : db 1
#_1ABF00: #_F007o: db !CALL_PART : dw Song09_Sub_F568 : db 1
#_1ABF04: #_F00Bo: db $54 ; duration
#_1ABF05: #_F00Co: db R
#_1ABF06: #_F00Do: db $0C ; duration
#_1ABF07: #_F00Eo: db C4
#_1ABF08: #_F00Fo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Segment1_Track1:
#_1ABF09: #_F010o: db !INSTR, $14
#_1ABF0B: #_F012o: db !VOLUME, $A0
#_1ABF0D: #_F014o: db !CALL_PART : dw Song09_Sub_F57F : db 6

;---------------------------------------------------------------------------------------------------

Song09_Segment1_Track2:
#_1ABF11: #_F018o: db !CALL_PART : dw Song09_Sub_F598 : db 1
#_1ABF15: #_F01Co: db $18, $3D ; duration, params
#_1ABF17: #_F01Eo: db F2
#_1ABF18: #_F01Fo: db F2
#_1ABF19: #_F020o: db F2
#_1ABF1A: #_F021o: db $0C ; duration
#_1ABF1B: #_F022o: db R
#_1ABF1C: #_F023o: db F2
#_1ABF1D: #_F024o: db $18 ; duration
#_1ABF1E: #_F025o: db Gs2
#_1ABF1F: #_F026o: db Gs2
#_1ABF20: #_F027o: db Gs2
#_1ABF21: #_F028o: db $0C ; duration
#_1ABF22: #_F029o: db R
#_1ABF23: #_F02Ao: db $0C, $5D ; duration, params
#_1ABF25: #_F02Co: db Gs2
#_1ABF26: #_F02Do: db $18, $3D ; duration, params
#_1ABF28: #_F02Fo: db As2
#_1ABF29: #_F030o: db As2
#_1ABF2A: #_F031o: db As2
#_1ABF2B: #_F032o: db $0C ; duration
#_1ABF2C: #_F033o: db R
#_1ABF2D: #_F034o: db As2
#_1ABF2E: #_F035o: db !CALL_PART : dw Song09_Sub_F5A7 : db 1

;---------------------------------------------------------------------------------------------------

Song09_Segment1_Track3:
#_1ABF32: #_F039o: db !CALL_PART : dw Song09_Sub_F5B9 : db 1

;---------------------------------------------------------------------------------------------------

Song09_Segment1_Track4:
#_1ABF36: #_F03Do: db !CALL_PART : dw Song09_Sub_F616 : db 1

;---------------------------------------------------------------------------------------------------

Song09_Segment1_Track5:
#_1ABF3A: #_F041o: db !CALL_PART : dw Song09_Sub_F673 : db 1
#_1ABF3E: #_F045o: db $54 ; duration
#_1ABF3F: #_F046o: db R
#_1ABF40: #_F047o: db $0C ; duration
#_1ABF41: #_F048o: db G3

;---------------------------------------------------------------------------------------------------

Song09_Segment1_Track6:
#_1ABF42: #_F049o: db !INSTR, $09
#_1ABF44: #_F04Bo: db !VOLUME, $78
#_1ABF46: #_F04Do: db !PAN, $08
#_1ABF48: #_F04Fo: db $60 ; duration
#_1ABF49: #_F050o: db R
#_1ABF4A: #_F051o: db R
#_1ABF4B: #_F052o: db R
#_1ABF4C: #_F053o: db R
#_1ABF4D: #_F054o: db $54 ; duration
#_1ABF4E: #_F055o: db R
#_1ABF4F: #_F056o: db $06, $6D ; duration, params
#_1ABF51: #_F058o: db C5
#_1ABF52: #_F059o: db G5
#_1ABF53: #_F05Ao: db $54 ; duration
#_1ABF54: #_F05Bo: db D5
#_1ABF55: #_F05Co: db $06 ; duration
#_1ABF56: #_F05Do: db As4
#_1ABF57: #_F05Eo: db G4

;---------------------------------------------------------------------------------------------------

Song09_Segment1_Track7:
#_1ABF58: #_F05Fo: db !CALL_PART : dw Song09_Sub_F69B : db 1
#_1ABF5C: #_F063o: db !CALL_PART : dw Song09_Sub_F568 : db 1
#_1ABF60: #_F067o: db $58 ; duration
#_1ABF61: #_F068o: db R

;---------------------------------------------------------------------------------------------------

Song09_Segment3_Track0:
#_1ABF62: #_F069o: db !INSTR, $0A
#_1ABF64: #_F06Bo: db !VOLUME, $C8
#_1ABF66: #_F06Do: db !PAN, $0E
#_1ABF68: #_F06Fo: db !VIBRATO, $18, $1C, $18
#_1ABF6C: #_F073o: db $48, $6D ; duration, params
#_1ABF6E: #_F075o: db As4
#_1ABF6F: #_F076o: db $0C ; duration
#_1ABF70: #_F077o: db G4
#_1ABF71: #_F078o: db As4
#_1ABF72: #_F079o: db !CALL_PART : dw Song09_Sub_F6AF : db 1
#_1ABF76: #_F07Do: db $06 ; duration
#_1ABF77: #_F07Eo: db F4
#_1ABF78: #_F07Fo: db Ds4
#_1ABF79: #_F080o: db $48 ; duration
#_1ABF7A: #_F081o: db D4
#_1ABF7B: #_F082o: db $06 ; duration
#_1ABF7C: #_F083o: db G4
#_1ABF7D: #_F084o: db A4
#_1ABF7E: #_F085o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Segment3_Track1:
#_1ABF7F: #_F086o: db !INSTR, $14
#_1ABF81: #_F088o: db !VOLUME, $A0
#_1ABF83: #_F08Ao: db !CALL_PART : dw Song09_Sub_F6BD : db 4

;---------------------------------------------------------------------------------------------------

Song09_Segment3_Track2:
#_1ABF87: #_F08Eo: db !CALL_PART : dw Song09_Sub_F6D5 : db 1
#_1ABF8B: #_F092o: db $0C ; duration
#_1ABF8C: #_F093o: db Gs2
#_1ABF8D: #_F094o: db $18 ; duration
#_1ABF8E: #_F095o: db Gs2
#_1ABF8F: #_F096o: db $0C ; duration
#_1ABF90: #_F097o: db Gs2
#_1ABF91: #_F098o: db Gs2
#_1ABF92: #_F099o: db Gs2
#_1ABF93: #_F09Ao: db $08 ; duration
#_1ABF94: #_F09Bo: db Gs2
#_1ABF95: #_F09Co: db Gs2
#_1ABF96: #_F09Do: db Gs2
#_1ABF97: #_F09Eo: db $0C ; duration
#_1ABF98: #_F09Fo: db As2
#_1ABF99: #_F0A0o: db $18 ; duration
#_1ABF9A: #_F0A1o: db As2
#_1ABF9B: #_F0A2o: db $0C ; duration
#_1ABF9C: #_F0A3o: db As2
#_1ABF9D: #_F0A4o: db As2
#_1ABF9E: #_F0A5o: db As2
#_1ABF9F: #_F0A6o: db $08 ; duration
#_1ABFA0: #_F0A7o: db As2
#_1ABFA1: #_F0A8o: db As2
#_1ABFA2: #_F0A9o: db As2

;---------------------------------------------------------------------------------------------------

Song09_Segment3_Track3:
#_1ABFA3: #_F0AAo: db !INSTR, $11
#_1ABFA5: #_F0ACo: db !VOLUME, $C8
#_1ABFA7: #_F0AEo: db !PAN, $07
#_1ABFA9: #_F0B0o: db $0C ; duration
#_1ABFAA: #_F0B1o: db R
#_1ABFAB: #_F0B2o: db $0C, $3D ; duration, params
#_1ABFAD: #_F0B4o: db As3
#_1ABFAE: #_F0B5o: db As3
#_1ABFAF: #_F0B6o: db $06, $3B ; duration, params
#_1ABFB1: #_F0B8o: db As3
#_1ABFB2: #_F0B9o: db $06, $5B ; duration, params
#_1ABFB4: #_F0BBo: db As3
#_1ABFB5: #_F0BCo: db $0C ; duration
#_1ABFB6: #_F0BDo: db As3
#_1ABFB7: #_F0BEo: db As3
#_1ABFB8: #_F0BFo: db $08 ; duration
#_1ABFB9: #_F0C0o: db As3
#_1ABFBA: #_F0C1o: db As3
#_1ABFBB: #_F0C2o: db As3
#_1ABFBC: #_F0C3o: db $0C ; duration
#_1ABFBD: #_F0C4o: db R
#_1ABFBE: #_F0C5o: db $0C, $3D ; duration, params
#_1ABFC0: #_F0C7o: db C4
#_1ABFC1: #_F0C8o: db C4
#_1ABFC2: #_F0C9o: db $06, $3B ; duration, params
#_1ABFC4: #_F0CBo: db C4
#_1ABFC5: #_F0CCo: db $06, $3D ; duration, params
#_1ABFC7: #_F0CEo: db C4
#_1ABFC8: #_F0CFo: db $0C ; duration
#_1ABFC9: #_F0D0o: db C4
#_1ABFCA: #_F0D1o: db C4
#_1ABFCB: #_F0D2o: db $08 ; duration
#_1ABFCC: #_F0D3o: db C4
#_1ABFCD: #_F0D4o: db C4
#_1ABFCE: #_F0D5o: db C4
#_1ABFCF: #_F0D6o: db $0C ; duration
#_1ABFD0: #_F0D7o: db R
#_1ABFD1: #_F0D8o: db C4
#_1ABFD2: #_F0D9o: db C4
#_1ABFD3: #_F0DAo: db $06, $3B ; duration, params
#_1ABFD5: #_F0DCo: db C4
#_1ABFD6: #_F0DDo: db $06, $5B ; duration, params
#_1ABFD8: #_F0DFo: db C4
#_1ABFD9: #_F0E0o: db $0C ; duration
#_1ABFDA: #_F0E1o: db C4
#_1ABFDB: #_F0E2o: db C4
#_1ABFDC: #_F0E3o: db $08 ; duration
#_1ABFDD: #_F0E4o: db C4
#_1ABFDE: #_F0E5o: db C4
#_1ABFDF: #_F0E6o: db C4
#_1ABFE0: #_F0E7o: db $0C ; duration
#_1ABFE1: #_F0E8o: db R
#_1ABFE2: #_F0E9o: db $0C, $3D ; duration, params
#_1ABFE4: #_F0EBo: db D4
#_1ABFE5: #_F0ECo: db D4
#_1ABFE6: #_F0EDo: db $06, $3B ; duration, params
#_1ABFE8: #_F0EFo: db D4
#_1ABFE9: #_F0F0o: db $06, $3D ; duration, params
#_1ABFEB: #_F0F2o: db D4
#_1ABFEC: #_F0F3o: db $0C ; duration
#_1ABFED: #_F0F4o: db D4
#_1ABFEE: #_F0F5o: db D4
#_1ABFEF: #_F0F6o: db $08 ; duration
#_1ABFF0: #_F0F7o: db D4
#_1ABFF1: #_F0F8o: db D4
#_1ABFF2: #_F0F9o: db D4

;---------------------------------------------------------------------------------------------------

Song09_Segment3_Track4:
#_1ABFF3: #_F0FAo: db !CALL_PART : dw Song09_Sub_F6F3 : db 1
#_1ABFF7: #_F0FEo: db $0C ; duration
#_1ABFF8: #_F0FFo: db R
#_1ABFF9: #_F100o: db Gs3
#_1ABFFA: #_F101o: db Gs3
#_1ABFFB: #_F102o: db $06, $3B ; duration, params
#_1ABFFD: #_F104o: db Gs3
#_1ABFFE: #_F105o: db $06, $5B ; duration, params
#_1AC000: #_F107o: db Gs3
#_1AC001: #_F108o: db $0C ; duration
#_1AC002: #_F109o: db Gs3
#_1AC003: #_F10Ao: db Gs3
#_1AC004: #_F10Bo: db $08 ; duration
#_1AC005: #_F10Co: db Gs3
#_1AC006: #_F10Do: db Gs3
#_1AC007: #_F10Eo: db Gs3
#_1AC008: #_F10Fo: db $0C ; duration
#_1AC009: #_F110o: db R
#_1AC00A: #_F111o: db $0C, $3D ; duration, params
#_1AC00C: #_F113o: db F3
#_1AC00D: #_F114o: db F3
#_1AC00E: #_F115o: db $06, $3B ; duration, params
#_1AC010: #_F117o: db F3
#_1AC011: #_F118o: db $06, $3D ; duration, params
#_1AC013: #_F11Ao: db F3
#_1AC014: #_F11Bo: db $0C ; duration
#_1AC015: #_F11Co: db F3
#_1AC016: #_F11Do: db F3
#_1AC017: #_F11Eo: db $08 ; duration
#_1AC018: #_F11Fo: db F3
#_1AC019: #_F120o: db F3
#_1AC01A: #_F121o: db F3

;---------------------------------------------------------------------------------------------------

Song09_Segment3_Track5:
#_1AC01B: #_F122o: db !INSTR, $16
#_1AC01D: #_F124o: db !VOLUME, $B4
#_1AC01F: #_F126o: db !PAN, $08
#_1AC021: #_F128o: db !VIBRATO, $18, $1C, $18
#_1AC025: #_F12Co: db $48, $6D ; duration, params
#_1AC027: #_F12Eo: db As4
#_1AC028: #_F12Fo: db $0C ; duration
#_1AC029: #_F130o: db G4
#_1AC02A: #_F131o: db As4
#_1AC02B: #_F132o: db !CALL_PART : dw Song09_Sub_F6AF : db 1
#_1AC02F: #_F136o: db $06 ; duration
#_1AC030: #_F137o: db F4
#_1AC031: #_F138o: db Ds4
#_1AC032: #_F139o: db $48 ; duration
#_1AC033: #_F13Ao: db D4
#_1AC034: #_F13Bo: db $06 ; duration
#_1AC035: #_F13Co: db G4
#_1AC036: #_F13Do: db A4

;---------------------------------------------------------------------------------------------------

Song09_Segment3_Track7:
#_1AC037: #_F13Eo: db $02 ; duration
#_1AC038: #_F13Fo: db R
#_1AC039: #_F140o: db $06, $6D ; duration, params
#_1AC03B: #_F142o: db A4
#_1AC03C: #_F143o: db $48 ; duration
#_1AC03D: #_F144o: db As4
#_1AC03E: #_F145o: db $0C ; duration
#_1AC03F: #_F146o: db G4
#_1AC040: #_F147o: db As4
#_1AC041: #_F148o: db !CALL_PART : dw Song09_Sub_F6AF : db 1
#_1AC045: #_F14Co: db $06 ; duration
#_1AC046: #_F14Do: db F4
#_1AC047: #_F14Eo: db Ds4
#_1AC048: #_F14Fo: db $48 ; duration
#_1AC049: #_F150o: db D4
#_1AC04A: #_F151o: db $04 ; duration
#_1AC04B: #_F152o: db G4

;---------------------------------------------------------------------------------------------------

Song09_Segment4_Track0:
#_1AC04C: #_F153o: db !INSTR, $0A
#_1AC04E: #_F155o: db !VOLUME, $C8
#_1AC050: #_F157o: db !PAN, $0E
#_1AC052: #_F159o: db !VIBRATO, $18, $1C, $18
#_1AC056: #_F15Do: db !CALL_PART : dw Song09_Sub_F720 : db 1
#_1AC05A: #_F161o: db R
#_1AC05B: #_F162o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Segment4_Track1:
#_1AC05C: #_F163o: db !INSTR, $14
#_1AC05E: #_F165o: db !VOLUME, $A0
#_1AC060: #_F167o: db !CALL_PART : dw Song09_Sub_F6BD : db 6

;---------------------------------------------------------------------------------------------------

Song09_Segment4_Track2:
#_1AC064: #_F16Bo: db !CALL_PART : dw Song09_Sub_F6D5 : db 1
#_1AC068: #_F16Fo: db $0C ; duration
#_1AC069: #_F170o: db E2
#_1AC06A: #_F171o: db $18 ; duration
#_1AC06B: #_F172o: db E2
#_1AC06C: #_F173o: db $0C ; duration
#_1AC06D: #_F174o: db E2
#_1AC06E: #_F175o: db E2
#_1AC06F: #_F176o: db E2
#_1AC070: #_F177o: db $08 ; duration
#_1AC071: #_F178o: db E2
#_1AC072: #_F179o: db E2
#_1AC073: #_F17Ao: db E2
#_1AC074: #_F17Bo: db $0C ; duration
#_1AC075: #_F17Co: db D2
#_1AC076: #_F17Do: db $18 ; duration
#_1AC077: #_F17Eo: db D2
#_1AC078: #_F17Fo: db $0C ; duration
#_1AC079: #_F180o: db D2
#_1AC07A: #_F181o: db D2
#_1AC07B: #_F182o: db D2
#_1AC07C: #_F183o: db $08 ; duration
#_1AC07D: #_F184o: db D2
#_1AC07E: #_F185o: db D2
#_1AC07F: #_F186o: db D2
#_1AC080: #_F187o: db !CALL_PART : dw Song09_Sub_F738 : db 2

;---------------------------------------------------------------------------------------------------

Song09_Segment4_Track3:
#_1AC084: #_F18Bo: db !INSTR, $11
#_1AC086: #_F18Do: db !VOLUME, $C8
#_1AC088: #_F18Fo: db !PAN, $07
#_1AC08A: #_F191o: db $0C ; duration
#_1AC08B: #_F192o: db R
#_1AC08C: #_F193o: db $0C, $3D ; duration, params
#_1AC08E: #_F195o: db As3
#_1AC08F: #_F196o: db As3
#_1AC090: #_F197o: db $06, $3B ; duration, params
#_1AC092: #_F199o: db As3
#_1AC093: #_F19Ao: db $06, $5B ; duration, params
#_1AC095: #_F19Co: db As3
#_1AC096: #_F19Do: db $0C ; duration
#_1AC097: #_F19Eo: db As3
#_1AC098: #_F19Fo: db As3
#_1AC099: #_F1A0o: db $08 ; duration
#_1AC09A: #_F1A1o: db As3
#_1AC09B: #_F1A2o: db As3
#_1AC09C: #_F1A3o: db As3
#_1AC09D: #_F1A4o: db $0C ; duration
#_1AC09E: #_F1A5o: db R
#_1AC09F: #_F1A6o: db $0C, $3D ; duration, params
#_1AC0A1: #_F1A8o: db C4
#_1AC0A2: #_F1A9o: db C4
#_1AC0A3: #_F1AAo: db $06, $3B ; duration, params
#_1AC0A5: #_F1ACo: db C4
#_1AC0A6: #_F1ADo: db $06, $3D ; duration, params
#_1AC0A8: #_F1AFo: db C4
#_1AC0A9: #_F1B0o: db $0C ; duration
#_1AC0AA: #_F1B1o: db C4
#_1AC0AB: #_F1B2o: db C4
#_1AC0AC: #_F1B3o: db $08 ; duration
#_1AC0AD: #_F1B4o: db C4
#_1AC0AE: #_F1B5o: db C4
#_1AC0AF: #_F1B6o: db C4
#_1AC0B0: #_F1B7o: db $0C ; duration
#_1AC0B1: #_F1B8o: db R
#_1AC0B2: #_F1B9o: db Cs4
#_1AC0B3: #_F1BAo: db Cs4
#_1AC0B4: #_F1BBo: db $06, $3B ; duration, params
#_1AC0B6: #_F1BDo: db Cs4
#_1AC0B7: #_F1BEo: db $06, $5B ; duration, params
#_1AC0B9: #_F1C0o: db Cs4
#_1AC0BA: #_F1C1o: db $0C ; duration
#_1AC0BB: #_F1C2o: db Cs4
#_1AC0BC: #_F1C3o: db Cs4
#_1AC0BD: #_F1C4o: db $08 ; duration
#_1AC0BE: #_F1C5o: db Cs4
#_1AC0BF: #_F1C6o: db Cs4
#_1AC0C0: #_F1C7o: db Cs4
#_1AC0C1: #_F1C8o: db $0C ; duration
#_1AC0C2: #_F1C9o: db R
#_1AC0C3: #_F1CAo: db $0C, $3D ; duration, params
#_1AC0C5: #_F1CCo: db A3
#_1AC0C6: #_F1CDo: db A3
#_1AC0C7: #_F1CEo: db $06, $3B ; duration, params
#_1AC0C9: #_F1D0o: db A3
#_1AC0CA: #_F1D1o: db $06, $3D ; duration, params
#_1AC0CC: #_F1D3o: db A3
#_1AC0CD: #_F1D4o: db $0C ; duration
#_1AC0CE: #_F1D5o: db A3
#_1AC0CF: #_F1D6o: db A3
#_1AC0D0: #_F1D7o: db $08 ; duration
#_1AC0D1: #_F1D8o: db A3
#_1AC0D2: #_F1D9o: db A3
#_1AC0D3: #_F1DAo: db A3
#_1AC0D4: #_F1DBo: db $0C ; duration
#_1AC0D5: #_F1DCo: db R
#_1AC0D6: #_F1DDo: db As3
#_1AC0D7: #_F1DEo: db As3
#_1AC0D8: #_F1DFo: db $06, $3B ; duration, params
#_1AC0DA: #_F1E1o: db As3
#_1AC0DB: #_F1E2o: db $06, $3D ; duration, params
#_1AC0DD: #_F1E4o: db As3
#_1AC0DE: #_F1E5o: db $0C ; duration
#_1AC0DF: #_F1E6o: db C4
#_1AC0E0: #_F1E7o: db $24 ; duration
#_1AC0E1: #_F1E8o: db C4
#_1AC0E2: #_F1E9o: db $0C ; duration
#_1AC0E3: #_F1EAo: db R
#_1AC0E4: #_F1EBo: db D4
#_1AC0E5: #_F1ECo: db D4
#_1AC0E6: #_F1EDo: db $06, $3B ; duration, params
#_1AC0E8: #_F1EFo: db D4
#_1AC0E9: #_F1F0o: db $06, $3D ; duration, params
#_1AC0EB: #_F1F2o: db D4
#_1AC0EC: #_F1F3o: db $0C ; duration
#_1AC0ED: #_F1F4o: db C4
#_1AC0EE: #_F1F5o: db $24 ; duration
#_1AC0EF: #_F1F6o: db C4

;---------------------------------------------------------------------------------------------------

Song09_Segment4_Track4:
#_1AC0F0: #_F1F7o: db !CALL_PART : dw Song09_Sub_F6F3 : db 1
#_1AC0F4: #_F1FBo: db $0C ; duration
#_1AC0F5: #_F1FCo: db R
#_1AC0F6: #_F1FDo: db G3
#_1AC0F7: #_F1FEo: db G3
#_1AC0F8: #_F1FFo: db $06, $3B ; duration, params
#_1AC0FA: #_F201o: db G3
#_1AC0FB: #_F202o: db $06, $5B ; duration, params
#_1AC0FD: #_F204o: db G3
#_1AC0FE: #_F205o: db $0C ; duration
#_1AC0FF: #_F206o: db G3
#_1AC100: #_F207o: db G3
#_1AC101: #_F208o: db $08 ; duration
#_1AC102: #_F209o: db G3
#_1AC103: #_F20Ao: db G3
#_1AC104: #_F20Bo: db G3
#_1AC105: #_F20Co: db $0C ; duration
#_1AC106: #_F20Do: db R
#_1AC107: #_F20Eo: db $0C, $3D ; duration, params
#_1AC109: #_F210o: db Fs3
#_1AC10A: #_F211o: db Fs3
#_1AC10B: #_F212o: db $06, $3B ; duration, params
#_1AC10D: #_F214o: db Fs3
#_1AC10E: #_F215o: db $06, $3D ; duration, params
#_1AC110: #_F217o: db Fs3
#_1AC111: #_F218o: db $0C ; duration
#_1AC112: #_F219o: db Fs3
#_1AC113: #_F21Ao: db Fs3
#_1AC114: #_F21Bo: db $08 ; duration
#_1AC115: #_F21Co: db Fs3
#_1AC116: #_F21Do: db Fs3
#_1AC117: #_F21Eo: db Fs3
#_1AC118: #_F21Fo: db $0C ; duration
#_1AC119: #_F220o: db R
#_1AC11A: #_F221o: db D4
#_1AC11B: #_F222o: db D4
#_1AC11C: #_F223o: db $06, $3B ; duration, params
#_1AC11E: #_F225o: db D4
#_1AC11F: #_F226o: db $06, $5B ; duration, params
#_1AC121: #_F228o: db D4
#_1AC122: #_F229o: db $0C ; duration
#_1AC123: #_F22Ao: db E4
#_1AC124: #_F22Bo: db $24 ; duration
#_1AC125: #_F22Co: db E4
#_1AC126: #_F22Do: db $0C ; duration
#_1AC127: #_F22Eo: db R
#_1AC128: #_F22Fo: db $0C, $3D ; duration, params
#_1AC12A: #_F231o: db F4
#_1AC12B: #_F232o: db F4
#_1AC12C: #_F233o: db $06, $3B ; duration, params
#_1AC12E: #_F235o: db F4
#_1AC12F: #_F236o: db $06, $5B ; duration, params
#_1AC131: #_F238o: db F4
#_1AC132: #_F239o: db $0C ; duration
#_1AC133: #_F23Ao: db E4
#_1AC134: #_F23Bo: db $24 ; duration
#_1AC135: #_F23Co: db E4

;---------------------------------------------------------------------------------------------------

Song09_Segment4_Track5:
#_1AC136: #_F23Do: db !INSTR, $16
#_1AC138: #_F23Fo: db !VOLUME, $A0
#_1AC13A: #_F241o: db !PAN, $08
#_1AC13C: #_F243o: db !VIBRATO, $18, $1C, $18
#_1AC140: #_F247o: db !CALL_PART : dw Song09_Sub_F720 : db 1
#_1AC144: #_F24Bo: db R

;---------------------------------------------------------------------------------------------------

Song09_Segment4_Track6:
#_1AC145: #_F24Co: db !INSTR, $12
#_1AC147: #_F24Eo: db !VOLUME, $8C
#_1AC149: #_F250o: db !PAN, $0A
#_1AC14B: #_F252o: db !VIBRATO, $18, $1C, $18
#_1AC14F: #_F256o: db $48, $6D ; duration, params
#_1AC151: #_F258o: db G4
#_1AC152: #_F259o: db $0C ; duration
#_1AC153: #_F25Ao: db Ds4
#_1AC154: #_F25Bo: db G4
#_1AC155: #_F25Co: db $06 ; duration
#_1AC156: #_F25Do: db F4
#_1AC157: #_F25Eo: db G4
#_1AC158: #_F25Fo: db $54 ; duration
#_1AC159: #_F260o: db A4
#_1AC15A: #_F261o: db $48 ; duration
#_1AC15B: #_F262o: db G4
#_1AC15C: #_F263o: db $0C ; duration
#_1AC15D: #_F264o: db Fs4
#_1AC15E: #_F265o: db G4
#_1AC15F: #_F266o: db $06 ; duration
#_1AC160: #_F267o: db Fs4
#_1AC161: #_F268o: db F4
#_1AC162: #_F269o: db $54 ; duration
#_1AC163: #_F26Ao: db Fs4
#_1AC164: #_F26Bo: db $60 ; duration
#_1AC165: #_F26Co: db D4
#_1AC166: #_F26Do: db R

;---------------------------------------------------------------------------------------------------

Song09_Segment4_Track7:
#_1AC167: #_F26Eo: db $02 ; duration
#_1AC168: #_F26Fo: db R
#_1AC169: #_F270o: db $06, $6D ; duration, params
#_1AC16B: #_F272o: db A4
#_1AC16C: #_F273o: db $48 ; duration
#_1AC16D: #_F274o: db As4
#_1AC16E: #_F275o: db $0C ; duration
#_1AC16F: #_F276o: db G4
#_1AC170: #_F277o: db As4
#_1AC171: #_F278o: db !CALL_PART : dw Song09_Sub_F745 : db 1
#_1AC175: #_F27Co: db $58 ; duration
#_1AC176: #_F27Do: db R

;---------------------------------------------------------------------------------------------------

Song09_Segment5_Track0:
#_1AC177: #_F27Eo: db !INSTR, $0A
#_1AC179: #_F280o: db !VOLUME, $C8
#_1AC17B: #_F282o: db !PAN, $0E
#_1AC17D: #_F284o: db !VIBRATO, $18, $1C, $18
#_1AC181: #_F288o: db $06, $6D ; duration, params
#_1AC183: #_F28Ao: db C5
#_1AC184: #_F28Bo: db G4
#_1AC185: #_F28Co: db F4
#_1AC186: #_F28Do: db $36 ; duration
#_1AC187: #_F28Eo: db G4
#_1AC188: #_F28Fo: db $18 ; duration
#_1AC189: #_F290o: db C5
#_1AC18A: #_F291o: db !CALL_PART : dw Song09_Sub_F757 : db 1
#_1AC18E: #_F295o: db $06 ; duration
#_1AC18F: #_F296o: db A4
#_1AC190: #_F297o: db Ds4
#_1AC191: #_F298o: db D4
#_1AC192: #_F299o: db $4E ; duration
#_1AC193: #_F29Ao: db Ds4
#_1AC194: #_F29Bo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Segment5_Track1:
#_1AC195: #_F29Co: db !INSTR, $14
#_1AC197: #_F29Eo: db !VOLUME, $A0
#_1AC199: #_F2A0o: db !CALL_PART : dw Song09_Sub_F766 : db 4

;---------------------------------------------------------------------------------------------------

Song09_Segment5_Track2:
#_1AC19D: #_F2A4o: db !INSTR, $18
#_1AC19F: #_F2A6o: db !VOLUME, $C8
#_1AC1A1: #_F2A8o: db $18, $7D ; duration, params
#_1AC1A3: #_F2AAo: db Gs2
#_1AC1A4: #_F2ABo: db $0C ; duration
#_1AC1A5: #_F2ACo: db R
#_1AC1A6: #_F2ADo: db $18 ; duration
#_1AC1A7: #_F2AEo: db Gs2
#_1AC1A8: #_F2AFo: db $0C ; duration
#_1AC1A9: #_F2B0o: db Gs2
#_1AC1AA: #_F2B1o: db $08 ; duration
#_1AC1AB: #_F2B2o: db Gs2
#_1AC1AC: #_F2B3o: db Gs2
#_1AC1AD: #_F2B4o: db Gs2
#_1AC1AE: #_F2B5o: db $18 ; duration
#_1AC1AF: #_F2B6o: db G2
#_1AC1B0: #_F2B7o: db $0C ; duration
#_1AC1B1: #_F2B8o: db R
#_1AC1B2: #_F2B9o: db $18 ; duration
#_1AC1B3: #_F2BAo: db G2
#_1AC1B4: #_F2BBo: db $0C ; duration
#_1AC1B5: #_F2BCo: db G2
#_1AC1B6: #_F2BDo: db $08 ; duration
#_1AC1B7: #_F2BEo: db G2
#_1AC1B8: #_F2BFo: db G2
#_1AC1B9: #_F2C0o: db G2
#_1AC1BA: #_F2C1o: db $18 ; duration
#_1AC1BB: #_F2C2o: db Fs2
#_1AC1BC: #_F2C3o: db $0C ; duration
#_1AC1BD: #_F2C4o: db R
#_1AC1BE: #_F2C5o: db $18 ; duration
#_1AC1BF: #_F2C6o: db Fs2
#_1AC1C0: #_F2C7o: db $0C ; duration
#_1AC1C1: #_F2C8o: db Fs2
#_1AC1C2: #_F2C9o: db $08 ; duration
#_1AC1C3: #_F2CAo: db Fs2
#_1AC1C4: #_F2CBo: db Fs2
#_1AC1C5: #_F2CCo: db Fs2
#_1AC1C6: #_F2CDo: db $18 ; duration
#_1AC1C7: #_F2CEo: db F2
#_1AC1C8: #_F2CFo: db $0C ; duration
#_1AC1C9: #_F2D0o: db R
#_1AC1CA: #_F2D1o: db $18 ; duration
#_1AC1CB: #_F2D2o: db F2
#_1AC1CC: #_F2D3o: db $0C ; duration
#_1AC1CD: #_F2D4o: db F2
#_1AC1CE: #_F2D5o: db $08 ; duration
#_1AC1CF: #_F2D6o: db F2
#_1AC1D0: #_F2D7o: db F2
#_1AC1D1: #_F2D8o: db F2

;---------------------------------------------------------------------------------------------------

Song09_Segment5_Track3:
#_1AC1D2: #_F2D9o: db !INSTR, $12
#_1AC1D4: #_F2DBo: db !VOLUME, $A0
#_1AC1D6: #_F2DDo: db $18, $3D ; duration, params
#_1AC1D8: #_F2DFo: db Ds4
#_1AC1D9: #_F2E0o: db $0C ; duration
#_1AC1DA: #_F2E1o: db R
#_1AC1DB: #_F2E2o: db $18 ; duration
#_1AC1DC: #_F2E3o: db Ds4
#_1AC1DD: #_F2E4o: db $0C ; duration
#_1AC1DE: #_F2E5o: db Ds4
#_1AC1DF: #_F2E6o: db $08 ; duration
#_1AC1E0: #_F2E7o: db Ds4
#_1AC1E1: #_F2E8o: db Ds4
#_1AC1E2: #_F2E9o: db Ds4
#_1AC1E3: #_F2EAo: db $18 ; duration
#_1AC1E4: #_F2EBo: db D4
#_1AC1E5: #_F2ECo: db $0C ; duration
#_1AC1E6: #_F2EDo: db R
#_1AC1E7: #_F2EEo: db $18 ; duration
#_1AC1E8: #_F2EFo: db D4
#_1AC1E9: #_F2F0o: db $0C ; duration
#_1AC1EA: #_F2F1o: db D4
#_1AC1EB: #_F2F2o: db $08 ; duration
#_1AC1EC: #_F2F3o: db D4
#_1AC1ED: #_F2F4o: db D4
#_1AC1EE: #_F2F5o: db D4
#_1AC1EF: #_F2F6o: db !CALL_PART : dw Song09_Sub_F779 : db 2

;---------------------------------------------------------------------------------------------------

Song09_Segment5_Track4:
#_1AC1F3: #_F2FAo: db !INSTR, $12
#_1AC1F5: #_F2FCo: db !VOLUME, $A0
#_1AC1F7: #_F2FEo: db $18, $3D ; duration, params
#_1AC1F9: #_F300o: db C4
#_1AC1FA: #_F301o: db $0C ; duration
#_1AC1FB: #_F302o: db R
#_1AC1FC: #_F303o: db $18 ; duration
#_1AC1FD: #_F304o: db C4
#_1AC1FE: #_F305o: db $0C ; duration
#_1AC1FF: #_F306o: db C4
#_1AC200: #_F307o: db $08 ; duration
#_1AC201: #_F308o: db C4
#_1AC202: #_F309o: db C4
#_1AC203: #_F30Ao: db C4
#_1AC204: #_F30Bo: db $18 ; duration
#_1AC205: #_F30Co: db As3
#_1AC206: #_F30Do: db $0C ; duration
#_1AC207: #_F30Eo: db R
#_1AC208: #_F30Fo: db $18 ; duration
#_1AC209: #_F310o: db As3
#_1AC20A: #_F311o: db $0C ; duration
#_1AC20B: #_F312o: db As3
#_1AC20C: #_F313o: db $08 ; duration
#_1AC20D: #_F314o: db As3
#_1AC20E: #_F315o: db As3
#_1AC20F: #_F316o: db As3
#_1AC210: #_F317o: db $18 ; duration
#_1AC211: #_F318o: db A3
#_1AC212: #_F319o: db $0C ; duration
#_1AC213: #_F31Ao: db R
#_1AC214: #_F31Bo: db $18 ; duration
#_1AC215: #_F31Co: db A3
#_1AC216: #_F31Do: db $0C ; duration
#_1AC217: #_F31Eo: db A3
#_1AC218: #_F31Fo: db $08 ; duration
#_1AC219: #_F320o: db A3
#_1AC21A: #_F321o: db A3
#_1AC21B: #_F322o: db A3
#_1AC21C: #_F323o: db $18 ; duration
#_1AC21D: #_F324o: db Gs3
#_1AC21E: #_F325o: db $0C ; duration
#_1AC21F: #_F326o: db R
#_1AC220: #_F327o: db $18 ; duration
#_1AC221: #_F328o: db Gs3
#_1AC222: #_F329o: db $0C ; duration
#_1AC223: #_F32Ao: db Gs3
#_1AC224: #_F32Bo: db $08 ; duration
#_1AC225: #_F32Co: db Gs3
#_1AC226: #_F32Do: db Gs3
#_1AC227: #_F32Eo: db Gs3

;---------------------------------------------------------------------------------------------------

Song09_Segment5_Track7:
#_1AC228: #_F32Fo: db !INSTR, $0A
#_1AC22A: #_F331o: db !VOLUME, $A0
#_1AC22C: #_F333o: db !PAN, $0C
#_1AC22E: #_F335o: db !VIBRATO, $18, $1C, $18
#_1AC232: #_F339o: db $05 ; duration
#_1AC233: #_F33Ao: db R
#_1AC234: #_F33Bo: db $06, $6D ; duration, params
#_1AC236: #_F33Do: db C5
#_1AC237: #_F33Eo: db G4
#_1AC238: #_F33Fo: db F4
#_1AC239: #_F340o: db $36 ; duration
#_1AC23A: #_F341o: db G4
#_1AC23B: #_F342o: db $18 ; duration
#_1AC23C: #_F343o: db C5
#_1AC23D: #_F344o: db !CALL_PART : dw Song09_Sub_F757 : db 1
#_1AC241: #_F348o: db $06 ; duration
#_1AC242: #_F349o: db A4
#_1AC243: #_F34Ao: db Ds4
#_1AC244: #_F34Bo: db D4
#_1AC245: #_F34Co: db $49 ; duration
#_1AC246: #_F34Do: db Ds4

;---------------------------------------------------------------------------------------------------

Song09_Segment0_Track0:
#_1AC247: #_F34Eo: db !SET_PERC, $19
#_1AC249: #_F350o: db !MASTER_VOLUME, $C8
#_1AC24B: #_F352o: db !TEMPO, $1C
#_1AC24D: #_F354o: db !ECHO_CONFIG, $FF, $00, $00
#_1AC251: #_F358o: db !ECHO_FILTER, $02, $1E, $02
#_1AC255: #_F35Co: db !ECHO_GRAD, $1E, $32, $32
#_1AC259: #_F360o: db !INSTR, $0A
#_1AC25B: #_F362o: db !VOLUME, $C8
#_1AC25D: #_F364o: db !VIBRATO, $18, $1C, $18
#_1AC261: #_F368o: db !PAN, $0E
#_1AC263: #_F36Ao: db $60 ; duration
#_1AC264: #_F36Bo: db R
#_1AC265: #_F36Co: db R
#_1AC266: #_F36Do: db R
#_1AC267: #_F36Eo: db $54 ; duration
#_1AC268: #_F36Fo: db R
#_1AC269: #_F370o: db $0C, $7D ; duration, params
#_1AC26B: #_F372o: db C4
#_1AC26C: #_F373o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Segment0_Track1:
#_1AC26D: #_F374o: db !INSTR, $14
#_1AC26F: #_F376o: db !VOLUME, $A0
#_1AC271: #_F378o: db !CALL_PART : dw Song09_Sub_F57F : db 4

;---------------------------------------------------------------------------------------------------

Song09_Segment0_Track2:
#_1AC275: #_F37Co: db !CALL_PART : dw Song09_Sub_F598 : db 1
#_1AC279: #_F380o: db $18, $3D ; duration, params
#_1AC27B: #_F382o: db C2
#_1AC27C: #_F383o: db C2
#_1AC27D: #_F384o: db C2
#_1AC27E: #_F385o: db $0C ; duration
#_1AC27F: #_F386o: db R
#_1AC280: #_F387o: db C2
#_1AC281: #_F388o: db !CALL_PART : dw Song09_Sub_F5A7 : db 1

;---------------------------------------------------------------------------------------------------

Song09_Segment0_Track3:
#_1AC285: #_F38Co: db !CALL_PART : dw Song09_Sub_F786 : db 1

;---------------------------------------------------------------------------------------------------

Song09_Segment0_Track4:
#_1AC289: #_F390o: db !CALL_PART : dw Song09_Sub_F7C7 : db 1

;---------------------------------------------------------------------------------------------------

Song09_Segment0_Track5:
#_1AC28D: #_F394o: db !INSTR, $0A
#_1AC28F: #_F396o: db !VOLUME, $B4
#_1AC291: #_F398o: db !PAN, $0C
#_1AC293: #_F39Ao: db !VIBRATO, $18, $1C, $18
#_1AC297: #_F39Eo: db $60 ; duration
#_1AC298: #_F39Fo: db R
#_1AC299: #_F3A0o: db R
#_1AC29A: #_F3A1o: db R
#_1AC29B: #_F3A2o: db $54 ; duration
#_1AC29C: #_F3A3o: db R
#_1AC29D: #_F3A4o: db $0C, $7D ; duration, params
#_1AC29F: #_F3A6o: db G3

;---------------------------------------------------------------------------------------------------

Song09_Segment2_Track0:
#_1AC2A0: #_F3A7o: db !CALL_PART : dw Song09_Sub_F556 : db 1
#_1AC2A4: #_F3ABo: db !CALL_PART : dw Song09_Sub_F568 : db 1
#_1AC2A8: #_F3AFo: db $54 ; duration
#_1AC2A9: #_F3B0o: db R
#_1AC2AA: #_F3B1o: db $06 ; duration
#_1AC2AB: #_F3B2o: db G4
#_1AC2AC: #_F3B3o: db A4
#_1AC2AD: #_F3B4o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Segment2_Track1:
#_1AC2AE: #_F3B5o: db !INSTR, $14
#_1AC2B0: #_F3B7o: db !VOLUME, $A0
#_1AC2B2: #_F3B9o: db !CALL_PART : dw Song09_Sub_F57F : db 6

;---------------------------------------------------------------------------------------------------

Song09_Segment2_Track2:
#_1AC2B6: #_F3BDo: db !CALL_PART : dw Song09_Sub_F598 : db 1
#_1AC2BA: #_F3C1o: db $18, $3D ; duration, params
#_1AC2BC: #_F3C3o: db F2
#_1AC2BD: #_F3C4o: db F2
#_1AC2BE: #_F3C5o: db F2
#_1AC2BF: #_F3C6o: db $0C ; duration
#_1AC2C0: #_F3C7o: db R
#_1AC2C1: #_F3C8o: db F2
#_1AC2C2: #_F3C9o: db $18 ; duration
#_1AC2C3: #_F3CAo: db Gs2
#_1AC2C4: #_F3CBo: db Gs2
#_1AC2C5: #_F3CCo: db Gs2
#_1AC2C6: #_F3CDo: db $0C ; duration
#_1AC2C7: #_F3CEo: db R
#_1AC2C8: #_F3CFo: db $0C, $5D ; duration, params
#_1AC2CA: #_F3D1o: db Gs2
#_1AC2CB: #_F3D2o: db $18, $3D ; duration, params
#_1AC2CD: #_F3D4o: db As2
#_1AC2CE: #_F3D5o: db As2
#_1AC2CF: #_F3D6o: db As2
#_1AC2D0: #_F3D7o: db $0C ; duration
#_1AC2D1: #_F3D8o: db R
#_1AC2D2: #_F3D9o: db As2
#_1AC2D3: #_F3DAo: db !CALL_PART : dw Song09_Sub_F5A7 : db 1

;---------------------------------------------------------------------------------------------------

Song09_Segment2_Track3:
#_1AC2D7: #_F3DEo: db !CALL_PART : dw Song09_Sub_F5B9 : db 1

;---------------------------------------------------------------------------------------------------

Song09_Segment2_Track4:
#_1AC2DB: #_F3E2o: db !CALL_PART : dw Song09_Sub_F616 : db 1

;---------------------------------------------------------------------------------------------------

Song09_Segment2_Track5:
#_1AC2DF: #_F3E6o: db !CALL_PART : dw Song09_Sub_F673 : db 1
#_1AC2E3: #_F3EAo: db $54 ; duration
#_1AC2E4: #_F3EBo: db R
#_1AC2E5: #_F3ECo: db $06 ; duration
#_1AC2E6: #_F3EDo: db Ds4
#_1AC2E7: #_F3EEo: db F4

;---------------------------------------------------------------------------------------------------

Song09_Segment2_Track6:
#_1AC2E8: #_F3EFo: db !INSTR, $09
#_1AC2EA: #_F3F1o: db !VOLUME, $78
#_1AC2EC: #_F3F3o: db !PAN, $08
#_1AC2EE: #_F3F5o: db $30, $6D ; duration, params
#_1AC2F0: #_F3F7o: db C5
#_1AC2F1: #_F3F8o: db G5
#_1AC2F2: #_F3F9o: db $54 ; duration
#_1AC2F3: #_F3FAo: db F5
#_1AC2F4: #_F3FBo: db $06 ; duration
#_1AC2F5: #_F3FCo: db Ds5
#_1AC2F6: #_F3FDo: db D5
#_1AC2F7: #_F3FEo: db $60 ; duration
#_1AC2F8: #_F3FFo: db Ds5
#_1AC2F9: #_F400o: db $5A ; duration
#_1AC2FA: #_F401o: db D5
#_1AC2FB: #_F402o: db $06 ; duration
#_1AC2FC: #_F403o: db D5
#_1AC2FD: #_F404o: db $48 ; duration
#_1AC2FE: #_F405o: db C5
#_1AC2FF: #_F406o: db $06 ; duration
#_1AC300: #_F407o: db F5
#_1AC301: #_F408o: db Ds5
#_1AC302: #_F409o: db D5
#_1AC303: #_F40Ao: db C5
#_1AC304: #_F40Bo: db !VOLUME_GRAD, $46, $5A
#_1AC307: #_F40Eo: db $60, $6B ; duration, params
#_1AC309: #_F410o: db D5

;---------------------------------------------------------------------------------------------------

Song09_Segment2_Track7:
#_1AC30A: #_F411o: db !CALL_PART : dw Song09_Sub_F69B : db 1
#_1AC30E: #_F415o: db !CALL_PART : dw Song09_Sub_F568 : db 1
#_1AC312: #_F419o: db $54 ; duration
#_1AC313: #_F41Ao: db R
#_1AC314: #_F41Bo: db $04 ; duration
#_1AC315: #_F41Co: db G4

;---------------------------------------------------------------------------------------------------

Song09_Segment6_Track0:
#_1AC316: #_F41Do: db !INSTR, $0A
#_1AC318: #_F41Fo: db !VOLUME, $C8
#_1AC31A: #_F421o: db !PAN, $0E
#_1AC31C: #_F423o: db !VIBRATO, $18, $1C, $18
#_1AC320: #_F427o: db $06, $6D ; duration, params
#_1AC322: #_F429o: db G4
#_1AC323: #_F42Ao: db D4
#_1AC324: #_F42Bo: db Cs4
#_1AC325: #_F42Co: db $36 ; duration
#_1AC326: #_F42Do: db D4
#_1AC327: #_F42Eo: db $18 ; duration
#_1AC328: #_F42Fo: db G4
#_1AC329: #_F430o: db !CALL_PART : dw Song09_Sub_F808 : db 1
#_1AC32D: #_F434o: db $30 ; duration
#_1AC32E: #_F435o: db !TIE
#_1AC32F: #_F436o: db R
#_1AC330: #_F437o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Segment6_Track1:
#_1AC331: #_F438o: db !INSTR, $14
#_1AC333: #_F43Ao: db !VOLUME, $A0
#_1AC335: #_F43Co: db !CALL_PART : dw Song09_Sub_F766 : db 4

;---------------------------------------------------------------------------------------------------

Song09_Segment6_Track2:
#_1AC339: #_F440o: db !INSTR, $18
#_1AC33B: #_F442o: db !VOLUME, $C8
#_1AC33D: #_F444o: db $18, $7D ; duration, params
#_1AC33F: #_F446o: db E2
#_1AC340: #_F447o: db $0C ; duration
#_1AC341: #_F448o: db R
#_1AC342: #_F449o: db $18 ; duration
#_1AC343: #_F44Ao: db E2
#_1AC344: #_F44Bo: db $0C ; duration
#_1AC345: #_F44Co: db E2
#_1AC346: #_F44Do: db $08 ; duration
#_1AC347: #_F44Eo: db E2
#_1AC348: #_F44Fo: db E2
#_1AC349: #_F450o: db E2
#_1AC34A: #_F451o: db $18 ; duration
#_1AC34B: #_F452o: db Ds2
#_1AC34C: #_F453o: db $0C ; duration
#_1AC34D: #_F454o: db R
#_1AC34E: #_F455o: db $18 ; duration
#_1AC34F: #_F456o: db Ds2
#_1AC350: #_F457o: db $0C ; duration
#_1AC351: #_F458o: db Ds2
#_1AC352: #_F459o: db $08 ; duration
#_1AC353: #_F45Ao: db Ds2
#_1AC354: #_F45Bo: db Ds2
#_1AC355: #_F45Co: db Ds2
#_1AC356: #_F45Do: db $18 ; duration
#_1AC357: #_F45Eo: db D2
#_1AC358: #_F45Fo: db $0C ; duration
#_1AC359: #_F460o: db R
#_1AC35A: #_F461o: db $18 ; duration
#_1AC35B: #_F462o: db D2
#_1AC35C: #_F463o: db $0C ; duration
#_1AC35D: #_F464o: db D2
#_1AC35E: #_F465o: db $08 ; duration
#_1AC35F: #_F466o: db D2
#_1AC360: #_F467o: db D2
#_1AC361: #_F468o: db D2
#_1AC362: #_F469o: db $18 ; duration
#_1AC363: #_F46Ao: db G2
#_1AC364: #_F46Bo: db $0C ; duration
#_1AC365: #_F46Co: db R
#_1AC366: #_F46Do: db $18 ; duration
#_1AC367: #_F46Eo: db G2
#_1AC368: #_F46Fo: db $0C ; duration
#_1AC369: #_F470o: db G2
#_1AC36A: #_F471o: db $08 ; duration
#_1AC36B: #_F472o: db G2
#_1AC36C: #_F473o: db G2
#_1AC36D: #_F474o: db G2

;---------------------------------------------------------------------------------------------------

Song09_Segment6_Track3:
#_1AC36E: #_F475o: db !INSTR, $12
#_1AC370: #_F477o: db !VOLUME, $A0
#_1AC372: #_F479o: db $18, $3D ; duration, params
#_1AC374: #_F47Bo: db B3
#_1AC375: #_F47Co: db $0C ; duration
#_1AC376: #_F47Do: db R
#_1AC377: #_F47Eo: db $18 ; duration
#_1AC378: #_F47Fo: db B3
#_1AC379: #_F480o: db $0C ; duration
#_1AC37A: #_F481o: db B3
#_1AC37B: #_F482o: db $08 ; duration
#_1AC37C: #_F483o: db B3
#_1AC37D: #_F484o: db B3
#_1AC37E: #_F485o: db B3
#_1AC37F: #_F486o: db $18 ; duration
#_1AC380: #_F487o: db As3
#_1AC381: #_F488o: db $0C ; duration
#_1AC382: #_F489o: db R
#_1AC383: #_F48Ao: db $18 ; duration
#_1AC384: #_F48Bo: db As3
#_1AC385: #_F48Co: db $0C ; duration
#_1AC386: #_F48Do: db As3
#_1AC387: #_F48Eo: db $08 ; duration
#_1AC388: #_F48Fo: db As3
#_1AC389: #_F490o: db As3
#_1AC38A: #_F491o: db As3
#_1AC38B: #_F492o: db $18 ; duration
#_1AC38C: #_F493o: db C4
#_1AC38D: #_F494o: db $0C ; duration
#_1AC38E: #_F495o: db R
#_1AC38F: #_F496o: db $18 ; duration
#_1AC390: #_F497o: db C4
#_1AC391: #_F498o: db $0C ; duration
#_1AC392: #_F499o: db C4
#_1AC393: #_F49Ao: db $08 ; duration
#_1AC394: #_F49Bo: db C4
#_1AC395: #_F49Co: db C4
#_1AC396: #_F49Do: db C4
#_1AC397: #_F49Eo: db $18 ; duration
#_1AC398: #_F49Fo: db C4
#_1AC399: #_F4A0o: db $0C ; duration
#_1AC39A: #_F4A1o: db R
#_1AC39B: #_F4A2o: db $18 ; duration
#_1AC39C: #_F4A3o: db C4
#_1AC39D: #_F4A4o: db $0C ; duration
#_1AC39E: #_F4A5o: db B3
#_1AC39F: #_F4A6o: db $08 ; duration
#_1AC3A0: #_F4A7o: db B3
#_1AC3A1: #_F4A8o: db B3
#_1AC3A2: #_F4A9o: db B3

;---------------------------------------------------------------------------------------------------

Song09_Segment6_Track4:
#_1AC3A3: #_F4AAo: db !INSTR, $12
#_1AC3A5: #_F4ACo: db !VOLUME, $A0
#_1AC3A7: #_F4AEo: db $18, $3D ; duration, params
#_1AC3A9: #_F4B0o: db Gs3
#_1AC3AA: #_F4B1o: db $0C ; duration
#_1AC3AB: #_F4B2o: db R
#_1AC3AC: #_F4B3o: db $18 ; duration
#_1AC3AD: #_F4B4o: db Gs3
#_1AC3AE: #_F4B5o: db $0C ; duration
#_1AC3AF: #_F4B6o: db Gs3
#_1AC3B0: #_F4B7o: db $08 ; duration
#_1AC3B1: #_F4B8o: db Gs3
#_1AC3B2: #_F4B9o: db Gs3
#_1AC3B3: #_F4BAo: db Gs3
#_1AC3B4: #_F4BBo: db $18 ; duration
#_1AC3B5: #_F4BCo: db G3
#_1AC3B6: #_F4BDo: db $0C ; duration
#_1AC3B7: #_F4BEo: db R
#_1AC3B8: #_F4BFo: db $18 ; duration
#_1AC3B9: #_F4C0o: db G3
#_1AC3BA: #_F4C1o: db $0C ; duration
#_1AC3BB: #_F4C2o: db G3
#_1AC3BC: #_F4C3o: db $08 ; duration
#_1AC3BD: #_F4C4o: db G3
#_1AC3BE: #_F4C5o: db G3
#_1AC3BF: #_F4C6o: db G3
#_1AC3C0: #_F4C7o: db $18 ; duration
#_1AC3C1: #_F4C8o: db A3
#_1AC3C2: #_F4C9o: db $0C ; duration
#_1AC3C3: #_F4CAo: db R
#_1AC3C4: #_F4CBo: db $18 ; duration
#_1AC3C5: #_F4CCo: db A3
#_1AC3C6: #_F4CDo: db $0C ; duration
#_1AC3C7: #_F4CEo: db A3
#_1AC3C8: #_F4CFo: db $08 ; duration
#_1AC3C9: #_F4D0o: db A3
#_1AC3CA: #_F4D1o: db A3
#_1AC3CB: #_F4D2o: db A3
#_1AC3CC: #_F4D3o: db $18 ; duration
#_1AC3CD: #_F4D4o: db G3
#_1AC3CE: #_F4D5o: db $0C ; duration
#_1AC3CF: #_F4D6o: db R
#_1AC3D0: #_F4D7o: db $18 ; duration
#_1AC3D1: #_F4D8o: db G3
#_1AC3D2: #_F4D9o: db $0C ; duration
#_1AC3D3: #_F4DAo: db F3
#_1AC3D4: #_F4DBo: db $08 ; duration
#_1AC3D5: #_F4DCo: db F3
#_1AC3D6: #_F4DDo: db F3
#_1AC3D7: #_F4DEo: db F3

;---------------------------------------------------------------------------------------------------

Song09_Segment6_Track5:
#_1AC3D8: #_F4DFo: db !INSTR, $12
#_1AC3DA: #_F4E1o: db !VOLUME, $A0
#_1AC3DC: #_F4E3o: db !PAN, $0A
#_1AC3DE: #_F4E5o: db !VIBRATO, $18, $1C, $18
#_1AC3E2: #_F4E9o: db $60 ; duration
#_1AC3E3: #_F4EAo: db R
#_1AC3E4: #_F4EBo: db $48 ; duration
#_1AC3E5: #_F4ECo: db R
#_1AC3E6: #_F4EDo: db $18, $6D ; duration, params
#_1AC3E8: #_F4EFo: db G4
#_1AC3E9: #_F4F0o: db $60 ; duration
#_1AC3EA: #_F4F1o: db Fs4
#_1AC3EB: #_F4F2o: db F4

;---------------------------------------------------------------------------------------------------

Song09_Segment6_Track7:
#_1AC3EC: #_F4F3o: db !INSTR, $0A
#_1AC3EE: #_F4F5o: db !VOLUME, $C8
#_1AC3F0: #_F4F7o: db !PAN, $0C
#_1AC3F2: #_F4F9o: db !VIBRATO, $18, $1C, $18
#_1AC3F6: #_F4FDo: db $05 ; duration
#_1AC3F7: #_F4FEo: db R
#_1AC3F8: #_F4FFo: db $06, $6D ; duration, params
#_1AC3FA: #_F501o: db G4
#_1AC3FB: #_F502o: db D4
#_1AC3FC: #_F503o: db Cs4
#_1AC3FD: #_F504o: db $36 ; duration
#_1AC3FE: #_F505o: db D4
#_1AC3FF: #_F506o: db $18 ; duration
#_1AC400: #_F507o: db G4
#_1AC401: #_F508o: db !CALL_PART : dw Song09_Sub_F808 : db 1
#_1AC405: #_F50Co: db $30 ; duration
#_1AC406: #_F50Do: db !TIE
#_1AC407: #_F50Eo: db $2B ; duration
#_1AC408: #_F50Fo: db R

;---------------------------------------------------------------------------------------------------

Song09_Segment7_Track0:
#_1AC409: #_F510o: db !INSTR, $0A
#_1AC40B: #_F512o: db !VOLUME, $C8
#_1AC40D: #_F514o: db !VIBRATO, $18, $1C, $18
#_1AC411: #_F518o: db $60 ; duration
#_1AC412: #_F519o: db R
#_1AC413: #_F51Ao: db R
#_1AC414: #_F51Bo: db R
#_1AC415: #_F51Co: db $54 ; duration
#_1AC416: #_F51Do: db R
#_1AC417: #_F51Eo: db $0C, $7D ; duration, params
#_1AC419: #_F520o: db C4
#_1AC41A: #_F521o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Segment7_Track1:
#_1AC41B: #_F522o: db !INSTR, $14
#_1AC41D: #_F524o: db !VOLUME, $A0
#_1AC41F: #_F526o: db !CALL_PART : dw Song09_Sub_F57F : db 4

;---------------------------------------------------------------------------------------------------

Song09_Segment7_Track2:
#_1AC423: #_F52Ao: db !CALL_PART : dw Song09_Sub_F598 : db 1
#_1AC427: #_F52Eo: db $18, $3D ; duration, params
#_1AC429: #_F530o: db C2
#_1AC42A: #_F531o: db C2
#_1AC42B: #_F532o: db C2
#_1AC42C: #_F533o: db $0C ; duration
#_1AC42D: #_F534o: db R
#_1AC42E: #_F535o: db C2
#_1AC42F: #_F536o: db !CALL_PART : dw Song09_Sub_F5A7 : db 1

;---------------------------------------------------------------------------------------------------

Song09_Segment7_Track3:
#_1AC433: #_F53Ao: db !CALL_PART : dw Song09_Sub_F786 : db 1

;---------------------------------------------------------------------------------------------------

Song09_Segment7_Track4:
#_1AC437: #_F53Eo: db !CALL_PART : dw Song09_Sub_F7C7 : db 1

;---------------------------------------------------------------------------------------------------

Song09_Segment7_Track5:
#_1AC43B: #_F542o: db !INSTR, $0A
#_1AC43D: #_F544o: db !VOLUME, $B4
#_1AC43F: #_F546o: db !PAN, $0C
#_1AC441: #_F548o: db !VIBRATO, $18, $1C, $18
#_1AC445: #_F54Co: db $60 ; duration
#_1AC446: #_F54Do: db R
#_1AC447: #_F54Eo: db R
#_1AC448: #_F54Fo: db R
#_1AC449: #_F550o: db $54 ; duration
#_1AC44A: #_F551o: db R
#_1AC44B: #_F552o: db $0C, $7D ; duration, params
#_1AC44D: #_F554o: db G3
#_1AC44E: #_F555o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F556:
#_1AC44F: #_F556o: db !INSTR, $0A
#_1AC451: #_F558o: db !VOLUME, $C8
#_1AC453: #_F55Ao: db !PAN, $0E
#_1AC455: #_F55Co: db !VIBRATO, $18, $1C, $18
#_1AC459: #_F560o: db $3C, $6D ; duration, params
#_1AC45B: #_F562o: db G4
#_1AC45C: #_F563o: db $0C ; duration
#_1AC45D: #_F564o: db C4
#_1AC45E: #_F565o: db G4
#_1AC45F: #_F566o: db C5
#_1AC460: #_F567o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F568:
#_1AC461: #_F568o: db $06 ; duration
#_1AC462: #_F569o: db A4
#_1AC463: #_F56Ao: db As4
#_1AC464: #_F56Bo: db $4E ; duration
#_1AC465: #_F56Co: db A4
#_1AC466: #_F56Do: db $06 ; duration
#_1AC467: #_F56Eo: db F4
#_1AC468: #_F56Fo: db $18 ; duration
#_1AC469: #_F570o: db G4
#_1AC46A: #_F571o: db $3C ; duration
#_1AC46B: #_F572o: db C4
#_1AC46C: #_F573o: db $0C ; duration
#_1AC46D: #_F574o: db F4
#_1AC46E: #_F575o: db $06 ; duration
#_1AC46F: #_F576o: db D4
#_1AC470: #_F577o: db Ds4
#_1AC471: #_F578o: db $4E ; duration
#_1AC472: #_F579o: db D4
#_1AC473: #_F57Ao: db $06 ; duration
#_1AC474: #_F57Bo: db As3
#_1AC475: #_F57Co: db $60 ; duration
#_1AC476: #_F57Do: db C4
#_1AC477: #_F57Eo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F57F:
#_1AC478: #_F57Fo: db $0C, $3D ; duration, params
#_1AC47A: #_F581o: db F4
#_1AC47B: #_F582o: db $0C, $37 ; duration, params
#_1AC47D: #_F584o: db F4
#_1AC47E: #_F585o: db $0C, $3D ; duration, params
#_1AC480: #_F587o: db F4
#_1AC481: #_F588o: db $0C, $37 ; duration, params
#_1AC483: #_F58Ao: db F4
#_1AC484: #_F58Bo: db $0C, $3D ; duration, params
#_1AC486: #_F58Do: db F4
#_1AC487: #_F58Eo: db $0C, $37 ; duration, params
#_1AC489: #_F590o: db F4
#_1AC48A: #_F591o: db $06, $39 ; duration, params
#_1AC48C: #_F593o: db F4
#_1AC48D: #_F594o: db F4
#_1AC48E: #_F595o: db F4
#_1AC48F: #_F596o: db F4
#_1AC490: #_F597o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F598:
#_1AC491: #_F598o: db !INSTR, $18
#_1AC493: #_F59Ao: db !VOLUME, $C8
#_1AC495: #_F59Co: db $18, $3D ; duration, params
#_1AC497: #_F59Eo: db C2
#_1AC498: #_F59Fo: db C2
#_1AC499: #_F5A0o: db C2
#_1AC49A: #_F5A1o: db $0C ; duration
#_1AC49B: #_F5A2o: db R
#_1AC49C: #_F5A3o: db $0C, $5D ; duration, params
#_1AC49E: #_F5A5o: db C2
#_1AC49F: #_F5A6o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F5A7:
#_1AC4A0: #_F5A7o: db $18 ; duration
#_1AC4A1: #_F5A8o: db C2
#_1AC4A2: #_F5A9o: db C2
#_1AC4A3: #_F5AAo: db C2
#_1AC4A4: #_F5ABo: db $0C ; duration
#_1AC4A5: #_F5ACo: db R
#_1AC4A6: #_F5ADo: db $0C, $5D ; duration, params
#_1AC4A8: #_F5AFo: db C2
#_1AC4A9: #_F5B0o: db $18, $3D ; duration, params
#_1AC4AB: #_F5B2o: db C2
#_1AC4AC: #_F5B3o: db C2
#_1AC4AD: #_F5B4o: db C2
#_1AC4AE: #_F5B5o: db $0C ; duration
#_1AC4AF: #_F5B6o: db R
#_1AC4B0: #_F5B7o: db C2
#_1AC4B1: #_F5B8o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F5B9:
#_1AC4B2: #_F5B9o: db !INSTR, $11
#_1AC4B4: #_F5BBo: db !VOLUME, $C8
#_1AC4B6: #_F5BDo: db !PAN, $07
#_1AC4B8: #_F5BFo: db $0C ; duration
#_1AC4B9: #_F5C0o: db R
#_1AC4BA: #_F5C1o: db $0C, $3D ; duration, params
#_1AC4BC: #_F5C3o: db G3
#_1AC4BD: #_F5C4o: db G3
#_1AC4BE: #_F5C5o: db $06, $3B ; duration, params
#_1AC4C0: #_F5C7o: db G3
#_1AC4C1: #_F5C8o: db G3
#_1AC4C2: #_F5C9o: db $0C ; duration
#_1AC4C3: #_F5CAo: db G3
#_1AC4C4: #_F5CBo: db $24 ; duration
#_1AC4C5: #_F5CCo: db G3
#_1AC4C6: #_F5CDo: db $0C ; duration
#_1AC4C7: #_F5CEo: db R
#_1AC4C8: #_F5CFo: db $0C, $3D ; duration, params
#_1AC4CA: #_F5D1o: db A3
#_1AC4CB: #_F5D2o: db A3
#_1AC4CC: #_F5D3o: db $06, $3B ; duration, params
#_1AC4CE: #_F5D5o: db A3
#_1AC4CF: #_F5D6o: db $06, $3D ; duration, params
#_1AC4D1: #_F5D8o: db A3
#_1AC4D2: #_F5D9o: db $0C ; duration
#_1AC4D3: #_F5DAo: db A3
#_1AC4D4: #_F5DBo: db $24 ; duration
#_1AC4D5: #_F5DCo: db A3
#_1AC4D6: #_F5DDo: db $0C ; duration
#_1AC4D7: #_F5DEo: db R
#_1AC4D8: #_F5DFo: db G3
#_1AC4D9: #_F5E0o: db G3
#_1AC4DA: #_F5E1o: db $06, $3B ; duration, params
#_1AC4DC: #_F5E3o: db G3
#_1AC4DD: #_F5E4o: db G3
#_1AC4DE: #_F5E5o: db $0C ; duration
#_1AC4DF: #_F5E6o: db G3
#_1AC4E0: #_F5E7o: db $24 ; duration
#_1AC4E1: #_F5E8o: db G3
#_1AC4E2: #_F5E9o: db $0C ; duration
#_1AC4E3: #_F5EAo: db R
#_1AC4E4: #_F5EBo: db $0C, $3D ; duration, params
#_1AC4E6: #_F5EDo: db F3
#_1AC4E7: #_F5EEo: db F3
#_1AC4E8: #_F5EFo: db $06, $3B ; duration, params
#_1AC4EA: #_F5F1o: db F3
#_1AC4EB: #_F5F2o: db $06, $3D ; duration, params
#_1AC4ED: #_F5F4o: db F3
#_1AC4EE: #_F5F5o: db $0C ; duration
#_1AC4EF: #_F5F6o: db F3
#_1AC4F0: #_F5F7o: db $24 ; duration
#_1AC4F1: #_F5F8o: db F3
#_1AC4F2: #_F5F9o: db $0C ; duration
#_1AC4F3: #_F5FAo: db R
#_1AC4F4: #_F5FBo: db G3
#_1AC4F5: #_F5FCo: db G3
#_1AC4F6: #_F5FDo: db $06, $3B ; duration, params
#_1AC4F8: #_F5FFo: db G3
#_1AC4F9: #_F600o: db G3
#_1AC4FA: #_F601o: db $0C ; duration
#_1AC4FB: #_F602o: db G3
#_1AC4FC: #_F603o: db $24 ; duration
#_1AC4FD: #_F604o: db A3
#_1AC4FE: #_F605o: db $0C ; duration
#_1AC4FF: #_F606o: db R
#_1AC500: #_F607o: db $0C, $3D ; duration, params
#_1AC502: #_F609o: db As3
#_1AC503: #_F60Ao: db As3
#_1AC504: #_F60Bo: db $06, $3B ; duration, params
#_1AC506: #_F60Do: db As3
#_1AC507: #_F60Eo: db $06, $3D ; duration, params
#_1AC509: #_F610o: db As3
#_1AC50A: #_F611o: db $0C ; duration
#_1AC50B: #_F612o: db As3
#_1AC50C: #_F613o: db $24 ; duration
#_1AC50D: #_F614o: db C4
#_1AC50E: #_F615o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F616:
#_1AC50F: #_F616o: db !INSTR, $11
#_1AC511: #_F618o: db !VOLUME, $C8
#_1AC513: #_F61Ao: db !PAN, $05
#_1AC515: #_F61Co: db $0C ; duration
#_1AC516: #_F61Do: db R
#_1AC517: #_F61Eo: db $0C, $3D ; duration, params
#_1AC519: #_F620o: db Ds3
#_1AC51A: #_F621o: db Ds3
#_1AC51B: #_F622o: db $06, $3B ; duration, params
#_1AC51D: #_F624o: db Ds3
#_1AC51E: #_F625o: db Ds3
#_1AC51F: #_F626o: db $0C ; duration
#_1AC520: #_F627o: db Ds3
#_1AC521: #_F628o: db $24 ; duration
#_1AC522: #_F629o: db Ds3
#_1AC523: #_F62Ao: db $0C ; duration
#_1AC524: #_F62Bo: db R
#_1AC525: #_F62Co: db $0C, $3D ; duration, params
#_1AC527: #_F62Eo: db F3
#_1AC528: #_F62Fo: db F3
#_1AC529: #_F630o: db $06, $3B ; duration, params
#_1AC52B: #_F632o: db F3
#_1AC52C: #_F633o: db $06, $3D ; duration, params
#_1AC52E: #_F635o: db F3
#_1AC52F: #_F636o: db $0C ; duration
#_1AC530: #_F637o: db F3
#_1AC531: #_F638o: db $24 ; duration
#_1AC532: #_F639o: db F3
#_1AC533: #_F63Ao: db $0C ; duration
#_1AC534: #_F63Bo: db R
#_1AC535: #_F63Co: db Ds3
#_1AC536: #_F63Do: db Ds3
#_1AC537: #_F63Eo: db $06, $3B ; duration, params
#_1AC539: #_F640o: db Ds3
#_1AC53A: #_F641o: db Ds3
#_1AC53B: #_F642o: db $0C ; duration
#_1AC53C: #_F643o: db Ds3
#_1AC53D: #_F644o: db $24 ; duration
#_1AC53E: #_F645o: db Ds3
#_1AC53F: #_F646o: db $0C ; duration
#_1AC540: #_F647o: db R
#_1AC541: #_F648o: db $0C, $3D ; duration, params
#_1AC543: #_F64Ao: db D3
#_1AC544: #_F64Bo: db D3
#_1AC545: #_F64Co: db $06, $3B ; duration, params
#_1AC547: #_F64Eo: db D3
#_1AC548: #_F64Fo: db $06, $3D ; duration, params
#_1AC54A: #_F651o: db D3
#_1AC54B: #_F652o: db $0C ; duration
#_1AC54C: #_F653o: db D3
#_1AC54D: #_F654o: db $24 ; duration
#_1AC54E: #_F655o: db D3
#_1AC54F: #_F656o: db $0C ; duration
#_1AC550: #_F657o: db R
#_1AC551: #_F658o: db Ds3
#_1AC552: #_F659o: db Ds3
#_1AC553: #_F65Ao: db $06, $3B ; duration, params
#_1AC555: #_F65Co: db Ds3
#_1AC556: #_F65Do: db Ds3
#_1AC557: #_F65Eo: db $0C ; duration
#_1AC558: #_F65Fo: db Ds3
#_1AC559: #_F660o: db $24 ; duration
#_1AC55A: #_F661o: db F3
#_1AC55B: #_F662o: db $0C ; duration
#_1AC55C: #_F663o: db R
#_1AC55D: #_F664o: db $0C, $3D ; duration, params
#_1AC55F: #_F666o: db G3
#_1AC560: #_F667o: db G3
#_1AC561: #_F668o: db $06, $3B ; duration, params
#_1AC563: #_F66Ao: db G3
#_1AC564: #_F66Bo: db $06, $3D ; duration, params
#_1AC566: #_F66Do: db G3
#_1AC567: #_F66Eo: db $0C ; duration
#_1AC568: #_F66Fo: db G3
#_1AC569: #_F670o: db $24 ; duration
#_1AC56A: #_F671o: db A3
#_1AC56B: #_F672o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F673:
#_1AC56C: #_F673o: db !INSTR, $0A
#_1AC56E: #_F675o: db !VOLUME, $B4
#_1AC570: #_F677o: db !PAN, $0C
#_1AC572: #_F679o: db !VIBRATO, $18, $1C, $18
#_1AC576: #_F67Do: db $3C, $6D ; duration, params
#_1AC578: #_F67Fo: db Ds4
#_1AC579: #_F680o: db $0C ; duration
#_1AC57A: #_F681o: db G3
#_1AC57B: #_F682o: db Ds4
#_1AC57C: #_F683o: db G4
#_1AC57D: #_F684o: db $06 ; duration
#_1AC57E: #_F685o: db F4
#_1AC57F: #_F686o: db G4
#_1AC580: #_F687o: db $4E ; duration
#_1AC581: #_F688o: db F4
#_1AC582: #_F689o: db $06 ; duration
#_1AC583: #_F68Ao: db C4
#_1AC584: #_F68Bo: db $18 ; duration
#_1AC585: #_F68Co: db Ds4
#_1AC586: #_F68Do: db $3C ; duration
#_1AC587: #_F68Eo: db Gs3
#_1AC588: #_F68Fo: db $0C ; duration
#_1AC589: #_F690o: db C4
#_1AC58A: #_F691o: db $06 ; duration
#_1AC58B: #_F692o: db As3
#_1AC58C: #_F693o: db C4
#_1AC58D: #_F694o: db $4E ; duration
#_1AC58E: #_F695o: db As3
#_1AC58F: #_F696o: db $06 ; duration
#_1AC590: #_F697o: db F3
#_1AC591: #_F698o: db $60 ; duration
#_1AC592: #_F699o: db G3
#_1AC593: #_F69Ao: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F69B:
#_1AC594: #_F69Bo: db !INSTR, $0A
#_1AC596: #_F69Do: db !VOLUME, $A0
#_1AC598: #_F69Fo: db !PAN, $0C
#_1AC59A: #_F6A1o: db !VIBRATO, $18, $1C, $18
#_1AC59E: #_F6A5o: db $08 ; duration
#_1AC59F: #_F6A6o: db R
#_1AC5A0: #_F6A7o: db $3C, $6D ; duration, params
#_1AC5A2: #_F6A9o: db G4
#_1AC5A3: #_F6AAo: db $0C ; duration
#_1AC5A4: #_F6ABo: db C4
#_1AC5A5: #_F6ACo: db G4
#_1AC5A6: #_F6ADo: db C5
#_1AC5A7: #_F6AEo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F6AF:
#_1AC5A8: #_F6AFo: db $06 ; duration
#_1AC5A9: #_F6B0o: db A4
#_1AC5AA: #_F6B1o: db G4
#_1AC5AB: #_F6B2o: db $48 ; duration
#_1AC5AC: #_F6B3o: db F4
#_1AC5AD: #_F6B4o: db $06 ; duration
#_1AC5AE: #_F6B5o: db Ds4
#_1AC5AF: #_F6B6o: db F4
#_1AC5B0: #_F6B7o: db $48 ; duration
#_1AC5B1: #_F6B8o: db G4
#_1AC5B2: #_F6B9o: db $0C ; duration
#_1AC5B3: #_F6BAo: db C4
#_1AC5B4: #_F6BBo: db G4
#_1AC5B5: #_F6BCo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F6BD:
#_1AC5B6: #_F6BDo: db $0C, $3D ; duration, params
#_1AC5B8: #_F6BFo: db F4
#_1AC5B9: #_F6C0o: db $0C, $37 ; duration, params
#_1AC5BB: #_F6C2o: db F4
#_1AC5BC: #_F6C3o: db $0C, $3D ; duration, params
#_1AC5BE: #_F6C5o: db F4
#_1AC5BF: #_F6C6o: db $0C, $37 ; duration, params
#_1AC5C1: #_F6C8o: db F4
#_1AC5C2: #_F6C9o: db $0C, $3D ; duration, params
#_1AC5C4: #_F6CBo: db F4
#_1AC5C5: #_F6CCo: db $0C, $37 ; duration, params
#_1AC5C7: #_F6CEo: db F4
#_1AC5C8: #_F6CFo: db $08, $39 ; duration, params
#_1AC5CA: #_F6D1o: db F4
#_1AC5CB: #_F6D2o: db F4
#_1AC5CC: #_F6D3o: db F4
#_1AC5CD: #_F6D4o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F6D5:
#_1AC5CE: #_F6D5o: db !INSTR, $18
#_1AC5D0: #_F6D7o: db !VOLUME, $C8
#_1AC5D2: #_F6D9o: db $0C, $3D ; duration, params
#_1AC5D4: #_F6DBo: db Ds2
#_1AC5D5: #_F6DCo: db $18 ; duration
#_1AC5D6: #_F6DDo: db Ds2
#_1AC5D7: #_F6DEo: db $0C ; duration
#_1AC5D8: #_F6DFo: db Ds2
#_1AC5D9: #_F6E0o: db Ds2
#_1AC5DA: #_F6E1o: db Ds2
#_1AC5DB: #_F6E2o: db $08 ; duration
#_1AC5DC: #_F6E3o: db Ds2
#_1AC5DD: #_F6E4o: db Ds2
#_1AC5DE: #_F6E5o: db Ds2
#_1AC5DF: #_F6E6o: db $0C ; duration
#_1AC5E0: #_F6E7o: db F2
#_1AC5E1: #_F6E8o: db $18 ; duration
#_1AC5E2: #_F6E9o: db F2
#_1AC5E3: #_F6EAo: db $0C ; duration
#_1AC5E4: #_F6EBo: db F2
#_1AC5E5: #_F6ECo: db F2
#_1AC5E6: #_F6EDo: db F2
#_1AC5E7: #_F6EEo: db $08 ; duration
#_1AC5E8: #_F6EFo: db F2
#_1AC5E9: #_F6F0o: db F2
#_1AC5EA: #_F6F1o: db F2
#_1AC5EB: #_F6F2o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F6F3:
#_1AC5EC: #_F6F3o: db !INSTR, $11
#_1AC5EE: #_F6F5o: db !VOLUME, $C8
#_1AC5F0: #_F6F7o: db !PAN, $05
#_1AC5F2: #_F6F9o: db $0C ; duration
#_1AC5F3: #_F6FAo: db R
#_1AC5F4: #_F6FBo: db $0C, $3D ; duration, params
#_1AC5F6: #_F6FDo: db G3
#_1AC5F7: #_F6FEo: db G3
#_1AC5F8: #_F6FFo: db $06, $3B ; duration, params
#_1AC5FA: #_F701o: db G3
#_1AC5FB: #_F702o: db $06, $5B ; duration, params
#_1AC5FD: #_F704o: db G3
#_1AC5FE: #_F705o: db $0C ; duration
#_1AC5FF: #_F706o: db G3
#_1AC600: #_F707o: db G3
#_1AC601: #_F708o: db $08 ; duration
#_1AC602: #_F709o: db G3
#_1AC603: #_F70Ao: db G3
#_1AC604: #_F70Bo: db G3
#_1AC605: #_F70Co: db $0C ; duration
#_1AC606: #_F70Do: db R
#_1AC607: #_F70Eo: db $0C, $3D ; duration, params
#_1AC609: #_F710o: db A3
#_1AC60A: #_F711o: db A3
#_1AC60B: #_F712o: db $06, $3B ; duration, params
#_1AC60D: #_F714o: db A3
#_1AC60E: #_F715o: db $06, $3D ; duration, params
#_1AC610: #_F717o: db A3
#_1AC611: #_F718o: db $0C ; duration
#_1AC612: #_F719o: db A3
#_1AC613: #_F71Ao: db A3
#_1AC614: #_F71Bo: db $08 ; duration
#_1AC615: #_F71Co: db A3
#_1AC616: #_F71Do: db A3
#_1AC617: #_F71Eo: db A3
#_1AC618: #_F71Fo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F720:
#_1AC619: #_F720o: db $48, $6D ; duration, params
#_1AC61B: #_F722o: db As4
#_1AC61C: #_F723o: db $0C ; duration
#_1AC61D: #_F724o: db G4
#_1AC61E: #_F725o: db As4
#_1AC61F: #_F726o: db $06 ; duration
#_1AC620: #_F727o: db A4
#_1AC621: #_F728o: db As4
#_1AC622: #_F729o: db $54 ; duration
#_1AC623: #_F72Ao: db C5
#_1AC624: #_F72Bo: db $48 ; duration
#_1AC625: #_F72Co: db As4
#_1AC626: #_F72Do: db $0C ; duration
#_1AC627: #_F72Eo: db A4
#_1AC628: #_F72Fo: db As4
#_1AC629: #_F730o: db $06 ; duration
#_1AC62A: #_F731o: db A4
#_1AC62B: #_F732o: db Gs4
#_1AC62C: #_F733o: db $54 ; duration
#_1AC62D: #_F734o: db A4
#_1AC62E: #_F735o: db $60 ; duration
#_1AC62F: #_F736o: db G4
#_1AC630: #_F737o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F738:
#_1AC631: #_F738o: db $0C ; duration
#_1AC632: #_F739o: db G2
#_1AC633: #_F73Ao: db $18 ; duration
#_1AC634: #_F73Bo: db G2
#_1AC635: #_F73Co: db $0C ; duration
#_1AC636: #_F73Do: db G2
#_1AC637: #_F73Eo: db G2
#_1AC638: #_F73Fo: db G2
#_1AC639: #_F740o: db $08 ; duration
#_1AC63A: #_F741o: db G2
#_1AC63B: #_F742o: db G2
#_1AC63C: #_F743o: db G2
#_1AC63D: #_F744o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F745:
#_1AC63E: #_F745o: db $06 ; duration
#_1AC63F: #_F746o: db A4
#_1AC640: #_F747o: db As4
#_1AC641: #_F748o: db $54 ; duration
#_1AC642: #_F749o: db C5
#_1AC643: #_F74Ao: db $48 ; duration
#_1AC644: #_F74Bo: db As4
#_1AC645: #_F74Co: db $0C ; duration
#_1AC646: #_F74Do: db A4
#_1AC647: #_F74Eo: db As4
#_1AC648: #_F74Fo: db $06 ; duration
#_1AC649: #_F750o: db A4
#_1AC64A: #_F751o: db Gs4
#_1AC64B: #_F752o: db $54 ; duration
#_1AC64C: #_F753o: db A4
#_1AC64D: #_F754o: db $60 ; duration
#_1AC64E: #_F755o: db G4
#_1AC64F: #_F756o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F757:
#_1AC650: #_F757o: db $06 ; duration
#_1AC651: #_F758o: db As4
#_1AC652: #_F759o: db G4
#_1AC653: #_F75Ao: db F4
#_1AC654: #_F75Bo: db $4E ; duration
#_1AC655: #_F75Co: db G4
#_1AC656: #_F75Do: db $06 ; duration
#_1AC657: #_F75Eo: db As4
#_1AC658: #_F75Fo: db F4
#_1AC659: #_F760o: db Ds4
#_1AC65A: #_F761o: db $36 ; duration
#_1AC65B: #_F762o: db F4
#_1AC65C: #_F763o: db $18 ; duration
#_1AC65D: #_F764o: db As4
#_1AC65E: #_F765o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F766:
#_1AC65F: #_F766o: db $18, $3D ; duration, params
#_1AC661: #_F768o: db F4
#_1AC662: #_F769o: db $06, $37 ; duration, params
#_1AC664: #_F76Bo: db F4
#_1AC665: #_F76Co: db F4
#_1AC666: #_F76Do: db F4
#_1AC667: #_F76Eo: db F4
#_1AC668: #_F76Fo: db $0C, $3D ; duration, params
#_1AC66A: #_F771o: db F4
#_1AC66B: #_F772o: db F4
#_1AC66C: #_F773o: db $08, $39 ; duration, params
#_1AC66E: #_F775o: db F4
#_1AC66F: #_F776o: db F4
#_1AC670: #_F777o: db F4
#_1AC671: #_F778o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F779:
#_1AC672: #_F779o: db $18 ; duration
#_1AC673: #_F77Ao: db C4
#_1AC674: #_F77Bo: db $0C ; duration
#_1AC675: #_F77Co: db R
#_1AC676: #_F77Do: db $18 ; duration
#_1AC677: #_F77Eo: db C4
#_1AC678: #_F77Fo: db $0C ; duration
#_1AC679: #_F780o: db C4
#_1AC67A: #_F781o: db $08 ; duration
#_1AC67B: #_F782o: db C4
#_1AC67C: #_F783o: db C4
#_1AC67D: #_F784o: db C4
#_1AC67E: #_F785o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F786:
#_1AC67F: #_F786o: db !INSTR, $11
#_1AC681: #_F788o: db !VOLUME, $C8
#_1AC683: #_F78Ao: db !PAN, $07
#_1AC685: #_F78Co: db $0C ; duration
#_1AC686: #_F78Do: db R
#_1AC687: #_F78Eo: db $0C, $3D ; duration, params
#_1AC689: #_F790o: db G3
#_1AC68A: #_F791o: db G3
#_1AC68B: #_F792o: db $06, $3B ; duration, params
#_1AC68D: #_F794o: db G3
#_1AC68E: #_F795o: db G3
#_1AC68F: #_F796o: db $0C ; duration
#_1AC690: #_F797o: db G3
#_1AC691: #_F798o: db $24 ; duration
#_1AC692: #_F799o: db A3
#_1AC693: #_F79Ao: db $0C ; duration
#_1AC694: #_F79Bo: db R
#_1AC695: #_F79Co: db $0C, $3D ; duration, params
#_1AC697: #_F79Eo: db As3
#_1AC698: #_F79Fo: db As3
#_1AC699: #_F7A0o: db $06, $3B ; duration, params
#_1AC69B: #_F7A2o: db As3
#_1AC69C: #_F7A3o: db $06, $3D ; duration, params
#_1AC69E: #_F7A5o: db As3
#_1AC69F: #_F7A6o: db $0C ; duration
#_1AC6A0: #_F7A7o: db As3
#_1AC6A1: #_F7A8o: db $24 ; duration
#_1AC6A2: #_F7A9o: db C4
#_1AC6A3: #_F7AAo: db $0C ; duration
#_1AC6A4: #_F7ABo: db R
#_1AC6A5: #_F7ACo: db G3
#_1AC6A6: #_F7ADo: db G3
#_1AC6A7: #_F7AEo: db $06, $3B ; duration, params
#_1AC6A9: #_F7B0o: db G3
#_1AC6AA: #_F7B1o: db G3
#_1AC6AB: #_F7B2o: db $0C ; duration
#_1AC6AC: #_F7B3o: db G3
#_1AC6AD: #_F7B4o: db $24 ; duration
#_1AC6AE: #_F7B5o: db A3
#_1AC6AF: #_F7B6o: db $0C ; duration
#_1AC6B0: #_F7B7o: db R
#_1AC6B1: #_F7B8o: db $0C, $3D ; duration, params
#_1AC6B3: #_F7BAo: db As3
#_1AC6B4: #_F7BBo: db As3
#_1AC6B5: #_F7BCo: db $06, $3B ; duration, params
#_1AC6B7: #_F7BEo: db As3
#_1AC6B8: #_F7BFo: db $06, $3D ; duration, params
#_1AC6BA: #_F7C1o: db As3
#_1AC6BB: #_F7C2o: db $0C ; duration
#_1AC6BC: #_F7C3o: db As3
#_1AC6BD: #_F7C4o: db $24 ; duration
#_1AC6BE: #_F7C5o: db C4
#_1AC6BF: #_F7C6o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F7C7:
#_1AC6C0: #_F7C7o: db !INSTR, $11
#_1AC6C2: #_F7C9o: db !VOLUME, $C8
#_1AC6C4: #_F7CBo: db !PAN, $05
#_1AC6C6: #_F7CDo: db $0C ; duration
#_1AC6C7: #_F7CEo: db R
#_1AC6C8: #_F7CFo: db $0C, $3D ; duration, params
#_1AC6CA: #_F7D1o: db Ds3
#_1AC6CB: #_F7D2o: db Ds3
#_1AC6CC: #_F7D3o: db $06, $3B ; duration, params
#_1AC6CE: #_F7D5o: db Ds3
#_1AC6CF: #_F7D6o: db Ds3
#_1AC6D0: #_F7D7o: db $0C ; duration
#_1AC6D1: #_F7D8o: db Ds3
#_1AC6D2: #_F7D9o: db $24 ; duration
#_1AC6D3: #_F7DAo: db F3
#_1AC6D4: #_F7DBo: db $0C ; duration
#_1AC6D5: #_F7DCo: db R
#_1AC6D6: #_F7DDo: db $0C, $3D ; duration, params
#_1AC6D8: #_F7DFo: db G3
#_1AC6D9: #_F7E0o: db G3
#_1AC6DA: #_F7E1o: db $06, $3B ; duration, params
#_1AC6DC: #_F7E3o: db G3
#_1AC6DD: #_F7E4o: db $06, $3D ; duration, params
#_1AC6DF: #_F7E6o: db G3
#_1AC6E0: #_F7E7o: db $0C ; duration
#_1AC6E1: #_F7E8o: db G3
#_1AC6E2: #_F7E9o: db $24 ; duration
#_1AC6E3: #_F7EAo: db A3
#_1AC6E4: #_F7EBo: db $0C ; duration
#_1AC6E5: #_F7ECo: db R
#_1AC6E6: #_F7EDo: db Ds3
#_1AC6E7: #_F7EEo: db Ds3
#_1AC6E8: #_F7EFo: db $06, $3B ; duration, params
#_1AC6EA: #_F7F1o: db Ds3
#_1AC6EB: #_F7F2o: db Ds3
#_1AC6EC: #_F7F3o: db $0C ; duration
#_1AC6ED: #_F7F4o: db Ds3
#_1AC6EE: #_F7F5o: db $24 ; duration
#_1AC6EF: #_F7F6o: db F3
#_1AC6F0: #_F7F7o: db $0C ; duration
#_1AC6F1: #_F7F8o: db R
#_1AC6F2: #_F7F9o: db $0C, $3D ; duration, params
#_1AC6F4: #_F7FBo: db G3
#_1AC6F5: #_F7FCo: db G3
#_1AC6F6: #_F7FDo: db $06, $3B ; duration, params
#_1AC6F8: #_F7FFo: db G3
#_1AC6F9: #_F800o: db $06, $3D ; duration, params
#_1AC6FB: #_F802o: db G3
#_1AC6FC: #_F803o: db $0C ; duration
#_1AC6FD: #_F804o: db G3
#_1AC6FE: #_F805o: db $24 ; duration
#_1AC6FF: #_F806o: db A3
#_1AC700: #_F807o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song09_Sub_F808:
#_1AC701: #_F808o: db $06 ; duration
#_1AC702: #_F809o: db C5
#_1AC703: #_F80Ao: db G4
#_1AC704: #_F80Bo: db F4
#_1AC705: #_F80Co: db $36 ; duration
#_1AC706: #_F80Do: db G4
#_1AC707: #_F80Eo: db $18 ; duration
#_1AC708: #_F80Fo: db C5
#_1AC709: #_F810o: db $60 ; duration
#_1AC70A: #_F811o: db D5
#_1AC70B: #_F812o: db !PART_END

;===================================================================================================

Song0A_PullingTheMasterSword:
#_1AC70C: #_F813o: dw Song0A_Segment0
#_1AC70E: #_F815o: dw !SONG_END

Song0A_Segment0:
#_1AC710: #_F817o: dw Song0A_Segment0_Track0
#_1AC712: #_F819o: dw Song0A_Segment0_Track1
#_1AC714: #_F81Bo: dw Song0A_Segment0_Track2
#_1AC716: #_F81Do: dw Song0A_Segment0_Track3
#_1AC718: #_F81Fo: dw Song0A_Segment0_Track4
#_1AC71A: #_F821o: dw Song0A_Segment0_Track5
#_1AC71C: #_F823o: dw $0000
#_1AC71E: #_F825o: dw $0000

;---------------------------------------------------------------------------------------------------

Song0A_Segment0_Track0:
#_1AC720: #_F827o: db !SET_PERC, $18
#_1AC722: #_F829o: db !MASTER_VOLUME, $B4
#_1AC724: #_F82Bo: db !ECHO_CONFIG, $FF, $28, $28
#_1AC728: #_F82Fo: db !ECHO_FILTER, $02, $1E, $02
#_1AC72C: #_F833o: db !TEMPO, $29
#_1AC72E: #_F835o: db !INSTR, $0F
#_1AC730: #_F837o: db !VOLUME, $DC
#_1AC732: #_F839o: db !PAN, $0A
#_1AC734: #_F83Bo: db !PAN_GRAD, $BE, $10
#_1AC737: #_F83Eo: db $30, $7D ; duration, params
#_1AC739: #_F840o: db G4
#_1AC73A: #_F841o: db G4
#_1AC73B: #_F842o: db G4
#_1AC73C: #_F843o: db G4
#_1AC73D: #_F844o: db G4
#_1AC73E: #_F845o: db G4
#_1AC73F: #_F846o: db !INSTR, $09
#_1AC741: #_F848o: db !MVOL_GRAD, $FF, $F0
#_1AC744: #_F84Bo: db !VIBRATO, $1C, $1A, $1E
#_1AC748: #_F84Fo: db $60 ; duration
#_1AC749: #_F850o: db Gs4
#_1AC74A: #_F851o: db A4
#_1AC74B: #_F852o: db As4
#_1AC74C: #_F853o: db B4
#_1AC74D: #_F854o: db !TIE
#_1AC74E: #_F855o: db !TIE
#_1AC74F: #_F856o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0A_Segment0_Track1:
#_1AC750: #_F857o: db !INSTR, $0F
#_1AC752: #_F859o: db !VOLUME, $DC
#_1AC754: #_F85Bo: db !PAN, $0A
#_1AC756: #_F85Do: db !PAN_GRAD, $BE, $0D
#_1AC759: #_F860o: db $0C ; duration
#_1AC75A: #_F861o: db R
#_1AC75B: #_F862o: db $30, $7D ; duration, params
#_1AC75D: #_F864o: db C5
#_1AC75E: #_F865o: db C5
#_1AC75F: #_F866o: db C5
#_1AC760: #_F867o: db C5
#_1AC761: #_F868o: db C5
#_1AC762: #_F869o: db $24 ; duration
#_1AC763: #_F86Ao: db C5
#_1AC764: #_F86Bo: db !INSTR, $09
#_1AC766: #_F86Do: db !VIBRATO, $1A, $1C, $1D
#_1AC76A: #_F871o: db $60 ; duration
#_1AC76B: #_F872o: db C5
#_1AC76C: #_F873o: db Cs5
#_1AC76D: #_F874o: db D5
#_1AC76E: #_F875o: db Ds5
#_1AC76F: #_F876o: db !TIE
#_1AC770: #_F877o: db !TIE

;---------------------------------------------------------------------------------------------------

Song0A_Segment0_Track2:
#_1AC771: #_F878o: db !INSTR, $0F
#_1AC773: #_F87Ao: db !VOLUME, $DC
#_1AC775: #_F87Co: db !PAN, $0A
#_1AC777: #_F87Eo: db !PAN_GRAD, $BE, $07
#_1AC77A: #_F881o: db $18 ; duration
#_1AC77B: #_F882o: db R
#_1AC77C: #_F883o: db $30, $7D ; duration, params
#_1AC77E: #_F885o: db D5
#_1AC77F: #_F886o: db D5
#_1AC780: #_F887o: db D5
#_1AC781: #_F888o: db D5
#_1AC782: #_F889o: db D5
#_1AC783: #_F88Ao: db $18 ; duration
#_1AC784: #_F88Bo: db D5
#_1AC785: #_F88Co: db !INSTR, $09
#_1AC787: #_F88Eo: db !VIBRATO, $1A, $1B, $1C
#_1AC78B: #_F892o: db $60 ; duration
#_1AC78C: #_F893o: db Ds5
#_1AC78D: #_F894o: db E5
#_1AC78E: #_F895o: db F5
#_1AC78F: #_F896o: db Fs5
#_1AC790: #_F897o: db !TIE
#_1AC791: #_F898o: db !TIE

;---------------------------------------------------------------------------------------------------

Song0A_Segment0_Track3:
#_1AC792: #_F899o: db !INSTR, $0F
#_1AC794: #_F89Bo: db !VOLUME, $DC
#_1AC796: #_F89Do: db !PAN, $0A
#_1AC798: #_F89Fo: db !PAN_GRAD, $BE, $04
#_1AC79B: #_F8A2o: db $24 ; duration
#_1AC79C: #_F8A3o: db R
#_1AC79D: #_F8A4o: db $30, $7D ; duration, params
#_1AC79F: #_F8A6o: db G5
#_1AC7A0: #_F8A7o: db G5
#_1AC7A1: #_F8A8o: db G5
#_1AC7A2: #_F8A9o: db G5
#_1AC7A3: #_F8AAo: db G5
#_1AC7A4: #_F8ABo: db $0C ; duration
#_1AC7A5: #_F8ACo: db G5
#_1AC7A6: #_F8ADo: db !INSTR, $09
#_1AC7A8: #_F8AFo: db !VIBRATO, $1C, $1A, $1E
#_1AC7AC: #_F8B3o: db $60 ; duration
#_1AC7AD: #_F8B4o: db Gs5
#_1AC7AE: #_F8B5o: db A5
#_1AC7AF: #_F8B6o: db As5
#_1AC7B0: #_F8B7o: db B5
#_1AC7B1: #_F8B8o: db !TIE
#_1AC7B2: #_F8B9o: db !TIE

;---------------------------------------------------------------------------------------------------

Song0A_Segment0_Track4:
#_1AC7B3: #_F8BAo: db !INSTR, $09
#_1AC7B5: #_F8BCo: db !VOLUME, $DC
#_1AC7B7: #_F8BEo: db !PAN, $0A
#_1AC7B9: #_F8C0o: db !PAN_GRAD, $BE, $02
#_1AC7BC: #_F8C3o: db !VIBRATO, $18, $1C, $1A
#_1AC7C0: #_F8C7o: db $30, $7D ; duration, params
#_1AC7C2: #_F8C9o: db Gs3
#_1AC7C3: #_F8CAo: db Ds4
#_1AC7C4: #_F8CBo: db G4
#_1AC7C5: #_F8CCo: db C5
#_1AC7C6: #_F8CDo: db $60 ; duration
#_1AC7C7: #_F8CEo: db G5
#_1AC7C8: #_F8CFo: db !INSTR, $09
#_1AC7CA: #_F8D1o: db As3
#_1AC7CB: #_F8D2o: db A3
#_1AC7CC: #_F8D3o: db Gs3
#_1AC7CD: #_F8D4o: db G3
#_1AC7CE: #_F8D5o: db !TIE
#_1AC7CF: #_F8D6o: db !TIE

;---------------------------------------------------------------------------------------------------

Song0A_Segment0_Track5:
#_1AC7D0: #_F8D7o: db !INSTR, $09
#_1AC7D2: #_F8D9o: db !VOLUME, $B4
#_1AC7D4: #_F8DBo: db !PAN, $0A
#_1AC7D6: #_F8DDo: db !VIBRATO, $19, $1A, $1C
#_1AC7DA: #_F8E1o: db $08 ; duration
#_1AC7DB: #_F8E2o: db R
#_1AC7DC: #_F8E3o: db $30, $7D ; duration, params
#_1AC7DE: #_F8E5o: db Gs3
#_1AC7DF: #_F8E6o: db Ds4
#_1AC7E0: #_F8E7o: db G4
#_1AC7E1: #_F8E8o: db C5
#_1AC7E2: #_F8E9o: db $58 ; duration
#_1AC7E3: #_F8EAo: db G5
#_1AC7E4: #_F8EBo: db $08 ; duration
#_1AC7E5: #_F8ECo: db R
#_1AC7E6: #_F8EDo: db $60 ; duration
#_1AC7E7: #_F8EEo: db Gs5
#_1AC7E8: #_F8EFo: db A5
#_1AC7E9: #_F8F0o: db As5
#_1AC7EA: #_F8F1o: db B5
#_1AC7EB: #_F8F2o: db !TIE
#_1AC7EC: #_F8F3o: db $58 ; duration
#_1AC7ED: #_F8F4o: db !TIE
#_1AC7EE: #_F8F5o: db !PART_END

;===================================================================================================

Song0C_Fugitive:
#_1AC7EF: #_F8F6o: dw Song0C_Segment0

Song0C_Loop:
#_1AC7F1: #_F8F8o: dw Song0C_Segment1
#_1AC7F3: #_F8FAo: dw Song0C_Segment2
#_1AC7F5: #_F8FCo: dw !SONG_LOOP, Song0C_Loop
#_1AC7F9: #_F900o: dw $0000

Song0C_Segment0:
#_1AC7FB: #_F902o: dw Song0C_Segment0_Track0
#_1AC7FD: #_F904o: dw Song0C_Segment0_Track1
#_1AC7FF: #_F906o: dw Song0C_Segment0_Track2
#_1AC801: #_F908o: dw Song0C_Segment0_Track3
#_1AC803: #_F90Ao: dw Song0C_Segment0_Track4
#_1AC805: #_F90Co: dw Song0C_Segment0_Track5
#_1AC807: #_F90Eo: dw $0000
#_1AC809: #_F910o: dw $0000

Song0C_Segment1:
#_1AC80B: #_F912o: dw Song0C_Segment1_Track0
#_1AC80D: #_F914o: dw Song0C_Segment1_Track1
#_1AC80F: #_F916o: dw Song0C_Segment1_Track2
#_1AC811: #_F918o: dw Song0C_Segment1_Track3
#_1AC813: #_F91Ao: dw Song0C_Segment1_Track4
#_1AC815: #_F91Co: dw Song0C_Segment1_Track5
#_1AC817: #_F91Eo: dw $0000
#_1AC819: #_F920o: dw $0000

Song0C_Segment2:
#_1AC81B: #_F922o: dw Song0C_Segment2_Track0
#_1AC81D: #_F924o: dw Song0C_Segment2_Track1
#_1AC81F: #_F926o: dw Song0C_Segment2_Track2
#_1AC821: #_F928o: dw Song0C_Segment2_Track3
#_1AC823: #_F92Ao: dw Song0C_Segment2_Track4
#_1AC825: #_F92Co: dw Song0C_Segment2_Track5
#_1AC827: #_F92Eo: dw $0000
#_1AC829: #_F930o: dw $0000

;---------------------------------------------------------------------------------------------------

Song0C_Segment0_Track0:
#_1AC82B: #_F932o: db !SET_PERC, $18
#_1AC82D: #_F934o: db !MASTER_VOLUME, $B4
#_1AC82F: #_F936o: db !ECHO_CONFIG, $FF, $14, $14
#_1AC833: #_F93Ao: db !ECHO_FILTER, $02, $0A, $02
#_1AC837: #_F93Eo: db !TEMPO, $25
#_1AC839: #_F940o: db !INSTR, $0B
#_1AC83B: #_F942o: db !VOLUME, $C8
#_1AC83D: #_F944o: db !VIBRATO, $1A, $18, $14
#_1AC841: #_F948o: db $36 ; duration
#_1AC842: #_F949o: db R
#_1AC843: #_F94Ao: db $2A, $6D ; duration, params
#_1AC845: #_F94Co: db E6
#_1AC846: #_F94Do: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0C_Segment0_Track1:
#_1AC847: #_F94Eo: db !VOLUME, $C8
#_1AC849: #_F950o: db !INSTR, $0B
#_1AC84B: #_F952o: db !VIBRATO, $1A, $18, $14
#_1AC84F: #_F956o: db $30 ; duration
#_1AC850: #_F957o: db R
#_1AC851: #_F958o: db $30, $6D ; duration, params
#_1AC853: #_F95Ao: db As5

;---------------------------------------------------------------------------------------------------

Song0C_Segment0_Track2:
#_1AC854: #_F95Bo: db !VOLUME, $C8
#_1AC856: #_F95Do: db !INSTR, $0B
#_1AC858: #_F95Fo: db !VIBRATO, $1A, $18, $14
#_1AC85C: #_F963o: db $1E ; duration
#_1AC85D: #_F964o: db R
#_1AC85E: #_F965o: db $42, $6D ; duration, params
#_1AC860: #_F967o: db G5

;---------------------------------------------------------------------------------------------------

Song0C_Segment0_Track3:
#_1AC861: #_F968o: db !VOLUME, $C8
#_1AC863: #_F96Ao: db !INSTR, $0B
#_1AC865: #_F96Co: db !VIBRATO, $1A, $18, $14
#_1AC869: #_F970o: db $18 ; duration
#_1AC86A: #_F971o: db R
#_1AC86B: #_F972o: db $48, $6D ; duration, params
#_1AC86D: #_F974o: db E5

;---------------------------------------------------------------------------------------------------

Song0C_Segment0_Track4:
#_1AC86E: #_F975o: db !VOLUME, $C8
#_1AC870: #_F977o: db !INSTR, $0B
#_1AC872: #_F979o: db !VIBRATO, $1A, $18, $14
#_1AC876: #_F97Do: db $06 ; duration
#_1AC877: #_F97Eo: db R
#_1AC878: #_F97Fo: db $5A, $6D ; duration, params
#_1AC87A: #_F981o: db Cs5

;---------------------------------------------------------------------------------------------------

Song0C_Segment0_Track5:
#_1AC87B: #_F982o: db !VOLUME, $C8
#_1AC87D: #_F984o: db !INSTR, $0B
#_1AC87F: #_F986o: db !VIBRATO, $1A, $18, $14
#_1AC883: #_F98Ao: db $60, $6D ; duration, params
#_1AC885: #_F98Co: db G4

;---------------------------------------------------------------------------------------------------

Song0C_Segment1_Track0:
#_1AC886: #_F98Do: db !TEMPO, $2D
#_1AC888: #_F98Fo: db !CALL_PART : dw Song0C_Sub_FA1A : db 2
#_1AC88C: #_F993o: db !CALL_PART : dw Song0C_Sub_FA2F : db 2
#_1AC890: #_F997o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0C_Segment1_Track1:
#_1AC891: #_F998o: db !CALL_PART : dw Song0C_Sub_FA44 : db 2
#_1AC895: #_F99Co: db !CALL_PART : dw Song0C_Sub_FA59 : db 2

;---------------------------------------------------------------------------------------------------

Song0C_Segment1_Track2:
#_1AC899: #_F9A0o: db !INSTR, $11
#_1AC89B: #_F9A2o: db $24, $5B ; duration, params
#_1AC89D: #_F9A4o: db D3
#_1AC89E: #_F9A5o: db D3
#_1AC89F: #_F9A6o: db $0C ; duration
#_1AC8A0: #_F9A7o: db D3
#_1AC8A1: #_F9A8o: db D3
#_1AC8A2: #_F9A9o: db $24 ; duration
#_1AC8A3: #_F9AAo: db D3
#_1AC8A4: #_F9ABo: db D3
#_1AC8A5: #_F9ACo: db $0C ; duration
#_1AC8A6: #_F9ADo: db D3
#_1AC8A7: #_F9AEo: db D3
#_1AC8A8: #_F9AFo: db !CALL_PART : dw Song0C_Sub_FA6E : db 2

;---------------------------------------------------------------------------------------------------

Song0C_Segment1_Track3:
#_1AC8AC: #_F9B3o: db !INSTR, $11
#_1AC8AE: #_F9B5o: db !CALL_PART : dw Song0C_Sub_FA75 : db 1
#_1AC8B2: #_F9B9o: db !CALL_PART : dw Song0C_Sub_FA83 : db 2

;---------------------------------------------------------------------------------------------------

Song0C_Segment1_Track4:
#_1AC8B6: #_F9BDo: db !INSTR, $0E
#_1AC8B8: #_F9BFo: db !VOLUME, $78
#_1AC8BA: #_F9C1o: db !CALL_PART : dw Song0C_Sub_FA1A : db 2
#_1AC8BE: #_F9C5o: db !CALL_PART : dw Song0C_Sub_FA2F : db 2

;---------------------------------------------------------------------------------------------------

Song0C_Segment1_Track5:
#_1AC8C2: #_F9C9o: db !INSTR, $02
#_1AC8C4: #_F9CBo: db !CALL_PART : dw Song0C_Sub_FA75 : db 1
#_1AC8C8: #_F9CFo: db !CALL_PART : dw Song0C_Sub_FA83 : db 2

;---------------------------------------------------------------------------------------------------

Song0C_Segment2_Track0:
#_1AC8CC: #_F9D3o: db !TEMPO, $2D
#_1AC8CE: #_F9D5o: db !CALL_PART : dw Song0C_Sub_FA8A : db 2
#_1AC8D2: #_F9D9o: db !CALL_PART : dw Song0C_Sub_FA9F : db 2
#_1AC8D6: #_F9DDo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0C_Segment2_Track1:
#_1AC8D7: #_F9DEo: db !CALL_PART : dw Song0C_Sub_FAB4 : db 2
#_1AC8DB: #_F9E2o: db !CALL_PART : dw Song0C_Sub_FAC9 : db 2

;---------------------------------------------------------------------------------------------------

Song0C_Segment2_Track2:
#_1AC8DF: #_F9E6o: db !INSTR, $11
#_1AC8E1: #_F9E8o: db $24, $5B ; duration, params
#_1AC8E3: #_F9EAo: db E3
#_1AC8E4: #_F9EBo: db E3
#_1AC8E5: #_F9ECo: db $0C ; duration
#_1AC8E6: #_F9EDo: db E3
#_1AC8E7: #_F9EEo: db E3
#_1AC8E8: #_F9EFo: db $24 ; duration
#_1AC8E9: #_F9F0o: db E3
#_1AC8EA: #_F9F1o: db E3
#_1AC8EB: #_F9F2o: db $0C ; duration
#_1AC8EC: #_F9F3o: db E3
#_1AC8ED: #_F9F4o: db E3
#_1AC8EE: #_F9F5o: db !CALL_PART : dw Song0C_Sub_FADE : db 2

;---------------------------------------------------------------------------------------------------

Song0C_Segment2_Track3:
#_1AC8F2: #_F9F9o: db !INSTR, $11
#_1AC8F4: #_F9FBo: db !CALL_PART : dw Song0C_Sub_FAE5 : db 1
#_1AC8F8: #_F9FFo: db !CALL_PART : dw Song0C_Sub_FAF3 : db 2

;---------------------------------------------------------------------------------------------------

Song0C_Segment2_Track4:
#_1AC8FC: #_FA03o: db !INSTR, $0E
#_1AC8FE: #_FA05o: db !VOLUME, $78
#_1AC900: #_FA07o: db !CALL_PART : dw Song0C_Sub_FA8A : db 2
#_1AC904: #_FA0Bo: db !CALL_PART : dw Song0C_Sub_FA9F : db 2

;---------------------------------------------------------------------------------------------------

Song0C_Segment2_Track5:
#_1AC908: #_FA0Fo: db !INSTR, $02
#_1AC90A: #_FA11o: db !CALL_PART : dw Song0C_Sub_FAE5 : db 1
#_1AC90E: #_FA15o: db !CALL_PART : dw Song0C_Sub_FAF3 : db 2
#_1AC912: #_FA19o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FA1A:
#_1AC913: #_FA1Ao: db $0C, $5D ; duration, params
#_1AC915: #_FA1Co: db Ds4
#_1AC916: #_FA1Do: db $0C, $59 ; duration, params
#_1AC918: #_FA1Fo: db D4
#_1AC919: #_FA20o: db Ds4
#_1AC91A: #_FA21o: db $0C, $5D ; duration, params
#_1AC91C: #_FA23o: db D4
#_1AC91D: #_FA24o: db $0C, $59 ; duration, params
#_1AC91F: #_FA26o: db Ds4
#_1AC920: #_FA27o: db D4
#_1AC921: #_FA28o: db $0C, $5D ; duration, params
#_1AC923: #_FA2Ao: db Ds4
#_1AC924: #_FA2Bo: db $0C, $59 ; duration, params
#_1AC926: #_FA2Do: db D4
#_1AC927: #_FA2Eo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FA2F:
#_1AC928: #_FA2Fo: db $0C, $5D ; duration, params
#_1AC92A: #_FA31o: db D4
#_1AC92B: #_FA32o: db $0C, $59 ; duration, params
#_1AC92D: #_FA34o: db Cs4
#_1AC92E: #_FA35o: db D4
#_1AC92F: #_FA36o: db $0C, $5D ; duration, params
#_1AC931: #_FA38o: db Cs4
#_1AC932: #_FA39o: db $0C, $59 ; duration, params
#_1AC934: #_FA3Bo: db D4
#_1AC935: #_FA3Co: db Cs4
#_1AC936: #_FA3Do: db $0C, $5D ; duration, params
#_1AC938: #_FA3Fo: db D4
#_1AC939: #_FA40o: db $0C, $59 ; duration, params
#_1AC93B: #_FA42o: db Cs4
#_1AC93C: #_FA43o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FA44:
#_1AC93D: #_FA44o: db $0C, $5D ; duration, params
#_1AC93F: #_FA46o: db As3
#_1AC940: #_FA47o: db $0C, $59 ; duration, params
#_1AC942: #_FA49o: db As3
#_1AC943: #_FA4Ao: db As3
#_1AC944: #_FA4Bo: db $0C, $5D ; duration, params
#_1AC946: #_FA4Do: db As3
#_1AC947: #_FA4Eo: db $0C, $59 ; duration, params
#_1AC949: #_FA50o: db As3
#_1AC94A: #_FA51o: db As3
#_1AC94B: #_FA52o: db $0C, $5D ; duration, params
#_1AC94D: #_FA54o: db As3
#_1AC94E: #_FA55o: db $0C, $59 ; duration, params
#_1AC950: #_FA57o: db As3
#_1AC951: #_FA58o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FA59:
#_1AC952: #_FA59o: db $0C, $5D ; duration, params
#_1AC954: #_FA5Bo: db A3
#_1AC955: #_FA5Co: db $0C, $59 ; duration, params
#_1AC957: #_FA5Eo: db A3
#_1AC958: #_FA5Fo: db A3
#_1AC959: #_FA60o: db $0C, $5D ; duration, params
#_1AC95B: #_FA62o: db A3
#_1AC95C: #_FA63o: db $0C, $59 ; duration, params
#_1AC95E: #_FA65o: db A3
#_1AC95F: #_FA66o: db A3
#_1AC960: #_FA67o: db $0C, $5D ; duration, params
#_1AC962: #_FA69o: db A3
#_1AC963: #_FA6Ao: db $0C, $59 ; duration, params
#_1AC965: #_FA6Co: db A3
#_1AC966: #_FA6Do: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FA6E:
#_1AC967: #_FA6Eo: db $24 ; duration
#_1AC968: #_FA6Fo: db Cs3
#_1AC969: #_FA70o: db Cs3
#_1AC96A: #_FA71o: db $0C ; duration
#_1AC96B: #_FA72o: db Cs3
#_1AC96C: #_FA73o: db Cs3
#_1AC96D: #_FA74o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FA75:
#_1AC96E: #_FA75o: db $24, $5B ; duration, params
#_1AC970: #_FA77o: db G2
#_1AC971: #_FA78o: db G2
#_1AC972: #_FA79o: db $0C ; duration
#_1AC973: #_FA7Ao: db G2
#_1AC974: #_FA7Bo: db G2
#_1AC975: #_FA7Co: db $24 ; duration
#_1AC976: #_FA7Do: db G2
#_1AC977: #_FA7Eo: db G2
#_1AC978: #_FA7Fo: db $0C ; duration
#_1AC979: #_FA80o: db G2
#_1AC97A: #_FA81o: db G2
#_1AC97B: #_FA82o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FA83:
#_1AC97C: #_FA83o: db $24 ; duration
#_1AC97D: #_FA84o: db Fs2
#_1AC97E: #_FA85o: db Fs2
#_1AC97F: #_FA86o: db $0C ; duration
#_1AC980: #_FA87o: db Fs2
#_1AC981: #_FA88o: db Fs2
#_1AC982: #_FA89o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FA8A:
#_1AC983: #_FA8Ao: db $0C, $5D ; duration, params
#_1AC985: #_FA8Co: db F4
#_1AC986: #_FA8Do: db $0C, $59 ; duration, params
#_1AC988: #_FA8Fo: db E4
#_1AC989: #_FA90o: db F4
#_1AC98A: #_FA91o: db $0C, $5D ; duration, params
#_1AC98C: #_FA93o: db E4
#_1AC98D: #_FA94o: db $0C, $59 ; duration, params
#_1AC98F: #_FA96o: db F4
#_1AC990: #_FA97o: db E4
#_1AC991: #_FA98o: db $0C, $5D ; duration, params
#_1AC993: #_FA9Ao: db F4
#_1AC994: #_FA9Bo: db $0C, $59 ; duration, params
#_1AC996: #_FA9Do: db E4
#_1AC997: #_FA9Eo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FA9F:
#_1AC998: #_FA9Fo: db $0C, $5D ; duration, params
#_1AC99A: #_FAA1o: db E4
#_1AC99B: #_FAA2o: db $0C, $59 ; duration, params
#_1AC99D: #_FAA4o: db Ds4
#_1AC99E: #_FAA5o: db E4
#_1AC99F: #_FAA6o: db $0C, $5D ; duration, params
#_1AC9A1: #_FAA8o: db Ds4
#_1AC9A2: #_FAA9o: db $0C, $59 ; duration, params
#_1AC9A4: #_FAABo: db E4
#_1AC9A5: #_FAACo: db Ds4
#_1AC9A6: #_FAADo: db $0C, $5D ; duration, params
#_1AC9A8: #_FAAFo: db E4
#_1AC9A9: #_FAB0o: db $0C, $59 ; duration, params
#_1AC9AB: #_FAB2o: db Ds4
#_1AC9AC: #_FAB3o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FAB4:
#_1AC9AD: #_FAB4o: db $0C, $5D ; duration, params
#_1AC9AF: #_FAB6o: db C4
#_1AC9B0: #_FAB7o: db $0C, $59 ; duration, params
#_1AC9B2: #_FAB9o: db C4
#_1AC9B3: #_FABAo: db C4
#_1AC9B4: #_FABBo: db $0C, $5D ; duration, params
#_1AC9B6: #_FABDo: db C4
#_1AC9B7: #_FABEo: db $0C, $59 ; duration, params
#_1AC9B9: #_FAC0o: db C4
#_1AC9BA: #_FAC1o: db C4
#_1AC9BB: #_FAC2o: db $0C, $5D ; duration, params
#_1AC9BD: #_FAC4o: db C4
#_1AC9BE: #_FAC5o: db $0C, $59 ; duration, params
#_1AC9C0: #_FAC7o: db C4
#_1AC9C1: #_FAC8o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FAC9:
#_1AC9C2: #_FAC9o: db $0C, $5D ; duration, params
#_1AC9C4: #_FACBo: db B3
#_1AC9C5: #_FACCo: db $0C, $59 ; duration, params
#_1AC9C7: #_FACEo: db B3
#_1AC9C8: #_FACFo: db B3
#_1AC9C9: #_FAD0o: db $0C, $5D ; duration, params
#_1AC9CB: #_FAD2o: db B3
#_1AC9CC: #_FAD3o: db $0C, $59 ; duration, params
#_1AC9CE: #_FAD5o: db B3
#_1AC9CF: #_FAD6o: db B3
#_1AC9D0: #_FAD7o: db $0C, $5D ; duration, params
#_1AC9D2: #_FAD9o: db B3
#_1AC9D3: #_FADAo: db $0C, $59 ; duration, params
#_1AC9D5: #_FADCo: db B3
#_1AC9D6: #_FADDo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FADE:
#_1AC9D7: #_FADEo: db $24 ; duration
#_1AC9D8: #_FADFo: db Ds3
#_1AC9D9: #_FAE0o: db Ds3
#_1AC9DA: #_FAE1o: db $0C ; duration
#_1AC9DB: #_FAE2o: db Ds3
#_1AC9DC: #_FAE3o: db Ds3
#_1AC9DD: #_FAE4o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FAE5:
#_1AC9DE: #_FAE5o: db $24, $5B ; duration, params
#_1AC9E0: #_FAE7o: db A2
#_1AC9E1: #_FAE8o: db A2
#_1AC9E2: #_FAE9o: db $0C ; duration
#_1AC9E3: #_FAEAo: db A2
#_1AC9E4: #_FAEBo: db A2
#_1AC9E5: #_FAECo: db $24 ; duration
#_1AC9E6: #_FAEDo: db A2
#_1AC9E7: #_FAEEo: db A2
#_1AC9E8: #_FAEFo: db $0C ; duration
#_1AC9E9: #_FAF0o: db A2
#_1AC9EA: #_FAF1o: db A2
#_1AC9EB: #_FAF2o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0C_Sub_FAF3:
#_1AC9EC: #_FAF3o: db $24 ; duration
#_1AC9ED: #_FAF4o: db Gs2
#_1AC9EE: #_FAF5o: db Gs2
#_1AC9EF: #_FAF6o: db $0C ; duration
#_1AC9F0: #_FAF7o: db Gs2
#_1AC9F1: #_FAF8o: db Gs2
#_1AC9F2: #_FAF9o: db !PART_END

;===================================================================================================

Song0F_IntroFanfare:
#_1AC9F3: #_FAFAo: dw Song01_Segment1
#_1AC9F5: #_FAFCo: dw !SONG_END

Song01_Segment1:
#_1AC9F7: #_FAFEo: dw Song01_Segment1_Track0
#_1AC9F9: #_FB00o: dw Song01_Segment1_Track1
#_1AC9FB: #_FB02o: dw Song01_Segment1_Track2
#_1AC9FD: #_FB04o: dw Song01_Segment1_Track3
#_1AC9FF: #_FB06o: dw Song01_Segment1_Track4
#_1ACA01: #_FB08o: dw Song01_Segment1_Track5
#_1ACA03: #_FB0Ao: dw Song01_Segment1_Track6
#_1ACA05: #_FB0Co: dw Song01_Segment1_Track7

;---------------------------------------------------------------------------------------------------

Song01_Segment1_Track0:
#_1ACA07: #_FB0Eo: db !SET_PERC, $19
#_1ACA09: #_FB10o: db !MASTER_VOLUME, $C8
#_1ACA0B: #_FB12o: db !ECHO_CONFIG, $FF, $00, $00
#_1ACA0F: #_FB16o: db !ECHO_FILTER, $02, $14, $02
#_1ACA13: #_FB1Ao: db !ECHO_GRAD, $28, $14, $14
#_1ACA17: #_FB1Eo: db !TEMPO, $2B
#_1ACA19: #_FB20o: db !INSTR, $0B
#_1ACA1B: #_FB22o: db !VOLUME, $C8
#_1ACA1D: #_FB24o: db !VIBRATO, $18, $14, $1A
#_1ACA21: #_FB28o: db !PAN, $0C
#_1ACA23: #_FB2Ao: db $18 ; duration
#_1ACA24: #_FB2Bo: db R
#_1ACA25: #_FB2Co: db $0C, $4D ; duration, params
#_1ACA27: #_FB2Eo: db Ds5
#_1ACA28: #_FB2Fo: db Gs5
#_1ACA29: #_FB30o: db $30, $6D ; duration, params
#_1ACA2B: #_FB32o: db As5
#_1ACA2C: #_FB33o: db !CALL_PART : dw Song01_Sub_FD27 : db 2
#_1ACA30: #_FB37o: db !CALL_PART : dw Song01_Sub_FD39 : db 1
#_1ACA34: #_FB3Bo: db $60 ; duration
#_1ACA35: #_FB3Co: db !TIE
#_1ACA36: #_FB3Do: db R
#_1ACA37: #_FB3Eo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song01_Segment1_Track1:
#_1ACA38: #_FB3Fo: db !INSTR, $0B
#_1ACA3A: #_FB41o: db !VOLUME, $C8
#_1ACA3C: #_FB43o: db !VIBRATO, $18, $14, $1A
#_1ACA40: #_FB47o: db !PAN, $0E
#_1ACA42: #_FB49o: db $18 ; duration
#_1ACA43: #_FB4Ao: db R
#_1ACA44: #_FB4Bo: db $0C, $4D ; duration, params
#_1ACA46: #_FB4Do: db As3
#_1ACA47: #_FB4Eo: db Ds4
#_1ACA48: #_FB4Fo: db $30, $6D ; duration, params
#_1ACA4A: #_FB51o: db F4
#_1ACA4B: #_FB52o: db !CALL_PART : dw Song01_Sub_FD45 : db 2
#_1ACA4F: #_FB56o: db !TIE
#_1ACA50: #_FB57o: db Gs4
#_1ACA51: #_FB58o: db $24 ; duration
#_1ACA52: #_FB59o: db Gs4
#_1ACA53: #_FB5Ao: db $06, $4D ; duration, params
#_1ACA55: #_FB5Co: db G4
#_1ACA56: #_FB5Do: db F4
#_1ACA57: #_FB5Eo: db $30, $6D ; duration, params
#_1ACA59: #_FB60o: db Gs4
#_1ACA5A: #_FB61o: db $60 ; duration
#_1ACA5B: #_FB62o: db !TIE
#_1ACA5C: #_FB63o: db R

;---------------------------------------------------------------------------------------------------

Song01_Segment1_Track2:
#_1ACA5D: #_FB64o: db !INSTR, $0B
#_1ACA5F: #_FB66o: db !VOLUME, $C8
#_1ACA61: #_FB68o: db !VIBRATO, $18, $14, $1A
#_1ACA65: #_FB6Co: db !PAN, $0A
#_1ACA67: #_FB6Eo: db $18 ; duration
#_1ACA68: #_FB6Fo: db R
#_1ACA69: #_FB70o: db $0C, $4D ; duration, params
#_1ACA6B: #_FB72o: db F4
#_1ACA6C: #_FB73o: db As4
#_1ACA6D: #_FB74o: db $30, $6D ; duration, params
#_1ACA6F: #_FB76o: db C5
#_1ACA70: #_FB77o: db $18 ; duration
#_1ACA71: #_FB78o: db !TIE
#_1ACA72: #_FB79o: db $0C, $4D ; duration, params
#_1ACA74: #_FB7Bo: db As4
#_1ACA75: #_FB7Co: db F4
#_1ACA76: #_FB7Do: db As4
#_1ACA77: #_FB7Eo: db C5
#_1ACA78: #_FB7Fo: db As4
#_1ACA79: #_FB80o: db F4
#_1ACA7A: #_FB81o: db As4
#_1ACA7B: #_FB82o: db F4
#_1ACA7C: #_FB83o: db As4
#_1ACA7D: #_FB84o: db R
#_1ACA7E: #_FB85o: db $30, $6D ; duration, params
#_1ACA80: #_FB87o: db C5
#_1ACA81: #_FB88o: db $18 ; duration
#_1ACA82: #_FB89o: db !TIE
#_1ACA83: #_FB8Ao: db $0C, $4D ; duration, params
#_1ACA85: #_FB8Co: db As4
#_1ACA86: #_FB8Do: db F4
#_1ACA87: #_FB8Eo: db As4
#_1ACA88: #_FB8Fo: db C5
#_1ACA89: #_FB90o: db As4
#_1ACA8A: #_FB91o: db F4
#_1ACA8B: #_FB92o: db As4
#_1ACA8C: #_FB93o: db F4
#_1ACA8D: #_FB94o: db As4
#_1ACA8E: #_FB95o: db R
#_1ACA8F: #_FB96o: db $30, $2D ; duration, params
#_1ACA91: #_FB98o: db C5
#_1ACA92: #_FB99o: db !TIE
#_1ACA93: #_FB9Ao: db $30, $6D ; duration, params
#_1ACA95: #_FB9Co: db Ds5
#_1ACA96: #_FB9Do: db $24 ; duration
#_1ACA97: #_FB9Eo: db Ds5
#_1ACA98: #_FB9Fo: db $06, $4D ; duration, params
#_1ACA9A: #_FBA1o: db D5
#_1ACA9B: #_FBA2o: db C5
#_1ACA9C: #_FBA3o: db $30, $6D ; duration, params
#_1ACA9E: #_FBA5o: db Ds5
#_1ACA9F: #_FBA6o: db $60 ; duration
#_1ACAA0: #_FBA7o: db !TIE
#_1ACAA1: #_FBA8o: db R

;---------------------------------------------------------------------------------------------------

Song01_Segment1_Track3:
#_1ACAA2: #_FBA9o: db !INSTR, $11
#_1ACAA4: #_FBABo: db !VOLUME, $DC
#_1ACAA6: #_FBADo: db !VIBRATO, $16, $1C, $1A
#_1ACAAA: #_FBB1o: db !PAN, $04
#_1ACAAC: #_FBB3o: db $48, $6D ; duration, params
#_1ACAAE: #_FBB5o: db Gs2
#_1ACAAF: #_FBB6o: db $06 ; duration
#_1ACAB0: #_FBB7o: db Gs2
#_1ACAB1: #_FBB8o: db Gs2
#_1ACAB2: #_FBB9o: db Gs2
#_1ACAB3: #_FBBAo: db Gs2
#_1ACAB4: #_FBBBo: db $30 ; duration
#_1ACAB5: #_FBBCo: db Gs2
#_1ACAB6: #_FBBDo: db $0C, $3D ; duration, params
#_1ACAB8: #_FBBFo: db Gs2
#_1ACAB9: #_FBC0o: db R
#_1ACABA: #_FBC1o: db Gs2
#_1ACABB: #_FBC2o: db R
#_1ACABC: #_FBC3o: db $48, $6D ; duration, params
#_1ACABE: #_FBC5o: db B2
#_1ACABF: #_FBC6o: db $06 ; duration
#_1ACAC0: #_FBC7o: db B2
#_1ACAC1: #_FBC8o: db B2
#_1ACAC2: #_FBC9o: db B2
#_1ACAC3: #_FBCAo: db B2
#_1ACAC4: #_FBCBo: db $30 ; duration
#_1ACAC5: #_FBCCo: db B2
#_1ACAC6: #_FBCDo: db $0C, $3D ; duration, params
#_1ACAC8: #_FBCFo: db B2
#_1ACAC9: #_FBD0o: db R
#_1ACACA: #_FBD1o: db B2
#_1ACACB: #_FBD2o: db R
#_1ACACC: #_FBD3o: db $48, $6D ; duration, params
#_1ACACE: #_FBD5o: db Cs3
#_1ACACF: #_FBD6o: db $06 ; duration
#_1ACAD0: #_FBD7o: db Cs3
#_1ACAD1: #_FBD8o: db Cs3
#_1ACAD2: #_FBD9o: db Cs3
#_1ACAD3: #_FBDAo: db Cs3
#_1ACAD4: #_FBDBo: db $30 ; duration
#_1ACAD5: #_FBDCo: db Cs3
#_1ACAD6: #_FBDDo: db $0C, $3D ; duration, params
#_1ACAD8: #_FBDFo: db Cs3
#_1ACAD9: #_FBE0o: db R
#_1ACADA: #_FBE1o: db Cs3
#_1ACADB: #_FBE2o: db R
#_1ACADC: #_FBE3o: db $60, $6D ; duration, params
#_1ACADE: #_FBE5o: db Gs2
#_1ACADF: #_FBE6o: db !TIE
#_1ACAE0: #_FBE7o: db R

;---------------------------------------------------------------------------------------------------

Song01_Segment1_Track4:
#_1ACAE1: #_FBE8o: db !INSTR, $11
#_1ACAE3: #_FBEAo: db !VOLUME, $DC
#_1ACAE5: #_FBECo: db !VIBRATO, $16, $1C, $1A
#_1ACAE9: #_FBF0o: db !PAN, $06
#_1ACAEB: #_FBF2o: db $48, $6D ; duration, params
#_1ACAED: #_FBF4o: db Ds3
#_1ACAEE: #_FBF5o: db $06 ; duration
#_1ACAEF: #_FBF6o: db Ds3
#_1ACAF0: #_FBF7o: db Ds3
#_1ACAF1: #_FBF8o: db Ds3
#_1ACAF2: #_FBF9o: db Ds3
#_1ACAF3: #_FBFAo: db $30 ; duration
#_1ACAF4: #_FBFBo: db Ds3
#_1ACAF5: #_FBFCo: db $0C, $3D ; duration, params
#_1ACAF7: #_FBFEo: db Ds3
#_1ACAF8: #_FBFFo: db R
#_1ACAF9: #_FC00o: db Ds3
#_1ACAFA: #_FC01o: db R
#_1ACAFB: #_FC02o: db $48, $6D ; duration, params
#_1ACAFD: #_FC04o: db Fs3
#_1ACAFE: #_FC05o: db $06 ; duration
#_1ACAFF: #_FC06o: db Fs3
#_1ACB00: #_FC07o: db Fs3
#_1ACB01: #_FC08o: db Fs3
#_1ACB02: #_FC09o: db Fs3
#_1ACB03: #_FC0Ao: db $30 ; duration
#_1ACB04: #_FC0Bo: db Fs3
#_1ACB05: #_FC0Co: db $0C, $3D ; duration, params
#_1ACB07: #_FC0Eo: db Fs3
#_1ACB08: #_FC0Fo: db R
#_1ACB09: #_FC10o: db Fs3
#_1ACB0A: #_FC11o: db R
#_1ACB0B: #_FC12o: db $48, $6D ; duration, params
#_1ACB0D: #_FC14o: db Gs3
#_1ACB0E: #_FC15o: db $06 ; duration
#_1ACB0F: #_FC16o: db Gs3
#_1ACB10: #_FC17o: db Gs3
#_1ACB11: #_FC18o: db Gs3
#_1ACB12: #_FC19o: db Gs3
#_1ACB13: #_FC1Ao: db $30 ; duration
#_1ACB14: #_FC1Bo: db Gs3
#_1ACB15: #_FC1Co: db $0C, $3D ; duration, params
#_1ACB17: #_FC1Eo: db Gs3
#_1ACB18: #_FC1Fo: db R
#_1ACB19: #_FC20o: db Gs3
#_1ACB1A: #_FC21o: db R
#_1ACB1B: #_FC22o: db $60, $6D ; duration, params
#_1ACB1D: #_FC24o: db Ds3
#_1ACB1E: #_FC25o: db !TIE
#_1ACB1F: #_FC26o: db $18 ; duration
#_1ACB20: #_FC27o: db R
#_1ACB21: #_FC28o: db R
#_1ACB22: #_FC29o: db R
#_1ACB23: #_FC2Ao: db R

;---------------------------------------------------------------------------------------------------

Song01_Segment1_Track5:
#_1ACB24: #_FC2Bo: db !INSTR, $02
#_1ACB26: #_FC2Do: db !VOLUME, $C8
#_1ACB28: #_FC2Fo: db $60, $7D ; duration, params
#_1ACB2A: #_FC31o: db A1
#_1ACB2B: #_FC32o: db !CALL_PART : dw Song01_Sub_FD57 : db 1
#_1ACB2F: #_FC36o: db $60, $7D ; duration, params
#_1ACB31: #_FC38o: db A1
#_1ACB32: #_FC39o: db !CALL_PART : dw Song01_Sub_FD57 : db 1
#_1ACB36: #_FC3Do: db $60, $7D ; duration, params
#_1ACB38: #_FC3Fo: db A1
#_1ACB39: #_FC40o: db !INSTR, $13
#_1ACB3B: #_FC42o: db !VOLUME, $A0
#_1ACB3D: #_FC44o: db $03, $7F ; duration, params
#_1ACB3F: #_FC46o: db Ds4
#_1ACB40: #_FC47o: db $06, $7E ; duration, params
#_1ACB42: #_FC49o: db Ds4
#_1ACB43: #_FC4Ao: db $06, $79 ; duration, params
#_1ACB45: #_FC4Co: db Ds4
#_1ACB46: #_FC4Do: db Ds4
#_1ACB47: #_FC4Eo: db $06, $7A ; duration, params
#_1ACB49: #_FC50o: db Ds4
#_1ACB4A: #_FC51o: db Ds4
#_1ACB4B: #_FC52o: db $06, $7B ; duration, params
#_1ACB4D: #_FC54o: db Ds4
#_1ACB4E: #_FC55o: db Ds4
#_1ACB4F: #_FC56o: db $06, $7C ; duration, params
#_1ACB51: #_FC58o: db Ds4
#_1ACB52: #_FC59o: db Ds4
#_1ACB53: #_FC5Ao: db $06, $7D ; duration, params
#_1ACB55: #_FC5Co: db Ds4
#_1ACB56: #_FC5Do: db Ds4
#_1ACB57: #_FC5Eo: db $06, $7E ; duration, params
#_1ACB59: #_FC60o: db Ds4
#_1ACB5A: #_FC61o: db Ds4
#_1ACB5B: #_FC62o: db $06, $7F ; duration, params
#_1ACB5D: #_FC64o: db Ds4
#_1ACB5E: #_FC65o: db $09 ; duration
#_1ACB5F: #_FC66o: db Ds4
#_1ACB60: #_FC67o: db $03 ; duration
#_1ACB61: #_FC68o: db Ds4
#_1ACB62: #_FC69o: db $06, $7E ; duration, params
#_1ACB64: #_FC6Bo: db Ds4
#_1ACB65: #_FC6Co: db $06, $79 ; duration, params
#_1ACB67: #_FC6Eo: db Ds4
#_1ACB68: #_FC6Fo: db Ds4
#_1ACB69: #_FC70o: db $06, $7A ; duration, params
#_1ACB6B: #_FC72o: db Ds4
#_1ACB6C: #_FC73o: db Ds4
#_1ACB6D: #_FC74o: db $06, $7B ; duration, params
#_1ACB6F: #_FC76o: db Ds4
#_1ACB70: #_FC77o: db Ds4
#_1ACB71: #_FC78o: db $06, $7C ; duration, params
#_1ACB73: #_FC7Ao: db Ds4
#_1ACB74: #_FC7Bo: db Ds4
#_1ACB75: #_FC7Co: db $06, $7D ; duration, params
#_1ACB77: #_FC7Eo: db Ds4
#_1ACB78: #_FC7Fo: db Ds4
#_1ACB79: #_FC80o: db $06, $7E ; duration, params
#_1ACB7B: #_FC82o: db Ds4
#_1ACB7C: #_FC83o: db Ds4
#_1ACB7D: #_FC84o: db $06, $7F ; duration, params
#_1ACB7F: #_FC86o: db Ds4
#_1ACB80: #_FC87o: db Ds4
#_1ACB81: #_FC88o: db Ds4
#_1ACB82: #_FC89o: db Ds4
#_1ACB83: #_FC8Ao: db Ds4
#_1ACB84: #_FC8Bo: db Ds4
#_1ACB85: #_FC8Co: db Ds4
#_1ACB86: #_FC8Do: db Ds4
#_1ACB87: #_FC8Eo: db Ds4
#_1ACB88: #_FC8Fo: db Ds4
#_1ACB89: #_FC90o: db Ds4
#_1ACB8A: #_FC91o: db Ds4
#_1ACB8B: #_FC92o: db Ds4
#_1ACB8C: #_FC93o: db Ds4
#_1ACB8D: #_FC94o: db Ds4
#_1ACB8E: #_FC95o: db Ds4
#_1ACB8F: #_FC96o: db Ds4
#_1ACB90: #_FC97o: db Ds4
#_1ACB91: #_FC98o: db $63 ; duration
#_1ACB92: #_FC99o: db Ds4

;---------------------------------------------------------------------------------------------------

Song01_Segment1_Track6:
#_1ACB93: #_FC9Ao: db !INSTR, $0C
#_1ACB95: #_FC9Co: db !VOLUME, $DC
#_1ACB97: #_FC9Eo: db $60, $7D ; duration, params
#_1ACB99: #_FCA0o: db A2
#_1ACB9A: #_FCA1o: db !CALL_PART : dw Song01_Sub_FD83 : db 1
#_1ACB9E: #_FCA5o: db $60, $7D ; duration, params
#_1ACBA0: #_FCA7o: db A2
#_1ACBA1: #_FCA8o: db !CALL_PART : dw Song01_Sub_FD83 : db 1
#_1ACBA5: #_FCACo: db $60, $7D ; duration, params
#_1ACBA7: #_FCAEo: db A2
#_1ACBA8: #_FCAFo: db !INSTR, $13
#_1ACBAA: #_FCB1o: db !VOLUME, $A0
#_1ACBAC: #_FCB3o: db $06, $7F ; duration, params
#_1ACBAE: #_FCB5o: db Ds4
#_1ACBAF: #_FCB6o: db $06, $7E ; duration, params
#_1ACBB1: #_FCB8o: db Ds4
#_1ACBB2: #_FCB9o: db $06, $79 ; duration, params
#_1ACBB4: #_FCBBo: db Ds4
#_1ACBB5: #_FCBCo: db Ds4
#_1ACBB6: #_FCBDo: db $06, $7A ; duration, params
#_1ACBB8: #_FCBFo: db Ds4
#_1ACBB9: #_FCC0o: db Ds4
#_1ACBBA: #_FCC1o: db $06, $7B ; duration, params
#_1ACBBC: #_FCC3o: db Ds4
#_1ACBBD: #_FCC4o: db Ds4
#_1ACBBE: #_FCC5o: db $06, $7C ; duration, params
#_1ACBC0: #_FCC7o: db Ds4
#_1ACBC1: #_FCC8o: db Ds4
#_1ACBC2: #_FCC9o: db $06, $7D ; duration, params
#_1ACBC4: #_FCCBo: db Ds4
#_1ACBC5: #_FCCCo: db Ds4
#_1ACBC6: #_FCCDo: db $06, $7E ; duration, params
#_1ACBC8: #_FCCFo: db Ds4
#_1ACBC9: #_FCD0o: db Ds4
#_1ACBCA: #_FCD1o: db $06, $7F ; duration, params
#_1ACBCC: #_FCD3o: db Ds4
#_1ACBCD: #_FCD4o: db Ds4
#_1ACBCE: #_FCD5o: db Ds4
#_1ACBCF: #_FCD6o: db $06, $7E ; duration, params
#_1ACBD1: #_FCD8o: db Ds4
#_1ACBD2: #_FCD9o: db $06, $79 ; duration, params
#_1ACBD4: #_FCDBo: db Ds4
#_1ACBD5: #_FCDCo: db Ds4
#_1ACBD6: #_FCDDo: db $06, $7A ; duration, params
#_1ACBD8: #_FCDFo: db Ds4
#_1ACBD9: #_FCE0o: db Ds4
#_1ACBDA: #_FCE1o: db $06, $7B ; duration, params
#_1ACBDC: #_FCE3o: db Ds4
#_1ACBDD: #_FCE4o: db Ds4
#_1ACBDE: #_FCE5o: db $06, $7C ; duration, params
#_1ACBE0: #_FCE7o: db Ds4
#_1ACBE1: #_FCE8o: db Ds4
#_1ACBE2: #_FCE9o: db $06, $7D ; duration, params
#_1ACBE4: #_FCEBo: db Ds4
#_1ACBE5: #_FCECo: db Ds4
#_1ACBE6: #_FCEDo: db $06, $7E ; duration, params
#_1ACBE8: #_FCEFo: db Ds4
#_1ACBE9: #_FCF0o: db Ds4
#_1ACBEA: #_FCF1o: db $06, $7F ; duration, params
#_1ACBEC: #_FCF3o: db Ds4
#_1ACBED: #_FCF4o: db Ds4
#_1ACBEE: #_FCF5o: db Ds4
#_1ACBEF: #_FCF6o: db Ds4
#_1ACBF0: #_FCF7o: db Ds4
#_1ACBF1: #_FCF8o: db Ds4
#_1ACBF2: #_FCF9o: db Ds4
#_1ACBF3: #_FCFAo: db Ds4
#_1ACBF4: #_FCFBo: db Ds4
#_1ACBF5: #_FCFCo: db Ds4
#_1ACBF6: #_FCFDo: db Ds4
#_1ACBF7: #_FCFEo: db Ds4
#_1ACBF8: #_FCFFo: db Ds4
#_1ACBF9: #_FD00o: db Ds4
#_1ACBFA: #_FD01o: db Ds4
#_1ACBFB: #_FD02o: db Ds4
#_1ACBFC: #_FD03o: db Ds4
#_1ACBFD: #_FD04o: db Ds4
#_1ACBFE: #_FD05o: db $60 ; duration
#_1ACBFF: #_FD06o: db Ds4

;---------------------------------------------------------------------------------------------------

Song01_Segment1_Track7:
#_1ACC00: #_FD07o: db !INSTR, $0B
#_1ACC02: #_FD09o: db !VOLUME, $A0
#_1ACC04: #_FD0Bo: db !VIBRATO, $18, $14, $1A
#_1ACC08: #_FD0Fo: db !PAN, $08
#_1ACC0A: #_FD11o: db $1E ; duration
#_1ACC0B: #_FD12o: db R
#_1ACC0C: #_FD13o: db $0C, $4D ; duration, params
#_1ACC0E: #_FD15o: db Ds5
#_1ACC0F: #_FD16o: db Gs5
#_1ACC10: #_FD17o: db $30, $6D ; duration, params
#_1ACC12: #_FD19o: db As5
#_1ACC13: #_FD1Ao: db !CALL_PART : dw Song01_Sub_FD27 : db 2
#_1ACC17: #_FD1Eo: db !CALL_PART : dw Song01_Sub_FD39 : db 1
#_1ACC1B: #_FD22o: db $5A ; duration
#_1ACC1C: #_FD23o: db !TIE
#_1ACC1D: #_FD24o: db $60 ; duration
#_1ACC1E: #_FD25o: db R
#_1ACC1F: #_FD26o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song01_Sub_FD27:
#_1ACC20: #_FD27o: db $18 ; duration
#_1ACC21: #_FD28o: db !TIE
#_1ACC22: #_FD29o: db $0C, $4D ; duration, params
#_1ACC24: #_FD2Bo: db Gs5
#_1ACC25: #_FD2Co: db Ds5
#_1ACC26: #_FD2Do: db Gs5
#_1ACC27: #_FD2Eo: db As5
#_1ACC28: #_FD2Fo: db Gs5
#_1ACC29: #_FD30o: db Ds5
#_1ACC2A: #_FD31o: db Gs5
#_1ACC2B: #_FD32o: db Ds5
#_1ACC2C: #_FD33o: db Gs5
#_1ACC2D: #_FD34o: db R
#_1ACC2E: #_FD35o: db $30, $6D ; duration, params
#_1ACC30: #_FD37o: db As5
#_1ACC31: #_FD38o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song01_Sub_FD39:
#_1ACC32: #_FD39o: db !TIE
#_1ACC33: #_FD3Ao: db Cs6
#_1ACC34: #_FD3Bo: db $24 ; duration
#_1ACC35: #_FD3Co: db Cs6
#_1ACC36: #_FD3Do: db $06, $4D ; duration, params
#_1ACC38: #_FD3Fo: db C6
#_1ACC39: #_FD40o: db As5
#_1ACC3A: #_FD41o: db $30, $6D ; duration, params
#_1ACC3C: #_FD43o: db C6
#_1ACC3D: #_FD44o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song01_Sub_FD45:
#_1ACC3E: #_FD45o: db $18 ; duration
#_1ACC3F: #_FD46o: db !TIE
#_1ACC40: #_FD47o: db $0C, $4D ; duration, params
#_1ACC42: #_FD49o: db Ds4
#_1ACC43: #_FD4Ao: db As3
#_1ACC44: #_FD4Bo: db Ds4
#_1ACC45: #_FD4Co: db F4
#_1ACC46: #_FD4Do: db Ds4
#_1ACC47: #_FD4Eo: db As3
#_1ACC48: #_FD4Fo: db Ds4
#_1ACC49: #_FD50o: db As3
#_1ACC4A: #_FD51o: db Ds4
#_1ACC4B: #_FD52o: db R
#_1ACC4C: #_FD53o: db $30, $6D ; duration, params
#_1ACC4E: #_FD55o: db F4
#_1ACC4F: #_FD56o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song01_Sub_FD57:
#_1ACC50: #_FD57o: db !INSTR, $13
#_1ACC52: #_FD59o: db !VOLUME, $A0
#_1ACC54: #_FD5Bo: db $03, $7F ; duration, params
#_1ACC56: #_FD5Do: db Ds4
#_1ACC57: #_FD5Eo: db $06, $7E ; duration, params
#_1ACC59: #_FD60o: db Ds4
#_1ACC5A: #_FD61o: db $06, $79 ; duration, params
#_1ACC5C: #_FD63o: db Ds4
#_1ACC5D: #_FD64o: db Ds4
#_1ACC5E: #_FD65o: db $06, $7A ; duration, params
#_1ACC60: #_FD67o: db Ds4
#_1ACC61: #_FD68o: db Ds4
#_1ACC62: #_FD69o: db $06, $7B ; duration, params
#_1ACC64: #_FD6Bo: db Ds4
#_1ACC65: #_FD6Co: db Ds4
#_1ACC66: #_FD6Do: db $06, $7C ; duration, params
#_1ACC68: #_FD6Fo: db Ds4
#_1ACC69: #_FD70o: db Ds4
#_1ACC6A: #_FD71o: db $06, $7D ; duration, params
#_1ACC6C: #_FD73o: db Ds4
#_1ACC6D: #_FD74o: db Ds4
#_1ACC6E: #_FD75o: db $06, $7E ; duration, params
#_1ACC70: #_FD77o: db Ds4
#_1ACC71: #_FD78o: db Ds4
#_1ACC72: #_FD79o: db $06, $7F ; duration, params
#_1ACC74: #_FD7Bo: db Ds4
#_1ACC75: #_FD7Co: db $09 ; duration
#_1ACC76: #_FD7Do: db Ds4
#_1ACC77: #_FD7Eo: db !INSTR, $02
#_1ACC79: #_FD80o: db !VOLUME, $C8
#_1ACC7B: #_FD82o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song01_Sub_FD83:
#_1ACC7C: #_FD83o: db !INSTR, $13
#_1ACC7E: #_FD85o: db !VOLUME, $A0
#_1ACC80: #_FD87o: db $06, $7F ; duration, params
#_1ACC82: #_FD89o: db Ds4
#_1ACC83: #_FD8Ao: db $06, $7E ; duration, params
#_1ACC85: #_FD8Co: db Ds4
#_1ACC86: #_FD8Do: db $06, $79 ; duration, params
#_1ACC88: #_FD8Fo: db Ds4
#_1ACC89: #_FD90o: db Ds4
#_1ACC8A: #_FD91o: db $06, $7A ; duration, params
#_1ACC8C: #_FD93o: db Ds4
#_1ACC8D: #_FD94o: db Ds4
#_1ACC8E: #_FD95o: db $06, $7B ; duration, params
#_1ACC90: #_FD97o: db Ds4
#_1ACC91: #_FD98o: db Ds4
#_1ACC92: #_FD99o: db $06, $7C ; duration, params
#_1ACC94: #_FD9Bo: db Ds4
#_1ACC95: #_FD9Co: db Ds4
#_1ACC96: #_FD9Do: db $06, $7D ; duration, params
#_1ACC98: #_FD9Fo: db Ds4
#_1ACC99: #_FDA0o: db Ds4
#_1ACC9A: #_FDA1o: db $06, $7E ; duration, params
#_1ACC9C: #_FDA3o: db Ds4
#_1ACC9D: #_FDA4o: db Ds4
#_1ACC9E: #_FDA5o: db $06, $7F ; duration, params
#_1ACCA0: #_FDA7o: db Ds4
#_1ACCA1: #_FDA8o: db Ds4
#_1ACCA2: #_FDA9o: db !INSTR, $0C
#_1ACCA4: #_FDABo: db !VOLUME, $DC
#_1ACCA6: #_FDADo: db !PART_END

base off

;===================================================================================================

SongBank_Overworld_Auxiliary:
#_1ACCA7: dw $0688, SONG_POINTERS_AUX ; Transfer size, transfer address

base SONG_POINTERS_AUX

;===================================================================================================

Song0D_SkullWoodsMarch:
#_1ACCAB: #_2B00o: dw Song0D_Segment0

Song0D_Loop:
#_1ACCAD: #_2B02o: dw Song0D_Segment1
#_1ACCAF: #_2B04o: dw Song0D_Segment2
#_1ACCB1: #_2B06o: dw Song0D_Segment1
#_1ACCB3: #_2B08o: dw Song0D_Segment2
#_1ACCB5: #_2B0Ao: dw Song0D_Segment3
#_1ACCB7: #_2B0Co: dw Song0D_Segment4
#_1ACCB9: #_2B0Eo: dw !SONG_LOOP, Song0D_Loop
#_1ACCBD: #_2B12o: dw $0000

Song0D_Segment1:
#_1ACCBF: #_2B14o: dw Song0D_Segment1_Track0
#_1ACCC1: #_2B16o: dw Song0D_Segment1_Track1
#_1ACCC3: #_2B18o: dw Song0D_Segment1_Track2
#_1ACCC5: #_2B1Ao: dw Song0D_Segment1_Track3
#_1ACCC7: #_2B1Co: dw Song0D_Segment1_Track4
#_1ACCC9: #_2B1Eo: dw Song0D_Segment1_Track5
#_1ACCCB: #_2B20o: dw $0000
#_1ACCCD: #_2B22o: dw $0000

Song0D_Segment2:
#_1ACCCF: #_2B24o: dw Song0D_Segment2_Track0
#_1ACCD1: #_2B26o: dw Song0D_Segment2_Track1
#_1ACCD3: #_2B28o: dw Song0D_Segment2_Track2
#_1ACCD5: #_2B2Ao: dw Song0D_Segment2_Track3
#_1ACCD7: #_2B2Co: dw Song0D_Segment2_Track4
#_1ACCD9: #_2B2Eo: dw Song0D_Segment2_Track5
#_1ACCDB: #_2B30o: dw $0000
#_1ACCDD: #_2B32o: dw $0000

Song0D_Segment3:
#_1ACCDF: #_2B34o: dw Song0D_Segment3_Track0
#_1ACCE1: #_2B36o: dw Song0D_Segment3_Track1
#_1ACCE3: #_2B38o: dw Song0D_Segment3_Track2
#_1ACCE5: #_2B3Ao: dw Song0D_Segment3_Track3
#_1ACCE7: #_2B3Co: dw Song0D_Segment3_Track4
#_1ACCE9: #_2B3Eo: dw $0000
#_1ACCEB: #_2B40o: dw $0000
#_1ACCED: #_2B42o: dw $0000

Song0D_Segment4:
#_1ACCEF: #_2B44o: dw Song0D_Segment4_Track0
#_1ACCF1: #_2B46o: dw Song0D_Segment4_Track1
#_1ACCF3: #_2B48o: dw Song0D_Segment4_Track2
#_1ACCF5: #_2B4Ao: dw Song0D_Segment4_Track3
#_1ACCF7: #_2B4Co: dw Song0D_Segment4_Track4
#_1ACCF9: #_2B4Eo: dw Song0D_Segment4_Track5
#_1ACCFB: #_2B50o: dw $0000
#_1ACCFD: #_2B52o: dw $0000

Song0D_Segment0:
#_1ACCFF: #_2B54o: dw Song0D_Segment0_Track0
#_1ACD01: #_2B56o: dw Song0D_Segment0_Track1
#_1ACD03: #_2B58o: dw Song0D_Segment0_Track2
#_1ACD05: #_2B5Ao: dw Song0D_Segment0_Track3
#_1ACD07: #_2B5Co: dw Song0D_Segment0_Track4
#_1ACD09: #_2B5Eo: dw $0000
#_1ACD0B: #_2B60o: dw $0000
#_1ACD0D: #_2B62o: dw $0000

;---------------------------------------------------------------------------------------------------

Song0D_Segment1_Track0:
#_1ACD0F: #_2B64o: db !INSTR, $0B
#_1ACD11: #_2B66o: db !VOLUME, $C8
#_1ACD13: #_2B68o: db !PAN, $0A
#_1ACD15: #_2B6Ao: db !VIBRATO, $1A, $1A, $10
#_1ACD19: #_2B6Eo: db $20, $5D ; duration, params
#_1ACD1B: #_2B70o: db C5
#_1ACD1C: #_2B71o: db $08, $4D ; duration, params
#_1ACD1E: #_2B73o: db G4
#_1ACD1F: #_2B74o: db Ds5
#_1ACD20: #_2B75o: db $20, $5D ; duration, params
#_1ACD22: #_2B77o: db C5
#_1ACD23: #_2B78o: db $08, $4D ; duration, params
#_1ACD25: #_2B7Ao: db G4
#_1ACD26: #_2B7Bo: db Ds5
#_1ACD27: #_2B7Co: db $18, $2D ; duration, params
#_1ACD29: #_2B7Eo: db C5
#_1ACD2A: #_2B7Fo: db $30, $6D ; duration, params
#_1ACD2C: #_2B81o: db G4
#_1ACD2D: #_2B82o: db $08, $4F ; duration, params
#_1ACD2F: #_2B84o: db C5
#_1ACD30: #_2B85o: db Ds5
#_1ACD31: #_2B86o: db G5
#_1ACD32: #_2B87o: db $30, $6F ; duration, params
#_1ACD34: #_2B89o: db As5
#_1ACD35: #_2B8Ao: db $20, $6D ; duration, params
#_1ACD37: #_2B8Co: db Gs5
#_1ACD38: #_2B8Do: db $08, $4C ; duration, params
#_1ACD3A: #_2B8Fo: db Fs5
#_1ACD3B: #_2B90o: db Gs5
#_1ACD3C: #_2B91o: db $60, $7C ; duration, params
#_1ACD3E: #_2B93o: db G5
#_1ACD3F: #_2B94o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0D_Segment1_Track1:
#_1ACD40: #_2B95o: db !INSTR, $02
#_1ACD42: #_2B97o: db !VOLUME, $B4
#_1ACD44: #_2B99o: db !PAN, $0A
#_1ACD46: #_2B9Bo: db !CALL_PART : dw Song0D_Sub_2EC4 : db 1
#_1ACD4A: #_2B9Fo: db Cs2
#_1ACD4B: #_2BA0o: db R
#_1ACD4C: #_2BA1o: db R
#_1ACD4D: #_2BA2o: db Cs2
#_1ACD4E: #_2BA3o: db C2
#_1ACD4F: #_2BA4o: db R
#_1ACD50: #_2BA5o: db $10 ; duration
#_1ACD51: #_2BA6o: db R
#_1ACD52: #_2BA7o: db $08 ; duration
#_1ACD53: #_2BA8o: db C2
#_1ACD54: #_2BA9o: db $18 ; duration
#_1ACD55: #_2BAAo: db Ds2

;---------------------------------------------------------------------------------------------------

Song0D_Segment1_Track2:
#_1ACD56: #_2BABo: db !CALL_PART : dw Song0D_Sub_2ED3 : db 1
#_1ACD5A: #_2BAFo: db $18, $3D ; duration, params
#_1ACD5C: #_2BB1o: db F4
#_1ACD5D: #_2BB2o: db F4
#_1ACD5E: #_2BB3o: db F4
#_1ACD5F: #_2BB4o: db $08 ; duration
#_1ACD60: #_2BB5o: db F4
#_1ACD61: #_2BB6o: db $08, $3B ; duration, params
#_1ACD63: #_2BB8o: db F4
#_1ACD64: #_2BB9o: db $08, $3D ; duration, params
#_1ACD66: #_2BBBo: db F4
#_1ACD67: #_2BBCo: db $18 ; duration
#_1ACD68: #_2BBDo: db F4
#_1ACD69: #_2BBEo: db F4
#_1ACD6A: #_2BBFo: db F4
#_1ACD6B: #_2BC0o: db $0C, $3B ; duration, params
#_1ACD6D: #_2BC2o: db F4
#_1ACD6E: #_2BC3o: db $06 ; duration
#_1ACD6F: #_2BC4o: db F4
#_1ACD70: #_2BC5o: db F4
#_1ACD71: #_2BC6o: db $18, $3D ; duration, params
#_1ACD73: #_2BC8o: db F4
#_1ACD74: #_2BC9o: db F4
#_1ACD75: #_2BCAo: db F4
#_1ACD76: #_2BCBo: db $08 ; duration
#_1ACD77: #_2BCCo: db F4
#_1ACD78: #_2BCDo: db $08, $3B ; duration, params
#_1ACD7A: #_2BCFo: db F4
#_1ACD7B: #_2BD0o: db $08, $3D ; duration, params
#_1ACD7D: #_2BD2o: db F4

;---------------------------------------------------------------------------------------------------

Song0D_Segment1_Track3:
#_1ACD7E: #_2BD3o: db !INSTR, $11
#_1ACD80: #_2BD5o: db !VOLUME, $C8
#_1ACD82: #_2BD7o: db !CALL_PART : dw Song0D_Sub_2EE3 : db 1
#_1ACD86: #_2BDBo: db $18 ; duration
#_1ACD87: #_2BDCo: db Cs2
#_1ACD88: #_2BDDo: db Cs2
#_1ACD89: #_2BDEo: db Cs2
#_1ACD8A: #_2BDFo: db $0C ; duration
#_1ACD8B: #_2BE0o: db Cs2
#_1ACD8C: #_2BE1o: db $06, $5D ; duration, params
#_1ACD8E: #_2BE3o: db Cs2
#_1ACD8F: #_2BE4o: db Cs2
#_1ACD90: #_2BE5o: db $18, $3D ; duration, params
#_1ACD92: #_2BE7o: db C2
#_1ACD93: #_2BE8o: db C2
#_1ACD94: #_2BE9o: db C2
#_1ACD95: #_2BEAo: db $08 ; duration
#_1ACD96: #_2BEBo: db Ds2
#_1ACD97: #_2BECo: db Ds2
#_1ACD98: #_2BEDo: db Ds2

;---------------------------------------------------------------------------------------------------

Song0D_Segment1_Track4:
#_1ACD99: #_2BEEo: db !INSTR, $0B
#_1ACD9B: #_2BF0o: db !VOLUME, $A0
#_1ACD9D: #_2BF2o: db !PAN, $0D
#_1ACD9F: #_2BF4o: db !VIBRATO, $1C, $1A, $10
#_1ACDA3: #_2BF8o: db $20, $5D ; duration, params
#_1ACDA5: #_2BFAo: db Ds4
#_1ACDA6: #_2BFBo: db $08, $4D ; duration, params
#_1ACDA8: #_2BFDo: db C4
#_1ACDA9: #_2BFEo: db G4
#_1ACDAA: #_2BFFo: db $20, $5D ; duration, params
#_1ACDAC: #_2C01o: db Ds4
#_1ACDAD: #_2C02o: db $08, $4D ; duration, params
#_1ACDAF: #_2C04o: db C4
#_1ACDB0: #_2C05o: db G4
#_1ACDB1: #_2C06o: db $18, $2D ; duration, params
#_1ACDB3: #_2C08o: db Ds4
#_1ACDB4: #_2C09o: db $30, $6D ; duration, params
#_1ACDB6: #_2C0Bo: db C4
#_1ACDB7: #_2C0Co: db $08, $4F ; duration, params
#_1ACDB9: #_2C0Eo: db Ds4
#_1ACDBA: #_2C0Fo: db G4
#_1ACDBB: #_2C10o: db C5
#_1ACDBC: #_2C11o: db $30, $6F ; duration, params
#_1ACDBE: #_2C13o: db Ds5
#_1ACDBF: #_2C14o: db $20, $6D ; duration, params
#_1ACDC1: #_2C16o: db Cs5
#_1ACDC2: #_2C17o: db $08, $4C ; duration, params
#_1ACDC4: #_2C19o: db B4
#_1ACDC5: #_2C1Ao: db Cs5
#_1ACDC6: #_2C1Bo: db $60, $7C ; duration, params
#_1ACDC8: #_2C1Do: db C5

;---------------------------------------------------------------------------------------------------

Song0D_Segment1_Track5:
#_1ACDC9: #_2C1Eo: db !INSTR, $11
#_1ACDCB: #_2C20o: db !VOLUME, $B4
#_1ACDCD: #_2C22o: db !PAN, $08
#_1ACDCF: #_2C24o: db !CALL_PART : dw Song0D_Sub_2EF8 : db 1
#_1ACDD3: #_2C28o: db $18 ; duration
#_1ACDD4: #_2C29o: db Gs3
#_1ACDD5: #_2C2Ao: db Gs3
#_1ACDD6: #_2C2Bo: db Gs3
#_1ACDD7: #_2C2Co: db $0C, $3B ; duration, params
#_1ACDD9: #_2C2Eo: db Gs3
#_1ACDDA: #_2C2Fo: db $06, $5B ; duration, params
#_1ACDDC: #_2C31o: db Gs3
#_1ACDDD: #_2C32o: db Gs3
#_1ACDDE: #_2C33o: db $18, $3D ; duration, params
#_1ACDE0: #_2C35o: db G3
#_1ACDE1: #_2C36o: db G3
#_1ACDE2: #_2C37o: db G3
#_1ACDE3: #_2C38o: db $08, $3B ; duration, params
#_1ACDE5: #_2C3Ao: db As3
#_1ACDE6: #_2C3Bo: db $08, $3D ; duration, params
#_1ACDE8: #_2C3Do: db As3
#_1ACDE9: #_2C3Eo: db As3

;---------------------------------------------------------------------------------------------------

Song0D_Segment2_Track0:
#_1ACDEA: #_2C3Fo: db $20, $5D ; duration, params
#_1ACDEC: #_2C41o: db C5
#_1ACDED: #_2C42o: db $08, $4D ; duration, params
#_1ACDEF: #_2C44o: db G4
#_1ACDF0: #_2C45o: db Ds5
#_1ACDF1: #_2C46o: db $20, $5D ; duration, params
#_1ACDF3: #_2C48o: db C5
#_1ACDF4: #_2C49o: db $08, $4D ; duration, params
#_1ACDF6: #_2C4Bo: db G4
#_1ACDF7: #_2C4Co: db Ds5
#_1ACDF8: #_2C4Do: db $18, $2D ; duration, params
#_1ACDFA: #_2C4Fo: db C5
#_1ACDFB: #_2C50o: db $30, $6D ; duration, params
#_1ACDFD: #_2C52o: db G4
#_1ACDFE: #_2C53o: db $08, $4D ; duration, params
#_1ACE00: #_2C55o: db G4
#_1ACE01: #_2C56o: db C5
#_1ACE02: #_2C57o: db Ds5
#_1ACE03: #_2C58o: db $20, $7D ; duration, params
#_1ACE05: #_2C5Ao: db G5
#_1ACE06: #_2C5Bo: db $08, $4D ; duration, params
#_1ACE08: #_2C5Do: db Fs5
#_1ACE09: #_2C5Eo: db Gs5
#_1ACE0A: #_2C5Fo: db $0C, $3D ; duration, params
#_1ACE0C: #_2C61o: db G5
#_1ACE0D: #_2C62o: db Ds5
#_1ACE0E: #_2C63o: db $08, $4D ; duration, params
#_1ACE10: #_2C65o: db B4
#_1ACE11: #_2C66o: db G4
#_1ACE12: #_2C67o: db Ds5
#_1ACE13: #_2C68o: db $60, $7D ; duration, params
#_1ACE15: #_2C6Ao: db C5
#_1ACE16: #_2C6Bo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0D_Segment2_Track1:
#_1ACE17: #_2C6Co: db !CALL_PART : dw Song0D_Sub_2EC4 : db 1
#_1ACE1B: #_2C70o: db Gs1
#_1ACE1C: #_2C71o: db R
#_1ACE1D: #_2C72o: db R
#_1ACE1E: #_2C73o: db B1
#_1ACE1F: #_2C74o: db C2
#_1ACE20: #_2C75o: db R
#_1ACE21: #_2C76o: db $10 ; duration
#_1ACE22: #_2C77o: db R
#_1ACE23: #_2C78o: db $08 ; duration
#_1ACE24: #_2C79o: db C2
#_1ACE25: #_2C7Ao: db $18 ; duration
#_1ACE26: #_2C7Bo: db Ds2

;---------------------------------------------------------------------------------------------------

Song0D_Segment2_Track2:
#_1ACE27: #_2C7Co: db !CALL_PART : dw Song0D_Sub_2F11 : db 1
#_1ACE2B: #_2C80o: db !CALL_PART : dw Song0D_Sub_2F24 : db 1

;---------------------------------------------------------------------------------------------------

Song0D_Segment2_Track3:
#_1ACE2F: #_2C84o: db !CALL_PART : dw Song0D_Sub_2EE3 : db 1
#_1ACE33: #_2C88o: db $18 ; duration
#_1ACE34: #_2C89o: db Gs1
#_1ACE35: #_2C8Ao: db Gs1
#_1ACE36: #_2C8Bo: db Gs1
#_1ACE37: #_2C8Co: db $0C ; duration
#_1ACE38: #_2C8Do: db B1
#_1ACE39: #_2C8Eo: db $06, $5D ; duration, params
#_1ACE3B: #_2C90o: db B1
#_1ACE3C: #_2C91o: db B1
#_1ACE3D: #_2C92o: db $18, $3D ; duration, params
#_1ACE3F: #_2C94o: db C2
#_1ACE40: #_2C95o: db C2
#_1ACE41: #_2C96o: db C2
#_1ACE42: #_2C97o: db $08 ; duration
#_1ACE43: #_2C98o: db Ds2
#_1ACE44: #_2C99o: db Ds2
#_1ACE45: #_2C9Ao: db Ds2

;---------------------------------------------------------------------------------------------------

Song0D_Segment2_Track4:
#_1ACE46: #_2C9Bo: db $20, $5D ; duration, params
#_1ACE48: #_2C9Do: db Ds4
#_1ACE49: #_2C9Eo: db $08, $4D ; duration, params
#_1ACE4B: #_2CA0o: db C4
#_1ACE4C: #_2CA1o: db G4
#_1ACE4D: #_2CA2o: db $20, $5D ; duration, params
#_1ACE4F: #_2CA4o: db Ds4
#_1ACE50: #_2CA5o: db $08, $4D ; duration, params
#_1ACE52: #_2CA7o: db C4
#_1ACE53: #_2CA8o: db G4
#_1ACE54: #_2CA9o: db $18, $2D ; duration, params
#_1ACE56: #_2CABo: db Ds4
#_1ACE57: #_2CACo: db $30, $6D ; duration, params
#_1ACE59: #_2CAEo: db C4
#_1ACE5A: #_2CAFo: db $08, $4F ; duration, params
#_1ACE5C: #_2CB1o: db C4
#_1ACE5D: #_2CB2o: db Ds4
#_1ACE5E: #_2CB3o: db G4
#_1ACE5F: #_2CB4o: db $20, $6F ; duration, params
#_1ACE61: #_2CB6o: db C5
#_1ACE62: #_2CB7o: db $08, $4D ; duration, params
#_1ACE64: #_2CB9o: db B4
#_1ACE65: #_2CBAo: db Cs5
#_1ACE66: #_2CBBo: db $0C, $3D ; duration, params
#_1ACE68: #_2CBDo: db C5
#_1ACE69: #_2CBEo: db G4
#_1ACE6A: #_2CBFo: db $08, $4D ; duration, params
#_1ACE6C: #_2CC1o: db D4
#_1ACE6D: #_2CC2o: db B3
#_1ACE6E: #_2CC3o: db F4
#_1ACE6F: #_2CC4o: db $60, $7D ; duration, params
#_1ACE71: #_2CC6o: db Ds4

;---------------------------------------------------------------------------------------------------

Song0D_Segment2_Track5:
#_1ACE72: #_2CC7o: db !CALL_PART : dw Song0D_Sub_2EF8 : db 1
#_1ACE76: #_2CCBo: db $18 ; duration
#_1ACE77: #_2CCCo: db C4
#_1ACE78: #_2CCDo: db C4
#_1ACE79: #_2CCEo: db C4
#_1ACE7A: #_2CCFo: db $0C, $3B ; duration, params
#_1ACE7C: #_2CD1o: db D4
#_1ACE7D: #_2CD2o: db $06, $5B ; duration, params
#_1ACE7F: #_2CD4o: db D4
#_1ACE80: #_2CD5o: db D4
#_1ACE81: #_2CD6o: db $18, $3D ; duration, params
#_1ACE83: #_2CD8o: db G3
#_1ACE84: #_2CD9o: db G3
#_1ACE85: #_2CDAo: db G3
#_1ACE86: #_2CDBo: db $08, $3B ; duration, params
#_1ACE88: #_2CDDo: db As3
#_1ACE89: #_2CDEo: db $08, $3D ; duration, params
#_1ACE8B: #_2CE0o: db As3
#_1ACE8C: #_2CE1o: db As3

;---------------------------------------------------------------------------------------------------

Song0D_Segment3_Track0:
#_1ACE8D: #_2CE2o: db !INSTR, $0A
#_1ACE8F: #_2CE4o: db !VOLUME, $C8
#_1ACE91: #_2CE6o: db !PAN, $12
#_1ACE93: #_2CE8o: db $20, $6D ; duration, params
#_1ACE95: #_2CEAo: db C5
#_1ACE96: #_2CEBo: db $08 ; duration
#_1ACE97: #_2CECo: db C5
#_1ACE98: #_2CEDo: db C5
#_1ACE99: #_2CEEo: db $18 ; duration
#_1ACE9A: #_2CEFo: db C5
#_1ACE9B: #_2CF0o: db $0C ; duration
#_1ACE9C: #_2CF1o: db G4
#_1ACE9D: #_2CF2o: db C5
#_1ACE9E: #_2CF3o: db $20 ; duration
#_1ACE9F: #_2CF4o: db As4
#_1ACEA0: #_2CF5o: db $08 ; duration
#_1ACEA1: #_2CF6o: db Gs4
#_1ACEA2: #_2CF7o: db G4
#_1ACEA3: #_2CF8o: db $30 ; duration
#_1ACEA4: #_2CF9o: db Gs4
#_1ACEA5: #_2CFAo: db $20 ; duration
#_1ACEA6: #_2CFBo: db As4
#_1ACEA7: #_2CFCo: db $08 ; duration
#_1ACEA8: #_2CFDo: db As4
#_1ACEA9: #_2CFEo: db As4
#_1ACEAA: #_2CFFo: db $18 ; duration
#_1ACEAB: #_2D00o: db As4
#_1ACEAC: #_2D01o: db $0C ; duration
#_1ACEAD: #_2D02o: db F4
#_1ACEAE: #_2D03o: db As4
#_1ACEAF: #_2D04o: db $20 ; duration
#_1ACEB0: #_2D05o: db Gs4
#_1ACEB1: #_2D06o: db $08 ; duration
#_1ACEB2: #_2D07o: db G4
#_1ACEB3: #_2D08o: db Fs4
#_1ACEB4: #_2D09o: db $30 ; duration
#_1ACEB5: #_2D0Ao: db G4
#_1ACEB6: #_2D0Bo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0D_Segment3_Track1:
#_1ACEB7: #_2D0Co: db !INSTR, $0A
#_1ACEB9: #_2D0Eo: db !VOLUME, $B4
#_1ACEBB: #_2D10o: db !VIBRATO, $18, $18, $12
#_1ACEBF: #_2D14o: db !PAN, $0F
#_1ACEC1: #_2D16o: db $30, $7D ; duration, params
#_1ACEC3: #_2D18o: db E4
#_1ACEC4: #_2D19o: db $18 ; duration
#_1ACEC5: #_2D1Ao: db C4
#_1ACEC6: #_2D1Bo: db E4
#_1ACEC7: #_2D1Co: db $50 ; duration
#_1ACEC8: #_2D1Do: db F4
#_1ACEC9: #_2D1Eo: db $08 ; duration
#_1ACECA: #_2D1Fo: db E4
#_1ACECB: #_2D20o: db Ds4
#_1ACECC: #_2D21o: db $30 ; duration
#_1ACECD: #_2D22o: db D4
#_1ACECE: #_2D23o: db C4
#_1ACECF: #_2D24o: db $48 ; duration
#_1ACED0: #_2D25o: db As3
#_1ACED1: #_2D26o: db $18 ; duration
#_1ACED2: #_2D27o: db B3

;---------------------------------------------------------------------------------------------------

Song0D_Segment3_Track2:
#_1ACED3: #_2D28o: db !INSTR, $14
#_1ACED5: #_2D2Ao: db !VOLUME, $C8
#_1ACED7: #_2D2Co: db !CALL_PART : dw Song0D_Sub_2F11 : db 1
#_1ACEDB: #_2D30o: db !CALL_PART : dw Song0D_Sub_2F24 : db 1

;---------------------------------------------------------------------------------------------------

Song0D_Segment3_Track3:
#_1ACEDF: #_2D34o: db !INSTR, $11
#_1ACEE1: #_2D36o: db !VOLUME, $C8
#_1ACEE3: #_2D38o: db $18, $3D ; duration, params
#_1ACEE5: #_2D3Ao: db E2
#_1ACEE6: #_2D3Bo: db E2
#_1ACEE7: #_2D3Co: db E2
#_1ACEE8: #_2D3Do: db $0C ; duration
#_1ACEE9: #_2D3Eo: db E2
#_1ACEEA: #_2D3Fo: db $06 ; duration
#_1ACEEB: #_2D40o: db E2
#_1ACEEC: #_2D41o: db E2
#_1ACEED: #_2D42o: db $18 ; duration
#_1ACEEE: #_2D43o: db F2
#_1ACEEF: #_2D44o: db F2
#_1ACEF0: #_2D45o: db F2
#_1ACEF1: #_2D46o: db $08 ; duration
#_1ACEF2: #_2D47o: db F2
#_1ACEF3: #_2D48o: db F2
#_1ACEF4: #_2D49o: db F2
#_1ACEF5: #_2D4Ao: db $18 ; duration
#_1ACEF6: #_2D4Bo: db As1
#_1ACEF7: #_2D4Co: db As1
#_1ACEF8: #_2D4Do: db As1
#_1ACEF9: #_2D4Eo: db $0C ; duration
#_1ACEFA: #_2D4Fo: db As1
#_1ACEFB: #_2D50o: db $06 ; duration
#_1ACEFC: #_2D51o: db As1
#_1ACEFD: #_2D52o: db As1
#_1ACEFE: #_2D53o: db $18 ; duration
#_1ACEFF: #_2D54o: db Ds2
#_1ACF00: #_2D55o: db Ds2
#_1ACF01: #_2D56o: db Ds2
#_1ACF02: #_2D57o: db $08 ; duration
#_1ACF03: #_2D58o: db Ds2
#_1ACF04: #_2D59o: db Ds2
#_1ACF05: #_2D5Ao: db Ds2

;---------------------------------------------------------------------------------------------------

Song0D_Segment3_Track4:
#_1ACF06: #_2D5Bo: db !INSTR, $11
#_1ACF08: #_2D5Do: db !PAN, $08
#_1ACF0A: #_2D5Fo: db !VOLUME, $B4
#_1ACF0C: #_2D61o: db $18, $3D ; duration, params
#_1ACF0E: #_2D63o: db G3
#_1ACF0F: #_2D64o: db G3
#_1ACF10: #_2D65o: db G3
#_1ACF11: #_2D66o: db $0C ; duration
#_1ACF12: #_2D67o: db G3
#_1ACF13: #_2D68o: db $06 ; duration
#_1ACF14: #_2D69o: db G3
#_1ACF15: #_2D6Ao: db G3
#_1ACF16: #_2D6Bo: db $18 ; duration
#_1ACF17: #_2D6Co: db Gs3
#_1ACF18: #_2D6Do: db Gs3
#_1ACF19: #_2D6Eo: db Gs3
#_1ACF1A: #_2D6Fo: db $08 ; duration
#_1ACF1B: #_2D70o: db Gs3
#_1ACF1C: #_2D71o: db Gs3
#_1ACF1D: #_2D72o: db Gs3
#_1ACF1E: #_2D73o: db $18 ; duration
#_1ACF1F: #_2D74o: db F3
#_1ACF20: #_2D75o: db F3
#_1ACF21: #_2D76o: db F3
#_1ACF22: #_2D77o: db $0C ; duration
#_1ACF23: #_2D78o: db F3
#_1ACF24: #_2D79o: db $06 ; duration
#_1ACF25: #_2D7Ao: db F3
#_1ACF26: #_2D7Bo: db F3
#_1ACF27: #_2D7Co: db $18 ; duration
#_1ACF28: #_2D7Do: db G3
#_1ACF29: #_2D7Eo: db G3
#_1ACF2A: #_2D7Fo: db G3
#_1ACF2B: #_2D80o: db $08 ; duration
#_1ACF2C: #_2D81o: db G3
#_1ACF2D: #_2D82o: db G3
#_1ACF2E: #_2D83o: db G3

;---------------------------------------------------------------------------------------------------

Song0D_Segment4_Track0:
#_1ACF2F: #_2D84o: db $20, $6D ; duration, params
#_1ACF31: #_2D86o: db F4
#_1ACF32: #_2D87o: db $08 ; duration
#_1ACF33: #_2D88o: db F4
#_1ACF34: #_2D89o: db F4
#_1ACF35: #_2D8Ao: db $18 ; duration
#_1ACF36: #_2D8Bo: db F4
#_1ACF37: #_2D8Co: db $0C ; duration
#_1ACF38: #_2D8Do: db G4
#_1ACF39: #_2D8Eo: db $0C, $3D ; duration, params
#_1ACF3B: #_2D90o: db Gs4
#_1ACF3C: #_2D91o: db $20, $6D ; duration, params
#_1ACF3E: #_2D93o: db G4
#_1ACF3F: #_2D94o: db $08 ; duration
#_1ACF40: #_2D95o: db F4
#_1ACF41: #_2D96o: db E4
#_1ACF42: #_2D97o: db $30 ; duration
#_1ACF43: #_2D98o: db F4
#_1ACF44: #_2D99o: db $20 ; duration
#_1ACF45: #_2D9Ao: db G4
#_1ACF46: #_2D9Bo: db $08 ; duration
#_1ACF47: #_2D9Co: db Fs4
#_1ACF48: #_2D9Do: db Gs4
#_1ACF49: #_2D9Eo: db $0C ; duration
#_1ACF4A: #_2D9Fo: db G4
#_1ACF4B: #_2DA0o: db Ds4
#_1ACF4C: #_2DA1o: db $08 ; duration
#_1ACF4D: #_2DA2o: db B3
#_1ACF4E: #_2DA3o: db G3
#_1ACF4F: #_2DA4o: db Ds4
#_1ACF50: #_2DA5o: db $60 ; duration
#_1ACF51: #_2DA6o: db C4
#_1ACF52: #_2DA7o: db R
#_1ACF53: #_2DA8o: db R
#_1ACF54: #_2DA9o: db R
#_1ACF55: #_2DAAo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0D_Segment4_Track1:
#_1ACF56: #_2DABo: db $54, $7D ; duration, params
#_1ACF58: #_2DADo: db C4
#_1ACF59: #_2DAEo: db $0C ; duration
#_1ACF5A: #_2DAFo: db Cs4
#_1ACF5B: #_2DB0o: db $50 ; duration
#_1ACF5C: #_2DB1o: db D4
#_1ACF5D: #_2DB2o: db $08 ; duration
#_1ACF5E: #_2DB3o: db Cs4
#_1ACF5F: #_2DB4o: db C4
#_1ACF60: #_2DB5o: db $30 ; duration
#_1ACF61: #_2DB6o: db B3
#_1ACF62: #_2DB7o: db G3
#_1ACF63: #_2DB8o: db $60 ; duration
#_1ACF64: #_2DB9o: db G3
#_1ACF65: #_2DBAo: db R
#_1ACF66: #_2DBBo: db R
#_1ACF67: #_2DBCo: db R

;---------------------------------------------------------------------------------------------------

Song0D_Segment4_Track2:
#_1ACF68: #_2DBDo: db !CALL_PART : dw Song0D_Sub_2F11 : db 1
#_1ACF6C: #_2DC1o: db !CALL_PART : dw Song0D_Sub_2F36 : db 2
#_1ACF70: #_2DC5o: db $18 ; duration
#_1ACF71: #_2DC6o: db F4
#_1ACF72: #_2DC7o: db F4
#_1ACF73: #_2DC8o: db F4
#_1ACF74: #_2DC9o: db $08, $3B ; duration, params
#_1ACF76: #_2DCBo: db F4
#_1ACF77: #_2DCCo: db $08, $3D ; duration, params
#_1ACF79: #_2DCEo: db F4
#_1ACF7A: #_2DCFo: db F4
#_1ACF7B: #_2DD0o: db !CALL_PART : dw Song0D_Sub_2F40 : db 1

;---------------------------------------------------------------------------------------------------

Song0D_Segment4_Track3:
#_1ACF7F: #_2DD4o: db $18, $3D ; duration, params
#_1ACF81: #_2DD6o: db Gs1
#_1ACF82: #_2DD7o: db Gs1
#_1ACF83: #_2DD8o: db Gs1
#_1ACF84: #_2DD9o: db $0C ; duration
#_1ACF85: #_2DDAo: db Gs1
#_1ACF86: #_2DDBo: db $06 ; duration
#_1ACF87: #_2DDCo: db Gs1
#_1ACF88: #_2DDDo: db Gs1
#_1ACF89: #_2DDEo: db $18 ; duration
#_1ACF8A: #_2DDFo: db D2
#_1ACF8B: #_2DE0o: db D2
#_1ACF8C: #_2DE1o: db D2
#_1ACF8D: #_2DE2o: db $08 ; duration
#_1ACF8E: #_2DE3o: db D2
#_1ACF8F: #_2DE4o: db D2
#_1ACF90: #_2DE5o: db D2
#_1ACF91: #_2DE6o: db $18 ; duration
#_1ACF92: #_2DE7o: db G2
#_1ACF93: #_2DE8o: db G2
#_1ACF94: #_2DE9o: db G2
#_1ACF95: #_2DEAo: db $0C ; duration
#_1ACF96: #_2DEBo: db G2
#_1ACF97: #_2DECo: db $06 ; duration
#_1ACF98: #_2DEDo: db G2
#_1ACF99: #_2DEEo: db G2
#_1ACF9A: #_2DEFo: db $18 ; duration
#_1ACF9B: #_2DF0o: db C2
#_1ACF9C: #_2DF1o: db C2
#_1ACF9D: #_2DF2o: db C2
#_1ACF9E: #_2DF3o: db $0C ; duration
#_1ACF9F: #_2DF4o: db Ds2
#_1ACFA0: #_2DF5o: db $06 ; duration
#_1ACFA1: #_2DF6o: db Ds2
#_1ACFA2: #_2DF7o: db Ds2
#_1ACFA3: #_2DF8o: db $18 ; duration
#_1ACFA4: #_2DF9o: db C2
#_1ACFA5: #_2DFAo: db C2
#_1ACFA6: #_2DFBo: db C2
#_1ACFA7: #_2DFCo: db $08 ; duration
#_1ACFA8: #_2DFDo: db Ds2
#_1ACFA9: #_2DFEo: db Ds2
#_1ACFAA: #_2DFFo: db Ds2
#_1ACFAB: #_2E00o: db !CALL_PART : dw Song0D_Sub_2F57 : db 1

;---------------------------------------------------------------------------------------------------

Song0D_Segment4_Track4:
#_1ACFAF: #_2E04o: db $18, $3D ; duration, params
#_1ACFB1: #_2E06o: db Ds3
#_1ACFB2: #_2E07o: db Ds3
#_1ACFB3: #_2E08o: db Ds3
#_1ACFB4: #_2E09o: db $0C ; duration
#_1ACFB5: #_2E0Ao: db Ds3
#_1ACFB6: #_2E0Bo: db $06 ; duration
#_1ACFB7: #_2E0Co: db Ds3
#_1ACFB8: #_2E0Do: db Ds3
#_1ACFB9: #_2E0Eo: db $18 ; duration
#_1ACFBA: #_2E0Fo: db F3
#_1ACFBB: #_2E10o: db F3
#_1ACFBC: #_2E11o: db F3
#_1ACFBD: #_2E12o: db $08 ; duration
#_1ACFBE: #_2E13o: db F3
#_1ACFBF: #_2E14o: db F3
#_1ACFC0: #_2E15o: db F3
#_1ACFC1: #_2E16o: db $18 ; duration
#_1ACFC2: #_2E17o: db F3
#_1ACFC3: #_2E18o: db F3
#_1ACFC4: #_2E19o: db F3
#_1ACFC5: #_2E1Ao: db $0C ; duration
#_1ACFC6: #_2E1Bo: db F3
#_1ACFC7: #_2E1Co: db $06 ; duration
#_1ACFC8: #_2E1Do: db F3
#_1ACFC9: #_2E1Eo: db F3
#_1ACFCA: #_2E1Fo: db $18 ; duration
#_1ACFCB: #_2E20o: db G3
#_1ACFCC: #_2E21o: db G3
#_1ACFCD: #_2E22o: db G3
#_1ACFCE: #_2E23o: db $0C ; duration
#_1ACFCF: #_2E24o: db As3
#_1ACFD0: #_2E25o: db $06 ; duration
#_1ACFD1: #_2E26o: db As3
#_1ACFD2: #_2E27o: db As3
#_1ACFD3: #_2E28o: db $18 ; duration
#_1ACFD4: #_2E29o: db G3
#_1ACFD5: #_2E2Ao: db G3
#_1ACFD6: #_2E2Bo: db G3
#_1ACFD7: #_2E2Co: db $08, $3B ; duration, params
#_1ACFD9: #_2E2Eo: db As3
#_1ACFDA: #_2E2Fo: db $08, $3D ; duration, params
#_1ACFDC: #_2E31o: db As3
#_1ACFDD: #_2E32o: db As3
#_1ACFDE: #_2E33o: db !CALL_PART : dw Song0D_Sub_2F6B : db 1

;---------------------------------------------------------------------------------------------------

Song0D_Segment4_Track5:
#_1ACFE2: #_2E37o: db !INSTR, $02
#_1ACFE4: #_2E39o: db !VOLUME, $B4
#_1ACFE6: #_2E3Bo: db !PAN, $0A
#_1ACFE8: #_2E3Do: db $60 ; duration
#_1ACFE9: #_2E3Eo: db R
#_1ACFEA: #_2E3Fo: db R
#_1ACFEB: #_2E40o: db R
#_1ACFEC: #_2E41o: db !CALL_PART : dw Song0D_Sub_2F83 : db 1

;---------------------------------------------------------------------------------------------------

Song0D_Segment0_Track0:
#_1ACFF0: #_2E45o: db !SET_PERC, $19
#_1ACFF2: #_2E47o: db !MASTER_VOLUME, $AA
#_1ACFF4: #_2E49o: db !TEMPO, $1C
#_1ACFF6: #_2E4Bo: db !ECHO_CONFIG, $FF, $00, $00
#_1ACFFA: #_2E4Fo: db !ECHO_FILTER, $02, $1E, $02
#_1ACFFE: #_2E53o: db !ECHO_GRAD, $1E, $32, $32
#_1AD002: #_2E57o: db !INSTR, $11
#_1AD004: #_2E59o: db !VOLUME, $C8
#_1AD006: #_2E5Bo: db !CALL_PART : dw Song0D_Sub_2EE3 : db 1
#_1AD00A: #_2E5Fo: db !CALL_PART : dw Song0D_Sub_2F57 : db 1
#_1AD00E: #_2E63o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0D_Segment0_Track1:
#_1AD00F: #_2E64o: db !INSTR, $02
#_1AD011: #_2E66o: db !VOLUME, $B4
#_1AD013: #_2E68o: db !CALL_PART : dw Song0D_Sub_2F83 : db 1

Song0D_Segment0_Track2:
#_1AD017: #_2E6Co: db !CALL_PART : dw Song0D_Sub_2ED3 : db 1
#_1AD01B: #_2E70o: db $18, $3D ; duration, params
#_1AD01D: #_2E72o: db F4
#_1AD01E: #_2E73o: db F4
#_1AD01F: #_2E74o: db F4
#_1AD020: #_2E75o: db $08, $3B ; duration, params
#_1AD022: #_2E77o: db F4
#_1AD023: #_2E78o: db $08, $3D ; duration, params
#_1AD025: #_2E7Ao: db F4
#_1AD026: #_2E7Bo: db F4
#_1AD027: #_2E7Co: db !CALL_PART : dw Song0D_Sub_2F40 : db 1

;---------------------------------------------------------------------------------------------------

Song0D_Segment0_Track3:
#_1AD02B: #_2E80o: db !INSTR, $11
#_1AD02D: #_2E82o: db !VOLUME, $C8
#_1AD02F: #_2E84o: db !PAN, $05
#_1AD031: #_2E86o: db !CALL_PART : dw Song0D_Sub_2EF8 : db 1
#_1AD035: #_2E8Ao: db !CALL_PART : dw Song0D_Sub_2F6B : db 1

;---------------------------------------------------------------------------------------------------

Song0D_Segment0_Track4:
#_1AD039: #_2E8Eo: db !INSTR, $11
#_1AD03B: #_2E90o: db !VOLUME, $C8
#_1AD03D: #_2E92o: db !PAN, $08
#_1AD03F: #_2E94o: db $18, $3D ; duration, params
#_1AD041: #_2E96o: db Ds3
#_1AD042: #_2E97o: db Ds3
#_1AD043: #_2E98o: db Ds3
#_1AD044: #_2E99o: db $0C, $3B ; duration, params
#_1AD046: #_2E9Bo: db Fs3
#_1AD047: #_2E9Co: db $06, $5B ; duration, params
#_1AD049: #_2E9Eo: db Fs3
#_1AD04A: #_2E9Fo: db Fs3
#_1AD04B: #_2EA0o: db $18, $3D ; duration, params
#_1AD04D: #_2EA2o: db Ds3
#_1AD04E: #_2EA3o: db Ds3
#_1AD04F: #_2EA4o: db Ds3
#_1AD050: #_2EA5o: db $08, $3B ; duration, params
#_1AD052: #_2EA7o: db Fs3
#_1AD053: #_2EA8o: db $08, $3D ; duration, params
#_1AD055: #_2EAAo: db Fs3
#_1AD056: #_2EABo: db Fs3
#_1AD057: #_2EACo: db $18 ; duration
#_1AD058: #_2EADo: db Ds3
#_1AD059: #_2EAEo: db Ds3
#_1AD05A: #_2EAFo: db Ds3
#_1AD05B: #_2EB0o: db $0C, $3B ; duration, params
#_1AD05D: #_2EB2o: db Fs3
#_1AD05E: #_2EB3o: db $06, $5B ; duration, params
#_1AD060: #_2EB5o: db Fs3
#_1AD061: #_2EB6o: db Fs3
#_1AD062: #_2EB7o: db $18, $3D ; duration, params
#_1AD064: #_2EB9o: db Ds3
#_1AD065: #_2EBAo: db Ds3
#_1AD066: #_2EBBo: db Ds3
#_1AD067: #_2EBCo: db $08, $3B ; duration, params
#_1AD069: #_2EBEo: db Fs3
#_1AD06A: #_2EBFo: db $08, $3D ; duration, params
#_1AD06C: #_2EC1o: db Fs3
#_1AD06D: #_2EC2o: db Fs3
#_1AD06E: #_2EC3o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2EC4:
#_1AD06F: #_2EC4o: db $18, $7D ; duration, params
#_1AD071: #_2EC6o: db C2
#_1AD072: #_2EC7o: db R
#_1AD073: #_2EC8o: db R
#_1AD074: #_2EC9o: db Ds2
#_1AD075: #_2ECAo: db C2
#_1AD076: #_2ECBo: db R
#_1AD077: #_2ECCo: db $10 ; duration
#_1AD078: #_2ECDo: db R
#_1AD079: #_2ECEo: db $08 ; duration
#_1AD07A: #_2ECFo: db C2
#_1AD07B: #_2ED0o: db $18 ; duration
#_1AD07C: #_2ED1o: db Ds2
#_1AD07D: #_2ED2o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2ED3:
#_1AD07E: #_2ED3o: db !INSTR, $14
#_1AD080: #_2ED5o: db !VOLUME, $C8
#_1AD082: #_2ED7o: db $18, $3D ; duration, params
#_1AD084: #_2ED9o: db F4
#_1AD085: #_2EDAo: db F4
#_1AD086: #_2EDBo: db F4
#_1AD087: #_2EDCo: db $0C, $3B ; duration, params
#_1AD089: #_2EDEo: db F4
#_1AD08A: #_2EDFo: db $06 ; duration
#_1AD08B: #_2EE0o: db F4
#_1AD08C: #_2EE1o: db F4
#_1AD08D: #_2EE2o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2EE3:
#_1AD08E: #_2EE3o: db $18, $3D ; duration, params
#_1AD090: #_2EE5o: db C2
#_1AD091: #_2EE6o: db C2
#_1AD092: #_2EE7o: db C2
#_1AD093: #_2EE8o: db $0C ; duration
#_1AD094: #_2EE9o: db Ds2
#_1AD095: #_2EEAo: db $06, $5D ; duration, params
#_1AD097: #_2EECo: db Ds2
#_1AD098: #_2EEDo: db Ds2
#_1AD099: #_2EEEo: db $18, $3D ; duration, params
#_1AD09B: #_2EF0o: db C2
#_1AD09C: #_2EF1o: db C2
#_1AD09D: #_2EF2o: db C2
#_1AD09E: #_2EF3o: db $08 ; duration
#_1AD09F: #_2EF4o: db Ds2
#_1AD0A0: #_2EF5o: db Ds2
#_1AD0A1: #_2EF6o: db Ds2
#_1AD0A2: #_2EF7o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2EF8:
#_1AD0A3: #_2EF8o: db $18, $3D ; duration, params
#_1AD0A5: #_2EFAo: db G3
#_1AD0A6: #_2EFBo: db G3
#_1AD0A7: #_2EFCo: db G3
#_1AD0A8: #_2EFDo: db $0C, $3B ; duration, params
#_1AD0AA: #_2EFFo: db As3
#_1AD0AB: #_2F00o: db $06, $5B ; duration, params
#_1AD0AD: #_2F02o: db As3
#_1AD0AE: #_2F03o: db As3
#_1AD0AF: #_2F04o: db $18, $3D ; duration, params
#_1AD0B1: #_2F06o: db G3
#_1AD0B2: #_2F07o: db G3
#_1AD0B3: #_2F08o: db G3
#_1AD0B4: #_2F09o: db $08, $3B ; duration, params
#_1AD0B6: #_2F0Bo: db As3
#_1AD0B7: #_2F0Co: db $08, $3D ; duration, params
#_1AD0B9: #_2F0Eo: db As3
#_1AD0BA: #_2F0Fo: db As3
#_1AD0BB: #_2F10o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2F11:
#_1AD0BC: #_2F11o: db $18, $3D ; duration, params
#_1AD0BE: #_2F13o: db F4
#_1AD0BF: #_2F14o: db F4
#_1AD0C0: #_2F15o: db F4
#_1AD0C1: #_2F16o: db $0C ; duration
#_1AD0C2: #_2F17o: db F4
#_1AD0C3: #_2F18o: db $06 ; duration
#_1AD0C4: #_2F19o: db F4
#_1AD0C5: #_2F1Ao: db F4
#_1AD0C6: #_2F1Bo: db $18 ; duration
#_1AD0C7: #_2F1Co: db F4
#_1AD0C8: #_2F1Do: db F4
#_1AD0C9: #_2F1Eo: db F4
#_1AD0CA: #_2F1Fo: db $08 ; duration
#_1AD0CB: #_2F20o: db F4
#_1AD0CC: #_2F21o: db F4
#_1AD0CD: #_2F22o: db F4
#_1AD0CE: #_2F23o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2F24:
#_1AD0CF: #_2F24o: db $18 ; duration
#_1AD0D0: #_2F25o: db F4
#_1AD0D1: #_2F26o: db F4
#_1AD0D2: #_2F27o: db F4
#_1AD0D3: #_2F28o: db $0C ; duration
#_1AD0D4: #_2F29o: db F4
#_1AD0D5: #_2F2Ao: db $06 ; duration
#_1AD0D6: #_2F2Bo: db F4
#_1AD0D7: #_2F2Co: db F4
#_1AD0D8: #_2F2Do: db $18 ; duration
#_1AD0D9: #_2F2Eo: db F4
#_1AD0DA: #_2F2Fo: db F4
#_1AD0DB: #_2F30o: db F4
#_1AD0DC: #_2F31o: db $08 ; duration
#_1AD0DD: #_2F32o: db F4
#_1AD0DE: #_2F33o: db F4
#_1AD0DF: #_2F34o: db F4
#_1AD0E0: #_2F35o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2F36:
#_1AD0E1: #_2F36o: db $18 ; duration
#_1AD0E2: #_2F37o: db F4
#_1AD0E3: #_2F38o: db F4
#_1AD0E4: #_2F39o: db F4
#_1AD0E5: #_2F3Ao: db $0C ; duration
#_1AD0E6: #_2F3Bo: db F4
#_1AD0E7: #_2F3Co: db $06 ; duration
#_1AD0E8: #_2F3Do: db F4
#_1AD0E9: #_2F3Eo: db F4
#_1AD0EA: #_2F3Fo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2F40:
#_1AD0EB: #_2F40o: db $18 ; duration
#_1AD0EC: #_2F41o: db F4
#_1AD0ED: #_2F42o: db F4
#_1AD0EE: #_2F43o: db F4
#_1AD0EF: #_2F44o: db $0C, $3B ; duration, params
#_1AD0F1: #_2F46o: db F4
#_1AD0F2: #_2F47o: db $06 ; duration
#_1AD0F3: #_2F48o: db F4
#_1AD0F4: #_2F49o: db F4
#_1AD0F5: #_2F4Ao: db $18, $3D ; duration, params
#_1AD0F7: #_2F4Co: db F4
#_1AD0F8: #_2F4Do: db F4
#_1AD0F9: #_2F4Eo: db F4
#_1AD0FA: #_2F4Fo: db $08, $3B ; duration, params
#_1AD0FC: #_2F51o: db F4
#_1AD0FD: #_2F52o: db $08, $3D ; duration, params
#_1AD0FF: #_2F54o: db F4
#_1AD100: #_2F55o: db F4
#_1AD101: #_2F56o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2F57:
#_1AD102: #_2F57o: db $18 ; duration
#_1AD103: #_2F58o: db C2
#_1AD104: #_2F59o: db C2
#_1AD105: #_2F5Ao: db C2
#_1AD106: #_2F5Bo: db $0C ; duration
#_1AD107: #_2F5Co: db Ds2
#_1AD108: #_2F5Do: db $06, $5D ; duration, params
#_1AD10A: #_2F5Fo: db Ds2
#_1AD10B: #_2F60o: db Ds2
#_1AD10C: #_2F61o: db $18, $3D ; duration, params
#_1AD10E: #_2F63o: db C2
#_1AD10F: #_2F64o: db C2
#_1AD110: #_2F65o: db C2
#_1AD111: #_2F66o: db $08 ; duration
#_1AD112: #_2F67o: db Ds2
#_1AD113: #_2F68o: db Ds2
#_1AD114: #_2F69o: db Ds2
#_1AD115: #_2F6Ao: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2F6B:
#_1AD116: #_2F6Bo: db $18 ; duration
#_1AD117: #_2F6Co: db G3
#_1AD118: #_2F6Do: db G3
#_1AD119: #_2F6Eo: db G3
#_1AD11A: #_2F6Fo: db $0C, $3B ; duration, params
#_1AD11C: #_2F71o: db As3
#_1AD11D: #_2F72o: db $06, $5B ; duration, params
#_1AD11F: #_2F74o: db As3
#_1AD120: #_2F75o: db As3
#_1AD121: #_2F76o: db $18, $3D ; duration, params
#_1AD123: #_2F78o: db G3
#_1AD124: #_2F79o: db G3
#_1AD125: #_2F7Ao: db G3
#_1AD126: #_2F7Bo: db $08, $3B ; duration, params
#_1AD128: #_2F7Do: db As3
#_1AD129: #_2F7Eo: db $08, $3D ; duration, params
#_1AD12B: #_2F80o: db As3
#_1AD12C: #_2F81o: db As3
#_1AD12D: #_2F82o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0D_Sub_2F83:
#_1AD12E: #_2F83o: db $18, $7D ; duration, params
#_1AD130: #_2F85o: db C2
#_1AD131: #_2F86o: db C2
#_1AD132: #_2F87o: db C2
#_1AD133: #_2F88o: db $08 ; duration
#_1AD134: #_2F89o: db Ds2
#_1AD135: #_2F8Ao: db Ds2
#_1AD136: #_2F8Bo: db Ds2
#_1AD137: #_2F8Co: db $18 ; duration
#_1AD138: #_2F8Do: db C2
#_1AD139: #_2F8Eo: db C2
#_1AD13A: #_2F8Fo: db $10 ; duration
#_1AD13B: #_2F90o: db C2
#_1AD13C: #_2F91o: db $08 ; duration
#_1AD13D: #_2F92o: db C2
#_1AD13E: #_2F93o: db $18 ; duration
#_1AD13F: #_2F94o: db Ds2
#_1AD140: #_2F95o: db C2
#_1AD141: #_2F96o: db C2
#_1AD142: #_2F97o: db C2
#_1AD143: #_2F98o: db $08 ; duration
#_1AD144: #_2F99o: db Ds2
#_1AD145: #_2F9Ao: db Ds2
#_1AD146: #_2F9Bo: db Ds2
#_1AD147: #_2F9Co: db $18 ; duration
#_1AD148: #_2F9Do: db C2
#_1AD149: #_2F9Eo: db C2
#_1AD14A: #_2F9Fo: db $10 ; duration
#_1AD14B: #_2FA0o: db C2
#_1AD14C: #_2FA1o: db $08 ; duration
#_1AD14D: #_2FA2o: db C2
#_1AD14E: #_2FA3o: db $18 ; duration
#_1AD14F: #_2FA4o: db Ds2
#_1AD150: #_2FA5o: db !PART_END

;===================================================================================================

Song0E_MinigameTheme:
#_1AD151: #_2FA6o: dw Song0E_Segment0

Song0E_Loop:
#_1AD153: #_2FA8o: dw Song0E_Segment1
#_1AD155: #_2FAAo: dw Song0E_Segment1
#_1AD157: #_2FACo: dw Song0E_Segment2
#_1AD159: #_2FAEo: dw Song0E_Segment2
#_1AD15B: #_2FB0o: dw Song0E_Segment3
#_1AD15D: #_2FB2o: dw Song0E_Segment3
#_1AD15F: #_2FB4o: dw !SONG_LOOP, Song0E_Loop
#_1AD164: #_2FB8o: dw $0000

Song0E_Segment1:
#_1AD165: #_2FBAo: dw Song0E_Segment1_Track0
#_1AD167: #_2FBCo: dw Song0E_Segment1_Track1
#_1AD169: #_2FBEo: dw Song0E_Segment1_Track2
#_1AD16B: #_2FC0o: dw Song0E_Segment1_Track3
#_1AD16D: #_2FC2o: dw $0000
#_1AD16F: #_2FC4o: dw $0000
#_1AD171: #_2FC6o: dw $0000
#_1AD173: #_2FC8o: dw $0000

Song0E_Segment3:
#_1AD175: #_2FCAo: dw Song0E_Segment3_Track0
#_1AD177: #_2FCCo: dw Song0E_Segment3_Track1
#_1AD179: #_2FCEo: dw Song0E_Segment3_Track2
#_1AD17B: #_2FD0o: dw Song0E_Segment3_Track3
#_1AD17D: #_2FD2o: dw Song0E_Segment3_Track4
#_1AD17F: #_2FD4o: dw $0000
#_1AD181: #_2FD6o: dw $0000
#_1AD183: #_2FD8o: dw $0000

Song0E_Segment2:
#_1AD185: #_2FDAo: dw Song0E_Segment2_Track0
#_1AD187: #_2FDCo: dw Song0E_Segment2_Track1
#_1AD189: #_2FDEo: dw Song0E_Segment2_Track2
#_1AD18B: #_2FE0o: dw Song0E_Segment2_Track3
#_1AD18D: #_2FE2o: dw $0000
#_1AD18F: #_2FE4o: dw $0000
#_1AD191: #_2FE6o: dw $0000
#_1AD193: #_2FE8o: dw $0000

Song0E_Segment0:
#_1AD195: #_2FEAo: dw Song0E_Segment0_Track0
#_1AD197: #_2FECo: dw Song0E_Segment0_Track1
#_1AD199: #_2FEEo: dw Song0E_Segment0_Track2
#_1AD19B: #_2FF0o: dw Song0E_Segment0_Track3
#_1AD19D: #_2FF2o: dw Song0E_Segment0_Track4
#_1AD19F: #_2FF4o: dw $0000
#_1AD1A1: #_2FF6o: dw $0000
#_1AD1A3: #_2FF8o: dw $0000

;---------------------------------------------------------------------------------------------------

Song0E_Segment1_Track0:
#_1AD1A5: #_2FFAo: db !INSTR, $16
#_1AD1A7: #_2FFCo: db !VOLUME, $FA
#_1AD1A9: #_2FFEo: db !CALL_PART : dw Song0E_Sub_313C : db 1
#_1AD1AD: #_3002o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0E_Segment1_Track1:
#_1AD1AE: #_3003o: db !INSTR, $18
#_1AD1B0: #_3005o: db !VOLUME, $C8
#_1AD1B2: #_3007o: db $0C, $5D ; duration, params
#_1AD1B4: #_3009o: db Gs2
#_1AD1B5: #_300Ao: db Gs3
#_1AD1B6: #_300Bo: db Gs2
#_1AD1B7: #_300Co: db Gs3
#_1AD1B8: #_300Do: db Fs2
#_1AD1B9: #_300Eo: db Fs3
#_1AD1BA: #_300Fo: db Fs2
#_1AD1BB: #_3010o: db Fs3
#_1AD1BC: #_3011o: db Gs2
#_1AD1BD: #_3012o: db Gs3
#_1AD1BE: #_3013o: db Gs2
#_1AD1BF: #_3014o: db Gs3
#_1AD1C0: #_3015o: db Fs2
#_1AD1C1: #_3016o: db Fs3
#_1AD1C2: #_3017o: db Fs2
#_1AD1C3: #_3018o: db Fs3

;---------------------------------------------------------------------------------------------------

Song0E_Segment1_Track2:
#_1AD1C4: #_3019o: db !INSTR, $0A
#_1AD1C6: #_301Bo: db !VOLUME, $C8
#_1AD1C8: #_301Do: db !CALL_PART : dw Song0E_Sub_313C : db 1

;---------------------------------------------------------------------------------------------------

Song0E_Segment1_Track3:
#_1AD1CC: #_3021o: db !INSTR, $18
#_1AD1CE: #_3023o: db !VOLUME, $C8
#_1AD1D0: #_3025o: db $0C ; duration
#_1AD1D1: #_3026o: db R
#_1AD1D2: #_3027o: db $0C, $5D ; duration, params
#_1AD1D4: #_3029o: db Ds3
#_1AD1D5: #_302Ao: db R
#_1AD1D6: #_302Bo: db Ds3
#_1AD1D7: #_302Co: db R
#_1AD1D8: #_302Do: db Ds3
#_1AD1D9: #_302Eo: db R
#_1AD1DA: #_302Fo: db Ds3
#_1AD1DB: #_3030o: db R
#_1AD1DC: #_3031o: db Ds3
#_1AD1DD: #_3032o: db R
#_1AD1DE: #_3033o: db Ds3
#_1AD1DF: #_3034o: db R
#_1AD1E0: #_3035o: db Ds3
#_1AD1E1: #_3036o: db R
#_1AD1E2: #_3037o: db Ds3

;---------------------------------------------------------------------------------------------------

Song0E_Segment3_Track0:
#_1AD1E3: #_3038o: db !INSTR, $18
#_1AD1E5: #_303Ao: db !VOLUME, $FA
#_1AD1E7: #_303Co: db !CALL_PART : dw Song0E_Sub_3150 : db 1
#_1AD1EB: #_3040o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0E_Segment3_Track1:
#_1AD1EC: #_3041o: db !INSTR, $18
#_1AD1EE: #_3043o: db !VOLUME, $C8
#_1AD1F0: #_3045o: db $18, $5D ; duration, params
#_1AD1F2: #_3047o: db Gs2
#_1AD1F3: #_3048o: db Gs2
#_1AD1F4: #_3049o: db $24 ; duration
#_1AD1F5: #_304Ao: db Fs2
#_1AD1F6: #_304Bo: db $0C ; duration
#_1AD1F7: #_304Co: db Gs2
#_1AD1F8: #_304Do: db $18 ; duration
#_1AD1F9: #_304Eo: db !TIE
#_1AD1FA: #_304Fo: db Gs2
#_1AD1FB: #_3050o: db $30 ; duration
#_1AD1FC: #_3051o: db Fs2
#_1AD1FD: #_3052o: db $18 ; duration
#_1AD1FE: #_3053o: db E2
#_1AD1FF: #_3054o: db E2
#_1AD200: #_3055o: db $24 ; duration
#_1AD201: #_3056o: db D2
#_1AD202: #_3057o: db $0C ; duration
#_1AD203: #_3058o: db E2
#_1AD204: #_3059o: db $18 ; duration
#_1AD205: #_305Ao: db !TIE
#_1AD206: #_305Bo: db E2
#_1AD207: #_305Co: db $30 ; duration
#_1AD208: #_305Do: db D2

;---------------------------------------------------------------------------------------------------

Song0E_Segment3_Track2:
#_1AD209: #_305Eo: db !INSTR, $12
#_1AD20B: #_3060o: db !VOLUME, $C8
#_1AD20D: #_3062o: db !CALL_PART : dw Song0E_Sub_3150 : db 1

;---------------------------------------------------------------------------------------------------

Song0E_Segment3_Track3:
#_1AD211: #_3066o: db !INSTR, $18
#_1AD213: #_3068o: db !VOLUME, $C8
#_1AD215: #_306Ao: db $18, $5D ; duration, params
#_1AD217: #_306Co: db Gs3
#_1AD218: #_306Do: db Gs3
#_1AD219: #_306Eo: db $24 ; duration
#_1AD21A: #_306Fo: db Fs3
#_1AD21B: #_3070o: db $0C ; duration
#_1AD21C: #_3071o: db Gs3
#_1AD21D: #_3072o: db $18 ; duration
#_1AD21E: #_3073o: db !TIE
#_1AD21F: #_3074o: db Gs3
#_1AD220: #_3075o: db $30 ; duration
#_1AD221: #_3076o: db Fs3
#_1AD222: #_3077o: db $18 ; duration
#_1AD223: #_3078o: db E3
#_1AD224: #_3079o: db E3
#_1AD225: #_307Ao: db $24 ; duration
#_1AD226: #_307Bo: db D3
#_1AD227: #_307Co: db $0C ; duration
#_1AD228: #_307Do: db E3
#_1AD229: #_307Eo: db $18 ; duration
#_1AD22A: #_307Fo: db !TIE
#_1AD22B: #_3080o: db E3
#_1AD22C: #_3081o: db $30 ; duration
#_1AD22D: #_3082o: db D3

;---------------------------------------------------------------------------------------------------

Song0E_Segment3_Track4:
#_1AD22E: #_3083o: db !INSTR, $18
#_1AD230: #_3085o: db !VOLUME, $C8
#_1AD232: #_3087o: db $18, $5D ; duration, params
#_1AD234: #_3089o: db Ds3
#_1AD235: #_308Ao: db Ds3
#_1AD236: #_308Bo: db $24 ; duration
#_1AD237: #_308Co: db Cs3
#_1AD238: #_308Do: db $0C ; duration
#_1AD239: #_308Eo: db Ds3
#_1AD23A: #_308Fo: db $18 ; duration
#_1AD23B: #_3090o: db !TIE
#_1AD23C: #_3091o: db Ds3
#_1AD23D: #_3092o: db $30 ; duration
#_1AD23E: #_3093o: db Cs3
#_1AD23F: #_3094o: db $18 ; duration
#_1AD240: #_3095o: db B2
#_1AD241: #_3096o: db B2
#_1AD242: #_3097o: db $24 ; duration
#_1AD243: #_3098o: db A2
#_1AD244: #_3099o: db $0C ; duration
#_1AD245: #_309Ao: db B2
#_1AD246: #_309Bo: db $18 ; duration
#_1AD247: #_309Co: db !TIE
#_1AD248: #_309Do: db B2
#_1AD249: #_309Eo: db $30 ; duration
#_1AD24A: #_309Fo: db A2

;---------------------------------------------------------------------------------------------------

Song0E_Segment2_Track0:
#_1AD24B: #_30A0o: db !INSTR, $16
#_1AD24D: #_30A2o: db !VOLUME, $FA
#_1AD24F: #_30A4o: db !CALL_PART : dw Song0E_Sub_3174 : db 1
#_1AD253: #_30A8o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0E_Segment2_Track1:
#_1AD254: #_30A9o: db !INSTR, $18
#_1AD256: #_30ABo: db !VOLUME, $C8
#_1AD258: #_30ADo: db $0C, $5D ; duration, params
#_1AD25A: #_30AFo: db E2
#_1AD25B: #_30B0o: db E3
#_1AD25C: #_30B1o: db E2
#_1AD25D: #_30B2o: db E3
#_1AD25E: #_30B3o: db D2
#_1AD25F: #_30B4o: db D3
#_1AD260: #_30B5o: db D2
#_1AD261: #_30B6o: db D3
#_1AD262: #_30B7o: db E2
#_1AD263: #_30B8o: db E3
#_1AD264: #_30B9o: db E2
#_1AD265: #_30BAo: db E3
#_1AD266: #_30BBo: db D2
#_1AD267: #_30BCo: db D3
#_1AD268: #_30BDo: db D2
#_1AD269: #_30BEo: db D3

;---------------------------------------------------------------------------------------------------

Song0E_Segment2_Track2:
#_1AD26A: #_30BFo: db !INSTR, $0A
#_1AD26C: #_30C1o: db !VOLUME, $C8
#_1AD26E: #_30C3o: db !CALL_PART : dw Song0E_Sub_3174 : db 1

;---------------------------------------------------------------------------------------------------

Song0E_Segment2_Track3:
#_1AD272: #_30C7o: db !INSTR, $18
#_1AD274: #_30C9o: db !VOLUME, $C8
#_1AD276: #_30CBo: db $0C ; duration
#_1AD277: #_30CCo: db R
#_1AD278: #_30CDo: db $0C, $5D ; duration, params
#_1AD27A: #_30CFo: db B2
#_1AD27B: #_30D0o: db R
#_1AD27C: #_30D1o: db B2
#_1AD27D: #_30D2o: db R
#_1AD27E: #_30D3o: db B2
#_1AD27F: #_30D4o: db R
#_1AD280: #_30D5o: db B2
#_1AD281: #_30D6o: db R
#_1AD282: #_30D7o: db B2
#_1AD283: #_30D8o: db R
#_1AD284: #_30D9o: db B2
#_1AD285: #_30DAo: db R
#_1AD286: #_30DBo: db B2
#_1AD287: #_30DCo: db R
#_1AD288: #_30DDo: db B2

;---------------------------------------------------------------------------------------------------

Song0E_Segment0_Track0:
#_1AD289: #_30DEo: db !SET_PERC, $19
#_1AD28B: #_30E0o: db !MASTER_VOLUME, $B4
#_1AD28D: #_30E2o: db !TEMPO, $27
#_1AD28F: #_30E4o: db !ECHO_CONFIG, $FF, $00, $00
#_1AD293: #_30E8o: db !ECHO_FILTER, $02, $1E, $02
#_1AD297: #_30ECo: db !ECHO_GRAD, $28, $32, $32
#_1AD29B: #_30F0o: db !INSTR, $16
#_1AD29D: #_30F2o: db !VOLUME, $FA
#_1AD29F: #_30F4o: db $0C, $5D ; duration, params
#_1AD2A1: #_30F6o: db C5
#_1AD2A2: #_30F7o: db As4
#_1AD2A3: #_30F8o: db C5
#_1AD2A4: #_30F9o: db As4
#_1AD2A5: #_30FAo: db C5
#_1AD2A6: #_30FBo: db As4
#_1AD2A7: #_30FCo: db F5
#_1AD2A8: #_30FDo: db Ds5
#_1AD2A9: #_30FEo: db $30 ; duration
#_1AD2AA: #_30FFo: db !TIE
#_1AD2AB: #_3100o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0E_Segment0_Track1:
#_1AD2AC: #_3101o: db !INSTR, $18
#_1AD2AE: #_3103o: db !VOLUME, $C8
#_1AD2B0: #_3105o: db $18, $5D ; duration, params
#_1AD2B2: #_3107o: db Gs2
#_1AD2B3: #_3108o: db Gs2
#_1AD2B4: #_3109o: db Fs2
#_1AD2B5: #_310Ao: db $0C ; duration
#_1AD2B6: #_310Bo: db Fs2
#_1AD2B7: #_310Co: db Fs2
#_1AD2B8: #_310Do: db $30 ; duration
#_1AD2B9: #_310Eo: db !TIE

;---------------------------------------------------------------------------------------------------

Song0E_Segment0_Track2:
#_1AD2BA: #_310Fo: db !INSTR, $12
#_1AD2BC: #_3111o: db !VOLUME, $C8
#_1AD2BE: #_3113o: db $0C, $5D ; duration, params
#_1AD2C0: #_3115o: db C5
#_1AD2C1: #_3116o: db As4
#_1AD2C2: #_3117o: db C5
#_1AD2C3: #_3118o: db As4
#_1AD2C4: #_3119o: db C5
#_1AD2C5: #_311Ao: db As4
#_1AD2C6: #_311Bo: db F5
#_1AD2C7: #_311Co: db Ds5
#_1AD2C8: #_311Do: db $30 ; duration
#_1AD2C9: #_311Eo: db !TIE

;---------------------------------------------------------------------------------------------------

Song0E_Segment0_Track3:
#_1AD2CA: #_311Fo: db !INSTR, $18
#_1AD2CC: #_3121o: db !VOLUME, $C8
#_1AD2CE: #_3123o: db $18, $5D ; duration, params
#_1AD2D0: #_3125o: db Gs3
#_1AD2D1: #_3126o: db Gs3
#_1AD2D2: #_3127o: db Fs3
#_1AD2D3: #_3128o: db $0C ; duration
#_1AD2D4: #_3129o: db Fs3
#_1AD2D5: #_312Ao: db Fs3
#_1AD2D6: #_312Bo: db $30 ; duration
#_1AD2D7: #_312Co: db !TIE

;---------------------------------------------------------------------------------------------------

Song0E_Segment0_Track4:
#_1AD2D8: #_312Do: db !INSTR, $18
#_1AD2DA: #_312Fo: db !VOLUME, $C8
#_1AD2DC: #_3131o: db $18, $5D ; duration, params
#_1AD2DE: #_3133o: db Ds3
#_1AD2DF: #_3134o: db Ds3
#_1AD2E0: #_3135o: db Cs3
#_1AD2E1: #_3136o: db $0C ; duration
#_1AD2E2: #_3137o: db Cs3
#_1AD2E3: #_3138o: db Cs3
#_1AD2E4: #_3139o: db $30 ; duration
#_1AD2E5: #_313Ao: db !TIE
#_1AD2E6: #_313Bo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0E_Sub_313C:
#_1AD2E7: #_313Co: db $0C, $5D ; duration, params
#_1AD2E9: #_313Eo: db F4
#_1AD2EA: #_313Fo: db C5
#_1AD2EB: #_3140o: db F5
#_1AD2EC: #_3141o: db F4
#_1AD2ED: #_3142o: db As4
#_1AD2EE: #_3143o: db Ds5
#_1AD2EF: #_3144o: db F4
#_1AD2F0: #_3145o: db C5
#_1AD2F1: #_3146o: db F5
#_1AD2F2: #_3147o: db F4
#_1AD2F3: #_3148o: db As4
#_1AD2F4: #_3149o: db Ds5
#_1AD2F5: #_314Ao: db $18 ; duration
#_1AD2F6: #_314Bo: db R
#_1AD2F7: #_314Co: db $0C ; duration
#_1AD2F8: #_314Do: db C5
#_1AD2F9: #_314Eo: db R
#_1AD2FA: #_314Fo: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0E_Sub_3150:
#_1AD2FB: #_3150o: db $0C, $5D ; duration, params
#_1AD2FD: #_3152o: db C5
#_1AD2FE: #_3153o: db As4
#_1AD2FF: #_3154o: db C5
#_1AD300: #_3155o: db As4
#_1AD301: #_3156o: db Fs4
#_1AD302: #_3157o: db E4
#_1AD303: #_3158o: db R
#_1AD304: #_3159o: db C5
#_1AD305: #_315Ao: db R
#_1AD306: #_315Bo: db As4
#_1AD307: #_315Co: db C5
#_1AD308: #_315Do: db As4
#_1AD309: #_315Eo: db Fs4
#_1AD30A: #_315Fo: db E4
#_1AD30B: #_3160o: db $18 ; duration
#_1AD30C: #_3161o: db R
#_1AD30D: #_3162o: db $0C ; duration
#_1AD30E: #_3163o: db As4
#_1AD30F: #_3164o: db Gs4
#_1AD310: #_3165o: db As4
#_1AD311: #_3166o: db Gs4
#_1AD312: #_3167o: db E4
#_1AD313: #_3168o: db D4
#_1AD314: #_3169o: db R
#_1AD315: #_316Ao: db As4
#_1AD316: #_316Bo: db R
#_1AD317: #_316Co: db Gs4
#_1AD318: #_316Do: db As4
#_1AD319: #_316Eo: db Gs4
#_1AD31A: #_316Fo: db E4
#_1AD31B: #_3170o: db D4
#_1AD31C: #_3171o: db $18 ; duration
#_1AD31D: #_3172o: db R
#_1AD31E: #_3173o: db !PART_END

;---------------------------------------------------------------------------------------------------

Song0E_Sub_3174:
#_1AD31F: #_3174o: db $0C, $5D ; duration, params
#_1AD321: #_3176o: db E4
#_1AD322: #_3177o: db Gs4
#_1AD323: #_3178o: db D5
#_1AD324: #_3179o: db D4
#_1AD325: #_317Ao: db Fs4
#_1AD326: #_317Bo: db C5
#_1AD327: #_317Co: db E4
#_1AD328: #_317Do: db Gs4
#_1AD329: #_317Eo: db D5
#_1AD32A: #_317Fo: db D4
#_1AD32B: #_3180o: db Fs4
#_1AD32C: #_3181o: db C5
#_1AD32D: #_3182o: db $18 ; duration
#_1AD32E: #_3183o: db R
#_1AD32F: #_3184o: db $0C ; duration
#_1AD330: #_3185o: db As4
#_1AD331: #_3186o: db R
#_1AD332: #_3187o: db !PART_END

;===================================================================================================

base off

#_1AD333: dw !END_TRANSFER, SPC_ENGINE

;===================================================================================================
; FREE ROM: 0x49
; including garbage
;===================================================================================================
GARBAGE_1AD337:
#_1AD337: db $77, $00, $00, $00, $00, $01, $FF, $00, $00

NULL_1AD340:
#_1AD340: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AD348: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AD350: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AD358: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AD360: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AD368: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AD370: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AD378: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

SongBank_Credits_Main:
#_1AD380: dw $1060, SONG_POINTERS ; Transfer size, transfer address

base SONG_POINTERS
#_1AD384: #_D000c: dw $0000
#_1AD386: #_D002c: dw $0000
#_1AD388: #_D004c: dw $0000
#_1AD38A: #_D006c: dw $0000
#_1AD38C: #_D008c: dw $0000
#_1AD38E: #_D00Ac: dw $0000
#_1AD390: #_D00Cc: dw $0000
#_1AD392: #_D00Ec: dw $0000
#_1AD394: #_D010c: dw $0000
#_1AD396: #_D012c: dw $0000
#_1AD398: #_D014c: dw $0000
#_1AD39A: #_D016c: dw $0000
#_1AD39C: #_D018c: dw $0000
#_1AD39E: #_D01Ac: dw $0000
#_1AD3A0: #_D01Cc: dw $0000
#_1AD3A2: #_D01Ec: dw $0000
#_1AD3A4: #_D020c: dw $0000
#_1AD3A6: #_D022c: dw $0000
#_1AD3A8: #_D024c: dw $0000
#_1AD3AA: #_D026c: dw $0000
#_1AD3AC: #_D028c: dw $0000
#_1AD3AE: #_D02Ac: dw $0000
#_1AD3B0: #_D02Cc: dw $0000
#_1AD3B2: #_D02Ec: dw $0000
#_1AD3B4: #_D030c: dw $0000
#_1AD3B6: #_D032c: dw $0000
#_1AD3B8: #_D034c: dw $0000
#_1AD3BA: #_D036c: dw $0000
#_1AD3BC: #_D038c: dw $0000
#_1AD3BE: #_D03Ac: dw $0000
#_1AD3C0: #_D03Cc: dw $0000
#_1AD3C2: #_D03Ec: dw Song20_TriforceRoom
#_1AD3C4: #_D040c: dw Song21_EndingTheme
#_1AD3C6: #_D042c: dw Song22_Credits
#_1AD3C8: #_D044c: dw $0000

;===================================================================================================

Song20_TriforceRoom:
#_1AD3CA: #_D046c: dw Song20_Segment0

Song20_Loop:
#_1AD3CC: #_D048c: dw Song20_Segment1
#_1AD3CE: #_D04Ac: dw Song20_Segment1
#_1AD3D0: #_D04Cc: dw Song20_Segment2
#_1AD3D2: #_D04Ec: dw Song20_Segment3
#_1AD3D4: #_D050c: dw !SONG_LOOP, Song20_Loop
#_1AD3D8: #_D054c: dw $0000

Song20_Segment1:
#_1AD3DA: #_D056c: dw Song20_Segment1_Track0
#_1AD3DC: #_D058c: dw Song20_Segment1_Track1
#_1AD3DE: #_D05Ac: dw Song20_Segment1_Track2
#_1AD3E0: #_D05Cc: dw Song20_Segment1_Track3
#_1AD3E2: #_D05Ec: dw Song20_Segment1_Track4
#_1AD3E4: #_D060c: dw Song20_Segment1_Track5
#_1AD3E6: #_D062c: dw $0000
#_1AD3E8: #_D064c: dw $0000

Song20_Segment0:
#_1AD3EA: #_D066c: dw Song20_Segment0_Track0
#_1AD3EC: #_D068c: dw Song20_Segment0_Track1
#_1AD3EE: #_D06Ac: dw Song20_Segment0_Track2
#_1AD3F0: #_D06Cc: dw Song20_Segment0_Track3
#_1AD3F2: #_D06Ec: dw Song20_Segment0_Track4
#_1AD3F4: #_D070c: dw $0000
#_1AD3F6: #_D072c: dw $0000
#_1AD3F8: #_D074c: dw $0000

Song20_Segment2:
#_1AD3FA: #_D076c: dw Song20_Segment2_Track0
#_1AD3FC: #_D078c: dw Song20_Segment2_Track1
#_1AD3FE: #_D07Ac: dw Song20_Segment2_Track2
#_1AD400: #_D07Cc: dw Song20_Segment2_Track3
#_1AD402: #_D07Ec: dw Song20_Segment2_Track4
#_1AD404: #_D080c: dw Song20_Segment2_Track5
#_1AD406: #_D082c: dw $0000
#_1AD408: #_D084c: dw $0000

Song20_Segment3:
#_1AD40A: #_D086c: dw Song20_Segment3_Track0
#_1AD40C: #_D088c: dw Song20_Segment3_Track1
#_1AD40E: #_D08Ac: dw Song20_Segment3_Track2
#_1AD410: #_D08Cc: dw Song20_Segment3_Track3
#_1AD412: #_D08Ec: dw Song20_Segment3_Track4
#_1AD414: #_D090c: dw Song20_Segment3_Track5
#_1AD416: #_D092c: dw $0000
#_1AD418: #_D094c: dw $0000

;---------------------------------------------------------------------------------------------------

Song20_Segment1_Track0:
#_1AD41A: #_D096c: db !MASTER_VOLUME, $78
#_1AD41C: #_D098c: db !MVOL_GRAD, $8C, $C8
#_1AD41F: #_D09Bc: db !PAN, $10
#_1AD421: #_D09Dc: db !TEMPO, $17
#_1AD423: #_D09Fc: db !VOLUME, $A0
#_1AD425: #_D0A1c: db $18, $7D ; duration, params
#_1AD427: #_D0A3c: db E5
#_1AD428: #_D0A4c: db $38 ; duration
#_1AD429: #_D0A5c: db B4
#_1AD42A: #_D0A6c: db $08 ; duration
#_1AD42B: #_D0A7c: db A4
#_1AD42C: #_D0A8c: db B4
#_1AD42D: #_D0A9c: db !CALL_PART : dw Song20_Sub_D2E3 : db 1
#_1AD431: #_D0ADc: db $60 ; duration
#_1AD432: #_D0AEc: db E4
#_1AD433: #_D0AFc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song20_Segment1_Track1:
#_1AD434: #_D0B0c: db !PAN, $06
#_1AD436: #_D0B2c: db $60, $7D ; duration, params
#_1AD438: #_D0B4c: db C2
#_1AD439: #_D0B5c: db $48 ; duration
#_1AD43A: #_D0B6c: db F2
#_1AD43B: #_D0B7c: db C2
#_1AD43C: #_D0B8c: db $60 ; duration
#_1AD43D: #_D0B9c: db F2

;---------------------------------------------------------------------------------------------------

Song20_Segment1_Track2:
#_1AD43E: #_D0BAc: db !VOLUME, $78
#_1AD440: #_D0BCc: db !PAN, $08
#_1AD442: #_D0BEc: db $08 ; duration
#_1AD443: #_D0BFc: db R
#_1AD444: #_D0C0c: db $18, $7D ; duration, params
#_1AD446: #_D0C2c: db E5
#_1AD447: #_D0C3c: db $38 ; duration
#_1AD448: #_D0C4c: db B4
#_1AD449: #_D0C5c: db $08 ; duration
#_1AD44A: #_D0C6c: db A4
#_1AD44B: #_D0C7c: db B4
#_1AD44C: #_D0C8c: db !CALL_PART : dw Song20_Sub_D2E3 : db 1
#_1AD450: #_D0CCc: db $58 ; duration
#_1AD451: #_D0CDc: db E4

;---------------------------------------------------------------------------------------------------

Song20_Segment1_Track3:
#_1AD452: #_D0CEc: db $0C ; duration
#_1AD453: #_D0CFc: db R
#_1AD454: #_D0D0c: db $54, $7D ; duration, params
#_1AD456: #_D0D2c: db G2
#_1AD457: #_D0D3c: db $0C ; duration
#_1AD458: #_D0D4c: db !TIE
#_1AD459: #_D0D5c: db $3C ; duration
#_1AD45A: #_D0D6c: db C3
#_1AD45B: #_D0D7c: db $0C ; duration
#_1AD45C: #_D0D8c: db !TIE
#_1AD45D: #_D0D9c: db $3C ; duration
#_1AD45E: #_D0DAc: db G2
#_1AD45F: #_D0DBc: db $0C ; duration
#_1AD460: #_D0DCc: db !TIE
#_1AD461: #_D0DDc: db $54 ; duration
#_1AD462: #_D0DEc: db C3

;---------------------------------------------------------------------------------------------------

Song20_Segment1_Track4:
#_1AD463: #_D0DFc: db $18 ; duration
#_1AD464: #_D0E0c: db R
#_1AD465: #_D0E1c: db $48, $7D ; duration, params
#_1AD467: #_D0E3c: db C3
#_1AD468: #_D0E4c: db $18 ; duration
#_1AD469: #_D0E5c: db !TIE
#_1AD46A: #_D0E6c: db $30 ; duration
#_1AD46B: #_D0E7c: db F3
#_1AD46C: #_D0E8c: db $18 ; duration
#_1AD46D: #_D0E9c: db !TIE
#_1AD46E: #_D0EAc: db $30 ; duration
#_1AD46F: #_D0EBc: db C3
#_1AD470: #_D0ECc: db $18 ; duration
#_1AD471: #_D0EDc: db !TIE
#_1AD472: #_D0EEc: db $48 ; duration
#_1AD473: #_D0EFc: db F3

;---------------------------------------------------------------------------------------------------

Song20_Segment1_Track5:
#_1AD474: #_D0F0c: db !INSTR, $18
#_1AD476: #_D0F2c: db !VOLUME, $DC
#_1AD478: #_D0F4c: db !PAN, $0A
#_1AD47A: #_D0F6c: db $18, $5D ; duration, params
#_1AD47C: #_D0F8c: db E5
#_1AD47D: #_D0F9c: db $38 ; duration
#_1AD47E: #_D0FAc: db B4
#_1AD47F: #_D0FBc: db $08 ; duration
#_1AD480: #_D0FCc: db A4
#_1AD481: #_D0FDc: db B4
#_1AD482: #_D0FEc: db !CALL_PART : dw Song20_Sub_D2E3 : db 1
#_1AD486: #_D102c: db $60 ; duration
#_1AD487: #_D103c: db E4

;---------------------------------------------------------------------------------------------------

Song20_Segment0_Track0:
#_1AD488: #_D104c: db !SET_PERC, $19
#_1AD48A: #_D106c: db !MASTER_VOLUME, $B4
#_1AD48C: #_D108c: db !ECHO_CONFIG, $FF, $28, $28
#_1AD490: #_D10Cc: db !ECHO_FILTER, $02, $50, $02
#_1AD494: #_D110c: db !TEMPO, $19
#_1AD496: #_D112c: db !TEMPO_GRAD, $64, $25
#_1AD499: #_D115c: db !INSTR, $0A
#_1AD49B: #_D117c: db !VOLUME, $C8
#_1AD49D: #_D119c: db !PAN, $02
#_1AD49F: #_D11Bc: db !VIBRATO, $1A, $1C, $18
#_1AD4A3: #_D11Fc: db $20 ; duration
#_1AD4A4: #_D120c: db R
#_1AD4A5: #_D121c: db $28, $7D ; duration, params
#_1AD4A7: #_D123c: db B3
#_1AD4A8: #_D124c: db $18 ; duration
#_1AD4A9: #_D125c: db A4
#_1AD4AA: #_D126c: db $10 ; duration
#_1AD4AB: #_D127c: db !TIE
#_1AD4AC: #_D128c: db $28 ; duration
#_1AD4AD: #_D129c: db F5
#_1AD4AE: #_D12Ac: db D6
#_1AD4AF: #_D12Bc: db $50 ; duration
#_1AD4B0: #_D12Cc: db !TIE
#_1AD4B1: #_D12Dc: db $10 ; duration
#_1AD4B2: #_D12Ec: db R
#_1AD4B3: #_D12Fc: db !MVOL_GRAD, $5A, $78
#_1AD4B6: #_D132c: db $60 ; duration
#_1AD4B7: #_D133c: db R
#_1AD4B8: #_D134c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song20_Segment0_Track1:
#_1AD4B9: #_D135c: db !INSTR, $0A
#_1AD4BB: #_D137c: db !VOLUME, $B4
#_1AD4BD: #_D139c: db !PAN, $12
#_1AD4BF: #_D13Bc: db !VIBRATO, $1A, $1C, $18
#_1AD4C3: #_D13Fc: db $28, $7D ; duration, params
#_1AD4C5: #_D141c: db G2
#_1AD4C6: #_D142c: db D4
#_1AD4C7: #_D143c: db $10 ; duration
#_1AD4C8: #_D144c: db B4
#_1AD4C9: #_D145c: db $18 ; duration
#_1AD4CA: #_D146c: db !TIE
#_1AD4CB: #_D147c: db $28 ; duration
#_1AD4CC: #_D148c: db A5
#_1AD4CD: #_D149c: db $20 ; duration
#_1AD4CE: #_D14Ac: db F6
#_1AD4CF: #_D14Bc: db $60 ; duration
#_1AD4D0: #_D14Cc: db !TIE
#_1AD4D1: #_D14Dc: db !TIE

;---------------------------------------------------------------------------------------------------

Song20_Segment0_Track2:
#_1AD4D2: #_D14Ec: db !INSTR, $0A
#_1AD4D4: #_D150c: db !VOLUME, $B4
#_1AD4D6: #_D152c: db !PAN, $0E
#_1AD4D8: #_D154c: db !VIBRATO, $18, $1A, $1C
#_1AD4DC: #_D158c: db $08 ; duration
#_1AD4DD: #_D159c: db R
#_1AD4DE: #_D15Ac: db $28, $7D ; duration, params
#_1AD4E0: #_D15Cc: db D3
#_1AD4E1: #_D15Dc: db F4
#_1AD4E2: #_D15Ec: db $08 ; duration
#_1AD4E3: #_D15Fc: db D5
#_1AD4E4: #_D160c: db $20 ; duration
#_1AD4E5: #_D161c: db !TIE
#_1AD4E6: #_D162c: db $40 ; duration
#_1AD4E7: #_D163c: db F5
#_1AD4E8: #_D164c: db $30 ; duration
#_1AD4E9: #_D165c: db !TIE
#_1AD4EA: #_D166c: db R
#_1AD4EB: #_D167c: db $60 ; duration
#_1AD4EC: #_D168c: db R

;---------------------------------------------------------------------------------------------------

Song20_Segment0_Track3:
#_1AD4ED: #_D169c: db !INSTR, $0A
#_1AD4EF: #_D16Bc: db !VOLUME, $B4
#_1AD4F1: #_D16Dc: db !PAN, $0A
#_1AD4F3: #_D16Fc: db !VIBRATO, $18, $1C, $1A
#_1AD4F7: #_D173c: db $10 ; duration
#_1AD4F8: #_D174c: db R
#_1AD4F9: #_D175c: db $28, $7D ; duration, params
#_1AD4FB: #_D177c: db F3
#_1AD4FC: #_D178c: db A4
#_1AD4FD: #_D179c: db B4
#_1AD4FE: #_D17Ac: db $38 ; duration
#_1AD4FF: #_D17Bc: db A5
#_1AD500: #_D17Cc: db $40 ; duration
#_1AD501: #_D17Dc: db !TIE
#_1AD502: #_D17Ec: db $20 ; duration
#_1AD503: #_D17Fc: db R
#_1AD504: #_D180c: db $60 ; duration
#_1AD505: #_D181c: db R

;---------------------------------------------------------------------------------------------------

Song20_Segment0_Track4:
#_1AD506: #_D182c: db !INSTR, $0A
#_1AD508: #_D184c: db !VOLUME, $B4
#_1AD50A: #_D186c: db !PAN, $06
#_1AD50C: #_D188c: db !VIBRATO, $1E, $18, $1C
#_1AD510: #_D18Cc: db $18 ; duration
#_1AD511: #_D18Dc: db R
#_1AD512: #_D18Ec: db $28, $7D ; duration, params
#_1AD514: #_D190c: db A3
#_1AD515: #_D191c: db $20 ; duration
#_1AD516: #_D192c: db F4
#_1AD517: #_D193c: db $08 ; duration
#_1AD518: #_D194c: db !TIE
#_1AD519: #_D195c: db $28 ; duration
#_1AD51A: #_D196c: db D5
#_1AD51B: #_D197c: db $30 ; duration
#_1AD51C: #_D198c: db B5
#_1AD51D: #_D199c: db $48 ; duration
#_1AD51E: #_D19Ac: db !TIE
#_1AD51F: #_D19Bc: db $18 ; duration
#_1AD520: #_D19Cc: db R
#_1AD521: #_D19Dc: db $60 ; duration
#_1AD522: #_D19Ec: db R

;---------------------------------------------------------------------------------------------------

Song20_Segment2_Track0:
#_1AD523: #_D19Fc: db $18, $7D ; duration, params
#_1AD525: #_D1A1c: db C5
#_1AD526: #_D1A2c: db $38 ; duration
#_1AD527: #_D1A3c: db G4
#_1AD528: #_D1A4c: db $08 ; duration
#_1AD529: #_D1A5c: db F4
#_1AD52A: #_D1A6c: db G4
#_1AD52B: #_D1A7c: db !CALL_PART : dw Song20_Sub_D2EE : db 1
#_1AD52F: #_D1ABc: db $60 ; duration
#_1AD530: #_D1ACc: db E4
#_1AD531: #_D1ADc: db $48 ; duration
#_1AD532: #_D1AEc: db !TIE
#_1AD533: #_D1AFc: db $18 ; duration
#_1AD534: #_D1B0c: db E4
#_1AD535: #_D1B1c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song20_Segment2_Track1:
#_1AD536: #_D1B2c: db !PAN, $06
#_1AD538: #_D1B4c: db $60, $7D ; duration, params
#_1AD53A: #_D1B6c: db Gs2
#_1AD53B: #_D1B7c: db $48 ; duration
#_1AD53C: #_D1B8c: db Cs3
#_1AD53D: #_D1B9c: db Gs2
#_1AD53E: #_D1BAc: db Cs3
#_1AD53F: #_D1BBc: db $60 ; duration
#_1AD540: #_D1BCc: db C3
#_1AD541: #_D1BDc: db C3

;---------------------------------------------------------------------------------------------------

Song20_Segment2_Track2:
#_1AD542: #_D1BEc: db !VOLUME, $8C
#_1AD544: #_D1C0c: db !PAN, $08
#_1AD546: #_D1C2c: db $08 ; duration
#_1AD547: #_D1C3c: db R
#_1AD548: #_D1C4c: db $18, $7D ; duration, params
#_1AD54A: #_D1C6c: db C5
#_1AD54B: #_D1C7c: db $38 ; duration
#_1AD54C: #_D1C8c: db G4
#_1AD54D: #_D1C9c: db $08 ; duration
#_1AD54E: #_D1CAc: db F4
#_1AD54F: #_D1CBc: db G4
#_1AD550: #_D1CCc: db !CALL_PART : dw Song20_Sub_D2EE : db 1
#_1AD554: #_D1D0c: db $60 ; duration
#_1AD555: #_D1D1c: db E4
#_1AD556: #_D1D2c: db $48 ; duration
#_1AD557: #_D1D3c: db !TIE
#_1AD558: #_D1D4c: db $10 ; duration
#_1AD559: #_D1D5c: db E4

;---------------------------------------------------------------------------------------------------

Song20_Segment2_Track3:
#_1AD55A: #_D1D6c: db $0C ; duration
#_1AD55B: #_D1D7c: db R
#_1AD55C: #_D1D8c: db $54, $7D ; duration, params
#_1AD55E: #_D1DAc: db Ds3
#_1AD55F: #_D1DBc: db $0C ; duration
#_1AD560: #_D1DCc: db !TIE
#_1AD561: #_D1DDc: db $3C ; duration
#_1AD562: #_D1DEc: db Gs3
#_1AD563: #_D1DFc: db $0C ; duration
#_1AD564: #_D1E0c: db !TIE
#_1AD565: #_D1E1c: db $3C ; duration
#_1AD566: #_D1E2c: db Ds3
#_1AD567: #_D1E3c: db $0C ; duration
#_1AD568: #_D1E4c: db !TIE
#_1AD569: #_D1E5c: db $3C ; duration
#_1AD56A: #_D1E6c: db Gs3
#_1AD56B: #_D1E7c: db $0C ; duration
#_1AD56C: #_D1E8c: db R
#_1AD56D: #_D1E9c: db $54 ; duration
#_1AD56E: #_D1EAc: db G3
#_1AD56F: #_D1EBc: db $0C ; duration
#_1AD570: #_D1ECc: db !TIE
#_1AD571: #_D1EDc: db $54 ; duration
#_1AD572: #_D1EEc: db G3

;---------------------------------------------------------------------------------------------------

Song20_Segment2_Track4:
#_1AD573: #_D1EFc: db $18 ; duration
#_1AD574: #_D1F0c: db R
#_1AD575: #_D1F1c: db $48, $7D ; duration, params
#_1AD577: #_D1F3c: db Gs3
#_1AD578: #_D1F4c: db $18 ; duration
#_1AD579: #_D1F5c: db !TIE
#_1AD57A: #_D1F6c: db $30 ; duration
#_1AD57B: #_D1F7c: db Cs4
#_1AD57C: #_D1F8c: db $18 ; duration
#_1AD57D: #_D1F9c: db !TIE
#_1AD57E: #_D1FAc: db $30 ; duration
#_1AD57F: #_D1FBc: db Gs3
#_1AD580: #_D1FCc: db $18 ; duration
#_1AD581: #_D1FDc: db !TIE
#_1AD582: #_D1FEc: db $30 ; duration
#_1AD583: #_D1FFc: db Cs4
#_1AD584: #_D200c: db $18 ; duration
#_1AD585: #_D201c: db R
#_1AD586: #_D202c: db $48 ; duration
#_1AD587: #_D203c: db C4
#_1AD588: #_D204c: db $18 ; duration
#_1AD589: #_D205c: db !TIE
#_1AD58A: #_D206c: db $48 ; duration
#_1AD58B: #_D207c: db C4

;---------------------------------------------------------------------------------------------------

Song20_Segment2_Track5:
#_1AD58C: #_D208c: db $18, $7D ; duration, params
#_1AD58E: #_D20Ac: db C5
#_1AD58F: #_D20Bc: db $38 ; duration
#_1AD590: #_D20Cc: db G4
#_1AD591: #_D20Dc: db $08 ; duration
#_1AD592: #_D20Ec: db F4
#_1AD593: #_D20Fc: db G4
#_1AD594: #_D210c: db !CALL_PART : dw Song20_Sub_D2EE : db 1
#_1AD598: #_D214c: db $60 ; duration
#_1AD599: #_D215c: db E4
#_1AD59A: #_D216c: db $48 ; duration
#_1AD59B: #_D217c: db !TIE
#_1AD59C: #_D218c: db $18 ; duration
#_1AD59D: #_D219c: db E4

;---------------------------------------------------------------------------------------------------

Song20_Segment3_Track0:
#_1AD59E: #_D21Ac: db $30, $7D ; duration, params
#_1AD5A0: #_D21Cc: db D4
#_1AD5A1: #_D21Dc: db $18 ; duration
#_1AD5A2: #_D21Ec: db A4
#_1AD5A3: #_D21Fc: db $30 ; duration
#_1AD5A4: #_D220c: db G4
#_1AD5A5: #_D221c: db $18 ; duration
#_1AD5A6: #_D222c: db C4
#_1AD5A7: #_D223c: db $30 ; duration
#_1AD5A8: #_D224c: db C4
#_1AD5A9: #_D225c: db $18 ; duration
#_1AD5AA: #_D226c: db G4
#_1AD5AB: #_D227c: db $30 ; duration
#_1AD5AC: #_D228c: db D4
#_1AD5AD: #_D229c: db $18 ; duration
#_1AD5AE: #_D22Ac: db E4
#_1AD5AF: #_D22Bc: db $30 ; duration
#_1AD5B0: #_D22Cc: db D4
#_1AD5B1: #_D22Dc: db $18 ; duration
#_1AD5B2: #_D22Ec: db A4
#_1AD5B3: #_D22Fc: db $30 ; duration
#_1AD5B4: #_D230c: db G4
#_1AD5B5: #_D231c: db $18 ; duration
#_1AD5B6: #_D232c: db C4
#_1AD5B7: #_D233c: db !TEMPO_GRAD, $48, $25
#_1AD5BA: #_D236c: db $0C ; duration
#_1AD5BB: #_D237c: db Cs4
#_1AD5BC: #_D238c: db Ds4
#_1AD5BD: #_D239c: db F4
#_1AD5BE: #_D23Ac: db Fs4
#_1AD5BF: #_D23Bc: db Gs4
#_1AD5C0: #_D23Cc: db As4
#_1AD5C1: #_D23Dc: db !TEMPO_GRAD, $48, $19
#_1AD5C4: #_D240c: db F4
#_1AD5C5: #_D241c: db G4
#_1AD5C6: #_D242c: db A4
#_1AD5C7: #_D243c: db B4
#_1AD5C8: #_D244c: db C5
#_1AD5C9: #_D245c: db D5
#_1AD5CA: #_D246c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song20_Segment3_Track1:
#_1AD5CB: #_D247c: db $48, $7D ; duration, params
#_1AD5CD: #_D249c: db As2
#_1AD5CE: #_D24Ac: db A2
#_1AD5CF: #_D24Bc: db Gs2
#_1AD5D0: #_D24Cc: db G2
#_1AD5D1: #_D24Dc: db As2
#_1AD5D2: #_D24Ec: db A2
#_1AD5D3: #_D24Fc: db Gs2
#_1AD5D4: #_D250c: db G2

;---------------------------------------------------------------------------------------------------

Song20_Segment3_Track2:
#_1AD5D5: #_D251c: db $08 ; duration
#_1AD5D6: #_D252c: db R
#_1AD5D7: #_D253c: db $30, $7D ; duration, params
#_1AD5D9: #_D255c: db D4
#_1AD5DA: #_D256c: db $18 ; duration
#_1AD5DB: #_D257c: db A4
#_1AD5DC: #_D258c: db $30 ; duration
#_1AD5DD: #_D259c: db G4
#_1AD5DE: #_D25Ac: db $18 ; duration
#_1AD5DF: #_D25Bc: db C4
#_1AD5E0: #_D25Cc: db $30 ; duration
#_1AD5E1: #_D25Dc: db C4
#_1AD5E2: #_D25Ec: db $18 ; duration
#_1AD5E3: #_D25Fc: db G4
#_1AD5E4: #_D260c: db $30 ; duration
#_1AD5E5: #_D261c: db D4
#_1AD5E6: #_D262c: db $18 ; duration
#_1AD5E7: #_D263c: db E4
#_1AD5E8: #_D264c: db $30 ; duration
#_1AD5E9: #_D265c: db D4
#_1AD5EA: #_D266c: db $18 ; duration
#_1AD5EB: #_D267c: db A4
#_1AD5EC: #_D268c: db $30 ; duration
#_1AD5ED: #_D269c: db G4
#_1AD5EE: #_D26Ac: db $18 ; duration
#_1AD5EF: #_D26Bc: db C4
#_1AD5F0: #_D26Cc: db $0C ; duration
#_1AD5F1: #_D26Dc: db Cs4
#_1AD5F2: #_D26Ec: db Ds4
#_1AD5F3: #_D26Fc: db F4
#_1AD5F4: #_D270c: db Fs4
#_1AD5F5: #_D271c: db Gs4
#_1AD5F6: #_D272c: db As4
#_1AD5F7: #_D273c: db F4
#_1AD5F8: #_D274c: db G4
#_1AD5F9: #_D275c: db A4
#_1AD5FA: #_D276c: db B4
#_1AD5FB: #_D277c: db C5
#_1AD5FC: #_D278c: db $04 ; duration
#_1AD5FD: #_D279c: db D5

;---------------------------------------------------------------------------------------------------

Song20_Segment3_Track3:
#_1AD5FE: #_D27Ac: db $0C ; duration
#_1AD5FF: #_D27Bc: db R
#_1AD600: #_D27Cc: db $3C, $7D ; duration, params
#_1AD602: #_D27Ec: db F3
#_1AD603: #_D27Fc: db $0C ; duration
#_1AD604: #_D280c: db R
#_1AD605: #_D281c: db $3C ; duration
#_1AD606: #_D282c: db E3
#_1AD607: #_D283c: db $0C ; duration
#_1AD608: #_D284c: db R
#_1AD609: #_D285c: db $3C ; duration
#_1AD60A: #_D286c: db Ds3
#_1AD60B: #_D287c: db $0C ; duration
#_1AD60C: #_D288c: db R
#_1AD60D: #_D289c: db $3C ; duration
#_1AD60E: #_D28Ac: db D3
#_1AD60F: #_D28Bc: db $0C ; duration
#_1AD610: #_D28Cc: db R
#_1AD611: #_D28Dc: db $3C ; duration
#_1AD612: #_D28Ec: db F3
#_1AD613: #_D28Fc: db $0C ; duration
#_1AD614: #_D290c: db R
#_1AD615: #_D291c: db $3C ; duration
#_1AD616: #_D292c: db E3
#_1AD617: #_D293c: db $0C ; duration
#_1AD618: #_D294c: db R
#_1AD619: #_D295c: db $3C ; duration
#_1AD61A: #_D296c: db Ds3
#_1AD61B: #_D297c: db $0C ; duration
#_1AD61C: #_D298c: db R
#_1AD61D: #_D299c: db $3C ; duration
#_1AD61E: #_D29Ac: db D3

;---------------------------------------------------------------------------------------------------

Song20_Segment3_Track4:
#_1AD61F: #_D29Bc: db $18 ; duration
#_1AD620: #_D29Cc: db R
#_1AD621: #_D29Dc: db $30, $7D ; duration, params
#_1AD623: #_D29Fc: db As3
#_1AD624: #_D2A0c: db $18 ; duration
#_1AD625: #_D2A1c: db R
#_1AD626: #_D2A2c: db $30 ; duration
#_1AD627: #_D2A3c: db A3
#_1AD628: #_D2A4c: db $18 ; duration
#_1AD629: #_D2A5c: db R
#_1AD62A: #_D2A6c: db $30 ; duration
#_1AD62B: #_D2A7c: db Gs3
#_1AD62C: #_D2A8c: db $18 ; duration
#_1AD62D: #_D2A9c: db R
#_1AD62E: #_D2AAc: db $30 ; duration
#_1AD62F: #_D2ABc: db G3
#_1AD630: #_D2ACc: db $18 ; duration
#_1AD631: #_D2ADc: db R
#_1AD632: #_D2AEc: db $30 ; duration
#_1AD633: #_D2AFc: db As3
#_1AD634: #_D2B0c: db $18 ; duration
#_1AD635: #_D2B1c: db R
#_1AD636: #_D2B2c: db $30 ; duration
#_1AD637: #_D2B3c: db A3
#_1AD638: #_D2B4c: db $18 ; duration
#_1AD639: #_D2B5c: db R
#_1AD63A: #_D2B6c: db $30 ; duration
#_1AD63B: #_D2B7c: db Gs3
#_1AD63C: #_D2B8c: db $18 ; duration
#_1AD63D: #_D2B9c: db R
#_1AD63E: #_D2BAc: db $30 ; duration
#_1AD63F: #_D2BBc: db G3

;---------------------------------------------------------------------------------------------------

Song20_Segment3_Track5:
#_1AD640: #_D2BCc: db $30, $7D ; duration, params
#_1AD642: #_D2BEc: db D4
#_1AD643: #_D2BFc: db $18 ; duration
#_1AD644: #_D2C0c: db A4
#_1AD645: #_D2C1c: db $30 ; duration
#_1AD646: #_D2C2c: db G4
#_1AD647: #_D2C3c: db $18 ; duration
#_1AD648: #_D2C4c: db C4
#_1AD649: #_D2C5c: db $30 ; duration
#_1AD64A: #_D2C6c: db C4
#_1AD64B: #_D2C7c: db $18 ; duration
#_1AD64C: #_D2C8c: db G4
#_1AD64D: #_D2C9c: db $30 ; duration
#_1AD64E: #_D2CAc: db D4
#_1AD64F: #_D2CBc: db $18 ; duration
#_1AD650: #_D2CCc: db E4
#_1AD651: #_D2CDc: db $30 ; duration
#_1AD652: #_D2CEc: db D4
#_1AD653: #_D2CFc: db $18 ; duration
#_1AD654: #_D2D0c: db A4
#_1AD655: #_D2D1c: db $30 ; duration
#_1AD656: #_D2D2c: db G4
#_1AD657: #_D2D3c: db $18 ; duration
#_1AD658: #_D2D4c: db C4
#_1AD659: #_D2D5c: db $0C ; duration
#_1AD65A: #_D2D6c: db Cs4
#_1AD65B: #_D2D7c: db Ds4
#_1AD65C: #_D2D8c: db F4
#_1AD65D: #_D2D9c: db Fs4
#_1AD65E: #_D2DAc: db Gs4
#_1AD65F: #_D2DBc: db As4
#_1AD660: #_D2DCc: db F4
#_1AD661: #_D2DDc: db G4
#_1AD662: #_D2DEc: db A4
#_1AD663: #_D2DFc: db B4
#_1AD664: #_D2E0c: db C5
#_1AD665: #_D2E1c: db D5
#_1AD666: #_D2E2c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song20_Sub_D2E3:
#_1AD667: #_D2E3c: db $18 ; duration
#_1AD668: #_D2E4c: db E4
#_1AD669: #_D2E5c: db D4
#_1AD66A: #_D2E6c: db E4
#_1AD66B: #_D2E7c: db E5
#_1AD66C: #_D2E8c: db $24 ; duration
#_1AD66D: #_D2E9c: db B4
#_1AD66E: #_D2EAc: db $06 ; duration
#_1AD66F: #_D2EBc: db A4
#_1AD670: #_D2ECc: db B4
#_1AD671: #_D2EDc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song20_Sub_D2EE:
#_1AD672: #_D2EEc: db $18 ; duration
#_1AD673: #_D2EFc: db C4
#_1AD674: #_D2F0c: db As3
#_1AD675: #_D2F1c: db C4
#_1AD676: #_D2F2c: db C5
#_1AD677: #_D2F3c: db $24 ; duration
#_1AD678: #_D2F4c: db G4
#_1AD679: #_D2F5c: db $06 ; duration
#_1AD67A: #_D2F6c: db F4
#_1AD67B: #_D2F7c: db G4
#_1AD67C: #_D2F8c: db $30 ; duration
#_1AD67D: #_D2F9c: db C4
#_1AD67E: #_D2FAc: db $18 ; duration
#_1AD67F: #_D2FBc: db F4
#_1AD680: #_D2FCc: db !PART_END

;===================================================================================================

Song22_Credits:
#_1AD681: #_D2FDc: dw Song22_Segment0
#_1AD683: #_D2FFc: dw Song22_Segment1
#_1AD685: #_D301c: dw Song22_Segment2
#_1AD687: #_D303c: dw Song22_Segment3
#_1AD689: #_D305c: dw Song22_Segment4
#_1AD68B: #_D307c: dw Song22_Segment5
#_1AD68D: #_D309c: dw Song22_Segment6
#_1AD68F: #_D30Bc: dw Song22_Segment7
#_1AD691: #_D30Dc: dw Song22_Segment8
#_1AD693: #_D30Fc: dw !SONG_END

Song22_Segment5:
#_1AD695: #_D311c: dw Song22_Segment5_Track0
#_1AD697: #_D313c: dw Song22_Segment5_Track1
#_1AD699: #_D315c: dw Song22_Segment5_Track2
#_1AD69B: #_D317c: dw Song22_Segment5_Track3
#_1AD69D: #_D319c: dw Song22_Segment5_Track4
#_1AD69F: #_D31Bc: dw Song22_Segment5_Track5
#_1AD6A1: #_D31Dc: dw Song22_Segment5_Track6
#_1AD6A3: #_D31Fc: dw Song22_Segment5_Track7

Song22_Segment6:
#_1AD6A5: #_D321c: dw Song22_Segment6_Track0
#_1AD6A7: #_D323c: dw Song22_Segment6_Track1
#_1AD6A9: #_D325c: dw Song22_Segment6_Track2
#_1AD6AB: #_D327c: dw Song22_Segment6_Track3
#_1AD6AD: #_D329c: dw $0000
#_1AD6AF: #_D32Bc: dw Song22_Segment6_Track5
#_1AD6B1: #_D32Dc: dw Song22_Segment6_Track6
#_1AD6B3: #_D32Fc: dw Song22_Segment6_Track7

Song22_Segment0:
#_1AD6B5: #_D331c: dw Song22_Segment0_Track0
#_1AD6B7: #_D333c: dw Song22_Segment0_Track1
#_1AD6B9: #_D335c: dw Song22_Segment0_Track2
#_1AD6BB: #_D337c: dw Song22_Segment0_Track3
#_1AD6BD: #_D339c: dw Song22_Segment0_Track4
#_1AD6BF: #_D33Bc: dw $0000
#_1AD6C1: #_D33Dc: dw $0000
#_1AD6C3: #_D33Fc: dw $0000

Song22_Segment1:
#_1AD6C5: #_D341c: dw Song22_Segment1_Track0
#_1AD6C7: #_D343c: dw Song22_Segment1_Track1
#_1AD6C9: #_D345c: dw Song22_Segment1_Track2
#_1AD6CB: #_D347c: dw Song22_Segment1_Track3
#_1AD6CD: #_D349c: dw Song22_Segment1_Track4
#_1AD6CF: #_D34Bc: dw Song22_Segment1_Track5
#_1AD6D1: #_D34Dc: dw $0000
#_1AD6D3: #_D34Fc: dw $0000

Song22_Segment2:
#_1AD6D5: #_D351c: dw Song22_Segment2_Track0
#_1AD6D7: #_D353c: dw Song22_Segment2_Track1
#_1AD6D9: #_D355c: dw Song22_Segment2_Track2
#_1AD6DB: #_D357c: dw Song22_Segment2_Track3
#_1AD6DD: #_D359c: dw Song22_Segment2_Track4
#_1AD6DF: #_D35Bc: dw Song22_Segment2_Track5
#_1AD6E1: #_D35Dc: dw $0000
#_1AD6E3: #_D35Fc: dw Song22_Segment2_Track7

Song22_Segment3:
#_1AD6E5: #_D361c: dw Song22_Segment3_Track0
#_1AD6E7: #_D363c: dw Song22_Segment3_Track1
#_1AD6E9: #_D365c: dw Song22_Segment3_Track2
#_1AD6EB: #_D367c: dw Song22_Segment3_Track3
#_1AD6ED: #_D369c: dw Song22_Segment3_Track4
#_1AD6EF: #_D36Bc: dw Song22_Segment3_Track5
#_1AD6F1: #_D36Dc: dw Song22_Segment3_Track6
#_1AD6F3: #_D36Fc: dw Song22_Segment3_Track7

Song22_Segment4:
#_1AD6F5: #_D371c: dw Song22_Segment4_Track0
#_1AD6F7: #_D373c: dw Song22_Segment4_Track1
#_1AD6F9: #_D375c: dw Song22_Segment4_Track2
#_1AD6FB: #_D377c: dw Song22_Segment4_Track3
#_1AD6FD: #_D379c: dw Song22_Segment4_Track4
#_1AD6FF: #_D37Bc: dw Song22_Segment4_Track5
#_1AD701: #_D37Dc: dw $0000
#_1AD703: #_D37Fc: dw Song22_Segment4_Track7

Song22_Segment7:
#_1AD705: #_D381c: dw Song22_Segment7_Track0
#_1AD707: #_D383c: dw Song22_Segment7_Track1
#_1AD709: #_D385c: dw Song22_Segment7_Track2
#_1AD70B: #_D387c: dw Song22_Segment7_Track3
#_1AD70D: #_D389c: dw Song22_Segment7_Track4
#_1AD70F: #_D38Bc: dw Song22_Segment7_Track5
#_1AD711: #_D38Dc: dw Song22_Segment7_Track6
#_1AD713: #_D38Fc: dw Song22_Segment7_Track7

Song22_Segment8:
#_1AD715: #_D391c: dw Song22_Segment8_Track0
#_1AD717: #_D393c: dw Song22_Segment8_Track1
#_1AD719: #_D395c: dw Song22_Segment8_Track2
#_1AD71B: #_D397c: dw Song22_Segment8_Track3
#_1AD71D: #_D399c: dw Song22_Segment8_Track4
#_1AD71F: #_D39Bc: dw Song22_Segment8_Track5
#_1AD721: #_D39Dc: dw Song22_Segment8_Track6
#_1AD723: #_D39Fc: dw Song22_Segment8_Track7

;---------------------------------------------------------------------------------------------------

Song22_Segment5_Track0:
#_1AD725: #_D3A1c: db $18, $7D ; duration, params
#_1AD727: #_D3A3c: db C4
#_1AD728: #_D3A4c: db $2A, $6D ; duration, params
#_1AD72A: #_D3A6c: db G3
#_1AD72B: #_D3A7c: db $06, $4D ; duration, params
#_1AD72D: #_D3A9c: db C4
#_1AD72E: #_D3AAc: db $06, $5D ; duration, params
#_1AD730: #_D3ACc: db C4
#_1AD731: #_D3ADc: db $06, $4D ; duration, params
#_1AD733: #_D3AFc: db D4
#_1AD734: #_D3B0c: db $06, $5D ; duration, params
#_1AD736: #_D3B2c: db E4
#_1AD737: #_D3B3c: db $06, $4D ; duration, params
#_1AD739: #_D3B5c: db F4
#_1AD73A: #_D3B6c: db $30, $6D ; duration, params
#_1AD73C: #_D3B8c: db G4
#_1AD73D: #_D3B9c: db $0C ; duration
#_1AD73E: #_D3BAc: db !TIE
#_1AD73F: #_D3BBc: db $0C, $2D ; duration, params
#_1AD741: #_D3BDc: db G4
#_1AD742: #_D3BEc: db $08, $7D ; duration, params
#_1AD744: #_D3C0c: db G4
#_1AD745: #_D3C1c: db $08, $5D ; duration, params
#_1AD747: #_D3C3c: db Gs4
#_1AD748: #_D3C4c: db As4
#_1AD749: #_D3C5c: db !CALL_PART : dw Song22_Sub_DCDB : db 1
#_1AD74D: #_D3C9c: db !CALL_PART : dw Song22_Sub_DCF6 : db 1
#_1AD751: #_D3CDc: db !CALL_PART : dw Song22_Sub_DD1B : db 1
#_1AD755: #_D3D1c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Segment5_Track1:
#_1AD756: #_D3D2c: db $60, $5D ; duration, params
#_1AD758: #_D3D4c: db C2
#_1AD759: #_D3D5c: db As2
#_1AD75A: #_D3D6c: db Gs2
#_1AD75B: #_D3D7c: db Ds2
#_1AD75C: #_D3D8c: db $30, $59 ; duration, params
#_1AD75E: #_D3DAc: db Cs2
#_1AD75F: #_D3DBc: db Cs2
#_1AD760: #_D3DCc: db C2
#_1AD761: #_D3DDc: db C2
#_1AD762: #_D3DEc: db $30, $5D ; duration, params
#_1AD764: #_D3E0c: db D2
#_1AD765: #_D3E1c: db D2
#_1AD766: #_D3E2c: db G2
#_1AD767: #_D3E3c: db $30, $4D ; duration, params
#_1AD769: #_D3E5c: db B2

;---------------------------------------------------------------------------------------------------

Song22_Segment5_Track2:
#_1AD76A: #_D3E6c: db $0C ; duration
#_1AD76B: #_D3E7c: db R
#_1AD76C: #_D3E8c: db $54, $7D ; duration, params
#_1AD76E: #_D3EAc: db G2
#_1AD76F: #_D3EBc: db $0C ; duration
#_1AD770: #_D3ECc: db R
#_1AD771: #_D3EDc: db $54 ; duration
#_1AD772: #_D3EEc: db F3
#_1AD773: #_D3EFc: db $0C ; duration
#_1AD774: #_D3F0c: db R
#_1AD775: #_D3F1c: db $54 ; duration
#_1AD776: #_D3F2c: db Ds3
#_1AD777: #_D3F3c: db $0C ; duration
#_1AD778: #_D3F4c: db R
#_1AD779: #_D3F5c: db $54 ; duration
#_1AD77A: #_D3F6c: db As2
#_1AD77B: #_D3F7c: db $0C ; duration
#_1AD77C: #_D3F8c: db R
#_1AD77D: #_D3F9c: db $54 ; duration
#_1AD77E: #_D3FAc: db Gs2
#_1AD77F: #_D3FBc: db $0C ; duration
#_1AD780: #_D3FCc: db R
#_1AD781: #_D3FDc: db $54 ; duration
#_1AD782: #_D3FEc: db G2
#_1AD783: #_D3FFc: db !CALL_PART : dw Song22_Sub_DD3F : db 1

;---------------------------------------------------------------------------------------------------

Song22_Segment5_Track3:
#_1AD787: #_D403c: db $18 ; duration
#_1AD788: #_D404c: db R
#_1AD789: #_D405c: db $48, $7D ; duration, params
#_1AD78B: #_D407c: db C3
#_1AD78C: #_D408c: db $18 ; duration
#_1AD78D: #_D409c: db R
#_1AD78E: #_D40Ac: db $48 ; duration
#_1AD78F: #_D40Bc: db As3
#_1AD790: #_D40Cc: db $18 ; duration
#_1AD791: #_D40Dc: db R
#_1AD792: #_D40Ec: db $48 ; duration
#_1AD793: #_D40Fc: db Gs3
#_1AD794: #_D410c: db $18 ; duration
#_1AD795: #_D411c: db R
#_1AD796: #_D412c: db $48 ; duration
#_1AD797: #_D413c: db Ds3
#_1AD798: #_D414c: db $18 ; duration
#_1AD799: #_D415c: db R
#_1AD79A: #_D416c: db $48 ; duration
#_1AD79B: #_D417c: db Cs3
#_1AD79C: #_D418c: db $18 ; duration
#_1AD79D: #_D419c: db R
#_1AD79E: #_D41Ac: db $48 ; duration
#_1AD79F: #_D41Bc: db C3
#_1AD7A0: #_D41Cc: db $18 ; duration
#_1AD7A1: #_D41Dc: db R
#_1AD7A2: #_D41Ec: db $48 ; duration
#_1AD7A3: #_D41Fc: db D3
#_1AD7A4: #_D420c: db $18 ; duration
#_1AD7A5: #_D421c: db R
#_1AD7A6: #_D422c: db $48 ; duration
#_1AD7A7: #_D423c: db D3

;---------------------------------------------------------------------------------------------------

Song22_Segment5_Track4:
#_1AD7A8: #_D424c: db $18 ; duration
#_1AD7A9: #_D425c: db R
#_1AD7AA: #_D426c: db $48, $7D ; duration, params
#_1AD7AC: #_D428c: db E3
#_1AD7AD: #_D429c: db $18 ; duration
#_1AD7AE: #_D42Ac: db R
#_1AD7AF: #_D42Bc: db $48 ; duration
#_1AD7B0: #_D42Cc: db D4
#_1AD7B1: #_D42Dc: db $18 ; duration
#_1AD7B2: #_D42Ec: db R
#_1AD7B3: #_D42Fc: db $48 ; duration
#_1AD7B4: #_D430c: db C4
#_1AD7B5: #_D431c: db $18 ; duration
#_1AD7B6: #_D432c: db R
#_1AD7B7: #_D433c: db $48 ; duration
#_1AD7B8: #_D434c: db G3
#_1AD7B9: #_D435c: db $18 ; duration
#_1AD7BA: #_D436c: db R
#_1AD7BB: #_D437c: db $48 ; duration
#_1AD7BC: #_D438c: db F3
#_1AD7BD: #_D439c: db $18 ; duration
#_1AD7BE: #_D43Ac: db R
#_1AD7BF: #_D43Bc: db $48 ; duration
#_1AD7C0: #_D43Cc: db Ds3
#_1AD7C1: #_D43Dc: db $18 ; duration
#_1AD7C2: #_D43Ec: db R
#_1AD7C3: #_D43Fc: db $48 ; duration
#_1AD7C4: #_D440c: db Fs3
#_1AD7C5: #_D441c: db $18 ; duration
#_1AD7C6: #_D442c: db R
#_1AD7C7: #_D443c: db $48 ; duration
#_1AD7C8: #_D444c: db G3

;---------------------------------------------------------------------------------------------------

Song22_Segment5_Track5:
#_1AD7C9: #_D445c: db !PAN, $0A
#_1AD7CB: #_D447c: db !INSTR, $09
#_1AD7CD: #_D449c: db !VIBRATO, $13, $36, $28
#_1AD7D1: #_D44Dc: db $60 ; duration
#_1AD7D2: #_D44Ec: db R
#_1AD7D3: #_D44Fc: db R
#_1AD7D4: #_D450c: db R
#_1AD7D5: #_D451c: db $48 ; duration
#_1AD7D6: #_D452c: db R
#_1AD7D7: #_D453c: db !VOLUME, $B4
#_1AD7D9: #_D455c: db $18, $4D ; duration, params
#_1AD7DB: #_D457c: db As3
#_1AD7DC: #_D458c: db !CALL_PART : dw Song22_Sub_DD48 : db 1
#_1AD7E0: #_D45Cc: db $0C, $2B ; duration, params
#_1AD7E2: #_D45Ec: db Fs3
#_1AD7E3: #_D45Fc: db $06 ; duration
#_1AD7E4: #_D460c: db Fs3
#_1AD7E5: #_D461c: db G3
#_1AD7E6: #_D462c: db $30, $6D ; duration, params
#_1AD7E8: #_D464c: db A3
#_1AD7E9: #_D465c: db $18 ; duration
#_1AD7EA: #_D466c: db C4
#_1AD7EB: #_D467c: db $0C ; duration
#_1AD7EC: #_D468c: db B3
#_1AD7ED: #_D469c: db $06, $4D ; duration, params
#_1AD7EF: #_D46Bc: db B3
#_1AD7F0: #_D46Cc: db B3
#_1AD7F1: #_D46Dc: db $0C, $4E ; duration, params
#_1AD7F3: #_D46Fc: db B3
#_1AD7F4: #_D470c: db $06 ; duration
#_1AD7F5: #_D471c: db B3
#_1AD7F6: #_D472c: db B3
#_1AD7F7: #_D473c: db $0C ; duration
#_1AD7F8: #_D474c: db B3
#_1AD7F9: #_D475c: db $06, $4F ; duration, params
#_1AD7FB: #_D477c: db B3
#_1AD7FC: #_D478c: db B3
#_1AD7FD: #_D479c: db $0C ; duration
#_1AD7FE: #_D47Ac: db B3
#_1AD7FF: #_D47Bc: db B3

;---------------------------------------------------------------------------------------------------

Song22_Segment5_Track6:
#_1AD800: #_D47Cc: db !VOLUME, $C8
#_1AD802: #_D47Ec: db !INSTR, $11
#_1AD804: #_D480c: db !PAN, $0A
#_1AD806: #_D482c: db $0C ; duration
#_1AD807: #_D483c: db R
#_1AD808: #_D484c: db $54 ; duration
#_1AD809: #_D485c: db R
#_1AD80A: #_D486c: db $60 ; duration
#_1AD80B: #_D487c: db R
#_1AD80C: #_D488c: db $54 ; duration
#_1AD80D: #_D489c: db R
#_1AD80E: #_D48Ac: db $0C ; duration
#_1AD80F: #_D48Bc: db R
#_1AD810: #_D48Cc: db $60 ; duration
#_1AD811: #_D48Dc: db R
#_1AD812: #_D48Ec: db !CALL_PART : dw Song22_Sub_DD6D : db 1

;---------------------------------------------------------------------------------------------------

Song22_Segment5_Track7:
#_1AD816: #_D492c: db !VOLUME, $78
#_1AD818: #_D494c: db !PAN, $0C
#_1AD81A: #_D496c: db !INSTR, $0A
#_1AD81C: #_D498c: db !VIBRATO, $11, $35, $27
#_1AD820: #_D49Cc: db $04 ; duration
#_1AD821: #_D49Dc: db R
#_1AD822: #_D49Ec: db $0C, $4D ; duration, params
#_1AD824: #_D4A0c: db C4
#_1AD825: #_D4A1c: db !TIE
#_1AD826: #_D4A2c: db $2A, $6D ; duration, params
#_1AD828: #_D4A4c: db G3
#_1AD829: #_D4A5c: db $06, $4D ; duration, params
#_1AD82B: #_D4A7c: db C4
#_1AD82C: #_D4A8c: db $06, $5D ; duration, params
#_1AD82E: #_D4AAc: db C4
#_1AD82F: #_D4ABc: db $06, $4D ; duration, params
#_1AD831: #_D4ADc: db D4
#_1AD832: #_D4AEc: db $06, $5D ; duration, params
#_1AD834: #_D4B0c: db E4
#_1AD835: #_D4B1c: db $06, $4D ; duration, params
#_1AD837: #_D4B3c: db F4
#_1AD838: #_D4B4c: db !CALL_PART : dw Song22_Sub_DDC5 : db 1
#_1AD83C: #_D4B8c: db !CALL_PART : dw Song22_Sub_DCF6 : db 1
#_1AD840: #_D4BCc: db !CALL_PART : dw Song22_Sub_DDED : db 1

;---------------------------------------------------------------------------------------------------

Song22_Segment6_Track0:
#_1AD844: #_D4C0c: db $0C, $4D ; duration, params
#_1AD846: #_D4C2c: db C4
#_1AD847: #_D4C3c: db !TIE
#_1AD848: #_D4C4c: db $2A, $6D ; duration, params
#_1AD84A: #_D4C6c: db G3
#_1AD84B: #_D4C7c: db $06, $4D ; duration, params
#_1AD84D: #_D4C9c: db C4
#_1AD84E: #_D4CAc: db $06, $5D ; duration, params
#_1AD850: #_D4CCc: db C4
#_1AD851: #_D4CDc: db $06, $4D ; duration, params
#_1AD853: #_D4CFc: db D4
#_1AD854: #_D4D0c: db $06, $5D ; duration, params
#_1AD856: #_D4D2c: db E4
#_1AD857: #_D4D3c: db $06, $4D ; duration, params
#_1AD859: #_D4D5c: db F4
#_1AD85A: #_D4D6c: db $30, $6D ; duration, params
#_1AD85C: #_D4D8c: db G4
#_1AD85D: #_D4D9c: db $0C ; duration
#_1AD85E: #_D4DAc: db R
#_1AD85F: #_D4DBc: db $0C, $2D ; duration, params
#_1AD861: #_D4DDc: db G4
#_1AD862: #_D4DEc: db $08, $7D ; duration, params
#_1AD864: #_D4E0c: db G4
#_1AD865: #_D4E1c: db $08, $5D ; duration, params
#_1AD867: #_D4E3c: db Gs4
#_1AD868: #_D4E4c: db As4
#_1AD869: #_D4E5c: db !CALL_PART : dw Song22_Sub_DE0F : db 1
#_1AD86D: #_D4E9c: db !CALL_PART : dw Song22_Sub_DD1B : db 1
#_1AD871: #_D4EDc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Segment6_Track1:
#_1AD872: #_D4EEc: db $60, $5D ; duration, params
#_1AD874: #_D4F0c: db C2
#_1AD875: #_D4F1c: db As2
#_1AD876: #_D4F2c: db $60, $4D ; duration, params
#_1AD878: #_D4F4c: db Gs2
#_1AD879: #_D4F5c: db G2
#_1AD87A: #_D4F6c: db $08, $7B ; duration, params
#_1AD87C: #_D4F8c: db Fs2
#_1AD87D: #_D4F9c: db C3
#_1AD87E: #_D4FAc: db Ds3
#_1AD87F: #_D4FBc: db Fs3
#_1AD880: #_D4FCc: db C4
#_1AD881: #_D4FDc: db Ds4
#_1AD882: #_D4FEc: db $30 ; duration
#_1AD883: #_D4FFc: db Fs4
#_1AD884: #_D500c: db $18 ; duration
#_1AD885: #_D501c: db G4
#_1AD886: #_D502c: db $08 ; duration
#_1AD887: #_D503c: db G2
#_1AD888: #_D504c: db G2
#_1AD889: #_D505c: db G2
#_1AD88A: #_D506c: db $30 ; duration
#_1AD88B: #_D507c: db G2
#_1AD88C: #_D508c: db $08 ; duration
#_1AD88D: #_D509c: db Fs2
#_1AD88E: #_D50Ac: db C3
#_1AD88F: #_D50Bc: db Ds3
#_1AD890: #_D50Cc: db Fs3
#_1AD891: #_D50Dc: db C4
#_1AD892: #_D50Ec: db Ds4
#_1AD893: #_D50Fc: db $30 ; duration
#_1AD894: #_D510c: db Fs4
#_1AD895: #_D511c: db $18 ; duration
#_1AD896: #_D512c: db G4
#_1AD897: #_D513c: db $08 ; duration
#_1AD898: #_D514c: db G2
#_1AD899: #_D515c: db G2
#_1AD89A: #_D516c: db G2
#_1AD89B: #_D517c: db $30 ; duration
#_1AD89C: #_D518c: db G2
#_1AD89D: #_D519c: db $60, $4D ; duration, params
#_1AD89F: #_D51Bc: db Cs2
#_1AD8A0: #_D51Cc: db C2
#_1AD8A1: #_D51Dc: db D2
#_1AD8A2: #_D51Ec: db G2

;---------------------------------------------------------------------------------------------------

Song22_Segment6_Track2:
#_1AD8A3: #_D51Fc: db !VOLUME, $C8
#_1AD8A5: #_D521c: db !INSTR, $11
#_1AD8A7: #_D523c: db !PAN, $0A
#_1AD8A9: #_D525c: db !VIBRATO, $08, $32, $1E
#_1AD8AD: #_D529c: db $0C, $5D ; duration, params
#_1AD8AF: #_D52Bc: db C3
#_1AD8B0: #_D52Cc: db $06, $4D ; duration, params
#_1AD8B2: #_D52Ec: db C3
#_1AD8B3: #_D52Fc: db C3
#_1AD8B4: #_D530c: db $0C ; duration
#_1AD8B5: #_D531c: db C3
#_1AD8B6: #_D532c: db $06 ; duration
#_1AD8B7: #_D533c: db C3
#_1AD8B8: #_D534c: db C3
#_1AD8B9: #_D535c: db $0C ; duration
#_1AD8BA: #_D536c: db C3
#_1AD8BB: #_D537c: db $06 ; duration
#_1AD8BC: #_D538c: db C3
#_1AD8BD: #_D539c: db C3
#_1AD8BE: #_D53Ac: db $0C ; duration
#_1AD8BF: #_D53Bc: db C3
#_1AD8C0: #_D53Cc: db $06 ; duration
#_1AD8C1: #_D53Dc: db C3
#_1AD8C2: #_D53Ec: db C3
#_1AD8C3: #_D53Fc: db $0C, $5D ; duration, params
#_1AD8C5: #_D541c: db As2
#_1AD8C6: #_D542c: db $06, $4D ; duration, params
#_1AD8C8: #_D544c: db As2
#_1AD8C9: #_D545c: db As2
#_1AD8CA: #_D546c: db $0C ; duration
#_1AD8CB: #_D547c: db As2
#_1AD8CC: #_D548c: db $06 ; duration
#_1AD8CD: #_D549c: db As2
#_1AD8CE: #_D54Ac: db As2
#_1AD8CF: #_D54Bc: db $0C ; duration
#_1AD8D0: #_D54Cc: db As2
#_1AD8D1: #_D54Dc: db $06 ; duration
#_1AD8D2: #_D54Ec: db As2
#_1AD8D3: #_D54Fc: db As2
#_1AD8D4: #_D550c: db $0C ; duration
#_1AD8D5: #_D551c: db As2
#_1AD8D6: #_D552c: db $06 ; duration
#_1AD8D7: #_D553c: db As2
#_1AD8D8: #_D554c: db As2
#_1AD8D9: #_D555c: db $0C ; duration
#_1AD8DA: #_D556c: db Gs2
#_1AD8DB: #_D557c: db $06 ; duration
#_1AD8DC: #_D558c: db Gs2
#_1AD8DD: #_D559c: db Gs2
#_1AD8DE: #_D55Ac: db $0C ; duration
#_1AD8DF: #_D55Bc: db Gs2
#_1AD8E0: #_D55Cc: db $06 ; duration
#_1AD8E1: #_D55Dc: db Gs2
#_1AD8E2: #_D55Ec: db Gs2
#_1AD8E3: #_D55Fc: db $0C ; duration
#_1AD8E4: #_D560c: db Gs2
#_1AD8E5: #_D561c: db $06 ; duration
#_1AD8E6: #_D562c: db Gs2
#_1AD8E7: #_D563c: db Gs2
#_1AD8E8: #_D564c: db $0C ; duration
#_1AD8E9: #_D565c: db Gs2
#_1AD8EA: #_D566c: db $06 ; duration
#_1AD8EB: #_D567c: db Gs2
#_1AD8EC: #_D568c: db Gs2
#_1AD8ED: #_D569c: db $0C ; duration
#_1AD8EE: #_D56Ac: db G2
#_1AD8EF: #_D56Bc: db $06 ; duration
#_1AD8F0: #_D56Cc: db G2
#_1AD8F1: #_D56Dc: db G2
#_1AD8F2: #_D56Ec: db $0C ; duration
#_1AD8F3: #_D56Fc: db G2
#_1AD8F4: #_D570c: db $06 ; duration
#_1AD8F5: #_D571c: db G2
#_1AD8F6: #_D572c: db G2
#_1AD8F7: #_D573c: db $0C ; duration
#_1AD8F8: #_D574c: db G2
#_1AD8F9: #_D575c: db $06 ; duration
#_1AD8FA: #_D576c: db G2
#_1AD8FB: #_D577c: db G2
#_1AD8FC: #_D578c: db $0C ; duration
#_1AD8FD: #_D579c: db G2
#_1AD8FE: #_D57Ac: db $06 ; duration
#_1AD8FF: #_D57Bc: db G2
#_1AD900: #_D57Cc: db G2
#_1AD901: #_D57Dc: db !CALL_PART : dw Song22_Sub_DE3C : db 2
#_1AD905: #_D581c: db $0C ; duration
#_1AD906: #_D582c: db Cs3
#_1AD907: #_D583c: db $06 ; duration
#_1AD908: #_D584c: db Cs3
#_1AD909: #_D585c: db Cs3
#_1AD90A: #_D586c: db $0C ; duration
#_1AD90B: #_D587c: db Cs3
#_1AD90C: #_D588c: db $06 ; duration
#_1AD90D: #_D589c: db Cs3
#_1AD90E: #_D58Ac: db Cs3
#_1AD90F: #_D58Bc: db $0C ; duration
#_1AD910: #_D58Cc: db Cs3
#_1AD911: #_D58Dc: db $06 ; duration
#_1AD912: #_D58Ec: db Cs3
#_1AD913: #_D58Fc: db Cs3
#_1AD914: #_D590c: db $0C ; duration
#_1AD915: #_D591c: db Cs3
#_1AD916: #_D592c: db $06 ; duration
#_1AD917: #_D593c: db Cs3
#_1AD918: #_D594c: db Cs3
#_1AD919: #_D595c: db $0C ; duration
#_1AD91A: #_D596c: db C3
#_1AD91B: #_D597c: db $06 ; duration
#_1AD91C: #_D598c: db C3
#_1AD91D: #_D599c: db C3
#_1AD91E: #_D59Ac: db $0C ; duration
#_1AD91F: #_D59Bc: db C3
#_1AD920: #_D59Cc: db $06 ; duration
#_1AD921: #_D59Dc: db C3
#_1AD922: #_D59Ec: db C3
#_1AD923: #_D59Fc: db $0C ; duration
#_1AD924: #_D5A0c: db C3
#_1AD925: #_D5A1c: db $06 ; duration
#_1AD926: #_D5A2c: db C3
#_1AD927: #_D5A3c: db C3
#_1AD928: #_D5A4c: db $0C ; duration
#_1AD929: #_D5A5c: db C3
#_1AD92A: #_D5A6c: db $06 ; duration
#_1AD92B: #_D5A7c: db C3
#_1AD92C: #_D5A8c: db C3
#_1AD92D: #_D5A9c: db $0C ; duration
#_1AD92E: #_D5AAc: db D3
#_1AD92F: #_D5ABc: db $06 ; duration
#_1AD930: #_D5ACc: db D3
#_1AD931: #_D5ADc: db D3
#_1AD932: #_D5AEc: db $0C ; duration
#_1AD933: #_D5AFc: db D3
#_1AD934: #_D5B0c: db $06 ; duration
#_1AD935: #_D5B1c: db D3
#_1AD936: #_D5B2c: db D3
#_1AD937: #_D5B3c: db $0C ; duration
#_1AD938: #_D5B4c: db D3
#_1AD939: #_D5B5c: db $06 ; duration
#_1AD93A: #_D5B6c: db D3
#_1AD93B: #_D5B7c: db D3
#_1AD93C: #_D5B8c: db $0C ; duration
#_1AD93D: #_D5B9c: db D3
#_1AD93E: #_D5BAc: db $06 ; duration
#_1AD93F: #_D5BBc: db D3
#_1AD940: #_D5BCc: db D3
#_1AD941: #_D5BDc: db $0C ; duration
#_1AD942: #_D5BEc: db G2
#_1AD943: #_D5BFc: db $06 ; duration
#_1AD944: #_D5C0c: db G2
#_1AD945: #_D5C1c: db G2
#_1AD946: #_D5C2c: db $0C ; duration
#_1AD947: #_D5C3c: db G2
#_1AD948: #_D5C4c: db $06 ; duration
#_1AD949: #_D5C5c: db G2
#_1AD94A: #_D5C6c: db G2
#_1AD94B: #_D5C7c: db $0C ; duration
#_1AD94C: #_D5C8c: db G2
#_1AD94D: #_D5C9c: db $06 ; duration
#_1AD94E: #_D5CAc: db G2
#_1AD94F: #_D5CBc: db G2
#_1AD950: #_D5CCc: db $0C ; duration
#_1AD951: #_D5CDc: db A2
#_1AD952: #_D5CEc: db B2

;---------------------------------------------------------------------------------------------------

Song22_Segment6_Track3:
#_1AD953: #_D5CFc: db !VOLUME, $3C
#_1AD955: #_D5D1c: db !VOLUME_GRAD, $FF, $78
#_1AD958: #_D5D4c: db !INSTR, $13
#_1AD95A: #_D5D6c: db !PAN, $0A
#_1AD95C: #_D5D8c: db !CALL_PART : dw Song22_Sub_DE67 : db $0C

;---------------------------------------------------------------------------------------------------

Song22_Segment6_Track5:
#_1AD960: #_D5DCc: db $0C, $4D ; duration, params
#_1AD962: #_D5DEc: db E3
#_1AD963: #_D5DFc: db R
#_1AD964: #_D5E0c: db $2A, $6D ; duration, params
#_1AD966: #_D5E2c: db C3
#_1AD967: #_D5E3c: db $06, $4D ; duration, params
#_1AD969: #_D5E5c: db E3
#_1AD96A: #_D5E6c: db $06, $5D ; duration, params
#_1AD96C: #_D5E8c: db E3
#_1AD96D: #_D5E9c: db $06, $4D ; duration, params
#_1AD96F: #_D5EBc: db F3
#_1AD970: #_D5ECc: db $06, $5D ; duration, params
#_1AD972: #_D5EEc: db G3
#_1AD973: #_D5EFc: db $06, $4D ; duration, params
#_1AD975: #_D5F1c: db A3
#_1AD976: #_D5F2c: db $30, $6D ; duration, params
#_1AD978: #_D5F4c: db As3
#_1AD979: #_D5F5c: db $0C ; duration
#_1AD97A: #_D5F6c: db R
#_1AD97B: #_D5F7c: db $0C, $2D ; duration, params
#_1AD97D: #_D5F9c: db As3
#_1AD97E: #_D5FAc: db $08, $5D ; duration, params
#_1AD980: #_D5FCc: db As3
#_1AD981: #_D5FDc: db C4
#_1AD982: #_D5FEc: db D4
#_1AD983: #_D5FFc: db $48, $5B ; duration, params
#_1AD985: #_D601c: db Ds4
#_1AD986: #_D602c: db $18 ; duration
#_1AD987: #_D603c: db Fs4
#_1AD988: #_D604c: db $0C ; duration
#_1AD989: #_D605c: db F4
#_1AD98A: #_D606c: db R
#_1AD98B: #_D607c: db $30 ; duration
#_1AD98C: #_D608c: db D4
#_1AD98D: #_D609c: db $18 ; duration
#_1AD98E: #_D60Ac: db B3
#_1AD98F: #_D60Bc: db $48 ; duration
#_1AD990: #_D60Cc: db C4
#_1AD991: #_D60Dc: db $18 ; duration
#_1AD992: #_D60Ec: db Ds4
#_1AD993: #_D60Fc: db $0C ; duration
#_1AD994: #_D610c: db D4
#_1AD995: #_D611c: db R
#_1AD996: #_D612c: db $30 ; duration
#_1AD997: #_D613c: db B3
#_1AD998: #_D614c: db $18 ; duration
#_1AD999: #_D615c: db B3
#_1AD99A: #_D616c: db $48 ; duration
#_1AD99B: #_D617c: db C4
#_1AD99C: #_D618c: db $18 ; duration
#_1AD99D: #_D619c: db Ds4
#_1AD99E: #_D61Ac: db $0C ; duration
#_1AD99F: #_D61Bc: db D4
#_1AD9A0: #_D61Cc: db R
#_1AD9A1: #_D61Dc: db $30 ; duration
#_1AD9A2: #_D61Ec: db B3
#_1AD9A3: #_D61Fc: db $18 ; duration
#_1AD9A4: #_D620c: db G3
#_1AD9A5: #_D621c: db $48 ; duration
#_1AD9A6: #_D622c: db Gs3
#_1AD9A7: #_D623c: db $18 ; duration
#_1AD9A8: #_D624c: db Cs4
#_1AD9A9: #_D625c: db $0C ; duration
#_1AD9AA: #_D626c: db C4
#_1AD9AB: #_D627c: db R
#_1AD9AC: #_D628c: db $30 ; duration
#_1AD9AD: #_D629c: db G3
#_1AD9AE: #_D62Ac: db $18 ; duration
#_1AD9AF: #_D62Bc: db Ds3
#_1AD9B0: #_D62Cc: db !CALL_PART : dw Song22_Sub_DE7E : db 1

;---------------------------------------------------------------------------------------------------

Song22_Segment6_Track6:
#_1AD9B4: #_D630c: db !PAN, $06
#_1AD9B6: #_D632c: db !INSTR, $16
#_1AD9B8: #_D634c: db !VOLUME, $B4
#_1AD9BA: #_D636c: db !VIBRATO, $12, $34, $1C
#_1AD9BE: #_D63Ac: db !CALL_PART : dw Song22_Sub_DE9F : db 1
#_1AD9C2: #_D63Ec: db $30 ; duration
#_1AD9C3: #_D63Fc: db G3
#_1AD9C4: #_D640c: db B3
#_1AD9C5: #_D641c: db !CALL_PART : dw Song22_Sub_DEBC : db 2
#_1AD9C9: #_D645c: db $18 ; duration
#_1AD9CA: #_D646c: db Gs3
#_1AD9CB: #_D647c: db $0C ; duration
#_1AD9CC: #_D648c: db Gs3
#_1AD9CD: #_D649c: db $06 ; duration
#_1AD9CE: #_D64Ac: db Gs3
#_1AD9CF: #_D64Bc: db G3
#_1AD9D0: #_D64Cc: db $30 ; duration
#_1AD9D1: #_D64Dc: db Gs3
#_1AD9D2: #_D64Ec: db $18 ; duration
#_1AD9D3: #_D64Fc: db G3
#_1AD9D4: #_D650c: db $0C ; duration
#_1AD9D5: #_D651c: db G3
#_1AD9D6: #_D652c: db $06 ; duration
#_1AD9D7: #_D653c: db G3
#_1AD9D8: #_D654c: db F3
#_1AD9D9: #_D655c: db $30 ; duration
#_1AD9DA: #_D656c: db G3
#_1AD9DB: #_D657c: db $18 ; duration
#_1AD9DC: #_D658c: db Fs3
#_1AD9DD: #_D659c: db $0C ; duration
#_1AD9DE: #_D65Ac: db Fs3
#_1AD9DF: #_D65Bc: db $06 ; duration
#_1AD9E0: #_D65Cc: db Fs3
#_1AD9E1: #_D65Dc: db G3
#_1AD9E2: #_D65Ec: db $0C ; duration
#_1AD9E3: #_D65Fc: db A3
#_1AD9E4: #_D660c: db $06 ; duration
#_1AD9E5: #_D661c: db A3
#_1AD9E6: #_D662c: db B3
#_1AD9E7: #_D663c: db $0C ; duration
#_1AD9E8: #_D664c: db C4
#_1AD9E9: #_D665c: db D4
#_1AD9EA: #_D666c: db $30, $77 ; duration, params
#_1AD9EC: #_D668c: db B3
#_1AD9ED: #_D669c: db B3

;---------------------------------------------------------------------------------------------------

Song22_Segment6_Track7:
#_1AD9EE: #_D66Ac: db $04 ; duration
#_1AD9EF: #_D66Bc: db R
#_1AD9F0: #_D66Cc: db $0C, $4D ; duration, params
#_1AD9F2: #_D66Ec: db C4
#_1AD9F3: #_D66Fc: db R
#_1AD9F4: #_D670c: db $2A, $6D ; duration, params
#_1AD9F6: #_D672c: db G3
#_1AD9F7: #_D673c: db $06, $4D ; duration, params
#_1AD9F9: #_D675c: db C4
#_1AD9FA: #_D676c: db $06, $5D ; duration, params
#_1AD9FC: #_D678c: db C4
#_1AD9FD: #_D679c: db $06, $4D ; duration, params
#_1AD9FF: #_D67Bc: db D4
#_1ADA00: #_D67Cc: db $06, $5D ; duration, params
#_1ADA02: #_D67Ec: db E4
#_1ADA03: #_D67Fc: db $06, $4D ; duration, params
#_1ADA05: #_D681c: db F4
#_1ADA06: #_D682c: db $30, $6D ; duration, params
#_1ADA08: #_D684c: db G4
#_1ADA09: #_D685c: db $0C ; duration
#_1ADA0A: #_D686c: db R
#_1ADA0B: #_D687c: db $0C, $2D ; duration, params
#_1ADA0D: #_D689c: db G4
#_1ADA0E: #_D68Ac: db $08, $5D ; duration, params
#_1ADA10: #_D68Cc: db G4
#_1ADA11: #_D68Dc: db Gs4
#_1ADA12: #_D68Ec: db As4
#_1ADA13: #_D68Fc: db !CALL_PART : dw Song22_Sub_DE0F : db 1
#_1ADA17: #_D693c: db !CALL_PART : dw Song22_Sub_DDED : db 1

;---------------------------------------------------------------------------------------------------

Song22_Segment0_Track0:
#_1ADA1B: #_D697c: db !SET_PERC, $19
#_1ADA1D: #_D699c: db !ECHO_CONFIG, $FF, $1E, $1E
#_1ADA21: #_D69Dc: db !ECHO_FILTER, $02, $1E, $02
#_1ADA25: #_D6A1c: db !TEMPO, $0E
#_1ADA27: #_D6A3c: db !MASTER_VOLUME, $64
#_1ADA29: #_D6A5c: db !MVOL_GRAD, $FF, $B4
#_1ADA2C: #_D6A8c: db !INSTR, $0A
#_1ADA2E: #_D6AAc: db !VOLUME, $B4
#_1ADA30: #_D6ACc: db !PAN, $0E
#_1ADA32: #_D6AEc: db !VIBRATO, $12, $40, $1C
#_1ADA36: #_D6B2c: db $60 ; duration
#_1ADA37: #_D6B3c: db R
#_1ADA38: #_D6B4c: db R
#_1ADA39: #_D6B5c: db R
#_1ADA3A: #_D6B6c: db R
#_1ADA3B: #_D6B7c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Segment0_Track1:
#_1ADA3C: #_D6B8c: db !VOLUME, $DC
#_1ADA3E: #_D6BAc: db !PAN, $04
#_1ADA40: #_D6BCc: db !INSTR, $0A
#_1ADA42: #_D6BEc: db !VIBRATO, $18, $34, $18
#_1ADA46: #_D6C2c: db $60, $7D ; duration, params
#_1ADA48: #_D6C4c: db C2
#_1ADA49: #_D6C5c: db C2
#_1ADA4A: #_D6C6c: db C2
#_1ADA4B: #_D6C7c: db C2

;---------------------------------------------------------------------------------------------------

Song22_Segment0_Track2:
#_1ADA4C: #_D6C8c: db !VOLUME, $E6
#_1ADA4E: #_D6CAc: db !PAN, $07
#_1ADA50: #_D6CCc: db !INSTR, $0A
#_1ADA52: #_D6CEc: db !VIBRATO, $1C, $34, $19
#_1ADA56: #_D6D2c: db $0C ; duration
#_1ADA57: #_D6D3c: db R
#_1ADA58: #_D6D4c: db $54, $7D ; duration, params
#_1ADA5A: #_D6D6c: db G2
#_1ADA5B: #_D6D7c: db $0C ; duration
#_1ADA5C: #_D6D8c: db R
#_1ADA5D: #_D6D9c: db $54 ; duration
#_1ADA5E: #_D6DAc: db A2
#_1ADA5F: #_D6DBc: db $0C ; duration
#_1ADA60: #_D6DCc: db R
#_1ADA61: #_D6DDc: db $54 ; duration
#_1ADA62: #_D6DEc: db G2
#_1ADA63: #_D6DFc: db $0C ; duration
#_1ADA64: #_D6E0c: db R
#_1ADA65: #_D6E1c: db $54 ; duration
#_1ADA66: #_D6E2c: db A2

;---------------------------------------------------------------------------------------------------

Song22_Segment0_Track3:
#_1ADA67: #_D6E3c: db !VOLUME, $C8
#_1ADA69: #_D6E5c: db !PAN, $0A
#_1ADA6B: #_D6E7c: db !INSTR, $0A
#_1ADA6D: #_D6E9c: db !VIBRATO, $16, $36, $16
#_1ADA71: #_D6EDc: db $18 ; duration
#_1ADA72: #_D6EEc: db R
#_1ADA73: #_D6EFc: db $48, $7D ; duration, params
#_1ADA75: #_D6F1c: db E3
#_1ADA76: #_D6F2c: db $18 ; duration
#_1ADA77: #_D6F3c: db R
#_1ADA78: #_D6F4c: db $48 ; duration
#_1ADA79: #_D6F5c: db F3
#_1ADA7A: #_D6F6c: db !CALL_PART : dw Song22_Sub_DEC4 : db 1

;---------------------------------------------------------------------------------------------------

Song22_Segment0_Track4:
#_1ADA7E: #_D6FAc: db !VOLUME, $C8
#_1ADA80: #_D6FCc: db !PAN, $0A
#_1ADA82: #_D6FEc: db !INSTR, $0A
#_1ADA84: #_D700c: db !VIBRATO, $19, $42, $1A
#_1ADA88: #_D704c: db $18 ; duration
#_1ADA89: #_D705c: db R
#_1ADA8A: #_D706c: db $48, $7D ; duration, params
#_1ADA8C: #_D708c: db G3
#_1ADA8D: #_D709c: db $18 ; duration
#_1ADA8E: #_D70Ac: db R
#_1ADA8F: #_D70Bc: db $48 ; duration
#_1ADA90: #_D70Cc: db A3
#_1ADA91: #_D70Dc: db !CALL_PART : dw Song22_Sub_DECD : db 1

;---------------------------------------------------------------------------------------------------

Song22_Segment1_Track0:
#_1ADA95: #_D711c: db $24, $7D ; duration, params
#_1ADA97: #_D713c: db D4
#_1ADA98: #_D714c: db $0C ; duration
#_1ADA99: #_D715c: db C4
#_1ADA9A: #_D716c: db $24 ; duration
#_1ADA9B: #_D717c: db G3
#_1ADA9C: #_D718c: db $0C ; duration
#_1ADA9D: #_D719c: db C4
#_1ADA9E: #_D71Ac: db !CALL_PART : dw Song22_Sub_DED6 : db 1
#_1ADAA2: #_D71Ec: db $24 ; duration
#_1ADAA3: #_D71Fc: db D4
#_1ADAA4: #_D720c: db $06 ; duration
#_1ADAA5: #_D721c: db E4
#_1ADAA6: #_D722c: db $36 ; duration
#_1ADAA7: #_D723c: db E4
#_1ADAA8: #_D724c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Segment1_Track1:
#_1ADAA9: #_D725c: db $60, $7D ; duration, params
#_1ADAAB: #_D727c: db C2
#_1ADAAC: #_D728c: db E2
#_1ADAAD: #_D729c: db F2
#_1ADAAE: #_D72Ac: db G2

;---------------------------------------------------------------------------------------------------

Song22_Segment1_Track2:
#_1ADAAF: #_D72Bc: db !CALL_PART : dw Song22_Sub_DEE5 : db 1

;---------------------------------------------------------------------------------------------------

Song22_Segment1_Track3:
#_1ADAB3: #_D72Fc: db $18 ; duration
#_1ADAB4: #_D730c: db R
#_1ADAB5: #_D731c: db $48, $7D ; duration, params
#_1ADAB7: #_D733c: db E3
#_1ADAB8: #_D734c: db !CALL_PART : dw Song22_Sub_DEC4 : db 1
#_1ADABC: #_D738c: db $18 ; duration
#_1ADABD: #_D739c: db R
#_1ADABE: #_D73Ac: db $48 ; duration
#_1ADABF: #_D73Bc: db G3

;---------------------------------------------------------------------------------------------------

Song22_Segment1_Track4:
#_1ADAC0: #_D73Cc: db !CALL_PART : dw Song22_Sub_DEF7 : db 1
#_1ADAC4: #_D740c: db $18 ; duration
#_1ADAC5: #_D741c: db R
#_1ADAC6: #_D742c: db $48 ; duration
#_1ADAC7: #_D743c: db B3

;---------------------------------------------------------------------------------------------------

Song22_Segment1_Track5:
#_1ADAC8: #_D744c: db !INSTR, $0A
#_1ADACA: #_D746c: db !VOLUME, $78
#_1ADACC: #_D748c: db !PAN, $0C
#_1ADACE: #_D74Ac: db !VIBRATO, $14, $40, $1C
#_1ADAD2: #_D74Ec: db $04 ; duration
#_1ADAD3: #_D74Fc: db R
#_1ADAD4: #_D750c: db $24, $7D ; duration, params
#_1ADAD6: #_D752c: db D4
#_1ADAD7: #_D753c: db $0C ; duration
#_1ADAD8: #_D754c: db C4
#_1ADAD9: #_D755c: db $24 ; duration
#_1ADADA: #_D756c: db G3
#_1ADADB: #_D757c: db $0C ; duration
#_1ADADC: #_D758c: db C4
#_1ADADD: #_D759c: db !CALL_PART : dw Song22_Sub_DED6 : db 1
#_1ADAE1: #_D75Dc: db $24 ; duration
#_1ADAE2: #_D75Ec: db D4
#_1ADAE3: #_D75Fc: db $06 ; duration
#_1ADAE4: #_D760c: db E4
#_1ADAE5: #_D761c: db $32 ; duration
#_1ADAE6: #_D762c: db E4

;---------------------------------------------------------------------------------------------------

Song22_Segment2_Track0:
#_1ADAE7: #_D763c: db !VOLUME, $78
#_1ADAE9: #_D765c: db !VOLUME_GRAD, $50, $B4
#_1ADAEC: #_D768c: db !CALL_PART : dw Song22_Sub_DF05 : db 1
#_1ADAF0: #_D76Cc: db !CALL_PART : dw Song22_Sub_DF21 : db 1
#_1ADAF4: #_D770c: db $24 ; duration
#_1ADAF5: #_D771c: db E5
#_1ADAF6: #_D772c: db $06 ; duration
#_1ADAF7: #_D773c: db D5
#_1ADAF8: #_D774c: db $2A ; duration
#_1ADAF9: #_D775c: db D5
#_1ADAFA: #_D776c: db $0C ; duration
#_1ADAFB: #_D777c: db B4
#_1ADAFC: #_D778c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Segment2_Track1:
#_1ADAFD: #_D779c: db $60, $7D ; duration, params
#_1ADAFF: #_D77Bc: db C2
#_1ADB00: #_D77Cc: db E2
#_1ADB01: #_D77Dc: db F2
#_1ADB02: #_D77Ec: db G2
#_1ADB03: #_D77Fc: db C2
#_1ADB04: #_D780c: db E2
#_1ADB05: #_D781c: db F2
#_1ADB06: #_D782c: db G2

;---------------------------------------------------------------------------------------------------

Song22_Segment2_Track2:
#_1ADB07: #_D783c: db !CALL_PART : dw Song22_Sub_DEE5 : db 1
#_1ADB0B: #_D787c: db $0C ; duration
#_1ADB0C: #_D788c: db R
#_1ADB0D: #_D789c: db $54 ; duration
#_1ADB0E: #_D78Ac: db G2
#_1ADB0F: #_D78Bc: db !CALL_PART : dw Song22_Sub_DF44 : db 1

;---------------------------------------------------------------------------------------------------

Song22_Segment2_Track3:
#_1ADB13: #_D78Fc: db $18 ; duration
#_1ADB14: #_D790c: db R
#_1ADB15: #_D791c: db $48, $7D ; duration, params
#_1ADB17: #_D793c: db E3
#_1ADB18: #_D794c: db !CALL_PART : dw Song22_Sub_DEC4 : db 1
#_1ADB1C: #_D798c: db $18 ; duration
#_1ADB1D: #_D799c: db R
#_1ADB1E: #_D79Ac: db $48 ; duration
#_1ADB1F: #_D79Bc: db G3
#_1ADB20: #_D79Cc: db $18 ; duration
#_1ADB21: #_D79Dc: db R
#_1ADB22: #_D79Ec: db $48 ; duration
#_1ADB23: #_D79Fc: db E3
#_1ADB24: #_D7A0c: db !CALL_PART : dw Song22_Sub_DEC4 : db 1
#_1ADB28: #_D7A4c: db $18 ; duration
#_1ADB29: #_D7A5c: db R
#_1ADB2A: #_D7A6c: db $48 ; duration
#_1ADB2B: #_D7A7c: db G3

;---------------------------------------------------------------------------------------------------

Song22_Segment2_Track4:
#_1ADB2C: #_D7A8c: db !CALL_PART : dw Song22_Sub_DEF7 : db 1
#_1ADB30: #_D7ACc: db $18 ; duration
#_1ADB31: #_D7ADc: db R
#_1ADB32: #_D7AEc: db $48 ; duration
#_1ADB33: #_D7AFc: db B3
#_1ADB34: #_D7B0c: db $18 ; duration
#_1ADB35: #_D7B1c: db R
#_1ADB36: #_D7B2c: db $48 ; duration
#_1ADB37: #_D7B3c: db G3
#_1ADB38: #_D7B4c: db $18 ; duration
#_1ADB39: #_D7B5c: db R
#_1ADB3A: #_D7B6c: db $48 ; duration
#_1ADB3B: #_D7B7c: db G3
#_1ADB3C: #_D7B8c: db $18 ; duration
#_1ADB3D: #_D7B9c: db R
#_1ADB3E: #_D7BAc: db $48, $6D ; duration, params
#_1ADB40: #_D7BCc: db A3
#_1ADB41: #_D7BDc: db $18 ; duration
#_1ADB42: #_D7BEc: db R
#_1ADB43: #_D7BFc: db $48, $7D ; duration, params
#_1ADB45: #_D7C1c: db B3

;---------------------------------------------------------------------------------------------------

Song22_Segment2_Track5:
#_1ADB46: #_D7C2c: db !VOLUME, $50
#_1ADB48: #_D7C4c: db !VOLUME_GRAD, $50, $78
#_1ADB4B: #_D7C7c: db !CALL_PART : dw Song22_Sub_DF51 : db 1
#_1ADB4F: #_D7CBc: db !CALL_PART : dw Song22_Sub_DF21 : db 1
#_1ADB53: #_D7CFc: db $24 ; duration
#_1ADB54: #_D7D0c: db E5
#_1ADB55: #_D7D1c: db $06 ; duration
#_1ADB56: #_D7D2c: db D5
#_1ADB57: #_D7D3c: db $2A ; duration
#_1ADB58: #_D7D4c: db D5
#_1ADB59: #_D7D5c: db $08 ; duration
#_1ADB5A: #_D7D6c: db B4

;---------------------------------------------------------------------------------------------------

Song22_Segment2_Track7:
#_1ADB5B: #_D7D7c: db !PAN, $08
#_1ADB5D: #_D7D9c: db !VOLUME, $50
#_1ADB5F: #_D7DBc: db !INSTR, $0A
#_1ADB61: #_D7DDc: db $18 ; duration
#_1ADB62: #_D7DEc: db R
#_1ADB63: #_D7DFc: db $48 ; duration
#_1ADB64: #_D7E0c: db R
#_1ADB65: #_D7E1c: db $60 ; duration
#_1ADB66: #_D7E2c: db R
#_1ADB67: #_D7E3c: db $48 ; duration
#_1ADB68: #_D7E4c: db R
#_1ADB69: #_D7E5c: db $18 ; duration
#_1ADB6A: #_D7E6c: db R
#_1ADB6B: #_D7E7c: db $60 ; duration
#_1ADB6C: #_D7E8c: db R
#_1ADB6D: #_D7E9c: db !VOLUME_GRAD, $3C, $8C
#_1ADB70: #_D7ECc: db $30, $7D ; duration, params
#_1ADB72: #_D7EEc: db G4
#_1ADB73: #_D7EFc: db $18 ; duration
#_1ADB74: #_D7F0c: db E4
#_1ADB75: #_D7F1c: db $08 ; duration
#_1ADB76: #_D7F2c: db C4
#_1ADB77: #_D7F3c: db B3
#_1ADB78: #_D7F4c: db A3
#_1ADB79: #_D7F5c: db $24 ; duration
#_1ADB7A: #_D7F6c: db B3
#_1ADB7B: #_D7F7c: db $06 ; duration
#_1ADB7C: #_D7F8c: db C4
#_1ADB7D: #_D7F9c: db $26 ; duration
#_1ADB7E: #_D7FAc: db B3
#_1ADB7F: #_D7FBc: db $08 ; duration
#_1ADB80: #_D7FCc: db C4
#_1ADB81: #_D7FDc: db D4
#_1ADB82: #_D7FEc: db $48 ; duration
#_1ADB83: #_D7FFc: db F4
#_1ADB84: #_D800c: db $08 ; duration
#_1ADB85: #_D801c: db C4
#_1ADB86: #_D802c: db D4
#_1ADB87: #_D803c: db E4
#_1ADB88: #_D804c: db $54 ; duration
#_1ADB89: #_D805c: db G4
#_1ADB8A: #_D806c: db $0C ; duration
#_1ADB8B: #_D807c: db F4

;---------------------------------------------------------------------------------------------------

Song22_Segment3_Track0:
#_1ADB8C: #_D808c: db !CALL_PART : dw Song22_Sub_DF6F : db 1
#_1ADB90: #_D80Cc: db !CALL_PART : dw Song22_Sub_DF9B : db 1
#_1ADB94: #_D810c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Segment3_Track1:
#_1ADB95: #_D811c: db $60, $7D ; duration, params
#_1ADB97: #_D813c: db A2
#_1ADB98: #_D814c: db E2
#_1ADB99: #_D815c: db F2
#_1ADB9A: #_D816c: db G2
#_1ADB9B: #_D817c: db A2
#_1ADB9C: #_D818c: db F2
#_1ADB9D: #_D819c: db D2
#_1ADB9E: #_D81Ac: db G2

;---------------------------------------------------------------------------------------------------

Song22_Segment3_Track2:
#_1ADB9F: #_D81Bc: db $0C ; duration
#_1ADBA0: #_D81Cc: db R
#_1ADBA1: #_D81Dc: db $54, $7D ; duration, params
#_1ADBA3: #_D81Fc: db C3
#_1ADBA4: #_D820c: db !CALL_PART : dw Song22_Sub_DF44 : db 1
#_1ADBA8: #_D824c: db $0C ; duration
#_1ADBA9: #_D825c: db R
#_1ADBAA: #_D826c: db $54 ; duration
#_1ADBAB: #_D827c: db C3
#_1ADBAC: #_D828c: db $0C ; duration
#_1ADBAD: #_D829c: db R
#_1ADBAE: #_D82Ac: db $54 ; duration
#_1ADBAF: #_D82Bc: db A2
#_1ADBB0: #_D82Cc: db !CALL_PART : dw Song22_Sub_DD3F : db 1

;---------------------------------------------------------------------------------------------------

Song22_Segment3_Track3:
#_1ADBB4: #_D830c: db $18 ; duration
#_1ADBB5: #_D831c: db R
#_1ADBB6: #_D832c: db $48, $7D ; duration, params
#_1ADBB8: #_D834c: db E3
#_1ADBB9: #_D835c: db !CALL_PART : dw Song22_Sub_DEC4 : db 1
#_1ADBBD: #_D839c: db $18 ; duration
#_1ADBBE: #_D83Ac: db R
#_1ADBBF: #_D83Bc: db $48 ; duration
#_1ADBC0: #_D83Cc: db G3
#_1ADBC1: #_D83Dc: db !CALL_PART : dw Song22_Sub_DEC4 : db 1
#_1ADBC5: #_D841c: db $18 ; duration
#_1ADBC6: #_D842c: db R
#_1ADBC7: #_D843c: db $48 ; duration
#_1ADBC8: #_D844c: db F3
#_1ADBC9: #_D845c: db $18 ; duration
#_1ADBCA: #_D846c: db R
#_1ADBCB: #_D847c: db $48 ; duration
#_1ADBCC: #_D848c: db G3


;---------------------------------------------------------------------------------------------------

Song22_Segment3_Track4:
#_1ADBCD: #_D849c: db $18 ; duration
#_1ADBCE: #_D84Ac: db R
#_1ADBCF: #_D84Bc: db $48, $7D ; duration, params
#_1ADBD1: #_D84Dc: db A3
#_1ADBD2: #_D84Ec: db $18 ; duration
#_1ADBD3: #_D84Fc: db R
#_1ADBD4: #_D850c: db $48, $6D ; duration, params
#_1ADBD6: #_D852c: db G3
#_1ADBD7: #_D853c: db $18 ; duration
#_1ADBD8: #_D854c: db R
#_1ADBD9: #_D855c: db $48, $7D ; duration, params
#_1ADBDB: #_D857c: db A3
#_1ADBDC: #_D858c: db $18 ; duration
#_1ADBDD: #_D859c: db R
#_1ADBDE: #_D85Ac: db $48 ; duration
#_1ADBDF: #_D85Bc: db B3
#_1ADBE0: #_D85Cc: db !CALL_PART : dw Song22_Sub_DFB6 : db 3
#_1ADBE4: #_D860c: db $18 ; duration
#_1ADBE5: #_D861c: db R
#_1ADBE6: #_D862c: db $48 ; duration
#_1ADBE7: #_D863c: db B3

;---------------------------------------------------------------------------------------------------

Song22_Segment3_Track5:
#_1ADBE8: #_D864c: db $04 ; duration
#_1ADBE9: #_D865c: db R
#_1ADBEA: #_D866c: db $2A, $7D ; duration, params
#_1ADBEC: #_D868c: db C5
#_1ADBED: #_D869c: db $06 ; duration
#_1ADBEE: #_D86Ac: db B4
#_1ADBEF: #_D86Bc: db $2A ; duration
#_1ADBF0: #_D86Cc: db D5
#_1ADBF1: #_D86Dc: db $06 ; duration
#_1ADBF2: #_D86Ec: db B4
#_1ADBF3: #_D86Fc: db !CALL_PART : dw Song22_Sub_DFBB : db 1
#_1ADBF7: #_D873c: db $2A ; duration
#_1ADBF8: #_D874c: db C5
#_1ADBF9: #_D875c: db $06 ; duration
#_1ADBFA: #_D876c: db A4
#_1ADBFB: #_D877c: db $2A ; duration
#_1ADBFC: #_D878c: db D5
#_1ADBFD: #_D879c: db $06 ; duration
#_1ADBFE: #_D87Ac: db C5
#_1ADBFF: #_D87Bc: db $2A ; duration
#_1ADC00: #_D87Cc: db E5
#_1ADC01: #_D87Dc: db $06 ; duration
#_1ADC02: #_D87Ec: db D5
#_1ADC03: #_D87Fc: db $18 ; duration
#_1ADC04: #_D880c: db D5
#_1ADC05: #_D881c: db $08 ; duration
#_1ADC06: #_D882c: db C5
#_1ADC07: #_D883c: db B4
#_1ADC08: #_D884c: db A4
#_1ADC09: #_D885c: db $24 ; duration
#_1ADC0A: #_D886c: db C5
#_1ADC0B: #_D887c: db $06 ; duration
#_1ADC0C: #_D888c: db B4
#_1ADC0D: #_D889c: db $32 ; duration
#_1ADC0E: #_D88Ac: db B4

;---------------------------------------------------------------------------------------------------

Song22_Segment3_Track6:
#_1ADC0F: #_D88Bc: db !INSTR, $16
#_1ADC11: #_D88Dc: db !VOLUME, $C8
#_1ADC13: #_D88Fc: db !PAN, $0A
#_1ADC15: #_D891c: db !VIBRATO, $12, $44, $16
#_1ADC19: #_D895c: db !CALL_PART : dw Song22_Sub_DF6F : db 1
#_1ADC1D: #_D899c: db !CALL_PART : dw Song22_Sub_DF9B : db 1

;---------------------------------------------------------------------------------------------------

Song22_Segment3_Track7:
#_1ADC21: #_D89Dc: db $30, $7D ; duration, params
#_1ADC23: #_D89Fc: db E4
#_1ADC24: #_D8A0c: db F4
#_1ADC25: #_D8A1c: db E4
#_1ADC26: #_D8A2c: db D4
#_1ADC27: #_D8A3c: db $48 ; duration
#_1ADC28: #_D8A4c: db C4
#_1ADC29: #_D8A5c: db $08 ; duration
#_1ADC2A: #_D8A6c: db F4
#_1ADC2B: #_D8A7c: db E4
#_1ADC2C: #_D8A8c: db D4
#_1ADC2D: #_D8A9c: db $30 ; duration
#_1ADC2E: #_D8AAc: db C4
#_1ADC2F: #_D8ABc: db B3
#_1ADC30: #_D8ACc: db !CALL_PART : dw Song22_Sub_DFDE : db 2
#_1ADC34: #_D8B0c: db $2A ; duration
#_1ADC35: #_D8B1c: db D4
#_1ADC36: #_D8B2c: db $06 ; duration
#_1ADC37: #_D8B3c: db E4
#_1ADC38: #_D8B4c: db $30 ; duration
#_1ADC39: #_D8B5c: db F4
#_1ADC3A: #_D8B6c: db G4
#_1ADC3B: #_D8B7c: db F4

;---------------------------------------------------------------------------------------------------

Song22_Segment4_Track0:
#_1ADC3C: #_D8B8c: db !CALL_PART : dw Song22_Sub_DF05 : db 1
#_1ADC40: #_D8BCc: db !CALL_PART : dw Song22_Sub_DFE7 : db 1
#_1ADC44: #_D8C0c: db $60 ; duration
#_1ADC45: #_D8C1c: db E4
#_1ADC46: #_D8C2c: db $60, $38 ; duration, params
#_1ADC48: #_D8C4c: db !TIE
#_1ADC49: #_D8C5c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Segment4_Track1:
#_1ADC4A: #_D8C6c: db $60, $7D ; duration, params
#_1ADC4C: #_D8C8c: db C2
#_1ADC4D: #_D8C9c: db E2
#_1ADC4E: #_D8CAc: db F2
#_1ADC4F: #_D8CBc: db G2
#_1ADC50: #_D8CCc: db Gs2
#_1ADC51: #_D8CDc: db As2
#_1ADC52: #_D8CEc: db C2
#_1ADC53: #_D8CFc: db C2

;---------------------------------------------------------------------------------------------------

Song22_Segment4_Track2:
#_1ADC54: #_D8D0c: db !CALL_PART : dw Song22_Sub_DEE5 : db 1
#_1ADC58: #_D8D4c: db $0C ; duration
#_1ADC59: #_D8D5c: db R
#_1ADC5A: #_D8D6c: db $54 ; duration
#_1ADC5B: #_D8D7c: db C3
#_1ADC5C: #_D8D8c: db $0C ; duration
#_1ADC5D: #_D8D9c: db R
#_1ADC5E: #_D8DAc: db $54 ; duration
#_1ADC5F: #_D8DBc: db D3
#_1ADC60: #_D8DCc: db $0C ; duration
#_1ADC61: #_D8DDc: db R
#_1ADC62: #_D8DEc: db $54 ; duration
#_1ADC63: #_D8DFc: db G2
#_1ADC64: #_D8E0c: db $0C ; duration
#_1ADC65: #_D8E1c: db R
#_1ADC66: #_D8E2c: db $54 ; duration
#_1ADC67: #_D8E3c: db G2

;---------------------------------------------------------------------------------------------------

Song22_Segment4_Track3:
#_1ADC68: #_D8E4c: db $18 ; duration
#_1ADC69: #_D8E5c: db R
#_1ADC6A: #_D8E6c: db $48, $7D ; duration, params
#_1ADC6C: #_D8E8c: db E3
#_1ADC6D: #_D8E9c: db !CALL_PART : dw Song22_Sub_DEC4 : db 1
#_1ADC71: #_D8EDc: db $18 ; duration
#_1ADC72: #_D8EEc: db R
#_1ADC73: #_D8EFc: db $48 ; duration
#_1ADC74: #_D8F0c: db G3
#_1ADC75: #_D8F1c: db $18 ; duration
#_1ADC76: #_D8F2c: db R
#_1ADC77: #_D8F3c: db $48 ; duration
#_1ADC78: #_D8F4c: db Ds3
#_1ADC79: #_D8F5c: db $18 ; duration
#_1ADC7A: #_D8F6c: db R
#_1ADC7B: #_D8F7c: db $48 ; duration
#_1ADC7C: #_D8F8c: db F3
#_1ADC7D: #_D8F9c: db $18 ; duration
#_1ADC7E: #_D8FAc: db R
#_1ADC7F: #_D8FBc: db $48 ; duration
#_1ADC80: #_D8FCc: db E3
#_1ADC81: #_D8FDc: db $18 ; duration
#_1ADC82: #_D8FEc: db R
#_1ADC83: #_D8FFc: db $48 ; duration
#_1ADC84: #_D900c: db E3

;---------------------------------------------------------------------------------------------------

Song22_Segment4_Track4:
#_1ADC85: #_D901c: db !CALL_PART : dw Song22_Sub_DEF7 : db 1
#_1ADC89: #_D905c: db $18 ; duration
#_1ADC8A: #_D906c: db R
#_1ADC8B: #_D907c: db $48 ; duration
#_1ADC8C: #_D908c: db B3
#_1ADC8D: #_D909c: db $18 ; duration
#_1ADC8E: #_D90Ac: db R
#_1ADC8F: #_D90Bc: db $48 ; duration
#_1ADC90: #_D90Cc: db Gs3
#_1ADC91: #_D90Dc: db $18 ; duration
#_1ADC92: #_D90Ec: db R
#_1ADC93: #_D90Fc: db $48 ; duration
#_1ADC94: #_D910c: db As3
#_1ADC95: #_D911c: db $18 ; duration
#_1ADC96: #_D912c: db R
#_1ADC97: #_D913c: db $48 ; duration
#_1ADC98: #_D914c: db G3
#_1ADC99: #_D915c: db $18 ; duration
#_1ADC9A: #_D916c: db R
#_1ADC9B: #_D917c: db $48 ; duration
#_1ADC9C: #_D918c: db G3

;---------------------------------------------------------------------------------------------------

Song22_Segment4_Track5:
#_1ADC9D: #_D919c: db !CALL_PART : dw Song22_Sub_DF51 : db 1
#_1ADCA1: #_D91Dc: db !CALL_PART : dw Song22_Sub_DFE7 : db 1
#_1ADCA5: #_D921c: db $60 ; duration
#_1ADCA6: #_D922c: db E4
#_1ADCA7: #_D923c: db $5C, $38 ; duration, params
#_1ADCA9: #_D925c: db !TIE

;---------------------------------------------------------------------------------------------------

Song22_Segment4_Track7:
#_1ADCAA: #_D926c: db $30, $7D ; duration, params
#_1ADCAC: #_D928c: db G4
#_1ADCAD: #_D929c: db $18 ; duration
#_1ADCAE: #_D92Ac: db E4
#_1ADCAF: #_D92Bc: db $08 ; duration
#_1ADCB0: #_D92Cc: db C4
#_1ADCB1: #_D92Dc: db B3
#_1ADCB2: #_D92Ec: db A3
#_1ADCB3: #_D92Fc: db $24 ; duration
#_1ADCB4: #_D930c: db B3
#_1ADCB5: #_D931c: db $06 ; duration
#_1ADCB6: #_D932c: db C4
#_1ADCB7: #_D933c: db $26 ; duration
#_1ADCB8: #_D934c: db B3
#_1ADCB9: #_D935c: db $08 ; duration
#_1ADCBA: #_D936c: db D4
#_1ADCBB: #_D937c: db E4
#_1ADCBC: #_D938c: db $30 ; duration
#_1ADCBD: #_D939c: db F4
#_1ADCBE: #_D93Ac: db $18 ; duration
#_1ADCBF: #_D93Bc: db A3
#_1ADCC0: #_D93Cc: db $08 ; duration
#_1ADCC1: #_D93Dc: db A3
#_1ADCC2: #_D93Ec: db A3
#_1ADCC3: #_D93Fc: db A3
#_1ADCC4: #_D940c: db $60 ; duration
#_1ADCC5: #_D941c: db B3
#_1ADCC6: #_D942c: db Ds4
#_1ADCC7: #_D943c: db D4
#_1ADCC8: #_D944c: db C4
#_1ADCC9: #_D945c: db $60, $38 ; duration, params
#_1ADCCB: #_D947c: db !TIE

;---------------------------------------------------------------------------------------------------

Song22_Segment7_Track0:
#_1ADCCC: #_D948c: db !INSTR, $0B
#_1ADCCE: #_D94Ac: db !PAN, $08
#_1ADCD0: #_D94Cc: db !VIBRATO, $1C, $38, $14
#_1ADCD4: #_D950c: db $18, $4D ; duration, params
#_1ADCD6: #_D952c: db C5
#_1ADCD7: #_D953c: db $2A, $6D ; duration, params
#_1ADCD9: #_D955c: db G4
#_1ADCDA: #_D956c: db $06, $4D ; duration, params
#_1ADCDC: #_D958c: db C5
#_1ADCDD: #_D959c: db $06, $5D ; duration, params
#_1ADCDF: #_D95Bc: db C5
#_1ADCE0: #_D95Cc: db $06, $4D ; duration, params
#_1ADCE2: #_D95Ec: db D5
#_1ADCE3: #_D95Fc: db $06, $5D ; duration, params
#_1ADCE5: #_D961c: db E5
#_1ADCE6: #_D962c: db $06, $4D ; duration, params
#_1ADCE8: #_D964c: db F5
#_1ADCE9: #_D965c: db $30, $6D ; duration, params
#_1ADCEB: #_D967c: db G5
#_1ADCEC: #_D968c: db $0C ; duration
#_1ADCED: #_D969c: db R
#_1ADCEE: #_D96Ac: db $0C, $2D ; duration, params
#_1ADCF0: #_D96Cc: db G5
#_1ADCF1: #_D96Dc: db $08, $7D ; duration, params
#_1ADCF3: #_D96Fc: db G5
#_1ADCF4: #_D970c: db $08, $5D ; duration, params
#_1ADCF6: #_D972c: db Gs5
#_1ADCF7: #_D973c: db As5
#_1ADCF8: #_D974c: db $30, $6D ; duration, params
#_1ADCFA: #_D976c: db C6
#_1ADCFB: #_D977c: db $10 ; duration
#_1ADCFC: #_D978c: db R
#_1ADCFD: #_D979c: db $08, $2D ; duration, params
#_1ADCFF: #_D97Bc: db C6
#_1ADD00: #_D97Cc: db $08, $5D ; duration, params
#_1ADD02: #_D97Ec: db C6
#_1ADD03: #_D97Fc: db $08, $6D ; duration, params
#_1ADD05: #_D981c: db As5
#_1ADD06: #_D982c: db $08, $4D ; duration, params
#_1ADD08: #_D984c: db Gs5
#_1ADD09: #_D985c: db As5
#_1ADD0A: #_D986c: db R
#_1ADD0B: #_D987c: db Gs5
#_1ADD0C: #_D988c: db $30, $6D ; duration, params
#_1ADD0E: #_D98Ac: db G5
#_1ADD0F: #_D98Bc: db $18, $4D ; duration, params
#_1ADD11: #_D98Dc: db G5
#_1ADD12: #_D98Ec: db $0C, $2D ; duration, params
#_1ADD14: #_D990c: db F5
#_1ADD15: #_D991c: db $06, $5D ; duration, params
#_1ADD17: #_D993c: db F5
#_1ADD18: #_D994c: db $06, $2D ; duration, params
#_1ADD1A: #_D996c: db G5
#_1ADD1B: #_D997c: db $30, $4D ; duration, params
#_1ADD1D: #_D999c: db Gs5
#_1ADD1E: #_D99Ac: db $0C, $6D ; duration, params
#_1ADD20: #_D99Cc: db G5
#_1ADD21: #_D99Dc: db $0C, $4D ; duration, params
#_1ADD23: #_D99Fc: db F5
#_1ADD24: #_D9A0c: db $0C, $2D ; duration, params
#_1ADD26: #_D9A2c: db Ds5
#_1ADD27: #_D9A3c: db $06, $5D ; duration, params
#_1ADD29: #_D9A5c: db Ds5
#_1ADD2A: #_D9A6c: db $06, $2D ; duration, params
#_1ADD2C: #_D9A8c: db F5
#_1ADD2D: #_D9A9c: db $30, $4D ; duration, params
#_1ADD2F: #_D9ABc: db G5
#_1ADD30: #_D9ACc: db $0C, $6D ; duration, params
#_1ADD32: #_D9AEc: db F5
#_1ADD33: #_D9AFc: db $0C, $4D ; duration, params
#_1ADD35: #_D9B1c: db Ds5
#_1ADD36: #_D9B2c: db $0C, $2D ; duration, params
#_1ADD38: #_D9B4c: db D5
#_1ADD39: #_D9B5c: db $06 ; duration
#_1ADD3A: #_D9B6c: db D5
#_1ADD3B: #_D9B7c: db E5
#_1ADD3C: #_D9B8c: db $30, $6D ; duration, params
#_1ADD3E: #_D9BAc: db Fs5
#_1ADD3F: #_D9BBc: db $18 ; duration
#_1ADD40: #_D9BCc: db A5
#_1ADD41: #_D9BDc: db $0C ; duration
#_1ADD42: #_D9BEc: db G5
#_1ADD43: #_D9BFc: db $06, $3D ; duration, params
#_1ADD45: #_D9C1c: db G4
#_1ADD46: #_D9C2c: db G4
#_1ADD47: #_D9C3c: db $0C, $4E ; duration, params
#_1ADD49: #_D9C5c: db G4
#_1ADD4A: #_D9C6c: db $06, $3E ; duration, params
#_1ADD4C: #_D9C8c: db G4
#_1ADD4D: #_D9C9c: db G4
#_1ADD4E: #_D9CAc: db $0C, $4E ; duration, params
#_1ADD50: #_D9CCc: db G4
#_1ADD51: #_D9CDc: db $06, $3F ; duration, params
#_1ADD53: #_D9CFc: db G4
#_1ADD54: #_D9D0c: db G4
#_1ADD55: #_D9D1c: db $0C, $4F ; duration, params
#_1ADD57: #_D9D3c: db G4
#_1ADD58: #_D9D4c: db G4
#_1ADD59: #_D9D5c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Segment7_Track1:
#_1ADD5A: #_D9D6c: db $30, $7D ; duration, params
#_1ADD5C: #_D9D8c: db C2
#_1ADD5D: #_D9D9c: db C2
#_1ADD5E: #_D9DAc: db As2
#_1ADD5F: #_D9DBc: db As2
#_1ADD60: #_D9DCc: db Gs2
#_1ADD61: #_D9DDc: db Gs2
#_1ADD62: #_D9DEc: db Ds2
#_1ADD63: #_D9DFc: db Ds2
#_1ADD64: #_D9E0c: db $30, $79 ; duration, params
#_1ADD66: #_D9E2c: db Cs2
#_1ADD67: #_D9E3c: db Cs2
#_1ADD68: #_D9E4c: db C2
#_1ADD69: #_D9E5c: db C2
#_1ADD6A: #_D9E6c: db $30, $7D ; duration, params
#_1ADD6C: #_D9E8c: db D2
#_1ADD6D: #_D9E9c: db D2
#_1ADD6E: #_D9EAc: db G2
#_1ADD6F: #_D9EBc: db B2

;---------------------------------------------------------------------------------------------------

Song22_Segment7_Track2:
#_1ADD70: #_D9ECc: db !VOLUME, $C8
#_1ADD72: #_D9EEc: db !INSTR, $11
#_1ADD74: #_D9F0c: db !PAN, $0A
#_1ADD76: #_D9F2c: db !VIBRATO, $08, $1E, $1E
#_1ADD7A: #_D9F6c: db $0C, $59 ; duration, params
#_1ADD7C: #_D9F8c: db C3
#_1ADD7D: #_D9F9c: db $06, $49 ; duration, params
#_1ADD7F: #_D9FBc: db C3
#_1ADD80: #_D9FCc: db C3
#_1ADD81: #_D9FDc: db $0C ; duration
#_1ADD82: #_D9FEc: db C3
#_1ADD83: #_D9FFc: db $06 ; duration
#_1ADD84: #_DA00c: db C3
#_1ADD85: #_DA01c: db C3
#_1ADD86: #_DA02c: db $0C ; duration
#_1ADD87: #_DA03c: db C3
#_1ADD88: #_DA04c: db $06 ; duration
#_1ADD89: #_DA05c: db C3
#_1ADD8A: #_DA06c: db C3
#_1ADD8B: #_DA07c: db $0C ; duration
#_1ADD8C: #_DA08c: db C3
#_1ADD8D: #_DA09c: db $06 ; duration
#_1ADD8E: #_DA0Ac: db C3
#_1ADD8F: #_DA0Bc: db C3
#_1ADD90: #_DA0Cc: db $0C, $59 ; duration, params
#_1ADD92: #_DA0Ec: db As2
#_1ADD93: #_DA0Fc: db $06, $49 ; duration, params
#_1ADD95: #_DA11c: db As2
#_1ADD96: #_DA12c: db As2
#_1ADD97: #_DA13c: db $0C ; duration
#_1ADD98: #_DA14c: db As2
#_1ADD99: #_DA15c: db $06 ; duration
#_1ADD9A: #_DA16c: db As2
#_1ADD9B: #_DA17c: db As2
#_1ADD9C: #_DA18c: db $0C ; duration
#_1ADD9D: #_DA19c: db As2
#_1ADD9E: #_DA1Ac: db $06 ; duration
#_1ADD9F: #_DA1Bc: db As2
#_1ADDA0: #_DA1Cc: db As2
#_1ADDA1: #_DA1Dc: db $0C ; duration
#_1ADDA2: #_DA1Ec: db As2
#_1ADDA3: #_DA1Fc: db $06 ; duration
#_1ADDA4: #_DA20c: db As2
#_1ADDA5: #_DA21c: db As2
#_1ADDA6: #_DA22c: db $0C, $5D ; duration, params
#_1ADDA8: #_DA24c: db Gs2
#_1ADDA9: #_DA25c: db $06 ; duration
#_1ADDAA: #_DA26c: db Gs2
#_1ADDAB: #_DA27c: db $06, $4D ; duration, params
#_1ADDAD: #_DA29c: db Gs2
#_1ADDAE: #_DA2Ac: db $0C ; duration
#_1ADDAF: #_DA2Bc: db Gs2
#_1ADDB0: #_DA2Cc: db $06 ; duration
#_1ADDB1: #_DA2Dc: db Gs2
#_1ADDB2: #_DA2Ec: db Gs2
#_1ADDB3: #_DA2Fc: db $0C ; duration
#_1ADDB4: #_DA30c: db Gs2
#_1ADDB5: #_DA31c: db $06 ; duration
#_1ADDB6: #_DA32c: db Gs2
#_1ADDB7: #_DA33c: db Gs2
#_1ADDB8: #_DA34c: db $0C ; duration
#_1ADDB9: #_DA35c: db Gs2
#_1ADDBA: #_DA36c: db $06 ; duration
#_1ADDBB: #_DA37c: db Gs2
#_1ADDBC: #_DA38c: db Gs2
#_1ADDBD: #_DA39c: db $0C, $5D ; duration, params
#_1ADDBF: #_DA3Bc: db Ds2
#_1ADDC0: #_DA3Cc: db $06 ; duration
#_1ADDC1: #_DA3Dc: db Ds2
#_1ADDC2: #_DA3Ec: db Ds2
#_1ADDC3: #_DA3Fc: db $0C ; duration
#_1ADDC4: #_DA40c: db Ds2
#_1ADDC5: #_DA41c: db $06 ; duration
#_1ADDC6: #_DA42c: db Ds2
#_1ADDC7: #_DA43c: db Ds2
#_1ADDC8: #_DA44c: db $0C ; duration
#_1ADDC9: #_DA45c: db Ds2
#_1ADDCA: #_DA46c: db $06 ; duration
#_1ADDCB: #_DA47c: db Ds2
#_1ADDCC: #_DA48c: db Ds2
#_1ADDCD: #_DA49c: db $0C, $4D ; duration, params
#_1ADDCF: #_DA4Bc: db Ds2
#_1ADDD0: #_DA4Cc: db $06 ; duration
#_1ADDD1: #_DA4Dc: db Ds2
#_1ADDD2: #_DA4Ec: db Ds2
#_1ADDD3: #_DA4Fc: db !CALL_PART : dw Song22_Sub_DD6D : db 1

;---------------------------------------------------------------------------------------------------

Song22_Segment7_Track3:
#_1ADDD7: #_DA53c: db !CALL_PART : dw Song22_Sub_E003 : db 8

;---------------------------------------------------------------------------------------------------

Song22_Segment7_Track4:
#_1ADDDB: #_DA57c: db !VOLUME, $E6
#_1ADDDD: #_DA59c: db !PAN, $07
#_1ADDDF: #_DA5Bc: db !INSTR, $0A
#_1ADDE1: #_DA5Dc: db !VIBRATO, $1C, $3B, $19
#_1ADDE5: #_DA61c: db $0C ; duration
#_1ADDE6: #_DA62c: db R
#_1ADDE7: #_DA63c: db $0C, $7D ; duration, params
#_1ADDE9: #_DA65c: db G2
#_1ADDEA: #_DA66c: db $48 ; duration
#_1ADDEB: #_DA67c: db E3
#_1ADDEC: #_DA68c: db $0C ; duration
#_1ADDED: #_DA69c: db R
#_1ADDEE: #_DA6Ac: db F3
#_1ADDEF: #_DA6Bc: db $48 ; duration
#_1ADDF0: #_DA6Cc: db D4
#_1ADDF1: #_DA6Dc: db $0C ; duration
#_1ADDF2: #_DA6Ec: db R
#_1ADDF3: #_DA6Fc: db Ds3
#_1ADDF4: #_DA70c: db $48 ; duration
#_1ADDF5: #_DA71c: db C4
#_1ADDF6: #_DA72c: db $0C ; duration
#_1ADDF7: #_DA73c: db R
#_1ADDF8: #_DA74c: db As2
#_1ADDF9: #_DA75c: db $48 ; duration
#_1ADDFA: #_DA76c: db G3
#_1ADDFB: #_DA77c: db $0C ; duration
#_1ADDFC: #_DA78c: db R
#_1ADDFD: #_DA79c: db Gs2
#_1ADDFE: #_DA7Ac: db $48 ; duration
#_1ADDFF: #_DA7Bc: db F3
#_1ADE00: #_DA7Cc: db $0C ; duration
#_1ADE01: #_DA7Dc: db R
#_1ADE02: #_DA7Ec: db G2
#_1ADE03: #_DA7Fc: db $48 ; duration
#_1ADE04: #_DA80c: db Ds3
#_1ADE05: #_DA81c: db $0C ; duration
#_1ADE06: #_DA82c: db R
#_1ADE07: #_DA83c: db A2
#_1ADE08: #_DA84c: db $48 ; duration
#_1ADE09: #_DA85c: db Fs3
#_1ADE0A: #_DA86c: db $0C ; duration
#_1ADE0B: #_DA87c: db R
#_1ADE0C: #_DA88c: db B2
#_1ADE0D: #_DA89c: db $48 ; duration
#_1ADE0E: #_DA8Ac: db G3

;---------------------------------------------------------------------------------------------------

Song22_Segment7_Track5:
#_1ADE0F: #_DA8Bc: db !VOLUME, $C8
#_1ADE11: #_DA8Dc: db !PAN, $0A
#_1ADE13: #_DA8Fc: db !INSTR, $12
#_1ADE15: #_DA91c: db !VIBRATO, $13, $3C, $18
#_1ADE19: #_DA95c: db $0C, $4D ; duration, params
#_1ADE1B: #_DA97c: db E3
#_1ADE1C: #_DA98c: db !TIE
#_1ADE1D: #_DA99c: db $2A, $6D ; duration, params
#_1ADE1F: #_DA9Bc: db C3
#_1ADE20: #_DA9Cc: db $06, $4D ; duration, params
#_1ADE22: #_DA9Ec: db E3
#_1ADE23: #_DA9Fc: db $06, $5D ; duration, params
#_1ADE25: #_DAA1c: db E3
#_1ADE26: #_DAA2c: db $06, $4D ; duration, params
#_1ADE28: #_DAA4c: db F3
#_1ADE29: #_DAA5c: db $06, $5D ; duration, params
#_1ADE2B: #_DAA7c: db G3
#_1ADE2C: #_DAA8c: db $06, $4D ; duration, params
#_1ADE2E: #_DAAAc: db A3
#_1ADE2F: #_DAABc: db $30, $6D ; duration, params
#_1ADE31: #_DAADc: db As3
#_1ADE32: #_DAAEc: db $0C ; duration
#_1ADE33: #_DAAFc: db !TIE
#_1ADE34: #_DAB0c: db $0C, $2D ; duration, params
#_1ADE36: #_DAB2c: db As3
#_1ADE37: #_DAB3c: db $08, $5D ; duration, params
#_1ADE39: #_DAB5c: db As3
#_1ADE3A: #_DAB6c: db C4
#_1ADE3B: #_DAB7c: db D4
#_1ADE3C: #_DAB8c: db $30, $6D ; duration, params
#_1ADE3E: #_DABAc: db Ds4
#_1ADE3F: #_DABBc: db $10 ; duration
#_1ADE40: #_DABCc: db !TIE
#_1ADE41: #_DABDc: db $08 ; duration
#_1ADE42: #_DABEc: db Ds4
#_1ADE43: #_DABFc: db $08, $5D ; duration, params
#_1ADE45: #_DAC1c: db Ds4
#_1ADE46: #_DAC2c: db $08, $6D ; duration, params
#_1ADE48: #_DAC4c: db D4
#_1ADE49: #_DAC5c: db $08, $4D ; duration, params
#_1ADE4B: #_DAC7c: db C4
#_1ADE4C: #_DAC8c: db D4
#_1ADE4D: #_DAC9c: db !TIE
#_1ADE4E: #_DACAc: db C4
#_1ADE4F: #_DACBc: db $30, $6D ; duration, params
#_1ADE51: #_DACDc: db As3
#_1ADE52: #_DACEc: db $18, $4D ; duration, params
#_1ADE54: #_DAD0c: db As3
#_1ADE55: #_DAD1c: db !CALL_PART : dw Song22_Sub_DD48 : db 1
#_1ADE59: #_DAD5c: db !CALL_PART : dw Song22_Sub_DE7E : db 1

;---------------------------------------------------------------------------------------------------

Song22_Segment7_Track6:
#_1ADE5D: #_DAD9c: db !VOLUME, $B4
#_1ADE5F: #_DADBc: db !PAN, $06
#_1ADE61: #_DADDc: db !INSTR, $16
#_1ADE63: #_DADFc: db !VIBRATO, $12, $3C, $14
#_1ADE67: #_DAE3c: db !CALL_PART : dw Song22_Sub_DE9F : db 1
#_1ADE6B: #_DAE7c: db G3
#_1ADE6C: #_DAE8c: db $08 ; duration
#_1ADE6D: #_DAE9c: db !TIE
#_1ADE6E: #_DAEAc: db G3
#_1ADE6F: #_DAEBc: db F3
#_1ADE70: #_DAECc: db $30 ; duration
#_1ADE71: #_DAEDc: db G3
#_1ADE72: #_DAEEc: db $18, $79 ; duration, params
#_1ADE74: #_DAF0c: db Gs3
#_1ADE75: #_DAF1c: db $0C ; duration
#_1ADE76: #_DAF2c: db Gs3
#_1ADE77: #_DAF3c: db $06 ; duration
#_1ADE78: #_DAF4c: db Gs3
#_1ADE79: #_DAF5c: db As3
#_1ADE7A: #_DAF6c: db $30 ; duration
#_1ADE7B: #_DAF7c: db C4
#_1ADE7C: #_DAF8c: db $18 ; duration
#_1ADE7D: #_DAF9c: db G3
#_1ADE7E: #_DAFAc: db $0C ; duration
#_1ADE7F: #_DAFBc: db G3
#_1ADE80: #_DAFCc: db $06 ; duration
#_1ADE81: #_DAFDc: db G3
#_1ADE82: #_DAFEc: db Gs3
#_1ADE83: #_DAFFc: db $30 ; duration
#_1ADE84: #_DB00c: db As3
#_1ADE85: #_DB01c: db $18, $7B ; duration, params
#_1ADE87: #_DB03c: db Fs3
#_1ADE88: #_DB04c: db $0C ; duration
#_1ADE89: #_DB05c: db Fs3
#_1ADE8A: #_DB06c: db $06 ; duration
#_1ADE8B: #_DB07c: db Fs3
#_1ADE8C: #_DB08c: db G3
#_1ADE8D: #_DB09c: db $0C ; duration
#_1ADE8E: #_DB0Ac: db A3
#_1ADE8F: #_DB0Bc: db $06 ; duration
#_1ADE90: #_DB0Cc: db A3
#_1ADE91: #_DB0Dc: db B3
#_1ADE92: #_DB0Ec: db $0C ; duration
#_1ADE93: #_DB0Fc: db C4
#_1ADE94: #_DB10c: db D4
#_1ADE95: #_DB11c: db $30, $77 ; duration, params
#_1ADE97: #_DB13c: db B3
#_1ADE98: #_DB14c: db B3

;---------------------------------------------------------------------------------------------------

Song22_Segment7_Track7:
#_1ADE99: #_DB15c: db !VOLUME, $C8
#_1ADE9B: #_DB17c: db !PAN, $0C
#_1ADE9D: #_DB19c: db !INSTR, $0A
#_1ADE9F: #_DB1Bc: db !VIBRATO, $11, $3A, $19
#_1ADEA3: #_DB1Fc: db $0C, $4D ; duration, params
#_1ADEA5: #_DB21c: db C4
#_1ADEA6: #_DB22c: db !TIE
#_1ADEA7: #_DB23c: db $2A, $6D ; duration, params
#_1ADEA9: #_DB25c: db G3
#_1ADEAA: #_DB26c: db $06, $4D ; duration, params
#_1ADEAC: #_DB28c: db C4
#_1ADEAD: #_DB29c: db $06, $5D ; duration, params
#_1ADEAF: #_DB2Bc: db C4
#_1ADEB0: #_DB2Cc: db $06, $4D ; duration, params
#_1ADEB2: #_DB2Ec: db D4
#_1ADEB3: #_DB2Fc: db $06, $5D ; duration, params
#_1ADEB5: #_DB31c: db E4
#_1ADEB6: #_DB32c: db $06, $4D ; duration, params
#_1ADEB8: #_DB34c: db F4
#_1ADEB9: #_DB35c: db !CALL_PART : dw Song22_Sub_DDC5 : db 1
#_1ADEBD: #_DB39c: db $0C, $2D ; duration, params
#_1ADEBF: #_DB3Bc: db F4
#_1ADEC0: #_DB3Cc: db $06, $5D ; duration, params
#_1ADEC2: #_DB3Ec: db F4
#_1ADEC3: #_DB3Fc: db $06, $2D ; duration, params
#_1ADEC5: #_DB41c: db G4
#_1ADEC6: #_DB42c: db $30, $4D ; duration, params
#_1ADEC8: #_DB44c: db Gs4
#_1ADEC9: #_DB45c: db $0C, $6D ; duration, params
#_1ADECB: #_DB47c: db G4
#_1ADECC: #_DB48c: db $0C, $4D ; duration, params
#_1ADECE: #_DB4Ac: db F4
#_1ADECF: #_DB4Bc: db $0C, $2D ; duration, params
#_1ADED1: #_DB4Dc: db Ds4
#_1ADED2: #_DB4Ec: db $06, $5D ; duration, params
#_1ADED4: #_DB50c: db Ds4
#_1ADED5: #_DB51c: db $06, $2D ; duration, params
#_1ADED7: #_DB53c: db F4
#_1ADED8: #_DB54c: db $30, $4D ; duration, params
#_1ADEDA: #_DB56c: db G4
#_1ADEDB: #_DB57c: db $0C, $6D ; duration, params
#_1ADEDD: #_DB59c: db F4
#_1ADEDE: #_DB5Ac: db $0C, $4D ; duration, params
#_1ADEE0: #_DB5Cc: db Ds4
#_1ADEE1: #_DB5Dc: db $0C, $2D ; duration, params
#_1ADEE3: #_DB5Fc: db D4
#_1ADEE4: #_DB60c: db $06 ; duration
#_1ADEE5: #_DB61c: db D4
#_1ADEE6: #_DB62c: db E4
#_1ADEE7: #_DB63c: db $30, $6D ; duration, params
#_1ADEE9: #_DB65c: db Fs4
#_1ADEEA: #_DB66c: db $18 ; duration
#_1ADEEB: #_DB67c: db A4
#_1ADEEC: #_DB68c: db $0C ; duration
#_1ADEED: #_DB69c: db G4
#_1ADEEE: #_DB6Ac: db $06, $4D ; duration, params
#_1ADEF0: #_DB6Cc: db G3
#_1ADEF1: #_DB6Dc: db G3
#_1ADEF2: #_DB6Ec: db $0C, $4E ; duration, params
#_1ADEF4: #_DB70c: db G3
#_1ADEF5: #_DB71c: db $06 ; duration
#_1ADEF6: #_DB72c: db G3
#_1ADEF7: #_DB73c: db G3
#_1ADEF8: #_DB74c: db $0C ; duration
#_1ADEF9: #_DB75c: db G3
#_1ADEFA: #_DB76c: db $06, $4F ; duration, params
#_1ADEFC: #_DB78c: db G3
#_1ADEFD: #_DB79c: db G3
#_1ADEFE: #_DB7Ac: db $0C ; duration
#_1ADEFF: #_DB7Bc: db G3
#_1ADF00: #_DB7Cc: db G3

;---------------------------------------------------------------------------------------------------

Song22_Segment8_Track0:
#_1ADF01: #_DB7Dc: db !INSTR, $0B
#_1ADF03: #_DB7Fc: db !PAN, $08
#_1ADF05: #_DB81c: db !VIBRATO, $1C, $44, $14
#_1ADF09: #_DB85c: db !CALL_PART : dw Song22_Sub_E019 : db 1
#_1ADF0D: #_DB89c: db $60, $6D ; duration, params
#_1ADF0F: #_DB8Bc: db G5
#_1ADF10: #_DB8Cc: db $18, $7D ; duration, params
#_1ADF12: #_DB8Ec: db C5
#_1ADF13: #_DB8Fc: db G4
#_1ADF14: #_DB90c: db C5
#_1ADF15: #_DB91c: db G4
#_1ADF16: #_DB92c: db !MVOL_GRAD, $0C, $A0
#_1ADF19: #_DB95c: db $0C, $6D ; duration, params
#_1ADF1B: #_DB97c: db C5
#_1ADF1C: #_DB98c: db !MVOL_GRAD, $54, $F0
#_1ADF1F: #_DB9Bc: db $54 ; duration
#_1ADF20: #_DB9Cc: db !TIE
#_1ADF21: #_DB9Dc: db !MVOL_GRAD, $18, $78
#_1ADF24: #_DBA0c: db $18 ; duration
#_1ADF25: #_DBA1c: db !TIE
#_1ADF26: #_DBA2c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Segment8_Track1:
#_1ADF27: #_DBA3c: db !VOLUME, $FF
#_1ADF29: #_DBA5c: db !INSTR, $11
#_1ADF2B: #_DBA7c: db !PAN, $0A
#_1ADF2D: #_DBA9c: db !VIBRATO, $08, $1E, $1E
#_1ADF31: #_DBADc: db $18, $5D ; duration, params
#_1ADF33: #_DBAFc: db C3
#_1ADF34: #_DBB0c: db $08, $3B ; duration, params
#_1ADF36: #_DBB2c: db C3
#_1ADF37: #_DBB3c: db C3
#_1ADF38: #_DBB4c: db C3
#_1ADF39: #_DBB5c: db $18, $5D ; duration, params
#_1ADF3B: #_DBB7c: db C3
#_1ADF3C: #_DBB8c: db $08, $3B ; duration, params
#_1ADF3E: #_DBBAc: db C3
#_1ADF3F: #_DBBBc: db C3
#_1ADF40: #_DBBCc: db C3
#_1ADF41: #_DBBDc: db $18, $5D ; duration, params
#_1ADF43: #_DBBFc: db As2
#_1ADF44: #_DBC0c: db $08, $3B ; duration, params
#_1ADF46: #_DBC2c: db As2
#_1ADF47: #_DBC3c: db As2
#_1ADF48: #_DBC4c: db As2
#_1ADF49: #_DBC5c: db $18, $5D ; duration, params
#_1ADF4B: #_DBC7c: db As2
#_1ADF4C: #_DBC8c: db $08, $3B ; duration, params
#_1ADF4E: #_DBCAc: db As2
#_1ADF4F: #_DBCBc: db As2
#_1ADF50: #_DBCCc: db As2
#_1ADF51: #_DBCDc: db $18, $5D ; duration, params
#_1ADF53: #_DBCFc: db Gs2
#_1ADF54: #_DBD0c: db $08, $3B ; duration, params
#_1ADF56: #_DBD2c: db Gs2
#_1ADF57: #_DBD3c: db Gs2
#_1ADF58: #_DBD4c: db Gs2
#_1ADF59: #_DBD5c: db $18, $5D ; duration, params
#_1ADF5B: #_DBD7c: db Gs2
#_1ADF5C: #_DBD8c: db $08, $3B ; duration, params
#_1ADF5E: #_DBDAc: db Gs2
#_1ADF5F: #_DBDBc: db Gs2
#_1ADF60: #_DBDCc: db Gs2
#_1ADF61: #_DBDDc: db $18, $5B ; duration, params
#_1ADF63: #_DBDFc: db Fs2
#_1ADF64: #_DBE0c: db $08 ; duration
#_1ADF65: #_DBE1c: db Fs2
#_1ADF66: #_DBE2c: db $08, $5D ; duration, params
#_1ADF68: #_DBE4c: db Fs2
#_1ADF69: #_DBE5c: db $08, $5F ; duration, params
#_1ADF6B: #_DBE7c: db Fs2
#_1ADF6C: #_DBE8c: db $18 ; duration
#_1ADF6D: #_DBE9c: db Fs2
#_1ADF6E: #_DBEAc: db $08 ; duration
#_1ADF6F: #_DBEBc: db Fs2
#_1ADF70: #_DBECc: db Fs2
#_1ADF71: #_DBEDc: db Fs2
#_1ADF72: #_DBEEc: db $18 ; duration
#_1ADF73: #_DBEFc: db E2
#_1ADF74: #_DBF0c: db $08 ; duration
#_1ADF75: #_DBF1c: db E2
#_1ADF76: #_DBF2c: db E2
#_1ADF77: #_DBF3c: db E2
#_1ADF78: #_DBF4c: db $18 ; duration
#_1ADF79: #_DBF5c: db Cs2
#_1ADF7A: #_DBF6c: db $08 ; duration
#_1ADF7B: #_DBF7c: db Cs2
#_1ADF7C: #_DBF8c: db Cs2
#_1ADF7D: #_DBF9c: db Cs2
#_1ADF7E: #_DBFAc: db $60 ; duration
#_1ADF7F: #_DBFBc: db C2
#_1ADF80: #_DBFCc: db $18 ; duration
#_1ADF81: #_DBFDc: db !TIE

;---------------------------------------------------------------------------------------------------

Song22_Segment8_Track2:
#_1ADF82: #_DBFEc: db !INSTR, $09
#_1ADF84: #_DC00c: db !PAN, $0E
#_1ADF86: #_DC02c: db !VIBRATO, $1C, $40, $14
#_1ADF8A: #_DC06c: db !VOLUME, $C8
#_1ADF8C: #_DC08c: db $60 ; duration
#_1ADF8D: #_DC09c: db R
#_1ADF8E: #_DC0Ac: db !CALL_PART : dw Song22_Sub_E019 : db 1
#_1ADF92: #_DC0Ec: db $30, $6D ; duration, params
#_1ADF94: #_DC10c: db G5
#_1ADF95: #_DC11c: db Cs4
#_1ADF96: #_DC12c: db $60 ; duration
#_1ADF97: #_DC13c: db E4
#_1ADF98: #_DC14c: db $18 ; duration
#_1ADF99: #_DC15c: db !TIE

;---------------------------------------------------------------------------------------------------

Song22_Segment8_Track3:
#_1ADF9A: #_DC16c: db !CALL_PART : dw Song22_Sub_E003 : db 4
#_1ADF9E: #_DC1Ac: db $60 ; duration
#_1ADF9F: #_DC1Bc: db R
#_1ADFA0: #_DC1Cc: db R
#_1ADFA1: #_DC1Dc: db $18 ; duration
#_1ADFA2: #_DC1Ec: db R

;---------------------------------------------------------------------------------------------------

Song22_Segment8_Track4:
#_1ADFA3: #_DC1Fc: db !VOLUME, $C8
#_1ADFA5: #_DC21c: db !PAN, $0A
#_1ADFA7: #_DC23c: db !INSTR, $0B
#_1ADFA9: #_DC25c: db !VIBRATO, $13, $38, $1A
#_1ADFAD: #_DC29c: db $0C, $4D ; duration, params
#_1ADFAF: #_DC2Bc: db E4
#_1ADFB0: #_DC2Cc: db !TIE
#_1ADFB1: #_DC2Dc: db $2A, $6D ; duration, params
#_1ADFB3: #_DC2Fc: db C4
#_1ADFB4: #_DC30c: db $06, $4D ; duration, params
#_1ADFB6: #_DC32c: db E4
#_1ADFB7: #_DC33c: db $06, $5D ; duration, params
#_1ADFB9: #_DC35c: db E4
#_1ADFBA: #_DC36c: db $06, $4D ; duration, params
#_1ADFBC: #_DC38c: db F4
#_1ADFBD: #_DC39c: db $06, $5D ; duration, params
#_1ADFBF: #_DC3Bc: db G4
#_1ADFC0: #_DC3Cc: db $06, $4D ; duration, params
#_1ADFC2: #_DC3Ec: db A4
#_1ADFC3: #_DC3Fc: db $60, $6D ; duration, params
#_1ADFC5: #_DC41c: db As4
#_1ADFC6: #_DC42c: db $0C, $4D ; duration, params
#_1ADFC8: #_DC44c: db Ds4
#_1ADFC9: #_DC45c: db !TIE
#_1ADFCA: #_DC46c: db $2A, $6D ; duration, params
#_1ADFCC: #_DC48c: db C4
#_1ADFCD: #_DC49c: db $06, $4D ; duration, params
#_1ADFCF: #_DC4Bc: db Ds4
#_1ADFD0: #_DC4Cc: db $06, $5D ; duration, params
#_1ADFD2: #_DC4Ec: db Ds4
#_1ADFD3: #_DC4Fc: db $06, $4D ; duration, params
#_1ADFD5: #_DC51c: db F4
#_1ADFD6: #_DC52c: db $06, $5D ; duration, params
#_1ADFD8: #_DC54c: db G4
#_1ADFD9: #_DC55c: db $06, $4D ; duration, params
#_1ADFDB: #_DC57c: db Gs4
#_1ADFDC: #_DC58c: db $60, $6D ; duration, params
#_1ADFDE: #_DC5Ac: db C5
#_1ADFDF: #_DC5Bc: db $30, $7D ; duration, params
#_1ADFE1: #_DC5Dc: db E5
#_1ADFE2: #_DC5Ec: db F5
#_1ADFE3: #_DC5Fc: db $60, $6D ; duration, params
#_1ADFE5: #_DC61c: db E5
#_1ADFE6: #_DC62c: db $18 ; duration
#_1ADFE7: #_DC63c: db !TIE

;---------------------------------------------------------------------------------------------------

Song22_Segment8_Track5:
#_1ADFE8: #_DC64c: db !VOLUME, $B4
#_1ADFEA: #_DC66c: db !PAN, $0C
#_1ADFEC: #_DC68c: db !INSTR, $09
#_1ADFEE: #_DC6Ac: db !VIBRATO, $13, $38, $1A
#_1ADFF2: #_DC6Ec: db $60 ; duration
#_1ADFF3: #_DC6Fc: db R
#_1ADFF4: #_DC70c: db $0C, $4D ; duration, params
#_1ADFF6: #_DC72c: db G4
#_1ADFF7: #_DC73c: db !TIE
#_1ADFF8: #_DC74c: db $2A, $6D ; duration, params
#_1ADFFA: #_DC76c: db D4
#_1ADFFB: #_DC77c: db $06, $4D ; duration, params
#_1ADFFD: #_DC79c: db E4
#_1ADFFE: #_DC7Ac: db $06, $5D ; duration, params
#_1AE000: #_DC7Cc: db E4
#_1AE001: #_DC7Dc: db $06, $4D ; duration, params
#_1AE003: #_DC7Fc: db F4
#_1AE004: #_DC80c: db $06, $5D ; duration, params
#_1AE006: #_DC82c: db G4
#_1AE007: #_DC83c: db $06, $4D ; duration, params
#_1AE009: #_DC85c: db A4
#_1AE00A: #_DC86c: db $60, $6D ; duration, params
#_1AE00C: #_DC88c: db C5
#_1AE00D: #_DC89c: db $0C, $4D ; duration, params
#_1AE00F: #_DC8Bc: db Ds4
#_1AE010: #_DC8Cc: db !TIE
#_1AE011: #_DC8Dc: db $2A, $6D ; duration, params
#_1AE013: #_DC8Fc: db C4
#_1AE014: #_DC90c: db $06, $4D ; duration, params
#_1AE016: #_DC92c: db Ds4
#_1AE017: #_DC93c: db $06, $5D ; duration, params
#_1AE019: #_DC95c: db Ds4
#_1AE01A: #_DC96c: db $06, $4D ; duration, params
#_1AE01C: #_DC98c: db F4
#_1AE01D: #_DC99c: db $06, $5D ; duration, params
#_1AE01F: #_DC9Bc: db G4
#_1AE020: #_DC9Cc: db $06, $4D ; duration, params
#_1AE022: #_DC9Ec: db A4
#_1AE023: #_DC9Fc: db $30, $7D ; duration, params
#_1AE025: #_DCA1c: db C5
#_1AE026: #_DCA2c: db Gs4
#_1AE027: #_DCA3c: db $60, $6D ; duration, params
#_1AE029: #_DCA5c: db G4
#_1AE02A: #_DCA6c: db $18 ; duration
#_1AE02B: #_DCA7c: db !TIE

;---------------------------------------------------------------------------------------------------

Song22_Segment8_Track6:
#_1AE02C: #_DCA8c: db !INSTR, $0A
#_1AE02E: #_DCAAc: db !PAN, $0E
#_1AE030: #_DCACc: db !VIBRATO, $1C, $44, $14
#_1AE034: #_DCB0c: db !CALL_PART : dw Song22_Sub_E047 : db 2
#_1AE038: #_DCB4c: db $18, $7D ; duration, params
#_1AE03A: #_DCB6c: db C4
#_1AE03B: #_DCB7c: db G3
#_1AE03C: #_DCB8c: db C4
#_1AE03D: #_DCB9c: db G3
#_1AE03E: #_DCBAc: db $30, $6D ; duration, params
#_1AE040: #_DCBCc: db C4
#_1AE041: #_DCBDc: db C3
#_1AE042: #_DCBEc: db $18 ; duration
#_1AE043: #_DCBFc: db !TIE

;---------------------------------------------------------------------------------------------------

Song22_Segment8_Track7:
#_1AE044: #_DCC0c: db !VOLUME, $FA
#_1AE046: #_DCC2c: db !INSTR, $0A
#_1AE048: #_DCC4c: db !PAN, $04
#_1AE04A: #_DCC6c: db !VIBRATO, $12, $3C, $1E
#_1AE04E: #_DCCAc: db $30, $6D ; duration, params
#_1AE050: #_DCCCc: db C2
#_1AE051: #_DCCDc: db C2
#_1AE052: #_DCCEc: db As2
#_1AE053: #_DCCFc: db As2
#_1AE054: #_DCD0c: db Gs2
#_1AE055: #_DCD1c: db Gs2
#_1AE056: #_DCD2c: db Fs2
#_1AE057: #_DCD3c: db Fs2
#_1AE058: #_DCD4c: db E2
#_1AE059: #_DCD5c: db Cs2
#_1AE05A: #_DCD6c: db $60 ; duration
#_1AE05B: #_DCD7c: db C2
#_1AE05C: #_DCD8c: db $18 ; duration
#_1AE05D: #_DCD9c: db !TIE
#_1AE05E: #_DCDAc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DCDB:
#_1AE05F: #_DCDBc: db $30, $6D ; duration, params
#_1AE061: #_DCDDc: db C5
#_1AE062: #_DCDEc: db $10 ; duration
#_1AE063: #_DCDFc: db !TIE
#_1AE064: #_DCE0c: db $08, $2D ; duration, params
#_1AE066: #_DCE2c: db C5
#_1AE067: #_DCE3c: db $08, $5D ; duration, params
#_1AE069: #_DCE5c: db C5
#_1AE06A: #_DCE6c: db $08, $6D ; duration, params
#_1AE06C: #_DCE8c: db As4
#_1AE06D: #_DCE9c: db $08, $4D ; duration, params
#_1AE06F: #_DCEBc: db Gs4
#_1AE070: #_DCECc: db As4
#_1AE071: #_DCEDc: db !TIE
#_1AE072: #_DCEEc: db Gs4
#_1AE073: #_DCEFc: db $30, $6D ; duration, params
#_1AE075: #_DCF1c: db G4
#_1AE076: #_DCF2c: db $18, $4D ; duration, params
#_1AE078: #_DCF4c: db G4
#_1AE079: #_DCF5c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DCF6:
#_1AE07A: #_DCF6c: db $0C, $27 ; duration, params
#_1AE07C: #_DCF8c: db F4
#_1AE07D: #_DCF9c: db $06, $57 ; duration, params
#_1AE07F: #_DCFBc: db F4
#_1AE080: #_DCFCc: db $06, $27 ; duration, params
#_1AE082: #_DCFEc: db G4
#_1AE083: #_DCFFc: db $30, $49 ; duration, params
#_1AE085: #_DD01c: db Gs4
#_1AE086: #_DD02c: db $0C, $69 ; duration, params
#_1AE088: #_DD04c: db G4
#_1AE089: #_DD05c: db $0C, $49 ; duration, params
#_1AE08B: #_DD07c: db F4
#_1AE08C: #_DD08c: db $0C, $27 ; duration, params
#_1AE08E: #_DD0Ac: db Ds4
#_1AE08F: #_DD0Bc: db $06, $57 ; duration, params
#_1AE091: #_DD0Dc: db Ds4
#_1AE092: #_DD0Ec: db $06, $27 ; duration, params
#_1AE094: #_DD10c: db F4
#_1AE095: #_DD11c: db $30, $49 ; duration, params
#_1AE097: #_DD13c: db G4
#_1AE098: #_DD14c: db $0C, $69 ; duration, params
#_1AE09A: #_DD16c: db F4
#_1AE09B: #_DD17c: db $0C, $49 ; duration, params
#_1AE09D: #_DD19c: db Ds4
#_1AE09E: #_DD1Ac: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DD1B:
#_1AE09F: #_DD1Bc: db $0C, $2B ; duration, params
#_1AE0A1: #_DD1Dc: db D4
#_1AE0A2: #_DD1Ec: db $06 ; duration
#_1AE0A3: #_DD1Fc: db D4
#_1AE0A4: #_DD20c: db E4
#_1AE0A5: #_DD21c: db $30, $6D ; duration, params
#_1AE0A7: #_DD23c: db Fs4
#_1AE0A8: #_DD24c: db $18 ; duration
#_1AE0A9: #_DD25c: db A4
#_1AE0AA: #_DD26c: db $0C ; duration
#_1AE0AB: #_DD27c: db G4
#_1AE0AC: #_DD28c: db $06, $3D ; duration, params
#_1AE0AE: #_DD2Ac: db G3
#_1AE0AF: #_DD2Bc: db G3
#_1AE0B0: #_DD2Cc: db $0C, $4E ; duration, params
#_1AE0B2: #_DD2Ec: db G3
#_1AE0B3: #_DD2Fc: db $06, $3E ; duration, params
#_1AE0B5: #_DD31c: db G3
#_1AE0B6: #_DD32c: db G3
#_1AE0B7: #_DD33c: db $0C, $4E ; duration, params
#_1AE0B9: #_DD35c: db G3
#_1AE0BA: #_DD36c: db $06, $3F ; duration, params
#_1AE0BC: #_DD38c: db G3
#_1AE0BD: #_DD39c: db G3
#_1AE0BE: #_DD3Ac: db $0C, $4F ; duration, params
#_1AE0C0: #_DD3Cc: db G3
#_1AE0C1: #_DD3Dc: db G3
#_1AE0C2: #_DD3Ec: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DD3F:
#_1AE0C3: #_DD3Fc: db $0C ; duration
#_1AE0C4: #_DD40c: db R
#_1AE0C5: #_DD41c: db $54 ; duration
#_1AE0C6: #_DD42c: db A2
#_1AE0C7: #_DD43c: db $0C ; duration
#_1AE0C8: #_DD44c: db R
#_1AE0C9: #_DD45c: db $54 ; duration
#_1AE0CA: #_DD46c: db B2
#_1AE0CB: #_DD47c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DD48:
#_1AE0CC: #_DD48c: db $0C, $27 ; duration, params
#_1AE0CE: #_DD4Ac: db Gs3
#_1AE0CF: #_DD4Bc: db $06, $57 ; duration, params
#_1AE0D1: #_DD4Dc: db Gs3
#_1AE0D2: #_DD4Ec: db $06, $27 ; duration, params
#_1AE0D4: #_DD50c: db As3
#_1AE0D5: #_DD51c: db $30, $49 ; duration, params
#_1AE0D7: #_DD53c: db C4
#_1AE0D8: #_DD54c: db $0C, $69 ; duration, params
#_1AE0DA: #_DD56c: db As3
#_1AE0DB: #_DD57c: db $0C, $49 ; duration, params
#_1AE0DD: #_DD59c: db Gs3
#_1AE0DE: #_DD5Ac: db $0C, $27 ; duration, params
#_1AE0E0: #_DD5Cc: db G3
#_1AE0E1: #_DD5Dc: db $06, $57 ; duration, params
#_1AE0E3: #_DD5Fc: db G3
#_1AE0E4: #_DD60c: db $06, $27 ; duration, params
#_1AE0E6: #_DD62c: db Gs3
#_1AE0E7: #_DD63c: db $30, $49 ; duration, params
#_1AE0E9: #_DD65c: db As3
#_1AE0EA: #_DD66c: db $0C, $69 ; duration, params
#_1AE0EC: #_DD68c: db Gs3
#_1AE0ED: #_DD69c: db $0C, $49 ; duration, params
#_1AE0EF: #_DD6Bc: db G3
#_1AE0F0: #_DD6Cc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DD6D:
#_1AE0F1: #_DD6Dc: db $0C, $59 ; duration, params
#_1AE0F3: #_DD6Fc: db Cs3
#_1AE0F4: #_DD70c: db $06, $49 ; duration, params
#_1AE0F6: #_DD72c: db Cs3
#_1AE0F7: #_DD73c: db Cs3
#_1AE0F8: #_DD74c: db $0C ; duration
#_1AE0F9: #_DD75c: db Cs3
#_1AE0FA: #_DD76c: db $06 ; duration
#_1AE0FB: #_DD77c: db Cs3
#_1AE0FC: #_DD78c: db Cs3
#_1AE0FD: #_DD79c: db $0C ; duration
#_1AE0FE: #_DD7Ac: db Cs3
#_1AE0FF: #_DD7Bc: db $06 ; duration
#_1AE100: #_DD7Cc: db Cs3
#_1AE101: #_DD7Dc: db Cs3
#_1AE102: #_DD7Ec: db $0C ; duration
#_1AE103: #_DD7Fc: db Cs3
#_1AE104: #_DD80c: db $06 ; duration
#_1AE105: #_DD81c: db Cs3
#_1AE106: #_DD82c: db Cs3
#_1AE107: #_DD83c: db $0C, $59 ; duration, params
#_1AE109: #_DD85c: db C3
#_1AE10A: #_DD86c: db $06, $49 ; duration, params
#_1AE10C: #_DD88c: db C3
#_1AE10D: #_DD89c: db C3
#_1AE10E: #_DD8Ac: db $0C ; duration
#_1AE10F: #_DD8Bc: db C3
#_1AE110: #_DD8Cc: db $06 ; duration
#_1AE111: #_DD8Dc: db C3
#_1AE112: #_DD8Ec: db C3
#_1AE113: #_DD8Fc: db $0C ; duration
#_1AE114: #_DD90c: db C3
#_1AE115: #_DD91c: db $06 ; duration
#_1AE116: #_DD92c: db C3
#_1AE117: #_DD93c: db C3
#_1AE118: #_DD94c: db $0C ; duration
#_1AE119: #_DD95c: db C3
#_1AE11A: #_DD96c: db $06 ; duration
#_1AE11B: #_DD97c: db C3
#_1AE11C: #_DD98c: db C3
#_1AE11D: #_DD99c: db $0C, $5D ; duration, params
#_1AE11F: #_DD9Bc: db D3
#_1AE120: #_DD9Cc: db $06 ; duration
#_1AE121: #_DD9Dc: db D3
#_1AE122: #_DD9Ec: db $06, $4D ; duration, params
#_1AE124: #_DDA0c: db D3
#_1AE125: #_DDA1c: db $0C ; duration
#_1AE126: #_DDA2c: db D3
#_1AE127: #_DDA3c: db $06 ; duration
#_1AE128: #_DDA4c: db D3
#_1AE129: #_DDA5c: db D3
#_1AE12A: #_DDA6c: db $0C ; duration
#_1AE12B: #_DDA7c: db D3
#_1AE12C: #_DDA8c: db $06 ; duration
#_1AE12D: #_DDA9c: db D3
#_1AE12E: #_DDAAc: db D3
#_1AE12F: #_DDABc: db $0C ; duration
#_1AE130: #_DDACc: db D3
#_1AE131: #_DDADc: db $06 ; duration
#_1AE132: #_DDAEc: db D3
#_1AE133: #_DDAFc: db D3
#_1AE134: #_DDB0c: db $0C, $5D ; duration, params
#_1AE136: #_DDB2c: db G2
#_1AE137: #_DDB3c: db $06 ; duration
#_1AE138: #_DDB4c: db G2
#_1AE139: #_DDB5c: db G2
#_1AE13A: #_DDB6c: db $0C ; duration
#_1AE13B: #_DDB7c: db G2
#_1AE13C: #_DDB8c: db $06 ; duration
#_1AE13D: #_DDB9c: db G2
#_1AE13E: #_DDBAc: db G2
#_1AE13F: #_DDBBc: db $0C ; duration
#_1AE140: #_DDBCc: db G2
#_1AE141: #_DDBDc: db $06 ; duration
#_1AE142: #_DDBEc: db G2
#_1AE143: #_DDBFc: db G2
#_1AE144: #_DDC0c: db $0C, $4D ; duration, params
#_1AE146: #_DDC2c: db A2
#_1AE147: #_DDC3c: db B2
#_1AE148: #_DDC4c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DDC5:
#_1AE149: #_DDC5c: db $30, $6D ; duration, params
#_1AE14B: #_DDC7c: db G4
#_1AE14C: #_DDC8c: db $0C ; duration
#_1AE14D: #_DDC9c: db !TIE
#_1AE14E: #_DDCAc: db $0C, $2D ; duration, params
#_1AE150: #_DDCCc: db G4
#_1AE151: #_DDCDc: db $08, $5D ; duration, params
#_1AE153: #_DDCFc: db G4
#_1AE154: #_DDD0c: db Gs4
#_1AE155: #_DDD1c: db As4
#_1AE156: #_DDD2c: db $30, $6D ; duration, params
#_1AE158: #_DDD4c: db C5
#_1AE159: #_DDD5c: db $10 ; duration
#_1AE15A: #_DDD6c: db !TIE
#_1AE15B: #_DDD7c: db $08, $2D ; duration, params
#_1AE15D: #_DDD9c: db C5
#_1AE15E: #_DDDAc: db $08, $5D ; duration, params
#_1AE160: #_DDDCc: db C5
#_1AE161: #_DDDDc: db $08, $6D ; duration, params
#_1AE163: #_DDDFc: db As4
#_1AE164: #_DDE0c: db $08, $4D ; duration, params
#_1AE166: #_DDE2c: db Gs4
#_1AE167: #_DDE3c: db As4
#_1AE168: #_DDE4c: db !TIE
#_1AE169: #_DDE5c: db Gs4
#_1AE16A: #_DDE6c: db $30, $6D ; duration, params
#_1AE16C: #_DDE8c: db G4
#_1AE16D: #_DDE9c: db $18, $4D ; duration, params
#_1AE16F: #_DDEBc: db G4
#_1AE170: #_DDECc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DDED:
#_1AE171: #_DDEDc: db $0C, $2B ; duration, params
#_1AE173: #_DDEFc: db D4
#_1AE174: #_DDF0c: db $06 ; duration
#_1AE175: #_DDF1c: db D4
#_1AE176: #_DDF2c: db E4
#_1AE177: #_DDF3c: db $30, $6D ; duration, params
#_1AE179: #_DDF5c: db Fs4
#_1AE17A: #_DDF6c: db $18 ; duration
#_1AE17B: #_DDF7c: db A4
#_1AE17C: #_DDF8c: db $0C ; duration
#_1AE17D: #_DDF9c: db G4
#_1AE17E: #_DDFAc: db $06, $4D ; duration, params
#_1AE180: #_DDFCc: db G3
#_1AE181: #_DDFDc: db G3
#_1AE182: #_DDFEc: db $0C, $4E ; duration, params
#_1AE184: #_DE00c: db G3
#_1AE185: #_DE01c: db $06 ; duration
#_1AE186: #_DE02c: db G3
#_1AE187: #_DE03c: db G3
#_1AE188: #_DE04c: db $0C ; duration
#_1AE189: #_DE05c: db G3
#_1AE18A: #_DE06c: db $06, $4F ; duration, params
#_1AE18C: #_DE08c: db G3
#_1AE18D: #_DE09c: db G3
#_1AE18E: #_DE0Ac: db $0C ; duration
#_1AE18F: #_DE0Bc: db G3
#_1AE190: #_DE0Cc: db $08 ; duration
#_1AE191: #_DE0Dc: db G3
#_1AE192: #_DE0Ec: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DE0F:
#_1AE193: #_DE0Fc: db $48 ; duration
#_1AE194: #_DE10c: db C5
#_1AE195: #_DE11c: db $18 ; duration
#_1AE196: #_DE12c: db Ds5
#_1AE197: #_DE13c: db $0C ; duration
#_1AE198: #_DE14c: db D5
#_1AE199: #_DE15c: db R
#_1AE19A: #_DE16c: db $30 ; duration
#_1AE19B: #_DE17c: db B4
#_1AE19C: #_DE18c: db $18 ; duration
#_1AE19D: #_DE19c: db G4
#_1AE19E: #_DE1Ac: db $48 ; duration
#_1AE19F: #_DE1Bc: db Gs4
#_1AE1A0: #_DE1Cc: db $18 ; duration
#_1AE1A1: #_DE1Dc: db C5
#_1AE1A2: #_DE1Ec: db $0C ; duration
#_1AE1A3: #_DE1Fc: db B4
#_1AE1A4: #_DE20c: db R
#_1AE1A5: #_DE21c: db $30 ; duration
#_1AE1A6: #_DE22c: db G4
#_1AE1A7: #_DE23c: db $18 ; duration
#_1AE1A8: #_DE24c: db G4
#_1AE1A9: #_DE25c: db $48 ; duration
#_1AE1AA: #_DE26c: db Gs4
#_1AE1AB: #_DE27c: db $18 ; duration
#_1AE1AC: #_DE28c: db C5
#_1AE1AD: #_DE29c: db $0C ; duration
#_1AE1AE: #_DE2Ac: db B4
#_1AE1AF: #_DE2Bc: db R
#_1AE1B0: #_DE2Cc: db $30 ; duration
#_1AE1B1: #_DE2Dc: db G4
#_1AE1B2: #_DE2Ec: db $18 ; duration
#_1AE1B3: #_DE2Fc: db E4
#_1AE1B4: #_DE30c: db $48 ; duration
#_1AE1B5: #_DE31c: db F4
#_1AE1B6: #_DE32c: db $18 ; duration
#_1AE1B7: #_DE33c: db Gs4
#_1AE1B8: #_DE34c: db $0C ; duration
#_1AE1B9: #_DE35c: db G4
#_1AE1BA: #_DE36c: db R
#_1AE1BB: #_DE37c: db $30 ; duration
#_1AE1BC: #_DE38c: db Ds4
#_1AE1BD: #_DE39c: db $18 ; duration
#_1AE1BE: #_DE3Ac: db C4
#_1AE1BF: #_DE3Bc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DE3C:
#_1AE1C0: #_DE3Cc: db $0C, $4F ; duration, params
#_1AE1C2: #_DE3Ec: db Fs2
#_1AE1C3: #_DE3Fc: db $06 ; duration
#_1AE1C4: #_DE40c: db Fs2
#_1AE1C5: #_DE41c: db Fs2
#_1AE1C6: #_DE42c: db $0C ; duration
#_1AE1C7: #_DE43c: db Fs2
#_1AE1C8: #_DE44c: db $06 ; duration
#_1AE1C9: #_DE45c: db Fs2
#_1AE1CA: #_DE46c: db Fs2
#_1AE1CB: #_DE47c: db $0C ; duration
#_1AE1CC: #_DE48c: db Fs2
#_1AE1CD: #_DE49c: db $06 ; duration
#_1AE1CE: #_DE4Ac: db Fs2
#_1AE1CF: #_DE4Bc: db Fs2
#_1AE1D0: #_DE4Cc: db $0C ; duration
#_1AE1D1: #_DE4Dc: db Fs2
#_1AE1D2: #_DE4Ec: db $06 ; duration
#_1AE1D3: #_DE4Fc: db Fs2
#_1AE1D4: #_DE50c: db Fs2
#_1AE1D5: #_DE51c: db $0C, $4D ; duration, params
#_1AE1D7: #_DE53c: db G2
#_1AE1D8: #_DE54c: db $06 ; duration
#_1AE1D9: #_DE55c: db G2
#_1AE1DA: #_DE56c: db G2
#_1AE1DB: #_DE57c: db $0C ; duration
#_1AE1DC: #_DE58c: db G2
#_1AE1DD: #_DE59c: db $06 ; duration
#_1AE1DE: #_DE5Ac: db G2
#_1AE1DF: #_DE5Bc: db G2
#_1AE1E0: #_DE5Cc: db $0C ; duration
#_1AE1E1: #_DE5Dc: db G2
#_1AE1E2: #_DE5Ec: db $06 ; duration
#_1AE1E3: #_DE5Fc: db G2
#_1AE1E4: #_DE60c: db G2
#_1AE1E5: #_DE61c: db $0C ; duration
#_1AE1E6: #_DE62c: db G2
#_1AE1E7: #_DE63c: db $06 ; duration
#_1AE1E8: #_DE64c: db G2
#_1AE1E9: #_DE65c: db G2
#_1AE1EA: #_DE66c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DE67:
#_1AE1EB: #_DE67c: db $0C, $5D ; duration, params
#_1AE1ED: #_DE69c: db F4
#_1AE1EE: #_DE6Ac: db $06, $4D ; duration, params
#_1AE1F0: #_DE6Cc: db F4
#_1AE1F1: #_DE6Dc: db F4
#_1AE1F2: #_DE6Ec: db $0C ; duration
#_1AE1F3: #_DE6Fc: db F4
#_1AE1F4: #_DE70c: db $06 ; duration
#_1AE1F5: #_DE71c: db F4
#_1AE1F6: #_DE72c: db F4
#_1AE1F7: #_DE73c: db $0C ; duration
#_1AE1F8: #_DE74c: db F4
#_1AE1F9: #_DE75c: db $06 ; duration
#_1AE1FA: #_DE76c: db F4
#_1AE1FB: #_DE77c: db F4
#_1AE1FC: #_DE78c: db $0C ; duration
#_1AE1FD: #_DE79c: db F4
#_1AE1FE: #_DE7Ac: db $06 ; duration
#_1AE1FF: #_DE7Bc: db F4
#_1AE200: #_DE7Cc: db F4
#_1AE201: #_DE7Dc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DE7E:
#_1AE202: #_DE7Ec: db $0C, $2B ; duration, params
#_1AE204: #_DE80c: db Fs3
#_1AE205: #_DE81c: db $06 ; duration
#_1AE206: #_DE82c: db Fs3
#_1AE207: #_DE83c: db G3
#_1AE208: #_DE84c: db $30, $6D ; duration, params
#_1AE20A: #_DE86c: db A3
#_1AE20B: #_DE87c: db $18 ; duration
#_1AE20C: #_DE88c: db C4
#_1AE20D: #_DE89c: db $0C ; duration
#_1AE20E: #_DE8Ac: db B3
#_1AE20F: #_DE8Bc: db $06, $4D ; duration, params
#_1AE211: #_DE8Dc: db B2
#_1AE212: #_DE8Ec: db B2
#_1AE213: #_DE8Fc: db $0C, $4E ; duration, params
#_1AE215: #_DE91c: db B2
#_1AE216: #_DE92c: db $06 ; duration
#_1AE217: #_DE93c: db B2
#_1AE218: #_DE94c: db B2
#_1AE219: #_DE95c: db $0C ; duration
#_1AE21A: #_DE96c: db B2
#_1AE21B: #_DE97c: db $06, $4F ; duration, params
#_1AE21D: #_DE99c: db B2
#_1AE21E: #_DE9Ac: db B2
#_1AE21F: #_DE9Bc: db $0C ; duration
#_1AE220: #_DE9Cc: db B2
#_1AE221: #_DE9Dc: db B2
#_1AE222: #_DE9Ec: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DE9F:
#_1AE223: #_DE9Fc: db $18 ; duration
#_1AE224: #_DEA0c: db R
#_1AE225: #_DEA1c: db $18, $7B ; duration, params
#_1AE227: #_DEA3c: db C4
#_1AE228: #_DEA4c: db $30 ; duration
#_1AE229: #_DEA5c: db G3
#_1AE22A: #_DEA6c: db $12 ; duration
#_1AE22B: #_DEA7c: db !TIE
#_1AE22C: #_DEA8c: db $06 ; duration
#_1AE22D: #_DEA9c: db C4
#_1AE22E: #_DEAAc: db C4
#_1AE22F: #_DEABc: db D4
#_1AE230: #_DEACc: db E4
#_1AE231: #_DEADc: db F4
#_1AE232: #_DEAEc: db $30 ; duration
#_1AE233: #_DEAFc: db G4
#_1AE234: #_DEB0c: db $12 ; duration
#_1AE235: #_DEB1c: db !TIE
#_1AE236: #_DEB2c: db $06 ; duration
#_1AE237: #_DEB3c: db Gs3
#_1AE238: #_DEB4c: db Gs3
#_1AE239: #_DEB5c: db As3
#_1AE23A: #_DEB6c: db C4
#_1AE23B: #_DEB7c: db D4
#_1AE23C: #_DEB8c: db $18 ; duration
#_1AE23D: #_DEB9c: db Ds4
#_1AE23E: #_DEBAc: db Gs3
#_1AE23F: #_DEBBc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DEBC:
#_1AE240: #_DEBCc: db $18 ; duration
#_1AE241: #_DEBDc: db Fs3
#_1AE242: #_DEBEc: db $48 ; duration
#_1AE243: #_DEBFc: db C4
#_1AE244: #_DEC0c: db $30 ; duration
#_1AE245: #_DEC1c: db B3
#_1AE246: #_DEC2c: db G3
#_1AE247: #_DEC3c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DEC4:
#_1AE248: #_DEC4c: db $18 ; duration
#_1AE249: #_DEC5c: db R
#_1AE24A: #_DEC6c: db $48 ; duration
#_1AE24B: #_DEC7c: db E3
#_1AE24C: #_DEC8c: db $18 ; duration
#_1AE24D: #_DEC9c: db R
#_1AE24E: #_DECAc: db $48 ; duration
#_1AE24F: #_DECBc: db F3
#_1AE250: #_DECCc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DECD:
#_1AE251: #_DECDc: db $18 ; duration
#_1AE252: #_DECEc: db R
#_1AE253: #_DECFc: db $48 ; duration
#_1AE254: #_DED0c: db G3
#_1AE255: #_DED1c: db $18 ; duration
#_1AE256: #_DED2c: db R
#_1AE257: #_DED3c: db $48 ; duration
#_1AE258: #_DED4c: db A3
#_1AE259: #_DED5c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DED6:
#_1AE25A: #_DED6c: db $24 ; duration
#_1AE25B: #_DED7c: db D4
#_1AE25C: #_DED8c: db $06 ; duration
#_1AE25D: #_DED9c: db C4
#_1AE25E: #_DEDAc: db $36 ; duration
#_1AE25F: #_DEDBc: db E4
#_1AE260: #_DEDCc: db $24 ; duration
#_1AE261: #_DEDDc: db D4
#_1AE262: #_DEDEc: db $0C ; duration
#_1AE263: #_DEDFc: db C4
#_1AE264: #_DEE0c: db $24 ; duration
#_1AE265: #_DEE1c: db G3
#_1AE266: #_DEE2c: db $0C ; duration
#_1AE267: #_DEE3c: db C4
#_1AE268: #_DEE4c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DEE5:
#_1AE269: #_DEE5c: db $0C ; duration
#_1AE26A: #_DEE6c: db R
#_1AE26B: #_DEE7c: db $54, $7D ; duration, params
#_1AE26D: #_DEE9c: db G2
#_1AE26E: #_DEEAc: db $0C ; duration
#_1AE26F: #_DEEBc: db R
#_1AE270: #_DEECc: db $54 ; duration
#_1AE271: #_DEEDc: db B2
#_1AE272: #_DEEEc: db $0C ; duration
#_1AE273: #_DEEFc: db R
#_1AE274: #_DEF0c: db $54 ; duration
#_1AE275: #_DEF1c: db A2
#_1AE276: #_DEF2c: db $0C ; duration
#_1AE277: #_DEF3c: db R
#_1AE278: #_DEF4c: db $54 ; duration
#_1AE279: #_DEF5c: db B2
#_1AE27A: #_DEF6c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DEF7:
#_1AE27B: #_DEF7c: db $18 ; duration
#_1AE27C: #_DEF8c: db R
#_1AE27D: #_DEF9c: db $48, $7D ; duration, params
#_1AE27F: #_DEFBc: db G3
#_1AE280: #_DEFCc: db $18 ; duration
#_1AE281: #_DEFDc: db R
#_1AE282: #_DEFEc: db $48 ; duration
#_1AE283: #_DEFFc: db G3
#_1AE284: #_DF00c: db $18 ; duration
#_1AE285: #_DF01c: db R
#_1AE286: #_DF02c: db $48 ; duration
#_1AE287: #_DF03c: db A3
#_1AE288: #_DF04c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DF05:
#_1AE289: #_DF05c: db $24, $7D ; duration, params
#_1AE28B: #_DF07c: db D5
#_1AE28C: #_DF08c: db $0C ; duration
#_1AE28D: #_DF09c: db C5
#_1AE28E: #_DF0Ac: db $18 ; duration
#_1AE28F: #_DF0Bc: db G4
#_1AE290: #_DF0Cc: db $08 ; duration
#_1AE291: #_DF0Dc: db E4
#_1AE292: #_DF0Ec: db D4
#_1AE293: #_DF0Fc: db C4
#_1AE294: #_DF10c: db $24 ; duration
#_1AE295: #_DF11c: db D4
#_1AE296: #_DF12c: db $06 ; duration
#_1AE297: #_DF13c: db E4
#_1AE298: #_DF14c: db $36 ; duration
#_1AE299: #_DF15c: db E4
#_1AE29A: #_DF16c: db $24 ; duration
#_1AE29B: #_DF17c: db A4
#_1AE29C: #_DF18c: db $0C ; duration
#_1AE29D: #_DF19c: db E4
#_1AE29E: #_DF1Ac: db $18 ; duration
#_1AE29F: #_DF1Bc: db D4
#_1AE2A0: #_DF1Cc: db $08 ; duration
#_1AE2A1: #_DF1Dc: db C4
#_1AE2A2: #_DF1Ec: db B3
#_1AE2A3: #_DF1Fc: db C4
#_1AE2A4: #_DF20c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DF21:
#_1AE2A5: #_DF21c: db $24 ; duration
#_1AE2A6: #_DF22c: db E4
#_1AE2A7: #_DF23c: db $06 ; duration
#_1AE2A8: #_DF24c: db D4
#_1AE2A9: #_DF25c: db $36 ; duration
#_1AE2AA: #_DF26c: db D4
#_1AE2AB: #_DF27c: db $24 ; duration
#_1AE2AC: #_DF28c: db D5
#_1AE2AD: #_DF29c: db $0C ; duration
#_1AE2AE: #_DF2Ac: db C5
#_1AE2AF: #_DF2Bc: db $18 ; duration
#_1AE2B0: #_DF2Cc: db G4
#_1AE2B1: #_DF2Dc: db $08 ; duration
#_1AE2B2: #_DF2Ec: db E4
#_1AE2B3: #_DF2Fc: db D4
#_1AE2B4: #_DF30c: db C4
#_1AE2B5: #_DF31c: db $24 ; duration
#_1AE2B6: #_DF32c: db D4
#_1AE2B7: #_DF33c: db $06 ; duration
#_1AE2B8: #_DF34c: db G4
#_1AE2B9: #_DF35c: db $36 ; duration
#_1AE2BA: #_DF36c: db E4
#_1AE2BB: #_DF37c: db $24 ; duration
#_1AE2BC: #_DF38c: db A4
#_1AE2BD: #_DF39c: db $06 ; duration
#_1AE2BE: #_DF3Ac: db E4
#_1AE2BF: #_DF3Bc: db $12 ; duration
#_1AE2C0: #_DF3Cc: db A4
#_1AE2C1: #_DF3Dc: db $0C ; duration
#_1AE2C2: #_DF3Ec: db B4
#_1AE2C3: #_DF3Fc: db $08 ; duration
#_1AE2C4: #_DF40c: db C5
#_1AE2C5: #_DF41c: db B4
#_1AE2C6: #_DF42c: db C5
#_1AE2C7: #_DF43c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DF44:
#_1AE2C8: #_DF44c: db $0C ; duration
#_1AE2C9: #_DF45c: db R
#_1AE2CA: #_DF46c: db $54 ; duration
#_1AE2CB: #_DF47c: db B2
#_1AE2CC: #_DF48c: db $0C ; duration
#_1AE2CD: #_DF49c: db R
#_1AE2CE: #_DF4Ac: db $54 ; duration
#_1AE2CF: #_DF4Bc: db A2
#_1AE2D0: #_DF4Cc: db $0C ; duration
#_1AE2D1: #_DF4Dc: db R
#_1AE2D2: #_DF4Ec: db $54 ; duration
#_1AE2D3: #_DF4Fc: db B2
#_1AE2D4: #_DF50c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DF51:
#_1AE2D5: #_DF51c: db $04 ; duration
#_1AE2D6: #_DF52c: db R
#_1AE2D7: #_DF53c: db $24, $7D ; duration, params
#_1AE2D9: #_DF55c: db D5
#_1AE2DA: #_DF56c: db $0C ; duration
#_1AE2DB: #_DF57c: db C5
#_1AE2DC: #_DF58c: db $18 ; duration
#_1AE2DD: #_DF59c: db G4
#_1AE2DE: #_DF5Ac: db $08 ; duration
#_1AE2DF: #_DF5Bc: db E4
#_1AE2E0: #_DF5Cc: db D4
#_1AE2E1: #_DF5Dc: db C4
#_1AE2E2: #_DF5Ec: db $24 ; duration
#_1AE2E3: #_DF5Fc: db D4
#_1AE2E4: #_DF60c: db $06 ; duration
#_1AE2E5: #_DF61c: db E4
#_1AE2E6: #_DF62c: db $36 ; duration
#_1AE2E7: #_DF63c: db E4
#_1AE2E8: #_DF64c: db $24 ; duration
#_1AE2E9: #_DF65c: db A4
#_1AE2EA: #_DF66c: db $0C ; duration
#_1AE2EB: #_DF67c: db E4
#_1AE2EC: #_DF68c: db $18 ; duration
#_1AE2ED: #_DF69c: db D4
#_1AE2EE: #_DF6Ac: db $08 ; duration
#_1AE2EF: #_DF6Bc: db C4
#_1AE2F0: #_DF6Cc: db B3
#_1AE2F1: #_DF6Dc: db C4
#_1AE2F2: #_DF6Ec: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DF6F:
#_1AE2F3: #_DF6Fc: db $2A, $7D ; duration, params
#_1AE2F5: #_DF71c: db C5
#_1AE2F6: #_DF72c: db $06 ; duration
#_1AE2F7: #_DF73c: db B4
#_1AE2F8: #_DF74c: db $2A ; duration
#_1AE2F9: #_DF75c: db D5
#_1AE2FA: #_DF76c: db $06 ; duration
#_1AE2FB: #_DF77c: db B4
#_1AE2FC: #_DF78c: db $2A ; duration
#_1AE2FD: #_DF79c: db C5
#_1AE2FE: #_DF7Ac: db $06 ; duration
#_1AE2FF: #_DF7Bc: db B4
#_1AE300: #_DF7Cc: db $2A ; duration
#_1AE301: #_DF7Dc: db G4
#_1AE302: #_DF7Ec: db $06 ; duration
#_1AE303: #_DF7Fc: db G4
#_1AE304: #_DF80c: db $2A ; duration
#_1AE305: #_DF81c: db A4
#_1AE306: #_DF82c: db $06 ; duration
#_1AE307: #_DF83c: db C4
#_1AE308: #_DF84c: db $18 ; duration
#_1AE309: #_DF85c: db A4
#_1AE30A: #_DF86c: db $08 ; duration
#_1AE30B: #_DF87c: db A4
#_1AE30C: #_DF88c: db G4
#_1AE30D: #_DF89c: db F4
#_1AE30E: #_DF8Ac: db $24 ; duration
#_1AE30F: #_DF8Bc: db E4
#_1AE310: #_DF8Cc: db $06 ; duration
#_1AE311: #_DF8Dc: db D4
#_1AE312: #_DF8Ec: db $30 ; duration
#_1AE313: #_DF8Fc: db D4
#_1AE314: #_DF90c: db $06 ; duration
#_1AE315: #_DF91c: db B4
#_1AE316: #_DF92c: db $2A ; duration
#_1AE317: #_DF93c: db C5
#_1AE318: #_DF94c: db $06 ; duration
#_1AE319: #_DF95c: db B4
#_1AE31A: #_DF96c: db $2A ; duration
#_1AE31B: #_DF97c: db D5
#_1AE31C: #_DF98c: db $06 ; duration
#_1AE31D: #_DF99c: db B4
#_1AE31E: #_DF9Ac: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DF9B:
#_1AE31F: #_DF9Bc: db $2A ; duration
#_1AE320: #_DF9Cc: db C5
#_1AE321: #_DF9Dc: db $06 ; duration
#_1AE322: #_DF9Ec: db A4
#_1AE323: #_DF9Fc: db $18 ; duration
#_1AE324: #_DFA0c: db D5
#_1AE325: #_DFA1c: db $08 ; duration
#_1AE326: #_DFA2c: db A4
#_1AE327: #_DFA3c: db B4
#_1AE328: #_DFA4c: db C5
#_1AE329: #_DFA5c: db $2A ; duration
#_1AE32A: #_DFA6c: db E5
#_1AE32B: #_DFA7c: db $06 ; duration
#_1AE32C: #_DFA8c: db D5
#_1AE32D: #_DFA9c: db $18 ; duration
#_1AE32E: #_DFAAc: db D5
#_1AE32F: #_DFABc: db $08 ; duration
#_1AE330: #_DFACc: db C5
#_1AE331: #_DFADc: db B4
#_1AE332: #_DFAEc: db A4
#_1AE333: #_DFAFc: db $24 ; duration
#_1AE334: #_DFB0c: db C5
#_1AE335: #_DFB1c: db $06 ; duration
#_1AE336: #_DFB2c: db B4
#_1AE337: #_DFB3c: db $36 ; duration
#_1AE338: #_DFB4c: db B4
#_1AE339: #_DFB5c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DFB6:
#_1AE33A: #_DFB6c: db $18 ; duration
#_1AE33B: #_DFB7c: db R
#_1AE33C: #_DFB8c: db $48 ; duration
#_1AE33D: #_DFB9c: db A3
#_1AE33E: #_DFBAc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DFBB:
#_1AE33F: #_DFBBc: db $2A ; duration
#_1AE340: #_DFBCc: db C5
#_1AE341: #_DFBDc: db $06 ; duration
#_1AE342: #_DFBEc: db B4
#_1AE343: #_DFBFc: db $2A ; duration
#_1AE344: #_DFC0c: db G4
#_1AE345: #_DFC1c: db $06 ; duration
#_1AE346: #_DFC2c: db G4
#_1AE347: #_DFC3c: db $2A ; duration
#_1AE348: #_DFC4c: db A4
#_1AE349: #_DFC5c: db $06 ; duration
#_1AE34A: #_DFC6c: db C4
#_1AE34B: #_DFC7c: db $18 ; duration
#_1AE34C: #_DFC8c: db A4
#_1AE34D: #_DFC9c: db $08 ; duration
#_1AE34E: #_DFCAc: db A4
#_1AE34F: #_DFCBc: db G4
#_1AE350: #_DFCCc: db F4
#_1AE351: #_DFCDc: db $24 ; duration
#_1AE352: #_DFCEc: db E4
#_1AE353: #_DFCFc: db $06 ; duration
#_1AE354: #_DFD0c: db D4
#_1AE355: #_DFD1c: db $30 ; duration
#_1AE356: #_DFD2c: db D4
#_1AE357: #_DFD3c: db $06 ; duration
#_1AE358: #_DFD4c: db B4
#_1AE359: #_DFD5c: db $2A ; duration
#_1AE35A: #_DFD6c: db C5
#_1AE35B: #_DFD7c: db $06 ; duration
#_1AE35C: #_DFD8c: db B4
#_1AE35D: #_DFD9c: db $2A ; duration
#_1AE35E: #_DFDAc: db D5
#_1AE35F: #_DFDBc: db $06 ; duration
#_1AE360: #_DFDCc: db B4
#_1AE361: #_DFDDc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DFDE:
#_1AE362: #_DFDEc: db $18 ; duration
#_1AE363: #_DFDFc: db R
#_1AE364: #_DFE0c: db $08 ; duration
#_1AE365: #_DFE1c: db C4
#_1AE366: #_DFE2c: db D4
#_1AE367: #_DFE3c: db E4
#_1AE368: #_DFE4c: db $30 ; duration
#_1AE369: #_DFE5c: db A4
#_1AE36A: #_DFE6c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_DFE7:
#_1AE36B: #_DFE7c: db $24 ; duration
#_1AE36C: #_DFE8c: db E4
#_1AE36D: #_DFE9c: db $06 ; duration
#_1AE36E: #_DFEAc: db D4
#_1AE36F: #_DFEBc: db $2A ; duration
#_1AE370: #_DFECc: db D4
#_1AE371: #_DFEDc: db $06 ; duration
#_1AE372: #_DFEEc: db C4
#_1AE373: #_DFEFc: db D4
#_1AE374: #_DFF0c: db $30 ; duration
#_1AE375: #_DFF1c: db G4
#_1AE376: #_DFF2c: db $18 ; duration
#_1AE377: #_DFF3c: db F4
#_1AE378: #_DFF4c: db $06 ; duration
#_1AE379: #_DFF5c: db C4
#_1AE37A: #_DFF6c: db D4
#_1AE37B: #_DFF7c: db Ds4
#_1AE37C: #_DFF8c: db F4
#_1AE37D: #_DFF9c: db $30 ; duration
#_1AE37E: #_DFFAc: db G4
#_1AE37F: #_DFFBc: db $18 ; duration
#_1AE380: #_DFFCc: db F4
#_1AE381: #_DFFDc: db $12 ; duration
#_1AE382: #_DFFEc: db F4
#_1AE383: #_DFFFc: db $03 ; duration
#_1AE384: #_E000c: db E4
#_1AE385: #_E001c: db D4
#_1AE386: #_E002c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_E003:
#_1AE387: #_E003c: db $0C, $5D ; duration, params
#_1AE389: #_E005c: db F4
#_1AE38A: #_E006c: db $06, $4D ; duration, params
#_1AE38C: #_E008c: db F4
#_1AE38D: #_E009c: db F4
#_1AE38E: #_E00Ac: db $0C ; duration
#_1AE38F: #_E00Bc: db F4
#_1AE390: #_E00Cc: db $06 ; duration
#_1AE391: #_E00Dc: db F4
#_1AE392: #_E00Ec: db F4
#_1AE393: #_E00Fc: db $0C ; duration
#_1AE394: #_E010c: db F4
#_1AE395: #_E011c: db $06 ; duration
#_1AE396: #_E012c: db F4
#_1AE397: #_E013c: db F4
#_1AE398: #_E014c: db F4
#_1AE399: #_E015c: db F4
#_1AE39A: #_E016c: db F4
#_1AE39B: #_E017c: db F4
#_1AE39C: #_E018c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_E019:
#_1AE39D: #_E019c: db $18, $4D ; duration, params
#_1AE39F: #_E01Bc: db C5
#_1AE3A0: #_E01Cc: db $2A, $6D ; duration, params
#_1AE3A2: #_E01Ec: db G4
#_1AE3A3: #_E01Fc: db $06, $4D ; duration, params
#_1AE3A5: #_E021c: db C5
#_1AE3A6: #_E022c: db $06, $5D ; duration, params
#_1AE3A8: #_E024c: db C5
#_1AE3A9: #_E025c: db $06, $4D ; duration, params
#_1AE3AB: #_E027c: db D5
#_1AE3AC: #_E028c: db $06, $5D ; duration, params
#_1AE3AE: #_E02Ac: db E5
#_1AE3AF: #_E02Bc: db $06, $4D ; duration, params
#_1AE3B1: #_E02Dc: db F5
#_1AE3B2: #_E02Ec: db $60, $6D ; duration, params
#_1AE3B4: #_E030c: db G5
#_1AE3B5: #_E031c: db $18, $4D ; duration, params
#_1AE3B7: #_E033c: db C5
#_1AE3B8: #_E034c: db $2A, $6D ; duration, params
#_1AE3BA: #_E036c: db G4
#_1AE3BB: #_E037c: db $06, $4D ; duration, params
#_1AE3BD: #_E039c: db C5
#_1AE3BE: #_E03Ac: db $06, $5D ; duration, params
#_1AE3C0: #_E03Cc: db C5
#_1AE3C1: #_E03Dc: db $06, $4D ; duration, params
#_1AE3C3: #_E03Fc: db D5
#_1AE3C4: #_E040c: db $06, $5D ; duration, params
#_1AE3C6: #_E042c: db E5
#_1AE3C7: #_E043c: db $06, $4D ; duration, params
#_1AE3C9: #_E045c: db F5
#_1AE3CA: #_E046c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song22_Sub_E047:
#_1AE3CB: #_E047c: db $18, $4D ; duration, params
#_1AE3CD: #_E049c: db C4
#_1AE3CE: #_E04Ac: db $2A, $6D ; duration, params
#_1AE3D0: #_E04Cc: db G3
#_1AE3D1: #_E04Dc: db $06, $4D ; duration, params
#_1AE3D3: #_E04Fc: db C4
#_1AE3D4: #_E050c: db $06, $5D ; duration, params
#_1AE3D6: #_E052c: db C4
#_1AE3D7: #_E053c: db $06, $4D ; duration, params
#_1AE3D9: #_E055c: db D4
#_1AE3DA: #_E056c: db $06, $5D ; duration, params
#_1AE3DC: #_E058c: db E4
#_1AE3DD: #_E059c: db $06, $4D ; duration, params
#_1AE3DF: #_E05Bc: db F4
#_1AE3E0: #_E05Cc: db $60, $6D ; duration, params
#_1AE3E2: #_E05Ec: db G4
#_1AE3E3: #_E05Fc: db !PART_END

base off

;===================================================================================================

SongBank_Credits_Auxiliary:
#_1AE3E4: dw $1038, CREDITS_AUX_POINTER ; Transfer size, transfer address

base CREDITS_AUX_POINTER

Song21_EndingTheme:
#_1AE3E8: #_2900c: dw Song21_Segment0
#_1AE3EA: #_2902c: dw Song21_Segment1
#_1AE3EC: #_2904c: dw Song21_Segment2
#_1AE3EE: #_2906c: dw Song21_Segment3
#_1AE3F0: #_2908c: dw Song21_Segment4
#_1AE3F2: #_290Ac: dw Song21_Segment5
#_1AE3F4: #_290Cc: dw Song21_Segment6
#_1AE3F6: #_290Ec: dw Song21_Segment7
#_1AE3F8: #_2910c: dw Song21_Segment8
#_1AE3FA: #_2912c: dw Song21_Segment9
#_1AE3FC: #_2914c: dw Song21_SegmentA
#_1AE3FE: #_2916c: dw Song21_SegmentB
#_1AE400: #_2918c: dw Song21_SegmentC
#_1AE402: #_291Ac: dw Song21_SegmentD
#_1AE404: #_291Cc: dw Song21_SegmentE
#_1AE406: #_291Ec: dw !SONG_END

Song21_Segment1:
#_1AE408: #_2920c: dw Song21_Segment1_Track0
#_1AE40A: #_2922c: dw Song21_Segment1_Track1
#_1AE40C: #_2924c: dw Song21_Segment1_Track2
#_1AE40E: #_2926c: dw Song21_Segment1_Track3
#_1AE410: #_2928c: dw Song21_Segment1_Track4
#_1AE412: #_292Ac: dw Song21_Segment1_Track5
#_1AE414: #_292Cc: dw Song21_Segment1_Track6
#_1AE416: #_292Ec: dw Song21_Segment1_Track7

Song21_Segment2:
#_1AE418: #_2930c: dw $0000
#_1AE41A: #_2932c: dw $0000
#_1AE41C: #_2934c: dw Song21_Segment2_Track2
#_1AE41E: #_2936c: dw Song21_Segment2_Track3
#_1AE420: #_2938c: dw Song21_Segment2_Track4
#_1AE422: #_293Ac: dw Song21_Segment2_Track5
#_1AE424: #_293Cc: dw $0000
#_1AE426: #_293Ec: dw $0000

Song21_Segment5:
#_1AE428: #_2940c: dw Song21_Segment5_Track0
#_1AE42A: #_2942c: dw Song21_Segment5_Track1
#_1AE42C: #_2944c: dw Song21_Segment5_Track2
#_1AE42E: #_2946c: dw Song21_Segment5_Track3
#_1AE430: #_2948c: dw Song21_Segment5_Track4
#_1AE432: #_294Ac: dw $0000
#_1AE434: #_294Cc: dw $0000
#_1AE436: #_294Ec: dw $0000

Song21_Segment6:
#_1AE438: #_2950c: dw Song21_Segment6_Track0
#_1AE43A: #_2952c: dw Song21_Segment6_Track1
#_1AE43C: #_2954c: dw Song21_Segment6_Track2
#_1AE43E: #_2956c: dw Song21_Segment6_Track3
#_1AE440: #_2958c: dw Song21_Segment6_Track4
#_1AE442: #_295Ac: dw $0000
#_1AE444: #_295Cc: dw $0000
#_1AE446: #_295Ec: dw $0000

Song21_Segment8:
#_1AE448: #_2960c: dw Song21_Segment8_Track0
#_1AE44A: #_2962c: dw Song21_Segment8_Track1
#_1AE44C: #_2964c: dw $0000
#_1AE44E: #_2966c: dw $0000
#_1AE450: #_2968c: dw $0000
#_1AE452: #_296Ac: dw $0000
#_1AE454: #_296Cc: dw $0000
#_1AE456: #_296Ec: dw $0000

Song21_Segment9:
#_1AE458: #_2970c: dw Song21_Segment9_Track0
#_1AE45A: #_2972c: dw Song21_Segment9_Track1
#_1AE45C: #_2974c: dw Song21_Segment9_Track2
#_1AE45E: #_2976c: dw $0000
#_1AE460: #_2978c: dw $0000
#_1AE462: #_297Ac: dw $0000
#_1AE464: #_297Cc: dw $0000
#_1AE466: #_297Ec: dw $0000

Song21_SegmentA:
#_1AE468: #_2980c: dw Song21_SegmentA_Track0
#_1AE46A: #_2982c: dw Song21_SegmentA_Track1
#_1AE46C: #_2984c: dw Song21_SegmentA_Track2
#_1AE46E: #_2986c: dw Song21_SegmentA_Track3
#_1AE470: #_2988c: dw $0000
#_1AE472: #_298Ac: dw $0000
#_1AE474: #_298Cc: dw $0000
#_1AE476: #_298Ec: dw $0000

Song21_Segment0:
#_1AE478: #_2990c: dw Song21_Segment0_Track0
#_1AE47A: #_2992c: dw Song21_Segment0_Track1
#_1AE47C: #_2994c: dw Song21_Segment0_Track2
#_1AE47E: #_2996c: dw Song21_Segment0_Track3
#_1AE480: #_2998c: dw Song21_Segment0_Track4
#_1AE482: #_299Ac: dw Song21_Segment0_Track5
#_1AE484: #_299Cc: dw Song21_Segment0_Track6
#_1AE486: #_299Ec: dw Song21_Segment0_Track7

Song21_SegmentD:
#_1AE488: #_29A0c: dw Song21_SegmentD_Track0
#_1AE48A: #_29A2c: dw Song21_SegmentD_Track1
#_1AE48C: #_29A4c: dw Song21_SegmentD_Track2
#_1AE48E: #_29A6c: dw Song21_SegmentD_Track3
#_1AE490: #_29A8c: dw Song21_SegmentD_Track4
#_1AE492: #_29AAc: dw $0000
#_1AE494: #_29ACc: dw $0000
#_1AE496: #_29AEc: dw $0000

Song21_SegmentE:
#_1AE498: #_29B0c: dw Song21_SegmentE_Track0
#_1AE49A: #_29B2c: dw Song21_SegmentE_Track1
#_1AE49C: #_29B4c: dw Song21_SegmentE_Track2
#_1AE49E: #_29B6c: dw Song21_SegmentE_Track3
#_1AE4A0: #_29B8c: dw Song21_SegmentE_Track4
#_1AE4A2: #_29BAc: dw Song21_SegmentE_Track5
#_1AE4A4: #_29BCc: dw Song21_SegmentE_Track6
#_1AE4A6: #_29BEc: dw Song21_SegmentE_Track7

Song21_Segment3:
#_1AE4A8: #_29C0c: dw Song21_Segment3_Track0
#_1AE4AA: #_29C2c: dw Song21_Segment3_Track1
#_1AE4AC: #_29C4c: dw Song21_Segment3_Track2
#_1AE4AE: #_29C6c: dw $0000
#_1AE4B0: #_29C8c: dw $0000
#_1AE4B2: #_29CAc: dw Song21_Segment3_Track5
#_1AE4B4: #_29CCc: dw $0000
#_1AE4B6: #_29CEc: dw $0000

Song21_Segment4:
#_1AE4B8: #_29D0c: dw Song21_Segment4_Track0
#_1AE4BA: #_29D2c: dw Song21_Segment4_Track1
#_1AE4BC: #_29D4c: dw Song21_Segment4_Track2
#_1AE4BE: #_29D6c: dw Song21_Segment4_Track3
#_1AE4C0: #_29D8c: dw Song21_Segment4_Track4
#_1AE4C2: #_29DAc: dw Song21_Segment4_Track5
#_1AE4C4: #_29DCc: dw Song21_Segment4_Track6
#_1AE4C6: #_29DEc: dw Song21_Segment4_Track7

Song21_Segment7:
#_1AE4C8: #_29E0c: dw Song21_Segment7_Track0
#_1AE4CA: #_29E2c: dw Song21_Segment7_Track1
#_1AE4CC: #_29E4c: dw Song21_Segment7_Track2
#_1AE4CE: #_29E6c: dw Song21_Segment7_Track3
#_1AE4D0: #_29E8c: dw Song21_Segment7_Track4
#_1AE4D2: #_29EAc: dw $0000
#_1AE4D4: #_29ECc: dw $0000
#_1AE4D6: #_29EEc: dw $0000

Song21_SegmentB:
#_1AE4D8: #_29F0c: dw Song21_SegmentB_Track0
#_1AE4DA: #_29F2c: dw Song21_SegmentB_Track1
#_1AE4DC: #_29F4c: dw Song21_SegmentB_Track2
#_1AE4DE: #_29F6c: dw Song21_SegmentB_Track3
#_1AE4E0: #_29F8c: dw Song21_SegmentB_Track4
#_1AE4E2: #_29FAc: dw Song21_SegmentB_Track5
#_1AE4E4: #_29FCc: dw $0000
#_1AE4E6: #_29FEc: dw $0000

Song21_SegmentC:
#_1AE4E8: #_2A00c: dw Song21_SegmentC_Track0
#_1AE4EA: #_2A02c: dw Song21_SegmentC_Track1
#_1AE4EC: #_2A04c: dw Song21_SegmentC_Track2
#_1AE4EE: #_2A06c: dw Song21_SegmentC_Track3
#_1AE4F0: #_2A08c: dw Song21_SegmentC_Track4
#_1AE4F2: #_2A0Ac: dw Song21_SegmentC_Track5
#_1AE4F4: #_2A0Cc: dw $0000
#_1AE4F6: #_2A0Ec: dw $0000

Song21_Unused0:
#_1AE4F8: #_2A10c: dw Song21_Unused0_Track0
#_1AE4FA: #_2A12c: dw Song21_Unused0_Track1
#_1AE4FC: #_2A14c: dw Song21_Unused0_Track2
#_1AE4FE: #_2A16c: dw Song21_Unused0_Track3
#_1AE500: #_2A18c: dw Song21_Unused0_Track4
#_1AE502: #_2A1Ac: dw Song21_Unused0_Track5
#_1AE504: #_2A1Cc: dw Song21_Unused0_Track6
#_1AE506: #_2A1Ec: dw Song21_Unused0_Track7

;---------------------------------------------------------------------------------------------------

Song21_Segment1_Track0:
#_1AE508: #_2A20c: db !MASTER_VOLUME, $C8
#_1AE50A: #_2A22c: db !ECHO_CONFIG, $FF, $28, $28
#_1AE50E: #_2A26c: db !ECHO_FILTER, $02, $1E, $02
#_1AE512: #_2A2Ac: db !TEMPO, $15
#_1AE514: #_2A2Cc: db !TEMPO_GRAD, $5A, $1A
#_1AE517: #_2A2Fc: db !INSTR, $12
#_1AE519: #_2A31c: db !VOLUME, $C8
#_1AE51B: #_2A33c: db !VIBRATO, $12, $18, $16
#_1AE51F: #_2A37c: db !PAN, $0A
#_1AE521: #_2A39c: db !CALL_PART : dw Song21_Sub_34F5 : db 1
#_1AE525: #_2A3Dc: db !CALL_PART : dw Song21_Sub_3525 : db 1
#_1AE529: #_2A41c: db $18, $3D ; duration, params
#_1AE52B: #_2A43c: db A4
#_1AE52C: #_2A44c: db $30, $6D ; duration, params
#_1AE52E: #_2A46c: db F5
#_1AE52F: #_2A47c: db $10, $3D ; duration, params
#_1AE531: #_2A49c: db A4
#_1AE532: #_2A4Ac: db $08 ; duration
#_1AE533: #_2A4Bc: db A4
#_1AE534: #_2A4Cc: db $18 ; duration
#_1AE535: #_2A4Dc: db B4
#_1AE536: #_2A4Ec: db $48, $5D ; duration, params
#_1AE538: #_2A50c: db G5
#_1AE539: #_2A51c: db !VOLUME_GRAD, $5A, $3C
#_1AE53C: #_2A54c: db $60 ; duration
#_1AE53D: #_2A55c: db !TIE
#_1AE53E: #_2A56c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Segment1_Track1:
#_1AE53F: #_2A57c: db !INSTR, $0B
#_1AE541: #_2A59c: db !VOLUME, $C8
#_1AE543: #_2A5Bc: db !VIBRATO, $12, $18, $16
#_1AE547: #_2A5Fc: db !PAN, $0C
#_1AE549: #_2A61c: db !CALL_PART : dw Song21_Sub_34F5 : db 1
#_1AE54D: #_2A65c: db !CALL_PART : dw Song21_Sub_3525 : db 1
#_1AE551: #_2A69c: db $18, $3D ; duration, params
#_1AE553: #_2A6Bc: db A4
#_1AE554: #_2A6Cc: db $30, $6D ; duration, params
#_1AE556: #_2A6Ec: db F5
#_1AE557: #_2A6Fc: db $18, $3D ; duration, params
#_1AE559: #_2A71c: db A4
#_1AE55A: #_2A72c: db B4
#_1AE55B: #_2A73c: db $48, $5D ; duration, params
#_1AE55D: #_2A75c: db G5
#_1AE55E: #_2A76c: db !VOLUME_GRAD, $5A, $3C
#_1AE561: #_2A79c: db $60 ; duration
#_1AE562: #_2A7Ac: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_Segment1_Track2:
#_1AE563: #_2A7Bc: db !INSTR, $09
#_1AE565: #_2A7Dc: db !VOLUME, $DC
#_1AE567: #_2A7Fc: db !VIBRATO, $18, $1A, $1C
#_1AE56B: #_2A83c: db !PAN, $06
#_1AE56D: #_2A85c: db $18 ; duration
#_1AE56E: #_2A86c: db R
#_1AE56F: #_2A87c: db $30, $7D ; duration, params
#_1AE571: #_2A89c: db C3
#_1AE572: #_2A8Ac: db B2
#_1AE573: #_2A8Bc: db A2
#_1AE574: #_2A8Cc: db E2
#_1AE575: #_2A8Dc: db F2
#_1AE576: #_2A8Ec: db Fs2
#_1AE577: #_2A8Fc: db G2
#_1AE578: #_2A90c: db B2
#_1AE579: #_2A91c: db C3
#_1AE57A: #_2A92c: db B2
#_1AE57B: #_2A93c: db A2
#_1AE57C: #_2A94c: db E2
#_1AE57D: #_2A95c: db $60 ; duration
#_1AE57E: #_2A96c: db F2
#_1AE57F: #_2A97c: db $48 ; duration
#_1AE580: #_2A98c: db G2
#_1AE581: #_2A99c: db $10 ; duration
#_1AE582: #_2A9Ac: db C2
#_1AE583: #_2A9Bc: db $08 ; duration
#_1AE584: #_2A9Cc: db C2
#_1AE585: #_2A9Dc: db $48 ; duration
#_1AE586: #_2A9Ec: db C2
#_1AE587: #_2A9Fc: db $06 ; duration
#_1AE588: #_2AA0c: db C2
#_1AE589: #_2AA1c: db C2
#_1AE58A: #_2AA2c: db C2
#_1AE58B: #_2AA3c: db C2

;---------------------------------------------------------------------------------------------------

Song21_Segment1_Track3:
#_1AE58C: #_2AA4c: db !INSTR, $0B
#_1AE58E: #_2AA6c: db !VOLUME, $B4
#_1AE590: #_2AA8c: db !VIBRATO, $12, $18, $16
#_1AE594: #_2AACc: db !PAN, $08
#_1AE596: #_2AAEc: db !CALL_PART : dw Song21_Sub_3557 : db 1
#_1AE59A: #_2AB2c: db !CALL_PART : dw Song21_Sub_3587 : db 1
#_1AE59E: #_2AB6c: db $18, $3D ; duration, params
#_1AE5A0: #_2AB8c: db C4
#_1AE5A1: #_2AB9c: db $30, $6D ; duration, params
#_1AE5A3: #_2ABBc: db A4
#_1AE5A4: #_2ABCc: db $18, $3D ; duration, params
#_1AE5A6: #_2ABEc: db C4
#_1AE5A7: #_2ABFc: db D4
#_1AE5A8: #_2AC0c: db $48, $5D ; duration, params
#_1AE5AA: #_2AC2c: db B4
#_1AE5AB: #_2AC3c: db !VOLUME_GRAD, $5A, $3C
#_1AE5AE: #_2AC6c: db $60 ; duration
#_1AE5AF: #_2AC7c: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_Segment1_Track4:
#_1AE5B0: #_2AC8c: db !INSTR, $0A
#_1AE5B2: #_2ACAc: db !VOLUME, $8C
#_1AE5B4: #_2ACCc: db !VIBRATO, $18, $1A, $1C
#_1AE5B8: #_2AD0c: db !PAN, $10
#_1AE5BA: #_2AD2c: db !CALL_PART : dw Song21_Sub_35B9 : db 1
#_1AE5BE: #_2AD6c: db !CALL_PART : dw Song21_Sub_35C0 : db 1
#_1AE5C2: #_2ADAc: db $60 ; duration
#_1AE5C3: #_2ADBc: db C4
#_1AE5C4: #_2ADCc: db $48 ; duration
#_1AE5C5: #_2ADDc: db D4
#_1AE5C6: #_2ADEc: db $10 ; duration
#_1AE5C7: #_2ADFc: db C4
#_1AE5C8: #_2AE0c: db $08 ; duration
#_1AE5C9: #_2AE1c: db C4
#_1AE5CA: #_2AE2c: db $48 ; duration
#_1AE5CB: #_2AE3c: db C4
#_1AE5CC: #_2AE4c: db $06 ; duration
#_1AE5CD: #_2AE5c: db C4
#_1AE5CE: #_2AE6c: db C4
#_1AE5CF: #_2AE7c: db C4
#_1AE5D0: #_2AE8c: db C4

;---------------------------------------------------------------------------------------------------

Song21_Segment1_Track5:
#_1AE5D1: #_2AE9c: db !VOLUME, $A0
#_1AE5D3: #_2AEBc: db !INSTR, $0A
#_1AE5D5: #_2AEDc: db !VIBRATO, $18, $1A, $1C
#_1AE5D9: #_2AF1c: db !PAN, $0A
#_1AE5DB: #_2AF3c: db $18 ; duration
#_1AE5DC: #_2AF4c: db R
#_1AE5DD: #_2AF5c: db !CALL_PART : dw Song21_Sub_35CB : db 1
#_1AE5E1: #_2AF9c: db R
#_1AE5E2: #_2AFAc: db $48, $7D ; duration, params
#_1AE5E4: #_2AFCc: db E3
#_1AE5E5: #_2AFDc: db $06 ; duration
#_1AE5E6: #_2AFEc: db E3
#_1AE5E7: #_2AFFc: db E3
#_1AE5E8: #_2B00c: db E3
#_1AE5E9: #_2B01c: db E3

;---------------------------------------------------------------------------------------------------

Song21_Segment1_Track6:
#_1AE5EA: #_2B02c: db !INSTR, $02
#_1AE5EC: #_2B04c: db !VOLUME, $C8
#_1AE5EE: #_2B06c: db !PAN, $0D
#_1AE5F0: #_2B08c: db $18 ; duration
#_1AE5F1: #_2B09c: db R
#_1AE5F2: #_2B0Ac: db !CALL_PART : dw Song21_Sub_35D4 : db 1
#_1AE5F6: #_2B0Ec: db $60 ; duration
#_1AE5F7: #_2B0Fc: db A1
#_1AE5F8: #_2B10c: db !INSTR, $0C
#_1AE5FA: #_2B12c: db $0C, $79 ; duration, params
#_1AE5FC: #_2B14c: db As2
#_1AE5FD: #_2B15c: db As2
#_1AE5FE: #_2B16c: db $0C, $7A ; duration, params
#_1AE600: #_2B18c: db As2
#_1AE601: #_2B19c: db As2
#_1AE602: #_2B1Ac: db $0C, $7B ; duration, params
#_1AE604: #_2B1Cc: db As2
#_1AE605: #_2B1Dc: db $0C, $7C ; duration, params
#_1AE607: #_2B1Fc: db As2
#_1AE608: #_2B20c: db $0C, $7D ; duration, params
#_1AE60A: #_2B22c: db As2
#_1AE60B: #_2B23c: db $0C, $7E ; duration, params
#_1AE60D: #_2B25c: db As2
#_1AE60E: #_2B26c: db !INSTR, $02
#_1AE610: #_2B28c: db !CALL_PART : dw Song21_Sub_35D4 : db 1
#_1AE614: #_2B2Cc: db A1
#_1AE615: #_2B2Dc: db A1
#_1AE616: #_2B2Ec: db A1
#_1AE617: #_2B2Fc: db A1
#_1AE618: #_2B30c: db $60 ; duration
#_1AE619: #_2B31c: db A1

;---------------------------------------------------------------------------------------------------

Song21_Segment1_Track7:
#_1AE61A: #_2B32c: db !INSTR, $0C
#_1AE61C: #_2B34c: db !VOLUME, $C8
#_1AE61E: #_2B36c: db !PAN, $0D
#_1AE620: #_2B38c: db !CALL_PART : dw Song21_Sub_35B9 : db 1
#_1AE624: #_2B3Cc: db $06, $79 ; duration, params
#_1AE626: #_2B3Ec: db As2
#_1AE627: #_2B3Fc: db $0C ; duration
#_1AE628: #_2B40c: db As2
#_1AE629: #_2B41c: db $0C, $7A ; duration, params
#_1AE62B: #_2B43c: db As2
#_1AE62C: #_2B44c: db As2
#_1AE62D: #_2B45c: db $0C, $7B ; duration, params
#_1AE62F: #_2B47c: db As2
#_1AE630: #_2B48c: db $0C, $7C ; duration, params
#_1AE632: #_2B4Ac: db As2
#_1AE633: #_2B4Bc: db $0C, $7D ; duration, params
#_1AE635: #_2B4Dc: db As2
#_1AE636: #_2B4Ec: db $12, $7F ; duration, params
#_1AE638: #_2B50c: db As2
#_1AE639: #_2B51c: db $30, $7D ; duration, params
#_1AE63B: #_2B53c: db As2
#_1AE63C: #_2B54c: db As2
#_1AE63D: #_2B55c: db $60 ; duration
#_1AE63E: #_2B56c: db As2
#_1AE63F: #_2B57c: db As2
#_1AE640: #_2B58c: db As2
#_1AE641: #_2B59c: db R

;---------------------------------------------------------------------------------------------------

Song21_Segment2_Track2:
#_1AE642: #_2B5Ac: db $56, $7D ; duration, params
#_1AE644: #_2B5Cc: db C2
#_1AE645: #_2B5Dc: db $60 ; duration
#_1AE646: #_2B5Ec: db C2
#_1AE647: #_2B5Fc: db C2
#_1AE648: #_2B60c: db C2
#_1AE649: #_2B61c: db C2
#_1AE64A: #_2B62c: db C2
#_1AE64B: #_2B63c: db $6A ; duration
#_1AE64C: #_2B64c: db C2
#_1AE64D: #_2B65c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Segment2_Track3:
#_1AE64E: #_2B66c: db !VOLUME, $A0
#_1AE650: #_2B68c: db !INSTR, $0A
#_1AE652: #_2B6Ac: db !VIBRATO, $18, $1A, $1C
#_1AE656: #_2B6Ec: db !CALL_PART : dw Song21_Sub_35DB : db 1
#_1AE65A: #_2B72c: db $48 ; duration
#_1AE65B: #_2B73c: db R
#_1AE65C: #_2B74c: db $06, $7D ; duration, params
#_1AE65E: #_2B76c: db E4
#_1AE65F: #_2B77c: db E4
#_1AE660: #_2B78c: db E4
#_1AE661: #_2B79c: db E4
#_1AE662: #_2B7Ac: db $48 ; duration
#_1AE663: #_2B7Bc: db E4
#_1AE664: #_2B7Cc: db $06 ; duration
#_1AE665: #_2B7Dc: db E4
#_1AE666: #_2B7Ec: db E4
#_1AE667: #_2B7Fc: db E4
#_1AE668: #_2B80c: db E4
#_1AE669: #_2B81c: db $48 ; duration
#_1AE66A: #_2B82c: db F4
#_1AE66B: #_2B83c: db $06 ; duration
#_1AE66C: #_2B84c: db F4
#_1AE66D: #_2B85c: db F4
#_1AE66E: #_2B86c: db F4
#_1AE66F: #_2B87c: db F4
#_1AE670: #_2B88c: db $48 ; duration
#_1AE671: #_2B89c: db Gs4
#_1AE672: #_2B8Ac: db $08 ; duration
#_1AE673: #_2B8Bc: db Gs4
#_1AE674: #_2B8Cc: db G4
#_1AE675: #_2B8Dc: db F4
#_1AE676: #_2B8Ec: db $60 ; duration
#_1AE677: #_2B8Fc: db G4

;---------------------------------------------------------------------------------------------------

Song21_Segment2_Track4:
#_1AE678: #_2B90c: db $48, $7D ; duration, params
#_1AE67A: #_2B92c: db C4
#_1AE67B: #_2B93c: db $06 ; duration
#_1AE67C: #_2B94c: db C4
#_1AE67D: #_2B95c: db C4
#_1AE67E: #_2B96c: db C4
#_1AE67F: #_2B97c: db C4
#_1AE680: #_2B98c: db $48 ; duration
#_1AE681: #_2B99c: db C4
#_1AE682: #_2B9Ac: db $08 ; duration
#_1AE683: #_2B9Bc: db C4
#_1AE684: #_2B9Cc: db C4
#_1AE685: #_2B9Dc: db C4
#_1AE686: #_2B9Ec: db !CALL_PART : dw Song21_Sub_35DF : db 3
#_1AE68A: #_2BA2c: db $48 ; duration
#_1AE68B: #_2BA3c: db C4
#_1AE68C: #_2BA4c: db $08 ; duration
#_1AE68D: #_2BA5c: db C4
#_1AE68E: #_2BA6c: db C4
#_1AE68F: #_2BA7c: db C4
#_1AE690: #_2BA8c: db $48 ; duration
#_1AE691: #_2BA9c: db C4
#_1AE692: #_2BAAc: db $06 ; duration
#_1AE693: #_2BABc: db C4
#_1AE694: #_2BACc: db C4
#_1AE695: #_2BADc: db C4
#_1AE696: #_2BAEc: db C4

;---------------------------------------------------------------------------------------------------

Song21_Segment2_Track5:
#_1AE697: #_2BAFc: db !VOLUME, $A0
#_1AE699: #_2BB1c: db !INSTR, $0A
#_1AE69B: #_2BB3c: db !VIBRATO, $18, $1A, $1C
#_1AE69F: #_2BB7c: db $48, $7D ; duration, params
#_1AE6A1: #_2BB9c: db F3
#_1AE6A2: #_2BBAc: db $06 ; duration
#_1AE6A3: #_2BBBc: db F3
#_1AE6A4: #_2BBCc: db F3
#_1AE6A5: #_2BBDc: db F3
#_1AE6A6: #_2BBEc: db F3
#_1AE6A7: #_2BBFc: db $48 ; duration
#_1AE6A8: #_2BC0c: db Gs3
#_1AE6A9: #_2BC1c: db $08 ; duration
#_1AE6AA: #_2BC2c: db Gs3
#_1AE6AB: #_2BC3c: db G3
#_1AE6AC: #_2BC4c: db F3
#_1AE6AD: #_2BC5c: db $48 ; duration
#_1AE6AE: #_2BC6c: db G3
#_1AE6AF: #_2BC7c: db $06 ; duration
#_1AE6B0: #_2BC8c: db E3
#_1AE6B1: #_2BC9c: db E3
#_1AE6B2: #_2BCAc: db E3
#_1AE6B3: #_2BCBc: db E3
#_1AE6B4: #_2BCCc: db $48 ; duration
#_1AE6B5: #_2BCDc: db E3
#_1AE6B6: #_2BCEc: db $06 ; duration
#_1AE6B7: #_2BCFc: db E3
#_1AE6B8: #_2BD0c: db E3
#_1AE6B9: #_2BD1c: db E3
#_1AE6BA: #_2BD2c: db E3
#_1AE6BB: #_2BD3c: db $48 ; duration
#_1AE6BC: #_2BD4c: db F3
#_1AE6BD: #_2BD5c: db $06 ; duration
#_1AE6BE: #_2BD6c: db F3
#_1AE6BF: #_2BD7c: db F3
#_1AE6C0: #_2BD8c: db F3
#_1AE6C1: #_2BD9c: db F3
#_1AE6C2: #_2BDAc: db $48 ; duration
#_1AE6C3: #_2BDBc: db Gs3
#_1AE6C4: #_2BDCc: db $08 ; duration
#_1AE6C5: #_2BDDc: db Gs3
#_1AE6C6: #_2BDEc: db G3
#_1AE6C7: #_2BDFc: db F3
#_1AE6C8: #_2BE0c: db $48 ; duration
#_1AE6C9: #_2BE1c: db G3
#_1AE6CA: #_2BE2c: db !PAN, $0E
#_1AE6CC: #_2BE4c: db $08, $4D ; duration, params
#_1AE6CE: #_2BE6c: db G4
#_1AE6CF: #_2BE7c: db R
#_1AE6D0: #_2BE8c: db G4

;---------------------------------------------------------------------------------------------------

Song21_Segment5_Track0:
#_1AE6D1: #_2BE9c: db !TEMPO_GRAD, $5A, $1A
#_1AE6D4: #_2BECc: db !INSTR, $0A
#_1AE6D6: #_2BEEc: db !VOLUME, $C8
#_1AE6D8: #_2BF0c: db !VIBRATO, $12, $18, $16
#_1AE6DC: #_2BF4c: db !PAN, $0E
#_1AE6DE: #_2BF6c: db !CALL_PART : dw Song21_Sub_34F5 : db 1
#_1AE6E2: #_2BFAc: db !CALL_PART : dw Song21_Sub_3525 : db 1
#_1AE6E6: #_2BFEc: db $18, $3D ; duration, params
#_1AE6E8: #_2C00c: db A4
#_1AE6E9: #_2C01c: db $18, $6D ; duration, params
#_1AE6EB: #_2C03c: db F5
#_1AE6EC: #_2C04c: db $18, $3D ; duration, params
#_1AE6EE: #_2C06c: db D5
#_1AE6EF: #_2C07c: db $08 ; duration
#_1AE6F0: #_2C08c: db D5
#_1AE6F1: #_2C09c: db C5
#_1AE6F2: #_2C0Ac: db B4
#_1AE6F3: #_2C0Bc: db $48, $6D ; duration, params
#_1AE6F5: #_2C0Dc: db C5
#_1AE6F6: #_2C0Ec: db $10, $5D ; duration, params
#_1AE6F8: #_2C10c: db C5
#_1AE6F9: #_2C11c: db $08 ; duration
#_1AE6FA: #_2C12c: db B4
#_1AE6FB: #_2C13c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Segment5_Track1:
#_1AE6FC: #_2C14c: db !INSTR, $0A
#_1AE6FE: #_2C16c: db !VOLUME, $A0
#_1AE700: #_2C18c: db !VIBRATO, $12, $18, $16
#_1AE704: #_2C1Cc: db !PAN, $0C
#_1AE706: #_2C1Ec: db $08 ; duration
#_1AE707: #_2C1Fc: db R
#_1AE708: #_2C20c: db $10, $3D ; duration, params
#_1AE70A: #_2C22c: db G4
#_1AE70B: #_2C23c: db $08, $5D ; duration, params
#_1AE70D: #_2C25c: db G4
#_1AE70E: #_2C26c: db !CALL_PART : dw Song21_Sub_35E7 : db 1
#_1AE712: #_2C2Ac: db !CALL_PART : dw Song21_Sub_3525 : db 1
#_1AE716: #_2C2Ec: db $18, $3D ; duration, params
#_1AE718: #_2C30c: db A4
#_1AE719: #_2C31c: db $18, $6D ; duration, params
#_1AE71B: #_2C33c: db F5
#_1AE71C: #_2C34c: db $18, $3D ; duration, params
#_1AE71E: #_2C36c: db D5
#_1AE71F: #_2C37c: db $08 ; duration
#_1AE720: #_2C38c: db D5
#_1AE721: #_2C39c: db $08, $5D ; duration, params
#_1AE723: #_2C3Bc: db C5
#_1AE724: #_2C3Cc: db B4
#_1AE725: #_2C3Dc: db $48 ; duration
#_1AE726: #_2C3Ec: db C5
#_1AE727: #_2C3Fc: db $10 ; duration
#_1AE728: #_2C40c: db C5

;---------------------------------------------------------------------------------------------------

Song21_Segment5_Track2:
#_1AE729: #_2C41c: db !INSTR, $09
#_1AE72B: #_2C43c: db !VOLUME, $DC
#_1AE72D: #_2C45c: db !VIBRATO, $18, $1A, $1C
#_1AE731: #_2C49c: db !PAN, $02
#_1AE733: #_2C4Bc: db $18 ; duration
#_1AE734: #_2C4Cc: db R
#_1AE735: #_2C4Dc: db $30, $7D ; duration, params
#_1AE737: #_2C4Fc: db C3
#_1AE738: #_2C50c: db B2
#_1AE739: #_2C51c: db A2
#_1AE73A: #_2C52c: db E2
#_1AE73B: #_2C53c: db F2
#_1AE73C: #_2C54c: db Fs2
#_1AE73D: #_2C55c: db G2
#_1AE73E: #_2C56c: db B2
#_1AE73F: #_2C57c: db C3
#_1AE740: #_2C58c: db B2
#_1AE741: #_2C59c: db A2
#_1AE742: #_2C5Ac: db E2
#_1AE743: #_2C5Bc: db F2
#_1AE744: #_2C5Cc: db G2
#_1AE745: #_2C5Dc: db $60 ; duration
#_1AE746: #_2C5Ec: db C2

;---------------------------------------------------------------------------------------------------

Song21_Segment5_Track3:
#_1AE747: #_2C5Fc: db !INSTR, $0A
#_1AE749: #_2C61c: db !VOLUME, $B4
#_1AE74B: #_2C63c: db !VIBRATO, $12, $18, $16
#_1AE74F: #_2C67c: db !PAN, $08
#_1AE751: #_2C69c: db !CALL_PART : dw Song21_Sub_3557 : db 1
#_1AE755: #_2C6Dc: db !CALL_PART : dw Song21_Sub_3587 : db 1
#_1AE759: #_2C71c: db !CALL_PART : dw Song21_Sub_3611 : db 1

;---------------------------------------------------------------------------------------------------

Song21_Segment5_Track4:
#_1AE75D: #_2C75c: db !INSTR, $0A
#_1AE75F: #_2C77c: db !VOLUME, $8C
#_1AE761: #_2C79c: db !VIBRATO, $18, $1A, $1C
#_1AE765: #_2C7Dc: db !PAN, $0A
#_1AE767: #_2C7Fc: db !CALL_PART : dw Song21_Sub_35B9 : db 1
#_1AE76B: #_2C83c: db !CALL_PART : dw Song21_Sub_35C0 : db 1
#_1AE76F: #_2C87c: db F4
#_1AE770: #_2C88c: db D4
#_1AE771: #_2C89c: db $60 ; duration
#_1AE772: #_2C8Ac: db C4

;---------------------------------------------------------------------------------------------------

Song21_Segment6_Track0:
#_1AE773: #_2C8Bc: db !INSTR, $0A
#_1AE775: #_2C8Dc: db !VOLUME, $C8
#_1AE777: #_2C8Fc: db !PAN, $0E
#_1AE779: #_2C91c: db $48, $5D ; duration, params
#_1AE77B: #_2C93c: db A4
#_1AE77C: #_2C94c: db $10, $3D ; duration, params
#_1AE77E: #_2C96c: db B4
#_1AE77F: #_2C97c: db $08, $5D ; duration, params
#_1AE781: #_2C99c: db C5
#_1AE782: #_2C9Ac: db !CALL_PART : dw Song21_Sub_3623 : db 1
#_1AE786: #_2C9Ec: db $30, $7D ; duration, params
#_1AE788: #_2CA0c: db D5
#_1AE789: #_2CA1c: db $18, $5D ; duration, params
#_1AE78B: #_2CA3c: db C5
#_1AE78C: #_2CA4c: db $08, $3D ; duration, params
#_1AE78E: #_2CA6c: db C5
#_1AE78F: #_2CA7c: db B4
#_1AE790: #_2CA8c: db C5
#_1AE791: #_2CA9c: db !TEMPO_GRAD, $3C, $15
#_1AE794: #_2CACc: db $48, $7D ; duration, params
#_1AE796: #_2CAEc: db D5
#_1AE797: #_2CAFc: db $10, $5D ; duration, params
#_1AE799: #_2CB1c: db G4
#_1AE79A: #_2CB2c: db $08 ; duration
#_1AE79B: #_2CB3c: db G4
#_1AE79C: #_2CB4c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Segment6_Track1:
#_1AE79D: #_2CB5c: db $08 ; duration
#_1AE79E: #_2CB6c: db R
#_1AE79F: #_2CB7c: db $48, $5D ; duration, params
#_1AE7A1: #_2CB9c: db A4
#_1AE7A2: #_2CBAc: db $10, $3D ; duration, params
#_1AE7A4: #_2CBCc: db B4
#_1AE7A5: #_2CBDc: db $08, $5D ; duration, params
#_1AE7A7: #_2CBFc: db C5
#_1AE7A8: #_2CC0c: db !CALL_PART : dw Song21_Sub_3623 : db 1
#_1AE7AC: #_2CC4c: db $30, $6D ; duration, params
#_1AE7AE: #_2CC6c: db D5
#_1AE7AF: #_2CC7c: db $18, $5D ; duration, params
#_1AE7B1: #_2CC9c: db C5
#_1AE7B2: #_2CCAc: db $08, $3D ; duration, params
#_1AE7B4: #_2CCCc: db C5
#_1AE7B5: #_2CCDc: db B4
#_1AE7B6: #_2CCEc: db C5
#_1AE7B7: #_2CCFc: db $48, $7D ; duration, params
#_1AE7B9: #_2CD1c: db D5
#_1AE7BA: #_2CD2c: db $10, $5D ; duration, params
#_1AE7BC: #_2CD4c: db G4

;---------------------------------------------------------------------------------------------------

Song21_Segment6_Track2:
#_1AE7BD: #_2CD5c: db !INSTR, $09
#_1AE7BF: #_2CD7c: db !VOLUME, $DC
#_1AE7C1: #_2CD9c: db !VIBRATO, $18, $1A, $1C
#_1AE7C5: #_2CDDc: db !PAN, $02
#_1AE7C7: #_2CDFc: db $30, $7D ; duration, params
#_1AE7C9: #_2CE1c: db F2
#_1AE7CA: #_2CE2c: db F2
#_1AE7CB: #_2CE3c: db E2
#_1AE7CC: #_2CE4c: db E2
#_1AE7CD: #_2CE5c: db D2
#_1AE7CE: #_2CE6c: db G2
#_1AE7CF: #_2CE7c: db C2
#_1AE7D0: #_2CE8c: db $18 ; duration
#_1AE7D1: #_2CE9c: db C2
#_1AE7D2: #_2CEAc: db E2
#_1AE7D3: #_2CEBc: db $30 ; duration
#_1AE7D4: #_2CECc: db F2
#_1AE7D5: #_2CEDc: db F2
#_1AE7D6: #_2CEEc: db E2
#_1AE7D7: #_2CEFc: db E2
#_1AE7D8: #_2CF0c: db D2
#_1AE7D9: #_2CF1c: db D2
#_1AE7DA: #_2CF2c: db G2
#_1AE7DB: #_2CF3c: db $18 ; duration
#_1AE7DC: #_2CF4c: db G2
#_1AE7DD: #_2CF5c: db B2

;---------------------------------------------------------------------------------------------------

Song21_Segment6_Track3:
#_1AE7DE: #_2CF6c: db $48, $5D ; duration, params
#_1AE7E0: #_2CF8c: db C4
#_1AE7E1: #_2CF9c: db $10, $3D ; duration, params
#_1AE7E3: #_2CFBc: db D4
#_1AE7E4: #_2CFCc: db $08, $5D ; duration, params
#_1AE7E6: #_2CFEc: db E4
#_1AE7E7: #_2CFFc: db $48, $7D ; duration, params
#_1AE7E9: #_2D01c: db B3
#_1AE7EA: #_2D02c: db $10 ; duration
#_1AE7EB: #_2D03c: db B3
#_1AE7EC: #_2D04c: db $08, $4D ; duration, params
#_1AE7EE: #_2D06c: db B3
#_1AE7EF: #_2D07c: db $48, $6D ; duration, params
#_1AE7F1: #_2D09c: db A3
#_1AE7F2: #_2D0Ac: db $10, $3D ; duration, params
#_1AE7F4: #_2D0Cc: db B3
#_1AE7F5: #_2D0Dc: db $08, $6D ; duration, params
#_1AE7F7: #_2D0Fc: db C4
#_1AE7F8: #_2D10c: db $48 ; duration
#_1AE7F9: #_2D11c: db G3
#_1AE7FA: #_2D12c: db $10, $3D ; duration, params
#_1AE7FC: #_2D14c: db E4
#_1AE7FD: #_2D15c: db $08, $5D ; duration, params
#_1AE7FF: #_2D17c: db D4
#_1AE800: #_2D18c: db $48 ; duration
#_1AE801: #_2D19c: db C4
#_1AE802: #_2D1Ac: db $10, $3D ; duration, params
#_1AE804: #_2D1Cc: db D4
#_1AE805: #_2D1Dc: db $08, $5D ; duration, params
#_1AE807: #_2D1Fc: db E4
#_1AE808: #_2D20c: db $48, $7D ; duration, params
#_1AE80A: #_2D22c: db B3
#_1AE80B: #_2D23c: db $10, $4D ; duration, params
#_1AE80D: #_2D25c: db E4
#_1AE80E: #_2D26c: db $08 ; duration
#_1AE80F: #_2D27c: db E4
#_1AE810: #_2D28c: db $30, $7D ; duration, params
#_1AE812: #_2D2Ac: db F4
#_1AE813: #_2D2Bc: db $18, $5D ; duration, params
#_1AE815: #_2D2Dc: db E4
#_1AE816: #_2D2Ec: db $08, $3D ; duration, params
#_1AE818: #_2D30c: db E4
#_1AE819: #_2D31c: db D4
#_1AE81A: #_2D32c: db E4
#_1AE81B: #_2D33c: db $48, $7D ; duration, params
#_1AE81D: #_2D35c: db F4
#_1AE81E: #_2D36c: db $10, $3D ; duration, params
#_1AE820: #_2D38c: db B3
#_1AE821: #_2D39c: db $08, $6D ; duration, params
#_1AE823: #_2D3Bc: db B3

;---------------------------------------------------------------------------------------------------

Song21_Segment6_Track4:
#_1AE824: #_2D3Cc: db !INSTR, $09
#_1AE826: #_2D3Ec: db !VOLUME, $B4
#_1AE828: #_2D40c: db !VIBRATO, $18, $1A, $1C
#_1AE82C: #_2D44c: db !PAN, $08
#_1AE82E: #_2D46c: db $0C, $7D ; duration, params
#_1AE830: #_2D48c: db C4
#_1AE831: #_2D49c: db C4
#_1AE832: #_2D4Ac: db C4
#_1AE833: #_2D4Bc: db C4
#_1AE834: #_2D4Cc: db C4
#_1AE835: #_2D4Dc: db C4
#_1AE836: #_2D4Ec: db C4
#_1AE837: #_2D4Fc: db C4
#_1AE838: #_2D50c: db B3
#_1AE839: #_2D51c: db B3
#_1AE83A: #_2D52c: db B3
#_1AE83B: #_2D53c: db B3
#_1AE83C: #_2D54c: db B3
#_1AE83D: #_2D55c: db B3
#_1AE83E: #_2D56c: db B3
#_1AE83F: #_2D57c: db B3
#_1AE840: #_2D58c: db A3
#_1AE841: #_2D59c: db A3
#_1AE842: #_2D5Ac: db A3
#_1AE843: #_2D5Bc: db A3
#_1AE844: #_2D5Cc: db B3
#_1AE845: #_2D5Dc: db B3
#_1AE846: #_2D5Ec: db B3
#_1AE847: #_2D5Fc: db B3
#_1AE848: #_2D60c: db G3
#_1AE849: #_2D61c: db G3
#_1AE84A: #_2D62c: db G3
#_1AE84B: #_2D63c: db G3
#_1AE84C: #_2D64c: db G3
#_1AE84D: #_2D65c: db G3
#_1AE84E: #_2D66c: db G3
#_1AE84F: #_2D67c: db G3
#_1AE850: #_2D68c: db C4
#_1AE851: #_2D69c: db C4
#_1AE852: #_2D6Ac: db C4
#_1AE853: #_2D6Bc: db C4
#_1AE854: #_2D6Cc: db C4
#_1AE855: #_2D6Dc: db C4
#_1AE856: #_2D6Ec: db C4
#_1AE857: #_2D6Fc: db C4
#_1AE858: #_2D70c: db B3
#_1AE859: #_2D71c: db B3
#_1AE85A: #_2D72c: db B3
#_1AE85B: #_2D73c: db B3
#_1AE85C: #_2D74c: db B3
#_1AE85D: #_2D75c: db B3
#_1AE85E: #_2D76c: db B3
#_1AE85F: #_2D77c: db B3
#_1AE860: #_2D78c: db A3
#_1AE861: #_2D79c: db A3
#_1AE862: #_2D7Ac: db A3
#_1AE863: #_2D7Bc: db A3
#_1AE864: #_2D7Cc: db A3
#_1AE865: #_2D7Dc: db A3
#_1AE866: #_2D7Ec: db A3
#_1AE867: #_2D7Fc: db A3
#_1AE868: #_2D80c: db B3
#_1AE869: #_2D81c: db B3
#_1AE86A: #_2D82c: db B3
#_1AE86B: #_2D83c: db B3
#_1AE86C: #_2D84c: db B3
#_1AE86D: #_2D85c: db B3
#_1AE86E: #_2D86c: db $18 ; duration
#_1AE86F: #_2D87c: db F3

;---------------------------------------------------------------------------------------------------

Song21_Segment8_Track0:
#_1AE870: #_2D88c: db !MASTER_VOLUME, $64
#_1AE872: #_2D8Ac: db !MVOL_GRAD, $5A, $C8
#_1AE875: #_2D8Dc: db !INSTR, $0A
#_1AE877: #_2D8Fc: db !VOLUME, $64
#_1AE879: #_2D91c: db !PAN, $0E
#_1AE87B: #_2D93c: db !CALL_PART : dw Song21_Sub_364D : db 1
#_1AE87F: #_2D97c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Segment8_Track1:
#_1AE880: #_2D98c: db !INSTR, $0A
#_1AE882: #_2D9Ac: db !VOLUME, $64
#_1AE884: #_2D9Cc: db !PAN, $0C
#_1AE886: #_2D9Ec: db !CALL_PART : dw Song21_Sub_3670 : db 1

;---------------------------------------------------------------------------------------------------

Song21_Segment9_Track0:
#_1AE88A: #_2DA2c: db !CALL_PART : dw Song21_Sub_364D : db 1
#_1AE88E: #_2DA6c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Segment9_Track1:
#_1AE88F: #_2DA7c: db !CALL_PART : dw Song21_Sub_3670 : db 1

;---------------------------------------------------------------------------------------------------

Song21_Segment9_Track2:
#_1AE893: #_2DABc: db !CALL_PART : dw Song21_Sub_3693 : db 1
#_1AE897: #_2DAFc: db $60 ; duration
#_1AE898: #_2DB0c: db F4
#_1AE899: #_2DB1c: db $48 ; duration
#_1AE89A: #_2DB2c: db D4
#_1AE89B: #_2DB3c: db $10 ; duration
#_1AE89C: #_2DB4c: db B3
#_1AE89D: #_2DB5c: db $08 ; duration
#_1AE89E: #_2DB6c: db G3
#_1AE89F: #_2DB7c: db $60 ; duration
#_1AE8A0: #_2DB8c: db E4

;---------------------------------------------------------------------------------------------------

Song21_SegmentA_Track0:
#_1AE8A1: #_2DB9c: db !CALL_PART : dw Song21_Sub_364D : db 1
#_1AE8A5: #_2DBDc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_SegmentA_Track1:
#_1AE8A6: #_2DBEc: db !CALL_PART : dw Song21_Sub_3670 : db 1

;---------------------------------------------------------------------------------------------------

Song21_SegmentA_Track2:
#_1AE8AA: #_2DC2c: db !CALL_PART : dw Song21_Sub_3693 : db 1
#_1AE8AE: #_2DC6c: db $60 ; duration
#_1AE8AF: #_2DC7c: db F4
#_1AE8B0: #_2DC8c: db $48 ; duration
#_1AE8B1: #_2DC9c: db D4
#_1AE8B2: #_2DCAc: db $10 ; duration
#_1AE8B3: #_2DCBc: db B3
#_1AE8B4: #_2DCCc: db $08 ; duration
#_1AE8B5: #_2DCDc: db G3
#_1AE8B6: #_2DCEc: db $48 ; duration
#_1AE8B7: #_2DCFc: db E4
#_1AE8B8: #_2DD0c: db $18 ; duration
#_1AE8B9: #_2DD1c: db D4

;---------------------------------------------------------------------------------------------------

Song21_SegmentA_Track3:
#_1AE8BA: #_2DD2c: db !INSTR, $09
#_1AE8BC: #_2DD4c: db !VOLUME, $C8
#_1AE8BE: #_2DD6c: db !VIBRATO, $18, $1A, $1C
#_1AE8C2: #_2DDAc: db !PAN, $06
#_1AE8C4: #_2DDCc: db $60, $7D ; duration, params
#_1AE8C6: #_2DDEc: db C3
#_1AE8C7: #_2DDFc: db $54 ; duration
#_1AE8C8: #_2DE0c: db D3
#_1AE8C9: #_2DE1c: db $0C ; duration
#_1AE8CA: #_2DE2c: db C3
#_1AE8CB: #_2DE3c: db $60 ; duration
#_1AE8CC: #_2DE4c: db B2
#_1AE8CD: #_2DE5c: db $48 ; duration
#_1AE8CE: #_2DE6c: db C3
#_1AE8CF: #_2DE7c: db $18 ; duration
#_1AE8D0: #_2DE8c: db B2

;---------------------------------------------------------------------------------------------------

Song21_Segment0_Track0:
#_1AE8D1: #_2DE9c: db !SET_PERC, $19
#_1AE8D3: #_2DEBc: db !MASTER_VOLUME, $78
#_1AE8D5: #_2DEDc: db !MVOL_GRAD, $8C, $C8
#_1AE8D8: #_2DF0c: db !ECHO_CONFIG, $FF, $28, $28
#_1AE8DC: #_2DF4c: db !ECHO_FILTER, $02, $1E, $02
#_1AE8E0: #_2DF8c: db !TEMPO, $23
#_1AE8E2: #_2DFAc: db !INSTR, $09
#_1AE8E4: #_2DFCc: db !VOLUME, $C8
#_1AE8E6: #_2DFEc: db !VIBRATO, $12, $18, $16
#_1AE8EA: #_2E02c: db !PAN, $0A
#_1AE8EC: #_2E04c: db $30, $7D ; duration, params
#_1AE8EE: #_2E06c: db Ds5
#_1AE8EF: #_2E07c: db Gs4
#_1AE8F0: #_2E08c: db F5
#_1AE8F1: #_2E09c: db As4
#_1AE8F2: #_2E0Ac: db $60, $5D ; duration, params
#_1AE8F4: #_2E0Cc: db G5
#_1AE8F5: #_2E0Dc: db !TEMPO_GRAD, $FF, $12
#_1AE8F8: #_2E10c: db !TIE
#_1AE8F9: #_2E11c: db !MVOL_GRAD, $50, $8C
#_1AE8FC: #_2E14c: db !TIE
#_1AE8FD: #_2E15c: db !TIE
#_1AE8FE: #_2E16c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Segment0_Track1:
#_1AE8FF: #_2E17c: db !CALL_PART : dw Song21_Sub_36A5 : db 1
#_1AE903: #_2E1Bc: db !TIE
#_1AE904: #_2E1Cc: db !TIE
#_1AE905: #_2E1Dc: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_Segment0_Track2:
#_1AE906: #_2E1Ec: db !CALL_PART : dw Song21_Sub_36C0 : db 1
#_1AE90A: #_2E22c: db As2
#_1AE90B: #_2E23c: db C3
#_1AE90C: #_2E24c: db !TIE
#_1AE90D: #_2E25c: db !TIE
#_1AE90E: #_2E26c: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_Segment0_Track3:
#_1AE90F: #_2E27c: db !CALL_PART : dw Song21_Sub_36CE : db 1
#_1AE913: #_2E2Bc: db !TIE
#_1AE914: #_2E2Cc: db !TIE
#_1AE915: #_2E2Dc: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_Segment0_Track4:
#_1AE916: #_2E2Ec: db !CALL_PART : dw Song21_Sub_36E9 : db 1
#_1AE91A: #_2E32c: db C5
#_1AE91B: #_2E33c: db G4
#_1AE91C: #_2E34c: db E4
#_1AE91D: #_2E35c: db C4
#_1AE91E: #_2E36c: db $40 ; duration
#_1AE91F: #_2E37c: db G3
#_1AE920: #_2E38c: db $60 ; duration
#_1AE921: #_2E39c: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_Segment0_Track5:
#_1AE922: #_2E3Ac: db !CALL_PART : dw Song21_Sub_36FB : db 1
#_1AE926: #_2E3Ec: db $08 ; duration
#_1AE927: #_2E3Fc: db !TIE
#_1AE928: #_2E40c: db $20 ; duration
#_1AE929: #_2E41c: db G4
#_1AE92A: #_2E42c: db E4
#_1AE92B: #_2E43c: db C4
#_1AE92C: #_2E44c: db G3
#_1AE92D: #_2E45c: db $38 ; duration
#_1AE92E: #_2E46c: db E3
#_1AE92F: #_2E47c: db $60 ; duration
#_1AE930: #_2E48c: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_Segment0_Track6:
#_1AE931: #_2E49c: db !CALL_PART : dw Song21_Sub_3718 : db 1
#_1AE935: #_2E4Dc: db !TIE
#_1AE936: #_2E4Ec: db $20 ; duration
#_1AE937: #_2E4Fc: db E4
#_1AE938: #_2E50c: db C4
#_1AE939: #_2E51c: db G3
#_1AE93A: #_2E52c: db E3
#_1AE93B: #_2E53c: db $30 ; duration
#_1AE93C: #_2E54c: db C3
#_1AE93D: #_2E55c: db $60 ; duration
#_1AE93E: #_2E56c: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_Segment0_Track7:
#_1AE93F: #_2E57c: db !CALL_PART : dw Song21_Sub_3733 : db 1
#_1AE943: #_2E5Bc: db $18 ; duration
#_1AE944: #_2E5Cc: db !TIE
#_1AE945: #_2E5Dc: db $20 ; duration
#_1AE946: #_2E5Ec: db C4
#_1AE947: #_2E5Fc: db G3
#_1AE948: #_2E60c: db $08 ; duration
#_1AE949: #_2E61c: db E3
#_1AE94A: #_2E62c: db $18 ; duration
#_1AE94B: #_2E63c: db !TIE
#_1AE94C: #_2E64c: db $48 ; duration
#_1AE94D: #_2E65c: db C3
#_1AE94E: #_2E66c: db $60 ; duration
#_1AE94F: #_2E67c: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_SegmentD_Track0:
#_1AE950: #_2E68c: db !TEMPO_GRAD, $78, $1A
#_1AE953: #_2E6Bc: db !INSTR, $18
#_1AE955: #_2E6Dc: db !VOLUME, $C8
#_1AE957: #_2E6Fc: db !PAN, $0A
#_1AE959: #_2E71c: db !CALL_PART : dw Song21_Sub_34F5 : db 1
#_1AE95D: #_2E75c: db !CALL_PART : dw Song21_Sub_3525 : db 1
#_1AE961: #_2E79c: db $18, $3D ; duration, params
#_1AE963: #_2E7Bc: db A4
#_1AE964: #_2E7Cc: db $18, $6D ; duration, params
#_1AE966: #_2E7Ec: db F5
#_1AE967: #_2E7Fc: db $18, $3D ; duration, params
#_1AE969: #_2E81c: db D5
#_1AE96A: #_2E82c: db $08 ; duration
#_1AE96B: #_2E83c: db D5
#_1AE96C: #_2E84c: db C5
#_1AE96D: #_2E85c: db B4
#_1AE96E: #_2E86c: db $48 ; duration
#_1AE96F: #_2E87c: db C5
#_1AE970: #_2E88c: db !INSTR, $12
#_1AE972: #_2E8Ac: db !VOLUME, $C8
#_1AE974: #_2E8Cc: db !VIBRATO, $12, $18, $16
#_1AE978: #_2E90c: db !PAN, $08
#_1AE97A: #_2E92c: db !TEMPO, $17
#_1AE97C: #_2E94c: db $10 ; duration
#_1AE97D: #_2E95c: db C5
#_1AE97E: #_2E96c: db $08, $5D ; duration, params
#_1AE980: #_2E98c: db C5
#_1AE981: #_2E99c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_SegmentD_Track1:
#_1AE982: #_2E9Ac: db !INSTR, $09
#_1AE984: #_2E9Cc: db !VOLUME, $A0
#_1AE986: #_2E9Ec: db !VIBRATO, $12, $18, $16
#_1AE98A: #_2EA2c: db !PAN, $0E
#_1AE98C: #_2EA4c: db !CALL_PART : dw Song21_Sub_34F5 : db 1
#_1AE990: #_2EA8c: db !CALL_PART : dw Song21_Sub_3525 : db 1
#_1AE994: #_2EACc: db $18, $3D ; duration, params
#_1AE996: #_2EAEc: db A4
#_1AE997: #_2EAFc: db $18, $6D ; duration, params
#_1AE999: #_2EB1c: db F5
#_1AE99A: #_2EB2c: db $18, $3D ; duration, params
#_1AE99C: #_2EB4c: db D5
#_1AE99D: #_2EB5c: db $08 ; duration
#_1AE99E: #_2EB6c: db D5
#_1AE99F: #_2EB7c: db $08, $5D ; duration, params
#_1AE9A1: #_2EB9c: db C5
#_1AE9A2: #_2EBAc: db B4
#_1AE9A3: #_2EBBc: db $48 ; duration
#_1AE9A4: #_2EBCc: db C5
#_1AE9A5: #_2EBDc: db !INSTR, $0B
#_1AE9A7: #_2EBFc: db !VOLUME, $C8
#_1AE9A9: #_2EC1c: db !VIBRATO, $12, $18, $16
#_1AE9AD: #_2EC5c: db !PAN, $06
#_1AE9AF: #_2EC7c: db $10, $3D ; duration, params
#_1AE9B1: #_2EC9c: db C5
#_1AE9B2: #_2ECAc: db $08, $5D ; duration, params
#_1AE9B4: #_2ECCc: db C5

;---------------------------------------------------------------------------------------------------

Song21_SegmentD_Track2:
#_1AE9B5: #_2ECDc: db !INSTR, $0A
#_1AE9B7: #_2ECFc: db !VOLUME, $DC
#_1AE9B9: #_2ED1c: db !VIBRATO, $18, $1A, $1C
#_1AE9BD: #_2ED5c: db !PAN, $02
#_1AE9BF: #_2ED7c: db $18 ; duration
#_1AE9C0: #_2ED8c: db R
#_1AE9C1: #_2ED9c: db $30, $7D ; duration, params
#_1AE9C3: #_2EDBc: db C3
#_1AE9C4: #_2EDCc: db B2
#_1AE9C5: #_2EDDc: db A2
#_1AE9C6: #_2EDEc: db E2
#_1AE9C7: #_2EDFc: db F2
#_1AE9C8: #_2EE0c: db Fs2
#_1AE9C9: #_2EE1c: db G2
#_1AE9CA: #_2EE2c: db B2
#_1AE9CB: #_2EE3c: db C3
#_1AE9CC: #_2EE4c: db B2
#_1AE9CD: #_2EE5c: db A2
#_1AE9CE: #_2EE6c: db E2
#_1AE9CF: #_2EE7c: db F2
#_1AE9D0: #_2EE8c: db G2
#_1AE9D1: #_2EE9c: db C2
#_1AE9D2: #_2EEAc: db As1

;---------------------------------------------------------------------------------------------------

Song21_SegmentD_Track3:
#_1AE9D3: #_2EEBc: db !INSTR, $18
#_1AE9D5: #_2EEDc: db !VOLUME, $B4
#_1AE9D7: #_2EEFc: db !PAN, $08
#_1AE9D9: #_2EF1c: db !CALL_PART : dw Song21_Sub_3557 : db 1
#_1AE9DD: #_2EF5c: db !CALL_PART : dw Song21_Sub_3587 : db 1
#_1AE9E1: #_2EF9c: db $18, $3D ; duration, params
#_1AE9E3: #_2EFBc: db C4
#_1AE9E4: #_2EFCc: db $18, $6D ; duration, params
#_1AE9E6: #_2EFEc: db A4
#_1AE9E7: #_2EFFc: db $18, $3D ; duration, params
#_1AE9E9: #_2F01c: db F4
#_1AE9EA: #_2F02c: db $08 ; duration
#_1AE9EB: #_2F03c: db F4
#_1AE9EC: #_2F04c: db $08, $5D ; duration, params
#_1AE9EE: #_2F06c: db E4
#_1AE9EF: #_2F07c: db D4
#_1AE9F0: #_2F08c: db $48 ; duration
#_1AE9F1: #_2F09c: db E4
#_1AE9F2: #_2F0Ac: db !INSTR, $0B
#_1AE9F4: #_2F0Cc: db !VOLUME, $B4
#_1AE9F6: #_2F0Ec: db !VIBRATO, $12, $18, $16
#_1AE9FA: #_2F12c: db !PAN, $0C
#_1AE9FC: #_2F14c: db $10, $3D ; duration, params
#_1AE9FE: #_2F16c: db E4
#_1AE9FF: #_2F17c: db $08, $5D ; duration, params
#_1AEA01: #_2F19c: db E4

;---------------------------------------------------------------------------------------------------

Song21_SegmentD_Track4:
#_1AEA02: #_2F1Ac: db !INSTR, $18
#_1AEA04: #_2F1Cc: db !VOLUME, $B4
#_1AEA06: #_2F1Ec: db !PAN, $06
#_1AEA08: #_2F20c: db $18 ; duration
#_1AEA09: #_2F21c: db R
#_1AEA0A: #_2F22c: db $0C, $7D ; duration, params
#_1AEA0C: #_2F24c: db C3
#_1AEA0D: #_2F25c: db G3
#_1AEA0E: #_2F26c: db C4
#_1AEA0F: #_2F27c: db G3
#_1AEA10: #_2F28c: db B2
#_1AEA11: #_2F29c: db G3
#_1AEA12: #_2F2Ac: db B3
#_1AEA13: #_2F2Bc: db G3
#_1AEA14: #_2F2Cc: db A2
#_1AEA15: #_2F2Dc: db G3
#_1AEA16: #_2F2Ec: db C4
#_1AEA17: #_2F2Fc: db G3
#_1AEA18: #_2F30c: db E2
#_1AEA19: #_2F31c: db G3
#_1AEA1A: #_2F32c: db C4
#_1AEA1B: #_2F33c: db G3
#_1AEA1C: #_2F34c: db F2
#_1AEA1D: #_2F35c: db A3
#_1AEA1E: #_2F36c: db C4
#_1AEA1F: #_2F37c: db A3
#_1AEA20: #_2F38c: db Fs2
#_1AEA21: #_2F39c: db A3
#_1AEA22: #_2F3Ac: db C4
#_1AEA23: #_2F3Bc: db A3
#_1AEA24: #_2F3Cc: db G2
#_1AEA25: #_2F3Dc: db B3
#_1AEA26: #_2F3Ec: db D4
#_1AEA27: #_2F3Fc: db B3
#_1AEA28: #_2F40c: db B2
#_1AEA29: #_2F41c: db B3
#_1AEA2A: #_2F42c: db D4
#_1AEA2B: #_2F43c: db B3
#_1AEA2C: #_2F44c: db C3
#_1AEA2D: #_2F45c: db G3
#_1AEA2E: #_2F46c: db C4
#_1AEA2F: #_2F47c: db G3
#_1AEA30: #_2F48c: db B2
#_1AEA31: #_2F49c: db G3
#_1AEA32: #_2F4Ac: db B3
#_1AEA33: #_2F4Bc: db G3
#_1AEA34: #_2F4Cc: db A2
#_1AEA35: #_2F4Dc: db G3
#_1AEA36: #_2F4Ec: db C4
#_1AEA37: #_2F4Fc: db G3
#_1AEA38: #_2F50c: db E2
#_1AEA39: #_2F51c: db G3
#_1AEA3A: #_2F52c: db C4
#_1AEA3B: #_2F53c: db G3
#_1AEA3C: #_2F54c: db F2
#_1AEA3D: #_2F55c: db A3
#_1AEA3E: #_2F56c: db C4
#_1AEA3F: #_2F57c: db A3
#_1AEA40: #_2F58c: db G2
#_1AEA41: #_2F59c: db G3
#_1AEA42: #_2F5Ac: db B3
#_1AEA43: #_2F5Bc: db G3
#_1AEA44: #_2F5Cc: db C3
#_1AEA45: #_2F5Dc: db G3
#_1AEA46: #_2F5Ec: db C4
#_1AEA47: #_2F5Fc: db G3
#_1AEA48: #_2F60c: db As2
#_1AEA49: #_2F61c: db G3
#_1AEA4A: #_2F62c: db C4
#_1AEA4B: #_2F63c: db G3

;---------------------------------------------------------------------------------------------------

Song21_SegmentE_Track0:
#_1AEA4C: #_2F64c: db !MASTER_VOLUME, $C8
#_1AEA4E: #_2F66c: db !INSTR, $12
#_1AEA50: #_2F68c: db !VOLUME, $C8
#_1AEA52: #_2F6Ac: db !VIBRATO, $12, $18, $16
#_1AEA56: #_2F6Ec: db !PAN, $08
#_1AEA58: #_2F70c: db !CALL_PART : dw Song21_Sub_3750 : db 1
#_1AEA5C: #_2F74c: db $18, $3D ; duration, params
#_1AEA5E: #_2F76c: db D5
#_1AEA5F: #_2F77c: db $30, $6D ; duration, params
#_1AEA61: #_2F79c: db As5
#_1AEA62: #_2F7Ac: db $10, $3D ; duration, params
#_1AEA64: #_2F7Cc: db D5
#_1AEA65: #_2F7Dc: db $08 ; duration
#_1AEA66: #_2F7Ec: db D5
#_1AEA67: #_2F7Fc: db $18 ; duration
#_1AEA68: #_2F80c: db E5
#_1AEA69: #_2F81c: db $30, $5D ; duration, params
#_1AEA6B: #_2F83c: db C6
#_1AEA6C: #_2F84c: db $18 ; duration
#_1AEA6D: #_2F85c: db E5
#_1AEA6E: #_2F86c: db !TEMPO_GRAD, $50, $12
#_1AEA71: #_2F89c: db $60 ; duration
#_1AEA72: #_2F8Ac: db F5
#_1AEA73: #_2F8Bc: db F5
#_1AEA74: #_2F8Cc: db F5
#_1AEA75: #_2F8Dc: db $18 ; duration
#_1AEA76: #_2F8Ec: db !TIE
#_1AEA77: #_2F8Fc: db $10 ; duration
#_1AEA78: #_2F90c: db F4
#_1AEA79: #_2F91c: db $08 ; duration
#_1AEA7A: #_2F92c: db F4
#_1AEA7B: #_2F93c: db $30 ; duration
#_1AEA7C: #_2F94c: db F4
#_1AEA7D: #_2F95c: db !MVOL_GRAD, $5A, $50
#_1AEA80: #_2F98c: db $60 ; duration
#_1AEA81: #_2F99c: db !TIE
#_1AEA82: #_2F9Ac: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_SegmentE_Track1:
#_1AEA83: #_2F9Bc: db !INSTR, $0B
#_1AEA85: #_2F9Dc: db !VOLUME, $C8
#_1AEA87: #_2F9Fc: db !VIBRATO, $12, $18, $16
#_1AEA8B: #_2FA3c: db !PAN, $06
#_1AEA8D: #_2FA5c: db !CALL_PART : dw Song21_Sub_3750 : db 1
#_1AEA91: #_2FA9c: db $18, $3D ; duration, params
#_1AEA93: #_2FABc: db D5
#_1AEA94: #_2FACc: db $30, $6D ; duration, params
#_1AEA96: #_2FAEc: db As5
#_1AEA97: #_2FAFc: db $18, $3D ; duration, params
#_1AEA99: #_2FB1c: db D5
#_1AEA9A: #_2FB2c: db E5
#_1AEA9B: #_2FB3c: db $30, $5D ; duration, params
#_1AEA9D: #_2FB5c: db C6
#_1AEA9E: #_2FB6c: db $18 ; duration
#_1AEA9F: #_2FB7c: db E5
#_1AEAA0: #_2FB8c: db $60 ; duration
#_1AEAA1: #_2FB9c: db F5
#_1AEAA2: #_2FBAc: db F5
#_1AEAA3: #_2FBBc: db F5
#_1AEAA4: #_2FBCc: db $18 ; duration
#_1AEAA5: #_2FBDc: db !TIE
#_1AEAA6: #_2FBEc: db $10 ; duration
#_1AEAA7: #_2FBFc: db F4
#_1AEAA8: #_2FC0c: db $08 ; duration
#_1AEAA9: #_2FC1c: db F4
#_1AEAAA: #_2FC2c: db $30 ; duration
#_1AEAAB: #_2FC3c: db F4
#_1AEAAC: #_2FC4c: db $60 ; duration
#_1AEAAD: #_2FC5c: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_SegmentE_Track2:
#_1AEAAE: #_2FC6c: db !INSTR, $09
#_1AEAB0: #_2FC8c: db !VOLUME, $DC
#_1AEAB2: #_2FCAc: db !VIBRATO, $18, $1A, $1C
#_1AEAB6: #_2FCEc: db !PAN, $02
#_1AEAB8: #_2FD0c: db $30, $7D ; duration, params
#_1AEABA: #_2FD2c: db F3
#_1AEABB: #_2FD3c: db E3
#_1AEABC: #_2FD4c: db D3
#_1AEABD: #_2FD5c: db A2
#_1AEABE: #_2FD6c: db As2
#_1AEABF: #_2FD7c: db B2
#_1AEAC0: #_2FD8c: db C3
#_1AEAC1: #_2FD9c: db E3
#_1AEAC2: #_2FDAc: db F3
#_1AEAC3: #_2FDBc: db E3
#_1AEAC4: #_2FDCc: db D3
#_1AEAC5: #_2FDDc: db A2
#_1AEAC6: #_2FDEc: db $60 ; duration
#_1AEAC7: #_2FDFc: db As2
#_1AEAC8: #_2FE0c: db C3
#_1AEAC9: #_2FE1c: db Cs3
#_1AEACA: #_2FE2c: db Ds3
#_1AEACB: #_2FE3c: db $06 ; duration
#_1AEACC: #_2FE4c: db F3
#_1AEACD: #_2FE5c: db E3
#_1AEACE: #_2FE6c: db D3
#_1AEACF: #_2FE7c: db C3
#_1AEAD0: #_2FE8c: db F3
#_1AEAD1: #_2FE9c: db E3
#_1AEAD2: #_2FEAc: db D3
#_1AEAD3: #_2FEBc: db C3
#_1AEAD4: #_2FECc: db F3
#_1AEAD5: #_2FEDc: db E3
#_1AEAD6: #_2FEEc: db D3
#_1AEAD7: #_2FEFc: db C3
#_1AEAD8: #_2FF0c: db F3
#_1AEAD9: #_2FF1c: db E3
#_1AEADA: #_2FF2c: db D3
#_1AEADB: #_2FF3c: db C3
#_1AEADC: #_2FF4c: db $18 ; duration
#_1AEADD: #_2FF5c: db F3
#_1AEADE: #_2FF6c: db $10 ; duration
#_1AEADF: #_2FF7c: db F2
#_1AEAE0: #_2FF8c: db $08 ; duration
#_1AEAE1: #_2FF9c: db F2
#_1AEAE2: #_2FFAc: db $30 ; duration
#_1AEAE3: #_2FFBc: db F2
#_1AEAE4: #_2FFCc: db $60 ; duration
#_1AEAE5: #_2FFDc: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_SegmentE_Track3:
#_1AEAE6: #_2FFEc: db !INSTR, $0B
#_1AEAE8: #_3000c: db !VOLUME, $B4
#_1AEAEA: #_3002c: db !VIBRATO, $12, $18, $16
#_1AEAEE: #_3006c: db !PAN, $0C
#_1AEAF0: #_3008c: db $18, $5D ; duration, params
#_1AEAF2: #_300Ac: db A4
#_1AEAF3: #_300Bc: db $10, $3D ; duration, params
#_1AEAF5: #_300Dc: db F4
#_1AEAF6: #_300Ec: db $08, $5D ; duration, params
#_1AEAF8: #_3010c: db A4
#_1AEAF9: #_3011c: db $18 ; duration
#_1AEAFA: #_3012c: db As4
#_1AEAFB: #_3013c: db $10, $3D ; duration, params
#_1AEAFD: #_3015c: db E4
#_1AEAFE: #_3016c: db $08, $5D ; duration, params
#_1AEB00: #_3018c: db As4
#_1AEB01: #_3019c: db $20, $7D ; duration, params
#_1AEB03: #_301Bc: db D5
#_1AEB04: #_301Cc: db $08, $4D ; duration, params
#_1AEB06: #_301Ec: db C5
#_1AEB07: #_301Fc: db As4
#_1AEB08: #_3020c: db $18, $5D ; duration, params
#_1AEB0A: #_3022c: db A4
#_1AEB0B: #_3023c: db $18, $4D ; duration, params
#_1AEB0D: #_3025c: db F4
#_1AEB0E: #_3026c: db $18, $6D ; duration, params
#_1AEB10: #_3028c: db F4
#_1AEB11: #_3029c: db $18, $3D ; duration, params
#_1AEB13: #_302Bc: db As4
#_1AEB14: #_302Cc: db $18, $6D ; duration, params
#_1AEB16: #_302Ec: db B4
#_1AEB17: #_302Fc: db $18, $3D ; duration, params
#_1AEB19: #_3031c: db B4
#_1AEB1A: #_3032c: db $24, $6D ; duration, params
#_1AEB1C: #_3034c: db As4
#_1AEB1D: #_3035c: db $06, $3D ; duration, params
#_1AEB1F: #_3037c: db G4
#_1AEB20: #_3038c: db $06, $5D ; duration, params
#_1AEB22: #_303Ac: db F4
#_1AEB23: #_303Bc: db $18 ; duration
#_1AEB24: #_303Cc: db E4
#_1AEB25: #_303Dc: db $10, $3D ; duration, params
#_1AEB27: #_303Fc: db E4
#_1AEB28: #_3040c: db $08, $5D ; duration, params
#_1AEB2A: #_3042c: db E4
#_1AEB2B: #_3043c: db $18 ; duration
#_1AEB2C: #_3044c: db A4
#_1AEB2D: #_3045c: db $10, $3D ; duration, params
#_1AEB2F: #_3047c: db F4
#_1AEB30: #_3048c: db $08, $5D ; duration, params
#_1AEB32: #_304Ac: db A4
#_1AEB33: #_304Bc: db $18 ; duration
#_1AEB34: #_304Cc: db As4
#_1AEB35: #_304Dc: db $10, $3D ; duration, params
#_1AEB37: #_304Fc: db E4
#_1AEB38: #_3050c: db $08, $5D ; duration, params
#_1AEB3A: #_3052c: db As4
#_1AEB3B: #_3053c: db $20, $7D ; duration, params
#_1AEB3D: #_3055c: db D5
#_1AEB3E: #_3056c: db $08, $4D ; duration, params
#_1AEB40: #_3058c: db C5
#_1AEB41: #_3059c: db D5
#_1AEB42: #_305Ac: db $18, $5D ; duration, params
#_1AEB44: #_305Cc: db E5
#_1AEB45: #_305Dc: db $10, $6D ; duration, params
#_1AEB47: #_305Fc: db A4
#_1AEB48: #_3060c: db $08, $5D ; duration, params
#_1AEB4A: #_3062c: db G4
#_1AEB4B: #_3063c: db $18, $3D ; duration, params
#_1AEB4D: #_3065c: db F4
#_1AEB4E: #_3066c: db $30, $6D ; duration, params
#_1AEB50: #_3068c: db D5
#_1AEB51: #_3069c: db $18, $3D ; duration, params
#_1AEB53: #_306Bc: db F4
#_1AEB54: #_306Cc: db G4
#_1AEB55: #_306Dc: db $30, $5D ; duration, params
#_1AEB57: #_306Fc: db E5
#_1AEB58: #_3070c: db $18 ; duration
#_1AEB59: #_3071c: db G4
#_1AEB5A: #_3072c: db $60 ; duration
#_1AEB5B: #_3073c: db Gs4
#_1AEB5C: #_3074c: db As4
#_1AEB5D: #_3075c: db C5
#_1AEB5E: #_3076c: db $18 ; duration
#_1AEB5F: #_3077c: db !TIE
#_1AEB60: #_3078c: db $10 ; duration
#_1AEB61: #_3079c: db C4
#_1AEB62: #_307Ac: db $08 ; duration
#_1AEB63: #_307Bc: db C4
#_1AEB64: #_307Cc: db $30 ; duration
#_1AEB65: #_307Dc: db C4
#_1AEB66: #_307Ec: db $60 ; duration
#_1AEB67: #_307Fc: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_SegmentE_Track4:
#_1AEB68: #_3080c: db !INSTR, $0A
#_1AEB6A: #_3082c: db !VOLUME, $8C
#_1AEB6C: #_3084c: db !VIBRATO, $18, $1A, $1C
#_1AEB70: #_3088c: db !PAN, $10
#_1AEB72: #_308Ac: db $60 ; duration
#_1AEB73: #_308Bc: db R
#_1AEB74: #_308Cc: db $30 ; duration
#_1AEB75: #_308Dc: db R
#_1AEB76: #_308Ec: db R
#_1AEB77: #_308Fc: db $60 ; duration
#_1AEB78: #_3090c: db R
#_1AEB79: #_3091c: db $48 ; duration
#_1AEB7A: #_3092c: db R
#_1AEB7B: #_3093c: db $18, $7D ; duration, params
#_1AEB7D: #_3095c: db As4
#_1AEB7E: #_3096c: db $30 ; duration
#_1AEB7F: #_3097c: db A4
#_1AEB80: #_3098c: db G4
#_1AEB81: #_3099c: db F4
#_1AEB82: #_309Ac: db A4
#_1AEB83: #_309Bc: db $60 ; duration
#_1AEB84: #_309Cc: db F4
#_1AEB85: #_309Dc: db G4
#_1AEB86: #_309Ec: db F4
#_1AEB87: #_309Fc: db G4
#_1AEB88: #_30A0c: db A4
#_1AEB89: #_30A1c: db $18 ; duration
#_1AEB8A: #_30A2c: db !TIE
#_1AEB8B: #_30A3c: db $10 ; duration
#_1AEB8C: #_30A4c: db A3
#_1AEB8D: #_30A5c: db $08 ; duration
#_1AEB8E: #_30A6c: db A3
#_1AEB8F: #_30A7c: db $30 ; duration
#_1AEB90: #_30A8c: db A3
#_1AEB91: #_30A9c: db $60 ; duration
#_1AEB92: #_30AAc: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_SegmentE_Track5:
#_1AEB93: #_30ABc: db !INSTR, $0B
#_1AEB95: #_30ADc: db !VOLUME, $C8
#_1AEB97: #_30AFc: db !PAN, $0C
#_1AEB99: #_30B1c: db !VIBRATO, $1C, $14, $12
#_1AEB9D: #_30B5c: db $18 ; duration
#_1AEB9E: #_30B6c: db R
#_1AEB9F: #_30B7c: db $08, $5D ; duration, params
#_1AEBA1: #_30B9c: db C5
#_1AEBA2: #_30BAc: db C5
#_1AEBA3: #_30BBc: db C5
#_1AEBA4: #_30BCc: db $30 ; duration
#_1AEBA5: #_30BDc: db C5
#_1AEBA6: #_30BEc: db $18 ; duration
#_1AEBA7: #_30BFc: db R
#_1AEBA8: #_30C0c: db $08 ; duration
#_1AEBA9: #_30C1c: db C5
#_1AEBAA: #_30C2c: db C5
#_1AEBAB: #_30C3c: db C5
#_1AEBAC: #_30C4c: db $30 ; duration
#_1AEBAD: #_30C5c: db C5
#_1AEBAE: #_30C6c: db $18 ; duration
#_1AEBAF: #_30C7c: db R
#_1AEBB0: #_30C8c: db $08 ; duration
#_1AEBB1: #_30C9c: db D5
#_1AEBB2: #_30CAc: db D5
#_1AEBB3: #_30CBc: db D5
#_1AEBB4: #_30CCc: db $30 ; duration
#_1AEBB5: #_30CDc: db D5
#_1AEBB6: #_30CEc: db $28 ; duration
#_1AEBB7: #_30CFc: db R
#_1AEBB8: #_30D0c: db $04 ; duration
#_1AEBB9: #_30D1c: db E5
#_1AEBBA: #_30D2c: db E5
#_1AEBBB: #_30D3c: db $0C, $3D ; duration, params
#_1AEBBD: #_30D5c: db E5
#_1AEBBE: #_30D6c: db E5
#_1AEBBF: #_30D7c: db $08, $5D ; duration, params
#_1AEBC1: #_30D9c: db E5
#_1AEBC2: #_30DAc: db E5
#_1AEBC3: #_30DBc: db E5
#_1AEBC4: #_30DCc: db !CALL_PART : dw Song21_Sub_37AC : db 2
#_1AEBC8: #_30E0c: db $18 ; duration
#_1AEBC9: #_30E1c: db R
#_1AEBCA: #_30E2c: db $08 ; duration
#_1AEBCB: #_30E3c: db D5
#_1AEBCC: #_30E4c: db D5
#_1AEBCD: #_30E5c: db D5
#_1AEBCE: #_30E6c: db $30 ; duration
#_1AEBCF: #_30E7c: db D5
#_1AEBD0: #_30E8c: db $18 ; duration
#_1AEBD1: #_30E9c: db R
#_1AEBD2: #_30EAc: db $08 ; duration
#_1AEBD3: #_30EBc: db E5
#_1AEBD4: #_30ECc: db E5
#_1AEBD5: #_30EDc: db E5
#_1AEBD6: #_30EEc: db $30 ; duration
#_1AEBD7: #_30EFc: db E5
#_1AEBD8: #_30F0c: db $18 ; duration
#_1AEBD9: #_30F1c: db F5
#_1AEBDA: #_30F2c: db $08 ; duration
#_1AEBDB: #_30F3c: db F5
#_1AEBDC: #_30F4c: db F5
#_1AEBDD: #_30F5c: db F5
#_1AEBDE: #_30F6c: db $0C, $3D ; duration, params
#_1AEBE0: #_30F8c: db F5
#_1AEBE1: #_30F9c: db F5
#_1AEBE2: #_30FAc: db $08, $5D ; duration, params
#_1AEBE4: #_30FCc: db F5
#_1AEBE5: #_30FDc: db F5
#_1AEBE6: #_30FEc: db F5
#_1AEBE7: #_30FFc: db $18 ; duration
#_1AEBE8: #_3100c: db F5
#_1AEBE9: #_3101c: db $08 ; duration
#_1AEBEA: #_3102c: db F5
#_1AEBEB: #_3103c: db F5
#_1AEBEC: #_3104c: db F5
#_1AEBED: #_3105c: db $0C, $3D ; duration, params
#_1AEBEF: #_3107c: db F5
#_1AEBF0: #_3108c: db F5
#_1AEBF1: #_3109c: db $08 ; duration
#_1AEBF2: #_310Ac: db F5
#_1AEBF3: #_310Bc: db F5
#_1AEBF4: #_310Cc: db F5
#_1AEBF5: #_310Dc: db $60, $5D ; duration, params
#_1AEBF7: #_310Fc: db A5
#_1AEBF8: #_3110c: db $18 ; duration
#_1AEBF9: #_3111c: db !TIE
#_1AEBFA: #_3112c: db $10 ; duration
#_1AEBFB: #_3113c: db C4
#_1AEBFC: #_3114c: db $08 ; duration
#_1AEBFD: #_3115c: db C4
#_1AEBFE: #_3116c: db $30 ; duration
#_1AEBFF: #_3117c: db C4
#_1AEC00: #_3118c: db $60 ; duration
#_1AEC01: #_3119c: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_SegmentE_Track6:
#_1AEC02: #_311Ac: db !INSTR, $02
#_1AEC04: #_311Cc: db !VOLUME, $DC
#_1AEC06: #_311Ec: db !PAN, $0D
#_1AEC08: #_3120c: db !CALL_PART : dw Song21_Sub_35D4 : db 1
#_1AEC0C: #_3124c: db A1
#_1AEC0D: #_3125c: db A1
#_1AEC0E: #_3126c: db $0C, $79 ; duration, params
#_1AEC10: #_3128c: db A1
#_1AEC11: #_3129c: db A1
#_1AEC12: #_312Ac: db $0C, $7A ; duration, params
#_1AEC14: #_312Cc: db A1
#_1AEC15: #_312Dc: db A1
#_1AEC16: #_312Ec: db $0C, $7B ; duration, params
#_1AEC18: #_3130c: db A1
#_1AEC19: #_3131c: db $0C, $7C ; duration, params
#_1AEC1B: #_3133c: db A1
#_1AEC1C: #_3134c: db $0C, $7D ; duration, params
#_1AEC1E: #_3136c: db A1
#_1AEC1F: #_3137c: db $0C, $7E ; duration, params
#_1AEC21: #_3139c: db A1
#_1AEC22: #_313Ac: db !CALL_PART : dw Song21_Sub_35D4 : db 1
#_1AEC26: #_313Ec: db A1
#_1AEC27: #_313Fc: db A1
#_1AEC28: #_3140c: db A1
#_1AEC29: #_3141c: db A1
#_1AEC2A: #_3142c: db $60 ; duration
#_1AEC2B: #_3143c: db A1
#_1AEC2C: #_3144c: db A1
#_1AEC2D: #_3145c: db $18 ; duration
#_1AEC2E: #_3146c: db A1
#_1AEC2F: #_3147c: db A1
#_1AEC30: #_3148c: db A1
#_1AEC31: #_3149c: db A1
#_1AEC32: #_314Ac: db A1
#_1AEC33: #_314Bc: db $10 ; duration
#_1AEC34: #_314Cc: db A1
#_1AEC35: #_314Dc: db $08 ; duration
#_1AEC36: #_314Ec: db A1
#_1AEC37: #_314Fc: db $30 ; duration
#_1AEC38: #_3150c: db A1
#_1AEC39: #_3151c: db $60 ; duration
#_1AEC3A: #_3152c: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_SegmentE_Track7:
#_1AEC3B: #_3153c: db !INSTR, $0C
#_1AEC3D: #_3155c: db !VOLUME, $C8
#_1AEC3F: #_3157c: db !PAN, $06
#_1AEC41: #_3159c: db $60 ; duration
#_1AEC42: #_315Ac: db R
#_1AEC43: #_315Bc: db $30 ; duration
#_1AEC44: #_315Cc: db R
#_1AEC45: #_315Dc: db R
#_1AEC46: #_315Ec: db $60 ; duration
#_1AEC47: #_315Fc: db R
#_1AEC48: #_3160c: db $30 ; duration
#_1AEC49: #_3161c: db R
#_1AEC4A: #_3162c: db R
#_1AEC4B: #_3163c: db $30, $7D ; duration, params
#_1AEC4D: #_3165c: db As2
#_1AEC4E: #_3166c: db As2
#_1AEC4F: #_3167c: db $60 ; duration
#_1AEC50: #_3168c: db As2
#_1AEC51: #_3169c: db As2
#_1AEC52: #_316Ac: db As2
#_1AEC53: #_316Bc: db As2
#_1AEC54: #_316Cc: db As2
#_1AEC55: #_316Dc: db As2
#_1AEC56: #_316Ec: db $30 ; duration
#_1AEC57: #_316Fc: db As2
#_1AEC58: #_3170c: db C2
#_1AEC59: #_3171c: db $60 ; duration
#_1AEC5A: #_3172c: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_Segment3_Track0:
#_1AEC5B: #_3173c: db !VOLUME, $A0
#_1AEC5D: #_3175c: db !INSTR, $0A
#_1AEC5F: #_3177c: db !VIBRATO, $18, $1A, $1C
#_1AEC63: #_317Bc: db !PAN, $0A
#_1AEC65: #_317Dc: db !CALL_PART : dw Song21_Sub_37B5 : db 1
#_1AEC69: #_3181c: db !CALL_PART : dw Song21_Sub_37ED : db 1
#_1AEC6D: #_3185c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Segment3_Track1:
#_1AEC6E: #_3186c: db !VOLUME, $A0
#_1AEC70: #_3188c: db !INSTR, $0A
#_1AEC72: #_318Ac: db !VIBRATO, $18, $1A, $1C
#_1AEC76: #_318Ec: db !PAN, $08
#_1AEC78: #_3190c: db $30 ; duration
#_1AEC79: #_3191c: db R
#_1AEC7A: #_3192c: db R
#_1AEC7B: #_3193c: db !CALL_PART : dw Song21_Sub_35DB : db 1
#_1AEC7F: #_3197c: db $48 ; duration
#_1AEC80: #_3198c: db R
#_1AEC81: #_3199c: db $18 ; duration
#_1AEC82: #_319Ac: db R
#_1AEC83: #_319Bc: db $60 ; duration
#_1AEC84: #_319Cc: db R
#_1AEC85: #_319Dc: db $18 ; duration
#_1AEC86: #_319Ec: db R
#_1AEC87: #_319Fc: db $48 ; duration
#_1AEC88: #_31A0c: db R
#_1AEC89: #_31A1c: db !CALL_PART : dw Song21_Sub_3800 : db 1

;---------------------------------------------------------------------------------------------------

Song21_Segment3_Track2:
#_1AEC8D: #_31A5c: db !VOLUME, $A0
#_1AEC8F: #_31A7c: db !INSTR, $0A
#_1AEC91: #_31A9c: db !VIBRATO, $18, $1A, $1C
#_1AEC95: #_31ADc: db !PAN, $06
#_1AEC97: #_31AFc: db $60, $7D ; duration, params
#_1AEC99: #_31B1c: db A3
#_1AEC9A: #_31B2c: db E3
#_1AEC9B: #_31B3c: db F3
#_1AEC9C: #_31B4c: db C3
#_1AEC9D: #_31B5c: db D3
#_1AEC9E: #_31B6c: db A3
#_1AEC9F: #_31B7c: db Fs3
#_1AECA0: #_31B8c: db G3

;---------------------------------------------------------------------------------------------------

Song21_Segment3_Track5:
#_1AECA1: #_31B9c: db !CALL_PART : dw Song21_Sub_380B : db 1
#_1AECA5: #_31BDc: db !CALL_PART : dw Song21_Sub_3829 : db 1

;---------------------------------------------------------------------------------------------------

Song21_Segment4_Track0:
#_1AECA9: #_31C1c: db !CALL_PART : dw Song21_Sub_3838 : db 1
#_1AECAD: #_31C5c: db !CALL_PART : dw Song21_Sub_3870 : db 1
#_1AECB1: #_31C9c: db D4
#_1AECB2: #_31CAc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Segment4_Track1:
#_1AECB3: #_31CBc: db !VOLUME, $A0
#_1AECB5: #_31CDc: db !INSTR, $0A
#_1AECB7: #_31CFc: db !VIBRATO, $18, $1A, $1C
#_1AECBB: #_31D3c: db !PAN, $0E
#_1AECBD: #_31D5c: db !CALL_PART : dw Song21_Sub_388E : db 1
#_1AECC1: #_31D9c: db $48 ; duration
#_1AECC2: #_31DAc: db Fs4
#_1AECC3: #_31DBc: db $10 ; duration
#_1AECC4: #_31DCc: db Cs4
#_1AECC5: #_31DDc: db $08 ; duration
#_1AECC6: #_31DEc: db Ds4
#_1AECC7: #_31DFc: db $48 ; duration
#_1AECC8: #_31E0c: db E4
#_1AECC9: #_31E1c: db $08 ; duration
#_1AECCA: #_31E2c: db E4
#_1AECCB: #_31E3c: db E4
#_1AECCC: #_31E4c: db E4
#_1AECCD: #_31E5c: db $48 ; duration
#_1AECCE: #_31E6c: db F4
#_1AECCF: #_31E7c: db B4

;---------------------------------------------------------------------------------------------------

Song21_Segment4_Track2:
#_1AECD0: #_31E8c: db $60, $7D ; duration, params
#_1AECD2: #_31EAc: db A3
#_1AECD3: #_31EBc: db E3
#_1AECD4: #_31ECc: db F3
#_1AECD5: #_31EDc: db C3
#_1AECD6: #_31EEc: db D3
#_1AECD7: #_31EFc: db A3
#_1AECD8: #_31F0c: db Gs3
#_1AECD9: #_31F1c: db Fs3
#_1AECDA: #_31F2c: db !TEMPO_GRAD, $50, $15
#_1AECDD: #_31F5c: db E3
#_1AECDE: #_31F6c: db $48 ; duration
#_1AECDF: #_31F7c: db D3
#_1AECE0: #_31F8c: db G3

;---------------------------------------------------------------------------------------------------

Song21_Segment4_Track3:
#_1AECE1: #_31F9c: db !CALL_PART : dw Song21_Sub_38B8 : db 1
#_1AECE5: #_31FDc: db R
#_1AECE6: #_31FEc: db R
#_1AECE7: #_31FFc: db $18, $7D ; duration, params
#_1AECE9: #_3201c: db D3
#_1AECEA: #_3202c: db E4
#_1AECEB: #_3203c: db E5
#_1AECEC: #_3204c: db G3
#_1AECED: #_3205c: db G4
#_1AECEE: #_3206c: db G5

;---------------------------------------------------------------------------------------------------

Song21_Segment4_Track4:
#_1AECEF: #_3207c: db !CALL_PART : dw Song21_Sub_38B8 : db 1
#_1AECF3: #_320Bc: db R
#_1AECF4: #_320Cc: db R
#_1AECF5: #_320Dc: db $06 ; duration
#_1AECF6: #_320Ec: db R
#_1AECF7: #_320Fc: db $18, $7D ; duration, params
#_1AECF9: #_3211c: db F3
#_1AECFA: #_3212c: db F4
#_1AECFB: #_3213c: db $12 ; duration
#_1AECFC: #_3214c: db F5
#_1AECFD: #_3215c: db $06 ; duration
#_1AECFE: #_3216c: db R
#_1AECFF: #_3217c: db $18 ; duration
#_1AED00: #_3218c: db B3
#_1AED01: #_3219c: db B4
#_1AED02: #_321Ac: db $12 ; duration
#_1AED03: #_321Bc: db B5

;---------------------------------------------------------------------------------------------------

Song21_Segment4_Track5:
#_1AED04: #_321Cc: db !CALL_PART : dw Song21_Sub_380B : db 1
#_1AED08: #_3220c: db $48 ; duration
#_1AED09: #_3221c: db E4
#_1AED0A: #_3222c: db $10 ; duration
#_1AED0B: #_3223c: db A4
#_1AED0C: #_3224c: db $08 ; duration
#_1AED0D: #_3225c: db B4
#_1AED0E: #_3226c: db !CALL_PART : dw Song21_Sub_38C7 : db 2
#_1AED12: #_322Ac: db $48 ; duration
#_1AED13: #_322Bc: db C5
#_1AED14: #_322Cc: db $08 ; duration
#_1AED15: #_322Dc: db C5
#_1AED16: #_322Ec: db C5
#_1AED17: #_322Fc: db C5
#_1AED18: #_3230c: db $48 ; duration
#_1AED19: #_3231c: db C5
#_1AED1A: #_3232c: db D5

;---------------------------------------------------------------------------------------------------

Song21_Segment4_Track6:
#_1AED1B: #_3233c: db !CALL_PART : dw Song21_Sub_38B8 : db 1
#_1AED1F: #_3237c: db R
#_1AED20: #_3238c: db R
#_1AED21: #_3239c: db $0C ; duration
#_1AED22: #_323Ac: db R
#_1AED23: #_323Bc: db $18, $7D ; duration, params
#_1AED25: #_323Dc: db A3
#_1AED26: #_323Ec: db A4
#_1AED27: #_323Fc: db $0C ; duration
#_1AED28: #_3240c: db A5
#_1AED29: #_3241c: db R
#_1AED2A: #_3242c: db $18 ; duration
#_1AED2B: #_3243c: db D4
#_1AED2C: #_3244c: db D5
#_1AED2D: #_3245c: db $0C ; duration
#_1AED2E: #_3246c: db D6

;---------------------------------------------------------------------------------------------------

Song21_Segment4_Track7:
#_1AED2F: #_3247c: db !CALL_PART : dw Song21_Sub_38B8 : db 1
#_1AED33: #_324Bc: db R
#_1AED34: #_324Cc: db R
#_1AED35: #_324Dc: db $12 ; duration
#_1AED36: #_324Ec: db R
#_1AED37: #_324Fc: db $18, $7D ; duration, params
#_1AED39: #_3251c: db C4
#_1AED3A: #_3252c: db C5
#_1AED3B: #_3253c: db $06 ; duration
#_1AED3C: #_3254c: db C6
#_1AED3D: #_3255c: db $12 ; duration
#_1AED3E: #_3256c: db R
#_1AED3F: #_3257c: db $18 ; duration
#_1AED40: #_3258c: db F4
#_1AED41: #_3259c: db F5
#_1AED42: #_325Ac: db $06 ; duration
#_1AED43: #_325Bc: db R

;---------------------------------------------------------------------------------------------------

Song21_Segment7_Track0:
#_1AED44: #_325Cc: db !TEMPO_GRAD, $5A, $1A
#_1AED47: #_325Fc: db !INSTR, $0A
#_1AED49: #_3261c: db !VOLUME, $C8
#_1AED4B: #_3263c: db !VIBRATO, $12, $18, $16
#_1AED4F: #_3267c: db !PAN, $0E
#_1AED51: #_3269c: db $18, $5D ; duration, params
#_1AED53: #_326Bc: db C5
#_1AED54: #_326Cc: db $10, $3D ; duration, params
#_1AED56: #_326Ec: db G4
#_1AED57: #_326Fc: db $08, $5D ; duration, params
#_1AED59: #_3271c: db C5
#_1AED5A: #_3272c: db $18 ; duration
#_1AED5B: #_3273c: db D5
#_1AED5C: #_3274c: db $10, $3D ; duration, params
#_1AED5E: #_3276c: db G4
#_1AED5F: #_3277c: db $08, $5D ; duration, params
#_1AED61: #_3279c: db D5
#_1AED62: #_327Ac: db !CALL_PART : dw Song21_Sub_38CE : db 1
#_1AED66: #_327Ec: db !CALL_PART : dw Song21_Sub_3525 : db 1
#_1AED6A: #_3282c: db $18, $3D ; duration, params
#_1AED6C: #_3284c: db A4
#_1AED6D: #_3285c: db $18, $6D ; duration, params
#_1AED6F: #_3287c: db F5
#_1AED70: #_3288c: db $18, $3D ; duration, params
#_1AED72: #_328Ac: db D5
#_1AED73: #_328Bc: db $08 ; duration
#_1AED74: #_328Cc: db D5
#_1AED75: #_328Dc: db C5
#_1AED76: #_328Ec: db B4
#_1AED77: #_328Fc: db $60 ; duration
#_1AED78: #_3290c: db C5
#_1AED79: #_3291c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Segment7_Track1:
#_1AED7A: #_3292c: db !INSTR, $0A
#_1AED7C: #_3294c: db !VOLUME, $A0
#_1AED7E: #_3296c: db !VIBRATO, $12, $18, $16
#_1AED82: #_329Ac: db !PAN, $0C
#_1AED84: #_329Cc: db $08 ; duration
#_1AED85: #_329Dc: db R
#_1AED86: #_329Ec: db $18, $5D ; duration, params
#_1AED88: #_32A0c: db C5
#_1AED89: #_32A1c: db $10, $3D ; duration, params
#_1AED8B: #_32A3c: db G4
#_1AED8C: #_32A4c: db $08, $5D ; duration, params
#_1AED8E: #_32A6c: db C5
#_1AED8F: #_32A7c: db $18 ; duration
#_1AED90: #_32A8c: db D5
#_1AED91: #_32A9c: db $10, $3D ; duration, params
#_1AED93: #_32ABc: db G4
#_1AED94: #_32ACc: db $08, $5D ; duration, params
#_1AED96: #_32AEc: db D5
#_1AED97: #_32AFc: db !CALL_PART : dw Song21_Sub_38CE : db 1
#_1AED9B: #_32B3c: db !CALL_PART : dw Song21_Sub_3525 : db 1
#_1AED9F: #_32B7c: db $18, $3D ; duration, params
#_1AEDA1: #_32B9c: db A4
#_1AEDA2: #_32BAc: db $18, $6D ; duration, params
#_1AEDA4: #_32BCc: db F5
#_1AEDA5: #_32BDc: db $18, $3D ; duration, params
#_1AEDA7: #_32BFc: db D5
#_1AEDA8: #_32C0c: db $08 ; duration
#_1AEDA9: #_32C1c: db D5
#_1AEDAA: #_32C2c: db $08, $5D ; duration, params
#_1AEDAC: #_32C4c: db C5
#_1AEDAD: #_32C5c: db B4
#_1AEDAE: #_32C6c: db $58 ; duration
#_1AEDAF: #_32C7c: db C5

;---------------------------------------------------------------------------------------------------

Song21_Segment7_Track2:
#_1AEDB0: #_32C8c: db !INSTR, $09
#_1AEDB2: #_32CAc: db !VOLUME, $DC
#_1AEDB4: #_32CCc: db !VIBRATO, $18, $1A, $1C
#_1AEDB8: #_32D0c: db !PAN, $02
#_1AEDBA: #_32D2c: db $30, $7D ; duration, params
#_1AEDBC: #_32D4c: db C3
#_1AEDBD: #_32D5c: db B2
#_1AEDBE: #_32D6c: db A2
#_1AEDBF: #_32D7c: db E2
#_1AEDC0: #_32D8c: db F2
#_1AEDC1: #_32D9c: db Fs2
#_1AEDC2: #_32DAc: db G2
#_1AEDC3: #_32DBc: db B2
#_1AEDC4: #_32DCc: db C3
#_1AEDC5: #_32DDc: db B2
#_1AEDC6: #_32DEc: db A2
#_1AEDC7: #_32DFc: db E2
#_1AEDC8: #_32E0c: db F2
#_1AEDC9: #_32E1c: db G2
#_1AEDCA: #_32E2c: db $60 ; duration
#_1AEDCB: #_32E3c: db C2

;---------------------------------------------------------------------------------------------------

Song21_Segment7_Track3:
#_1AEDCC: #_32E4c: db !INSTR, $0A
#_1AEDCE: #_32E6c: db !VOLUME, $B4
#_1AEDD0: #_32E8c: db !VIBRATO, $12, $18, $16
#_1AEDD4: #_32ECc: db !PAN, $0C
#_1AEDD6: #_32EEc: db $18, $5D ; duration, params
#_1AEDD8: #_32F0c: db E4
#_1AEDD9: #_32F1c: db $10, $3D ; duration, params
#_1AEDDB: #_32F3c: db C4
#_1AEDDC: #_32F4c: db $08, $5D ; duration, params
#_1AEDDE: #_32F6c: db E4
#_1AEDDF: #_32F7c: db $18 ; duration
#_1AEDE0: #_32F8c: db F4
#_1AEDE1: #_32F9c: db $10, $3D ; duration, params
#_1AEDE3: #_32FBc: db B3
#_1AEDE4: #_32FCc: db $08, $5D ; duration, params
#_1AEDE6: #_32FEc: db F4
#_1AEDE7: #_32FFc: db !CALL_PART : dw Song21_Sub_38E8 : db 1
#_1AEDEB: #_3303c: db !CALL_PART : dw Song21_Sub_3587 : db 1
#_1AEDEF: #_3307c: db !CALL_PART : dw Song21_Sub_3611 : db 1

;---------------------------------------------------------------------------------------------------

Song21_Segment7_Track4:
#_1AEDF3: #_330Bc: db !INSTR, $0A
#_1AEDF5: #_330Dc: db !VOLUME, $8C
#_1AEDF7: #_330Fc: db !VIBRATO, $18, $1A, $1C
#_1AEDFB: #_3313c: db !PAN, $10
#_1AEDFD: #_3315c: db $60 ; duration
#_1AEDFE: #_3316c: db R
#_1AEDFF: #_3317c: db $30 ; duration
#_1AEE00: #_3318c: db R
#_1AEE01: #_3319c: db R
#_1AEE02: #_331Ac: db $60 ; duration
#_1AEE03: #_331Bc: db R
#_1AEE04: #_331Cc: db !CALL_PART : dw Song21_Sub_35C0 : db 1
#_1AEE08: #_3320c: db F4
#_1AEE09: #_3321c: db D4
#_1AEE0A: #_3322c: db $60 ; duration
#_1AEE0B: #_3323c: db C4

;---------------------------------------------------------------------------------------------------

Song21_SegmentB_Track0:
#_1AEE0C: #_3324c: db !VOLUME, $8C
#_1AEE0E: #_3326c: db !INSTR, $11
#_1AEE10: #_3328c: db !VIBRATO, $18, $1A, $1C
#_1AEE14: #_332Cc: db !PAN, $04
#_1AEE16: #_332Ec: db !CALL_PART : dw Song21_Sub_37B5 : db 1
#_1AEE1A: #_3332c: db !CALL_PART : dw Song21_Sub_37ED : db 1
#_1AEE1E: #_3336c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_SegmentB_Track1:
#_1AEE1F: #_3337c: db !VOLUME, $B4
#_1AEE21: #_3339c: db !INSTR, $0A
#_1AEE23: #_333Bc: db !VIBRATO, $18, $1B, $1C
#_1AEE27: #_333Fc: db !PAN, $0D
#_1AEE29: #_3341c: db $60 ; duration
#_1AEE2A: #_3342c: db R
#_1AEE2B: #_3343c: db $30 ; duration
#_1AEE2C: #_3344c: db R
#_1AEE2D: #_3345c: db R
#_1AEE2E: #_3346c: db $60 ; duration
#_1AEE2F: #_3347c: db R
#_1AEE30: #_3348c: db $30 ; duration
#_1AEE31: #_3349c: db R
#_1AEE32: #_334Ac: db R
#_1AEE33: #_334Bc: db !CALL_PART : dw Song21_Sub_35DB : db 1
#_1AEE37: #_334Fc: db !CALL_PART : dw Song21_Sub_3800 : db 1

;---------------------------------------------------------------------------------------------------

Song21_SegmentB_Track2:
#_1AEE3B: #_3353c: db $60, $7D ; duration, params
#_1AEE3D: #_3355c: db A2
#_1AEE3E: #_3356c: db E2
#_1AEE3F: #_3357c: db F2
#_1AEE40: #_3358c: db C2
#_1AEE41: #_3359c: db D2
#_1AEE42: #_335Ac: db A2
#_1AEE43: #_335Bc: db Fs2
#_1AEE44: #_335Cc: db G2

;---------------------------------------------------------------------------------------------------

Song21_SegmentB_Track3:
#_1AEE45: #_335Dc: db !INSTR, $0A
#_1AEE47: #_335Fc: db !VOLUME, $64
#_1AEE49: #_3361c: db !PAN, $0E
#_1AEE4B: #_3363c: db !CALL_PART : dw Song21_Sub_3902 : db 1
#_1AEE4F: #_3367c: db A4
#_1AEE50: #_3368c: db A4
#_1AEE51: #_3369c: db A4
#_1AEE52: #_336Ac: db A4
#_1AEE53: #_336Bc: db A4
#_1AEE54: #_336Cc: db A4
#_1AEE55: #_336Dc: db A4
#_1AEE56: #_336Ec: db A4
#_1AEE57: #_336Fc: db G4
#_1AEE58: #_3370c: db G4
#_1AEE59: #_3371c: db G4
#_1AEE5A: #_3372c: db G4
#_1AEE5B: #_3373c: db G4
#_1AEE5C: #_3374c: db G4
#_1AEE5D: #_3375c: db G4
#_1AEE5E: #_3376c: db G4
#_1AEE5F: #_3377c: db A4
#_1AEE60: #_3378c: db A4
#_1AEE61: #_3379c: db A4
#_1AEE62: #_337Ac: db A4
#_1AEE63: #_337Bc: db A4
#_1AEE64: #_337Cc: db A4
#_1AEE65: #_337Dc: db A4
#_1AEE66: #_337Ec: db A4
#_1AEE67: #_337Fc: db !CALL_PART : dw Song21_Sub_3915 : db 2
#_1AEE6B: #_3383c: db B4
#_1AEE6C: #_3384c: db B4
#_1AEE6D: #_3385c: db B4
#_1AEE6E: #_3386c: db B4
#_1AEE6F: #_3387c: db B4
#_1AEE70: #_3388c: db B4
#_1AEE71: #_3389c: db B4
#_1AEE72: #_338Ac: db B4

;---------------------------------------------------------------------------------------------------

Song21_SegmentB_Track4:
#_1AEE73: #_338Bc: db !INSTR, $0A
#_1AEE75: #_338Dc: db !VOLUME, $64
#_1AEE77: #_338Fc: db !PAN, $0C
#_1AEE79: #_3391c: db $0C, $5D ; duration, params
#_1AEE7B: #_3393c: db E5
#_1AEE7C: #_3394c: db E5
#_1AEE7D: #_3395c: db E5
#_1AEE7E: #_3396c: db E5
#_1AEE7F: #_3397c: db E5
#_1AEE80: #_3398c: db E5
#_1AEE81: #_3399c: db E5
#_1AEE82: #_339Ac: db E5
#_1AEE83: #_339Bc: db !CALL_PART : dw Song21_Sub_391E : db 3
#_1AEE87: #_339Fc: db !CALL_PART : dw Song21_Sub_3927 : db 1
#_1AEE8B: #_33A3c: db Fs5
#_1AEE8C: #_33A4c: db Fs5
#_1AEE8D: #_33A5c: db Fs5
#_1AEE8E: #_33A6c: db Fs5
#_1AEE8F: #_33A7c: db Fs5
#_1AEE90: #_33A8c: db Fs5
#_1AEE91: #_33A9c: db Fs5
#_1AEE92: #_33AAc: db Fs5
#_1AEE93: #_33ABc: db G5
#_1AEE94: #_33ACc: db G5
#_1AEE95: #_33ADc: db G5
#_1AEE96: #_33AEc: db G5
#_1AEE97: #_33AFc: db G5
#_1AEE98: #_33B0c: db G5
#_1AEE99: #_33B1c: db G5
#_1AEE9A: #_33B2c: db G5

;---------------------------------------------------------------------------------------------------

Song21_SegmentB_Track5:
#_1AEE9B: #_33B3c: db !VOLUME, $C8
#_1AEE9D: #_33B5c: db !PAN, $08
#_1AEE9F: #_33B7c: db $48, $7D ; duration, params
#_1AEEA1: #_33B9c: db C4
#_1AEEA2: #_33BAc: db $08 ; duration
#_1AEEA3: #_33BBc: db D4
#_1AEEA4: #_33BCc: db R
#_1AEEA5: #_33BDc: db E4
#_1AEEA6: #_33BEc: db $48 ; duration
#_1AEEA7: #_33BFc: db B3
#_1AEEA8: #_33C0c: db $08 ; duration
#_1AEEA9: #_33C1c: db G3
#_1AEEAA: #_33C2c: db R
#_1AEEAB: #_33C3c: db G3
#_1AEEAC: #_33C4c: db $48 ; duration
#_1AEEAD: #_33C5c: db A3
#_1AEEAE: #_33C6c: db $08 ; duration
#_1AEEAF: #_33C7c: db C4
#_1AEEB0: #_33C8c: db R
#_1AEEB1: #_33C9c: db D4
#_1AEEB2: #_33CAc: db $48 ; duration
#_1AEEB3: #_33CBc: db E4
#_1AEEB4: #_33CCc: db $18 ; duration
#_1AEEB5: #_33CDc: db E4
#_1AEEB6: #_33CEc: db $48 ; duration
#_1AEEB7: #_33CFc: db F4
#_1AEEB8: #_33D0c: db $08 ; duration
#_1AEEB9: #_33D1c: db F4
#_1AEEBA: #_33D2c: db E4
#_1AEEBB: #_33D3c: db D4
#_1AEEBC: #_33D4c: db !CALL_PART : dw Song21_Sub_3829 : db 1

;---------------------------------------------------------------------------------------------------

Song21_SegmentC_Track0:
#_1AEEC0: #_33D8c: db !CALL_PART : dw Song21_Sub_3838 : db 1
#_1AEEC4: #_33DCc: db !CALL_PART : dw Song21_Sub_3870 : db 1
#_1AEEC8: #_33E0c: db D4
#_1AEEC9: #_33E1c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_SegmentC_Track1:
#_1AEECA: #_33E2c: db !VOLUME, $B4
#_1AEECC: #_33E4c: db !INSTR, $0A
#_1AEECE: #_33E6c: db !VIBRATO, $18, $1A, $1C
#_1AEED2: #_33EAc: db !PAN, $0E
#_1AEED4: #_33ECc: db !CALL_PART : dw Song21_Sub_388E : db 1
#_1AEED8: #_33F0c: db $48 ; duration
#_1AEED9: #_33F1c: db E4
#_1AEEDA: #_33F2c: db $10 ; duration
#_1AEEDB: #_33F3c: db C4
#_1AEEDC: #_33F4c: db $08 ; duration
#_1AEEDD: #_33F5c: db D4
#_1AEEDE: #_33F6c: db $48 ; duration
#_1AEEDF: #_33F7c: db E4
#_1AEEE0: #_33F8c: db $08 ; duration
#_1AEEE1: #_33F9c: db E4
#_1AEEE2: #_33FAc: db E4
#_1AEEE3: #_33FBc: db E4
#_1AEEE4: #_33FCc: db $48 ; duration
#_1AEEE5: #_33FDc: db F4
#_1AEEE6: #_33FEc: db G4

;---------------------------------------------------------------------------------------------------

Song21_SegmentC_Track2:
#_1AEEE7: #_33FFc: db $60, $7D ; duration, params
#_1AEEE9: #_3401c: db A2
#_1AEEEA: #_3402c: db E2
#_1AEEEB: #_3403c: db F2
#_1AEEEC: #_3404c: db C2
#_1AEEED: #_3405c: db D2
#_1AEEEE: #_3406c: db A2
#_1AEEEF: #_3407c: db Gs2
#_1AEEF0: #_3408c: db Fs2
#_1AEEF1: #_3409c: db !TEMPO_GRAD, $50, $15
#_1AEEF4: #_340Cc: db E2
#_1AEEF5: #_340Dc: db $48 ; duration
#_1AEEF6: #_340Ec: db D2
#_1AEEF7: #_340Fc: db G2

;---------------------------------------------------------------------------------------------------

Song21_SegmentC_Track3:
#_1AEEF8: #_3410c: db !INSTR, $0A
#_1AEEFA: #_3412c: db !VOLUME, $64
#_1AEEFC: #_3414c: db !PAN, $0E
#_1AEEFE: #_3416c: db !CALL_PART : dw Song21_Sub_3902 : db 1
#_1AEF02: #_341Ac: db A4
#_1AEF03: #_341Bc: db A4
#_1AEF04: #_341Cc: db A4
#_1AEF05: #_341Dc: db A4
#_1AEF06: #_341Ec: db A4
#_1AEF07: #_341Fc: db A4
#_1AEF08: #_3420c: db A4
#_1AEF09: #_3421c: db A4
#_1AEF0A: #_3422c: db G4
#_1AEF0B: #_3423c: db G4
#_1AEF0C: #_3424c: db G4
#_1AEF0D: #_3425c: db G4
#_1AEF0E: #_3426c: db G4
#_1AEF0F: #_3427c: db G4
#_1AEF10: #_3428c: db G4
#_1AEF11: #_3429c: db G4
#_1AEF12: #_342Ac: db A4
#_1AEF13: #_342Bc: db A4
#_1AEF14: #_342Cc: db A4
#_1AEF15: #_342Dc: db A4
#_1AEF16: #_342Ec: db A4
#_1AEF17: #_342Fc: db A4
#_1AEF18: #_3430c: db A4
#_1AEF19: #_3431c: db A4
#_1AEF1A: #_3432c: db !CALL_PART : dw Song21_Sub_3915 : db 4
#_1AEF1E: #_3436c: db C5
#_1AEF1F: #_3437c: db C5
#_1AEF20: #_3438c: db C5
#_1AEF21: #_3439c: db C5
#_1AEF22: #_343Ac: db C5
#_1AEF23: #_343Bc: db C5
#_1AEF24: #_343Cc: db B4
#_1AEF25: #_343Dc: db B4
#_1AEF26: #_343Ec: db B4
#_1AEF27: #_343Fc: db B4
#_1AEF28: #_3440c: db $18 ; duration
#_1AEF29: #_3441c: db B4

;---------------------------------------------------------------------------------------------------

Song21_SegmentC_Track4:
#_1AEF2A: #_3442c: db !INSTR, $0A
#_1AEF2C: #_3444c: db !VOLUME, $64
#_1AEF2E: #_3446c: db !PAN, $0C
#_1AEF30: #_3448c: db $0C, $5D ; duration, params
#_1AEF32: #_344Ac: db E5
#_1AEF33: #_344Bc: db E5
#_1AEF34: #_344Cc: db E5
#_1AEF35: #_344Dc: db E5
#_1AEF36: #_344Ec: db E5
#_1AEF37: #_344Fc: db E5
#_1AEF38: #_3450c: db E5
#_1AEF39: #_3451c: db E5
#_1AEF3A: #_3452c: db !CALL_PART : dw Song21_Sub_391E : db 3
#_1AEF3E: #_3456c: db !CALL_PART : dw Song21_Sub_3927 : db 1
#_1AEF42: #_345Ac: db Ds5
#_1AEF43: #_345Bc: db Ds5
#_1AEF44: #_345Cc: db Ds5
#_1AEF45: #_345Dc: db Ds5
#_1AEF46: #_345Ec: db Ds5
#_1AEF47: #_345Fc: db Ds5
#_1AEF48: #_3460c: db Ds5
#_1AEF49: #_3461c: db Ds5
#_1AEF4A: #_3462c: db !CALL_PART : dw Song21_Sub_391E : db 2
#_1AEF4E: #_3466c: db F5
#_1AEF4F: #_3467c: db F5
#_1AEF50: #_3468c: db F5
#_1AEF51: #_3469c: db F5
#_1AEF52: #_346Ac: db F5
#_1AEF53: #_346Bc: db F5
#_1AEF54: #_346Cc: db F5
#_1AEF55: #_346Dc: db F5
#_1AEF56: #_346Ec: db F5
#_1AEF57: #_346Fc: db F5
#_1AEF58: #_3470c: db $18 ; duration
#_1AEF59: #_3471c: db F5

;---------------------------------------------------------------------------------------------------

Song21_SegmentC_Track5:
#_1AEF5A: #_3472c: db !CALL_PART : dw Song21_Sub_380B : db 1
#_1AEF5E: #_3476c: db $48 ; duration
#_1AEF5F: #_3477c: db E4
#_1AEF60: #_3478c: db $10 ; duration
#_1AEF61: #_3479c: db A4
#_1AEF62: #_347Ac: db $08 ; duration
#_1AEF63: #_347Bc: db B4
#_1AEF64: #_347Cc: db !CALL_PART : dw Song21_Sub_38C7 : db 2
#_1AEF68: #_3480c: db $48 ; duration
#_1AEF69: #_3481c: db C5
#_1AEF6A: #_3482c: db $08 ; duration
#_1AEF6B: #_3483c: db C5
#_1AEF6C: #_3484c: db C5
#_1AEF6D: #_3485c: db C5
#_1AEF6E: #_3486c: db $48 ; duration
#_1AEF6F: #_3487c: db C5
#_1AEF70: #_3488c: db D5

;---------------------------------------------------------------------------------------------------

Song21_Unused0_Track0:
#_1AEF71: #_3489c: db !MASTER_VOLUME, $C8
#_1AEF73: #_348Bc: db !ECHO_CONFIG, $FF, $28, $28
#_1AEF77: #_348Fc: db !ECHO_FILTER, $02, $1E, $02
#_1AEF7B: #_3493c: db !TEMPO, $23
#_1AEF7D: #_3495c: db !INSTR, $09
#_1AEF7F: #_3497c: db !VOLUME, $C8
#_1AEF81: #_3499c: db !VIBRATO, $12, $18, $16
#_1AEF85: #_349Dc: db !PAN, $0A
#_1AEF87: #_349Fc: db $30, $7D ; duration, params
#_1AEF89: #_34A1c: db Ds5
#_1AEF8A: #_34A2c: db Gs4
#_1AEF8B: #_34A3c: db F5
#_1AEF8C: #_34A4c: db As4
#_1AEF8D: #_34A5c: db $60, $5D ; duration, params
#_1AEF8F: #_34A7c: db G5
#_1AEF90: #_34A8c: db !TIE
#_1AEF91: #_34A9c: db !MVOL_GRAD, $50, $8C
#_1AEF94: #_34ACc: db !TIE
#_1AEF95: #_34ADc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Unused0_Track1:
#_1AEF96: #_34AEc: db !CALL_PART : dw Song21_Sub_36A5 : db 1
#_1AEF9A: #_34B2c: db !TIE
#_1AEF9B: #_34B3c: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_Unused0_Track2:
#_1AEF9C: #_34B4c: db !CALL_PART : dw Song21_Sub_36C0 : db 1
#_1AEFA0: #_34B8c: db As2
#_1AEFA1: #_34B9c: db C3
#_1AEFA2: #_34BAc: db G2
#_1AEFA3: #_34BBc: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_Unused0_Track3:
#_1AEFA4: #_34BCc: db !CALL_PART : dw Song21_Sub_36CE : db 1
#_1AEFA8: #_34C0c: db B4
#_1AEFA9: #_34C1c: db !TIE

;---------------------------------------------------------------------------------------------------

Song21_Unused0_Track4:
#_1AEFAA: #_34C2c: db !CALL_PART : dw Song21_Sub_36E9 : db 1
#_1AEFAE: #_34C6c: db B5
#_1AEFAF: #_34C7c: db D5
#_1AEFB0: #_34C8c: db F4
#_1AEFB1: #_34C9c: db F4
#_1AEFB2: #_34CAc: db $40 ; duration
#_1AEFB3: #_34CBc: db B3

;---------------------------------------------------------------------------------------------------

Song21_Unused0_Track5:
#_1AEFB4: #_34CCc: db !CALL_PART : dw Song21_Sub_36FB : db 1
#_1AEFB8: #_34D0c: db $08 ; duration
#_1AEFB9: #_34D1c: db R
#_1AEFBA: #_34D2c: db $20 ; duration
#_1AEFBB: #_34D3c: db F5
#_1AEFBC: #_34D4c: db B4
#_1AEFBD: #_34D5c: db B4
#_1AEFBE: #_34D6c: db D4
#_1AEFBF: #_34D7c: db $38 ; duration
#_1AEFC0: #_34D8c: db F3

;---------------------------------------------------------------------------------------------------

Song21_Unused0_Track6:
#_1AEFC1: #_34D9c: db !CALL_PART : dw Song21_Sub_3718 : db 1
#_1AEFC5: #_34DDc: db R
#_1AEFC6: #_34DEc: db $20 ; duration
#_1AEFC7: #_34DFc: db D5
#_1AEFC8: #_34E0c: db D5
#_1AEFC9: #_34E1c: db F4
#_1AEFCA: #_34E2c: db B3
#_1AEFCB: #_34E3c: db $30 ; duration
#_1AEFCC: #_34E4c: db D3

;---------------------------------------------------------------------------------------------------

Song21_Unused0_Track7:
#_1AEFCD: #_34E5c: db !CALL_PART : dw Song21_Sub_3733 : db 1
#_1AEFD1: #_34E9c: db $18 ; duration
#_1AEFD2: #_34EAc: db R
#_1AEFD3: #_34EBc: db $20 ; duration
#_1AEFD4: #_34ECc: db F5
#_1AEFD5: #_34EDc: db B4
#_1AEFD6: #_34EEc: db $08 ; duration
#_1AEFD7: #_34EFc: db D4
#_1AEFD8: #_34F0c: db $18 ; duration
#_1AEFD9: #_34F1c: db !TIE
#_1AEFDA: #_34F2c: db $48 ; duration
#_1AEFDB: #_34F3c: db D4
#_1AEFDC: #_34F4c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_34F5:
#_1AEFDD: #_34F5c: db $10, $3D ; duration, params
#_1AEFDF: #_34F7c: db G4
#_1AEFE0: #_34F8c: db $08, $5D ; duration, params
#_1AEFE2: #_34FAc: db G4
#_1AEFE3: #_34FBc: db $18 ; duration
#_1AEFE4: #_34FCc: db C5
#_1AEFE5: #_34FDc: db $10, $3D ; duration, params
#_1AEFE7: #_34FFc: db G4
#_1AEFE8: #_3500c: db $08, $5D ; duration, params
#_1AEFEA: #_3502c: db C5
#_1AEFEB: #_3503c: db $18 ; duration
#_1AEFEC: #_3504c: db D5
#_1AEFED: #_3505c: db $10, $3D ; duration, params
#_1AEFEF: #_3507c: db G4
#_1AEFF0: #_3508c: db $08, $5D ; duration, params
#_1AEFF2: #_350Ac: db D5
#_1AEFF3: #_350Bc: db $20, $7D ; duration, params
#_1AEFF5: #_350Dc: db F5
#_1AEFF6: #_350Ec: db $08, $4D ; duration, params
#_1AEFF8: #_3510c: db E5
#_1AEFF9: #_3511c: db D5
#_1AEFFA: #_3512c: db $18, $5D ; duration, params
#_1AEFFC: #_3514c: db C5
#_1AEFFD: #_3515c: db $18, $4D ; duration, params
#_1AEFFF: #_3517c: db G4
#_1AF000: #_3518c: db $18, $6D ; duration, params
#_1AF002: #_351Ac: db A4
#_1AF003: #_351Bc: db $18, $3D ; duration, params
#_1AF005: #_351Dc: db C5
#_1AF006: #_351Ec: db $18, $6D ; duration, params
#_1AF008: #_3520c: db D5
#_1AF009: #_3521c: db $18, $3D ; duration, params
#_1AF00B: #_3523c: db C5
#_1AF00C: #_3524c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_3525:
#_1AF00D: #_3525c: db $24, $6D ; duration, params
#_1AF00F: #_3527c: db C5
#_1AF010: #_3528c: db $06, $3D ; duration, params
#_1AF012: #_352Ac: db B4
#_1AF013: #_352Bc: db $06, $5D ; duration, params
#_1AF015: #_352Dc: db A4
#_1AF016: #_352Ec: db $18 ; duration
#_1AF017: #_352Fc: db G4
#_1AF018: #_3530c: db $10, $3D ; duration, params
#_1AF01A: #_3532c: db G4
#_1AF01B: #_3533c: db $08, $5D ; duration, params
#_1AF01D: #_3535c: db G4
#_1AF01E: #_3536c: db $18 ; duration
#_1AF01F: #_3537c: db C5
#_1AF020: #_3538c: db $10, $3D ; duration, params
#_1AF022: #_353Ac: db G4
#_1AF023: #_353Bc: db $08, $5D ; duration, params
#_1AF025: #_353Dc: db C5
#_1AF026: #_353Ec: db $18 ; duration
#_1AF027: #_353Fc: db D5
#_1AF028: #_3540c: db $10, $3D ; duration, params
#_1AF02A: #_3542c: db G4
#_1AF02B: #_3543c: db $08, $5D ; duration, params
#_1AF02D: #_3545c: db D5
#_1AF02E: #_3546c: db $20, $7D ; duration, params
#_1AF030: #_3548c: db F5
#_1AF031: #_3549c: db $08, $4D ; duration, params
#_1AF033: #_354Bc: db E5
#_1AF034: #_354Cc: db F5
#_1AF035: #_354Dc: db $18, $5D ; duration, params
#_1AF037: #_354Fc: db G5
#_1AF038: #_3550c: db $10, $6D ; duration, params
#_1AF03A: #_3552c: db C5
#_1AF03B: #_3553c: db $08, $5D ; duration, params
#_1AF03D: #_3555c: db B4
#_1AF03E: #_3556c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_3557:
#_1AF03F: #_3557c: db $10, $3D ; duration, params
#_1AF041: #_3559c: db B3
#_1AF042: #_355Ac: db $08, $5D ; duration, params
#_1AF044: #_355Cc: db B3
#_1AF045: #_355Dc: db $18 ; duration
#_1AF046: #_355Ec: db E4
#_1AF047: #_355Fc: db $10, $3D ; duration, params
#_1AF049: #_3561c: db C4
#_1AF04A: #_3562c: db $08, $5D ; duration, params
#_1AF04C: #_3564c: db E4
#_1AF04D: #_3565c: db $18 ; duration
#_1AF04E: #_3566c: db F4
#_1AF04F: #_3567c: db $10, $3D ; duration, params
#_1AF051: #_3569c: db B3
#_1AF052: #_356Ac: db $08, $5D ; duration, params
#_1AF054: #_356Cc: db F4
#_1AF055: #_356Dc: db $20, $7D ; duration, params
#_1AF057: #_356Fc: db A4
#_1AF058: #_3570c: db $08, $4D ; duration, params
#_1AF05A: #_3572c: db G4
#_1AF05B: #_3573c: db F4
#_1AF05C: #_3574c: db $18, $5D ; duration, params
#_1AF05E: #_3576c: db E4
#_1AF05F: #_3577c: db $18, $4D ; duration, params
#_1AF061: #_3579c: db C4
#_1AF062: #_357Ac: db $18, $6D ; duration, params
#_1AF064: #_357Cc: db C4
#_1AF065: #_357Dc: db $18, $3D ; duration, params
#_1AF067: #_357Fc: db F4
#_1AF068: #_3580c: db $18, $6D ; duration, params
#_1AF06A: #_3582c: db Fs4
#_1AF06B: #_3583c: db $18, $3D ; duration, params
#_1AF06D: #_3585c: db Fs4
#_1AF06E: #_3586c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_3587:
#_1AF06F: #_3587c: db $24, $6D ; duration, params
#_1AF071: #_3589c: db F4
#_1AF072: #_358Ac: db $06, $3D ; duration, params
#_1AF074: #_358Cc: db D4
#_1AF075: #_358Dc: db $06, $5D ; duration, params
#_1AF077: #_358Fc: db C4
#_1AF078: #_3590c: db $18 ; duration
#_1AF079: #_3591c: db B3
#_1AF07A: #_3592c: db $10, $3D ; duration, params
#_1AF07C: #_3594c: db B3
#_1AF07D: #_3595c: db $08, $5D ; duration, params
#_1AF07F: #_3597c: db B3
#_1AF080: #_3598c: db $18 ; duration
#_1AF081: #_3599c: db E4
#_1AF082: #_359Ac: db $10, $3D ; duration, params
#_1AF084: #_359Cc: db C4
#_1AF085: #_359Dc: db $08, $5D ; duration, params
#_1AF087: #_359Fc: db E4
#_1AF088: #_35A0c: db $18 ; duration
#_1AF089: #_35A1c: db F4
#_1AF08A: #_35A2c: db $10, $3D ; duration, params
#_1AF08C: #_35A4c: db B3
#_1AF08D: #_35A5c: db $08, $5D ; duration, params
#_1AF08F: #_35A7c: db F4
#_1AF090: #_35A8c: db $20, $7D ; duration, params
#_1AF092: #_35AAc: db A4
#_1AF093: #_35ABc: db $08, $4D ; duration, params
#_1AF095: #_35ADc: db G4
#_1AF096: #_35AEc: db A4
#_1AF097: #_35AFc: db $18, $5D ; duration, params
#_1AF099: #_35B1c: db B4
#_1AF09A: #_35B2c: db $10, $6D ; duration, params
#_1AF09C: #_35B4c: db E4
#_1AF09D: #_35B5c: db $08, $5D ; duration, params
#_1AF09F: #_35B7c: db D4
#_1AF0A0: #_35B8c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_35B9:
#_1AF0A1: #_35B9c: db $18 ; duration
#_1AF0A2: #_35BAc: db R
#_1AF0A3: #_35BBc: db $60 ; duration
#_1AF0A4: #_35BCc: db R
#_1AF0A5: #_35BDc: db R
#_1AF0A6: #_35BEc: db R
#_1AF0A7: #_35BFc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_35C0:
#_1AF0A8: #_35C0c: db $48 ; duration
#_1AF0A9: #_35C1c: db R
#_1AF0AA: #_35C2c: db $18, $7D ; duration, params
#_1AF0AC: #_35C4c: db F4
#_1AF0AD: #_35C5c: db $30 ; duration
#_1AF0AE: #_35C6c: db E4
#_1AF0AF: #_35C7c: db D4
#_1AF0B0: #_35C8c: db C4
#_1AF0B1: #_35C9c: db E4
#_1AF0B2: #_35CAc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_35CB:
#_1AF0B3: #_35CBc: db $60 ; duration
#_1AF0B4: #_35CCc: db R
#_1AF0B5: #_35CDc: db R
#_1AF0B6: #_35CEc: db R
#_1AF0B7: #_35CFc: db R
#_1AF0B8: #_35D0c: db R
#_1AF0B9: #_35D1c: db R
#_1AF0BA: #_35D2c: db R
#_1AF0BB: #_35D3c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_35D4:
#_1AF0BC: #_35D4c: db $30, $7D ; duration, params
#_1AF0BE: #_35D6c: db A1
#_1AF0BF: #_35D7c: db A1
#_1AF0C0: #_35D8c: db A1
#_1AF0C1: #_35D9c: db A1
#_1AF0C2: #_35DAc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_35DB:
#_1AF0C3: #_35DBc: db $60 ; duration
#_1AF0C4: #_35DCc: db R
#_1AF0C5: #_35DDc: db R
#_1AF0C6: #_35DEc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_35DF:
#_1AF0C7: #_35DFc: db $48 ; duration
#_1AF0C8: #_35E0c: db C4
#_1AF0C9: #_35E1c: db $06 ; duration
#_1AF0CA: #_35E2c: db C4
#_1AF0CB: #_35E3c: db C4
#_1AF0CC: #_35E4c: db C4
#_1AF0CD: #_35E5c: db C4
#_1AF0CE: #_35E6c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_35E7:
#_1AF0CF: #_35E7c: db $18 ; duration
#_1AF0D0: #_35E8c: db C5
#_1AF0D1: #_35E9c: db $10, $3D ; duration, params
#_1AF0D3: #_35EBc: db G4
#_1AF0D4: #_35ECc: db $08, $5D ; duration, params
#_1AF0D6: #_35EEc: db C5
#_1AF0D7: #_35EFc: db $18 ; duration
#_1AF0D8: #_35F0c: db D5
#_1AF0D9: #_35F1c: db $10, $3D ; duration, params
#_1AF0DB: #_35F3c: db G4
#_1AF0DC: #_35F4c: db $08, $5D ; duration, params
#_1AF0DE: #_35F6c: db D5
#_1AF0DF: #_35F7c: db $20, $7D ; duration, params
#_1AF0E1: #_35F9c: db F5
#_1AF0E2: #_35FAc: db $08, $4D ; duration, params
#_1AF0E4: #_35FCc: db E5
#_1AF0E5: #_35FDc: db D5
#_1AF0E6: #_35FEc: db $18, $5D ; duration, params
#_1AF0E8: #_3600c: db C5
#_1AF0E9: #_3601c: db $18, $4D ; duration, params
#_1AF0EB: #_3603c: db G4
#_1AF0EC: #_3604c: db $18, $6D ; duration, params
#_1AF0EE: #_3606c: db A4
#_1AF0EF: #_3607c: db $18, $3D ; duration, params
#_1AF0F1: #_3609c: db C5
#_1AF0F2: #_360Ac: db $18, $6D ; duration, params
#_1AF0F4: #_360Cc: db D5
#_1AF0F5: #_360Dc: db $18, $3D ; duration, params
#_1AF0F7: #_360Fc: db C5
#_1AF0F8: #_3610c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_3611:
#_1AF0F9: #_3611c: db $18, $3D ; duration, params
#_1AF0FB: #_3613c: db C4
#_1AF0FC: #_3614c: db $18, $6D ; duration, params
#_1AF0FE: #_3616c: db A4
#_1AF0FF: #_3617c: db $18, $3D ; duration, params
#_1AF101: #_3619c: db F4
#_1AF102: #_361Ac: db $08 ; duration
#_1AF103: #_361Bc: db F4
#_1AF104: #_361Cc: db $08, $5D ; duration, params
#_1AF106: #_361Ec: db E4
#_1AF107: #_361Fc: db D4
#_1AF108: #_3620c: db $60 ; duration
#_1AF109: #_3621c: db E4
#_1AF10A: #_3622c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_3623:
#_1AF10B: #_3623c: db $48, $7D ; duration, params
#_1AF10D: #_3625c: db G4
#_1AF10E: #_3626c: db $10, $4D ; duration, params
#_1AF110: #_3628c: db G4
#_1AF111: #_3629c: db $08 ; duration
#_1AF112: #_362Ac: db G4
#_1AF113: #_362Bc: db $48, $6D ; duration, params
#_1AF115: #_362Dc: db F4
#_1AF116: #_362Ec: db $10, $3D ; duration, params
#_1AF118: #_3630c: db G4
#_1AF119: #_3631c: db $08, $6D ; duration, params
#_1AF11B: #_3633c: db A4
#_1AF11C: #_3634c: db $48 ; duration
#_1AF11D: #_3635c: db E4
#_1AF11E: #_3636c: db $10, $3D ; duration, params
#_1AF120: #_3638c: db C5
#_1AF121: #_3639c: db $08, $5D ; duration, params
#_1AF123: #_363Bc: db B4
#_1AF124: #_363Cc: db $48 ; duration
#_1AF125: #_363Dc: db A4
#_1AF126: #_363Ec: db $10, $3D ; duration, params
#_1AF128: #_3640c: db B4
#_1AF129: #_3641c: db $08, $5D ; duration, params
#_1AF12B: #_3643c: db C5
#_1AF12C: #_3644c: db $48, $7D ; duration, params
#_1AF12E: #_3646c: db G4
#_1AF12F: #_3647c: db $10, $4D ; duration, params
#_1AF131: #_3649c: db C5
#_1AF132: #_364Ac: db $08 ; duration
#_1AF133: #_364Bc: db C5
#_1AF134: #_364Cc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_364D:
#_1AF135: #_364Dc: db $0C, $5D ; duration, params
#_1AF137: #_364Fc: db E5
#_1AF138: #_3650c: db E5
#_1AF139: #_3651c: db E5
#_1AF13A: #_3652c: db E5
#_1AF13B: #_3653c: db E5
#_1AF13C: #_3654c: db E5
#_1AF13D: #_3655c: db E5
#_1AF13E: #_3656c: db F5
#_1AF13F: #_3657c: db !TIE
#_1AF140: #_3658c: db F5
#_1AF141: #_3659c: db F5
#_1AF142: #_365Ac: db F5
#_1AF143: #_365Bc: db F5
#_1AF144: #_365Cc: db F5
#_1AF145: #_365Dc: db F5
#_1AF146: #_365Ec: db D5
#_1AF147: #_365Fc: db !TIE
#_1AF148: #_3660c: db D5
#_1AF149: #_3661c: db D5
#_1AF14A: #_3662c: db D5
#_1AF14B: #_3663c: db D5
#_1AF14C: #_3664c: db D5
#_1AF14D: #_3665c: db D5
#_1AF14E: #_3666c: db E5
#_1AF14F: #_3667c: db !TIE
#_1AF150: #_3668c: db E5
#_1AF151: #_3669c: db E5
#_1AF152: #_366Ac: db E5
#_1AF153: #_366Bc: db E5
#_1AF154: #_366Cc: db E5
#_1AF155: #_366Dc: db E5
#_1AF156: #_366Ec: db E5
#_1AF157: #_366Fc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_3670:
#_1AF158: #_3670c: db $0C, $5D ; duration, params
#_1AF15A: #_3672c: db G5
#_1AF15B: #_3673c: db G5
#_1AF15C: #_3674c: db G5
#_1AF15D: #_3675c: db G5
#_1AF15E: #_3676c: db G5
#_1AF15F: #_3677c: db G5
#_1AF160: #_3678c: db G5
#_1AF161: #_3679c: db A5
#_1AF162: #_367Ac: db !TIE
#_1AF163: #_367Bc: db A5
#_1AF164: #_367Cc: db A5
#_1AF165: #_367Dc: db A5
#_1AF166: #_367Ec: db A5
#_1AF167: #_367Fc: db A5
#_1AF168: #_3680c: db A5
#_1AF169: #_3681c: db F5
#_1AF16A: #_3682c: db !TIE
#_1AF16B: #_3683c: db F5
#_1AF16C: #_3684c: db F5
#_1AF16D: #_3685c: db F5
#_1AF16E: #_3686c: db F5
#_1AF16F: #_3687c: db F5
#_1AF170: #_3688c: db F5
#_1AF171: #_3689c: db G5
#_1AF172: #_368Ac: db !TIE
#_1AF173: #_368Bc: db G5
#_1AF174: #_368Cc: db G5
#_1AF175: #_368Dc: db G5
#_1AF176: #_368Ec: db G5
#_1AF177: #_368Fc: db G5
#_1AF178: #_3690c: db G5
#_1AF179: #_3691c: db G5
#_1AF17A: #_3692c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_3693:
#_1AF17B: #_3693c: db !INSTR, $09
#_1AF17D: #_3695c: db !VOLUME, $C8
#_1AF17F: #_3697c: db !VIBRATO, $18, $1A, $1C
#_1AF183: #_369Bc: db !PAN, $08
#_1AF185: #_369Dc: db $48, $7D ; duration, params
#_1AF187: #_369Fc: db E4
#_1AF188: #_36A0c: db $10 ; duration
#_1AF189: #_36A1c: db C4
#_1AF18A: #_36A2c: db $08 ; duration
#_1AF18B: #_36A3c: db A3
#_1AF18C: #_36A4c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_36A5:
#_1AF18D: #_36A5c: db !INSTR, $09
#_1AF18F: #_36A7c: db !VOLUME, $C8
#_1AF191: #_36A9c: db !VIBRATO, $12, $18, $16
#_1AF195: #_36ADc: db !PAN, $0A
#_1AF197: #_36AFc: db $10 ; duration
#_1AF198: #_36B0c: db R
#_1AF199: #_36B1c: db $30, $7D ; duration, params
#_1AF19B: #_36B3c: db C4
#_1AF19C: #_36B4c: db $20 ; duration
#_1AF19D: #_36B5c: db C5
#_1AF19E: #_36B6c: db $10 ; duration
#_1AF19F: #_36B7c: db R
#_1AF1A0: #_36B8c: db $30 ; duration
#_1AF1A1: #_36B9c: db D4
#_1AF1A2: #_36BAc: db $20 ; duration
#_1AF1A3: #_36BBc: db D5
#_1AF1A4: #_36BCc: db $60, $5D ; duration, params
#_1AF1A6: #_36BEc: db D5
#_1AF1A7: #_36BFc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_36C0:
#_1AF1A8: #_36C0c: db !INSTR, $09
#_1AF1AA: #_36C2c: db !VOLUME, $DC
#_1AF1AC: #_36C4c: db !VIBRATO, $18, $1A, $1C
#_1AF1B0: #_36C8c: db !PAN, $06
#_1AF1B2: #_36CAc: db $60, $7D ; duration, params
#_1AF1B4: #_36CCc: db Gs2
#_1AF1B5: #_36CDc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_36CE:
#_1AF1B6: #_36CEc: db !INSTR, $09
#_1AF1B8: #_36D0c: db !VOLUME, $C8
#_1AF1BA: #_36D2c: db !VIBRATO, $12, $18, $16
#_1AF1BE: #_36D6c: db !PAN, $08
#_1AF1C0: #_36D8c: db $20 ; duration
#_1AF1C1: #_36D9c: db R
#_1AF1C2: #_36DAc: db $30, $7D ; duration, params
#_1AF1C4: #_36DCc: db Ds4
#_1AF1C5: #_36DDc: db $10 ; duration
#_1AF1C6: #_36DEc: db Ds5
#_1AF1C7: #_36DFc: db $20 ; duration
#_1AF1C8: #_36E0c: db R
#_1AF1C9: #_36E1c: db $30 ; duration
#_1AF1CA: #_36E2c: db F4
#_1AF1CB: #_36E3c: db $10 ; duration
#_1AF1CC: #_36E4c: db F5
#_1AF1CD: #_36E5c: db $60, $5D ; duration, params
#_1AF1CF: #_36E7c: db C5
#_1AF1D0: #_36E8c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_36E9:
#_1AF1D1: #_36E9c: db !INSTR, $0F
#_1AF1D3: #_36EBc: db !VOLUME, $B4
#_1AF1D5: #_36EDc: db !PAN, $0D
#_1AF1D7: #_36EFc: db $20, $7D ; duration, params
#_1AF1D9: #_36F1c: db Gs5
#_1AF1DA: #_36F2c: db Ds4
#_1AF1DB: #_36F3c: db Ds4
#_1AF1DC: #_36F4c: db As5
#_1AF1DD: #_36F5c: db F4
#_1AF1DE: #_36F6c: db F4
#_1AF1DF: #_36F7c: db C6
#_1AF1E0: #_36F8c: db G5
#_1AF1E1: #_36F9c: db E5
#_1AF1E2: #_36FAc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_36FB:
#_1AF1E3: #_36FBc: db !INSTR, $0F
#_1AF1E5: #_36FDc: db !VOLUME, $B4
#_1AF1E7: #_36FFc: db !PAN, $0D
#_1AF1E9: #_3701c: db $08 ; duration
#_1AF1EA: #_3702c: db R
#_1AF1EB: #_3703c: db $20, $7D ; duration, params
#_1AF1ED: #_3705c: db Ds5
#_1AF1EE: #_3706c: db C4
#_1AF1EF: #_3707c: db $18 ; duration
#_1AF1F0: #_3708c: db Gs4
#_1AF1F1: #_3709c: db $08 ; duration
#_1AF1F2: #_370Ac: db R
#_1AF1F3: #_370Bc: db $20 ; duration
#_1AF1F4: #_370Cc: db F5
#_1AF1F5: #_370Dc: db D4
#_1AF1F6: #_370Ec: db $18 ; duration
#_1AF1F7: #_370Fc: db As4
#_1AF1F8: #_3710c: db $08 ; duration
#_1AF1F9: #_3711c: db R
#_1AF1FA: #_3712c: db $20 ; duration
#_1AF1FB: #_3713c: db G5
#_1AF1FC: #_3714c: db E5
#_1AF1FD: #_3715c: db $18 ; duration
#_1AF1FE: #_3716c: db C5
#_1AF1FF: #_3717c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_3718:
#_1AF200: #_3718c: db !INSTR, $0F
#_1AF202: #_371Ac: db !VOLUME, $B4
#_1AF204: #_371Cc: db !PAN, $0D
#_1AF206: #_371Ec: db $10 ; duration
#_1AF207: #_371Fc: db R
#_1AF208: #_3720c: db $20, $7D ; duration, params
#_1AF20A: #_3722c: db C5
#_1AF20B: #_3723c: db Gs3
#_1AF20C: #_3724c: db $10 ; duration
#_1AF20D: #_3725c: db C5
#_1AF20E: #_3726c: db R
#_1AF20F: #_3727c: db $20 ; duration
#_1AF210: #_3728c: db D5
#_1AF211: #_3729c: db As3
#_1AF212: #_372Ac: db $10 ; duration
#_1AF213: #_372Bc: db D5
#_1AF214: #_372Cc: db R
#_1AF215: #_372Dc: db $20 ; duration
#_1AF216: #_372Ec: db E5
#_1AF217: #_372Fc: db C5
#_1AF218: #_3730c: db $10 ; duration
#_1AF219: #_3731c: db G4
#_1AF21A: #_3732c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_3733:
#_1AF21B: #_3733c: db !INSTR, $0F
#_1AF21D: #_3735c: db !VOLUME, $B4
#_1AF21F: #_3737c: db !PAN, $0D
#_1AF221: #_3739c: db $18 ; duration
#_1AF222: #_373Ac: db R
#_1AF223: #_373Bc: db $20, $7D ; duration, params
#_1AF225: #_373Dc: db Gs4
#_1AF226: #_373Ec: db C4
#_1AF227: #_373Fc: db $08 ; duration
#_1AF228: #_3740c: db Ds5
#_1AF229: #_3741c: db $18 ; duration
#_1AF22A: #_3742c: db R
#_1AF22B: #_3743c: db $20 ; duration
#_1AF22C: #_3744c: db As4
#_1AF22D: #_3745c: db D4
#_1AF22E: #_3746c: db $08 ; duration
#_1AF22F: #_3747c: db F5
#_1AF230: #_3748c: db $18 ; duration
#_1AF231: #_3749c: db R
#_1AF232: #_374Ac: db $20 ; duration
#_1AF233: #_374Bc: db C5
#_1AF234: #_374Cc: db G4
#_1AF235: #_374Dc: db $08 ; duration
#_1AF236: #_374Ec: db E4
#_1AF237: #_374Fc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_3750:
#_1AF238: #_3750c: db $18, $5D ; duration, params
#_1AF23A: #_3752c: db F5
#_1AF23B: #_3753c: db $10, $3D ; duration, params
#_1AF23D: #_3755c: db C5
#_1AF23E: #_3756c: db $08, $5D ; duration, params
#_1AF240: #_3758c: db F5
#_1AF241: #_3759c: db $18 ; duration
#_1AF242: #_375Ac: db G5
#_1AF243: #_375Bc: db $10, $3D ; duration, params
#_1AF245: #_375Dc: db C5
#_1AF246: #_375Ec: db $08, $5D ; duration, params
#_1AF248: #_3760c: db G5
#_1AF249: #_3761c: db $20, $7D ; duration, params
#_1AF24B: #_3763c: db As5
#_1AF24C: #_3764c: db $08, $4D ; duration, params
#_1AF24E: #_3766c: db A5
#_1AF24F: #_3767c: db G5
#_1AF250: #_3768c: db $18, $5D ; duration, params
#_1AF252: #_376Ac: db F5
#_1AF253: #_376Bc: db $18, $4D ; duration, params
#_1AF255: #_376Dc: db C5
#_1AF256: #_376Ec: db $18, $6D ; duration, params
#_1AF258: #_3770c: db D5
#_1AF259: #_3771c: db $18, $3D ; duration, params
#_1AF25B: #_3773c: db F5
#_1AF25C: #_3774c: db $18, $6D ; duration, params
#_1AF25E: #_3776c: db G5
#_1AF25F: #_3777c: db $18, $3D ; duration, params
#_1AF261: #_3779c: db F5
#_1AF262: #_377Ac: db $24, $6D ; duration, params
#_1AF264: #_377Cc: db F5
#_1AF265: #_377Dc: db $06, $3D ; duration, params
#_1AF267: #_377Fc: db E5
#_1AF268: #_3780c: db $06, $5D ; duration, params
#_1AF26A: #_3782c: db D5
#_1AF26B: #_3783c: db $18 ; duration
#_1AF26C: #_3784c: db C5
#_1AF26D: #_3785c: db $10, $3D ; duration, params
#_1AF26F: #_3787c: db C5
#_1AF270: #_3788c: db $08, $5D ; duration, params
#_1AF272: #_378Ac: db C5
#_1AF273: #_378Bc: db $18 ; duration
#_1AF274: #_378Cc: db F5
#_1AF275: #_378Dc: db $10, $3D ; duration, params
#_1AF277: #_378Fc: db C5
#_1AF278: #_3790c: db $08, $5D ; duration, params
#_1AF27A: #_3792c: db F5
#_1AF27B: #_3793c: db $18 ; duration
#_1AF27C: #_3794c: db G5
#_1AF27D: #_3795c: db $10, $3D ; duration, params
#_1AF27F: #_3797c: db C5
#_1AF280: #_3798c: db $08, $5D ; duration, params
#_1AF282: #_379Ac: db G5
#_1AF283: #_379Bc: db $20, $7D ; duration, params
#_1AF285: #_379Dc: db As5
#_1AF286: #_379Ec: db $08, $4D ; duration, params
#_1AF288: #_37A0c: db A5
#_1AF289: #_37A1c: db As5
#_1AF28A: #_37A2c: db $18, $5D ; duration, params
#_1AF28C: #_37A4c: db C6
#_1AF28D: #_37A5c: db $10, $6D ; duration, params
#_1AF28F: #_37A7c: db F5
#_1AF290: #_37A8c: db $08, $5D ; duration, params
#_1AF292: #_37AAc: db E5
#_1AF293: #_37ABc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_37AC:
#_1AF294: #_37ACc: db $18 ; duration
#_1AF295: #_37ADc: db R
#_1AF296: #_37AEc: db $08 ; duration
#_1AF297: #_37AFc: db C5
#_1AF298: #_37B0c: db C5
#_1AF299: #_37B1c: db C5
#_1AF29A: #_37B2c: db $30 ; duration
#_1AF29B: #_37B3c: db C5
#_1AF29C: #_37B4c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_37B5:
#_1AF29D: #_37B5c: db $18 ; duration
#_1AF29E: #_37B6c: db R
#_1AF29F: #_37B7c: db $06, $7D ; duration, params
#_1AF2A1: #_37B9c: db C3
#_1AF2A2: #_37BAc: db E3
#_1AF2A3: #_37BBc: db A3
#_1AF2A4: #_37BCc: db C4
#_1AF2A5: #_37BDc: db $30 ; duration
#_1AF2A6: #_37BEc: db E4
#_1AF2A7: #_37BFc: db $18 ; duration
#_1AF2A8: #_37C0c: db R
#_1AF2A9: #_37C1c: db $06 ; duration
#_1AF2AA: #_37C2c: db G3
#_1AF2AB: #_37C3c: db B3
#_1AF2AC: #_37C4c: db E4
#_1AF2AD: #_37C5c: db G4
#_1AF2AE: #_37C6c: db $30 ; duration
#_1AF2AF: #_37C7c: db B4
#_1AF2B0: #_37C8c: db $18 ; duration
#_1AF2B1: #_37C9c: db R
#_1AF2B2: #_37CAc: db $06 ; duration
#_1AF2B3: #_37CBc: db A3
#_1AF2B4: #_37CCc: db C4
#_1AF2B5: #_37CDc: db F4
#_1AF2B6: #_37CEc: db A4
#_1AF2B7: #_37CFc: db $30 ; duration
#_1AF2B8: #_37D0c: db C5
#_1AF2B9: #_37D1c: db $18 ; duration
#_1AF2BA: #_37D2c: db R
#_1AF2BB: #_37D3c: db $06 ; duration
#_1AF2BC: #_37D4c: db E3
#_1AF2BD: #_37D5c: db G3
#_1AF2BE: #_37D6c: db C4
#_1AF2BF: #_37D7c: db E4
#_1AF2C0: #_37D8c: db $30 ; duration
#_1AF2C1: #_37D9c: db G4
#_1AF2C2: #_37DAc: db $18 ; duration
#_1AF2C3: #_37DBc: db R
#_1AF2C4: #_37DCc: db $06 ; duration
#_1AF2C5: #_37DDc: db F3
#_1AF2C6: #_37DEc: db C4
#_1AF2C7: #_37DFc: db D4
#_1AF2C8: #_37E0c: db F4
#_1AF2C9: #_37E1c: db $30 ; duration
#_1AF2CA: #_37E2c: db A4
#_1AF2CB: #_37E3c: db $18 ; duration
#_1AF2CC: #_37E4c: db R
#_1AF2CD: #_37E5c: db $06 ; duration
#_1AF2CE: #_37E6c: db C4
#_1AF2CF: #_37E7c: db E4
#_1AF2D0: #_37E8c: db G4
#_1AF2D1: #_37E9c: db A4
#_1AF2D2: #_37EAc: db $30 ; duration
#_1AF2D3: #_37EBc: db C5
#_1AF2D4: #_37ECc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_37ED:
#_1AF2D5: #_37EDc: db $18 ; duration
#_1AF2D6: #_37EEc: db R
#_1AF2D7: #_37EFc: db $06 ; duration
#_1AF2D8: #_37F0c: db A3
#_1AF2D9: #_37F1c: db C4
#_1AF2DA: #_37F2c: db E4
#_1AF2DB: #_37F3c: db Fs4
#_1AF2DC: #_37F4c: db $30 ; duration
#_1AF2DD: #_37F5c: db A4
#_1AF2DE: #_37F6c: db $18 ; duration
#_1AF2DF: #_37F7c: db R
#_1AF2E0: #_37F8c: db $06 ; duration
#_1AF2E1: #_37F9c: db B3
#_1AF2E2: #_37FAc: db D4
#_1AF2E3: #_37FBc: db F4
#_1AF2E4: #_37FCc: db G4
#_1AF2E5: #_37FDc: db $30 ; duration
#_1AF2E6: #_37FEc: db B4
#_1AF2E7: #_37FFc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_3800:
#_1AF2E8: #_3800c: db $30 ; duration
#_1AF2E9: #_3801c: db R
#_1AF2EA: #_3802c: db R
#_1AF2EB: #_3803c: db $48 ; duration
#_1AF2EC: #_3804c: db R
#_1AF2ED: #_3805c: db $08, $4D ; duration, params
#_1AF2EF: #_3807c: db B3
#_1AF2F0: #_3808c: db R
#_1AF2F1: #_3809c: db B3
#_1AF2F2: #_380Ac: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_380B:
#_1AF2F3: #_380Bc: db $48, $7D ; duration, params
#_1AF2F5: #_380Dc: db C5
#_1AF2F6: #_380Ec: db $08 ; duration
#_1AF2F7: #_380Fc: db C5
#_1AF2F8: #_3810c: db B4
#_1AF2F9: #_3811c: db A4
#_1AF2FA: #_3812c: db $48 ; duration
#_1AF2FB: #_3813c: db B4
#_1AF2FC: #_3814c: db $08 ; duration
#_1AF2FD: #_3815c: db G4
#_1AF2FE: #_3816c: db R
#_1AF2FF: #_3817c: db G4
#_1AF300: #_3818c: db $48 ; duration
#_1AF301: #_3819c: db A4
#_1AF302: #_381Ac: db $08 ; duration
#_1AF303: #_381Bc: db A4
#_1AF304: #_381Cc: db G4
#_1AF305: #_381Dc: db F4
#_1AF306: #_381Ec: db $48 ; duration
#_1AF307: #_381Fc: db G4
#_1AF308: #_3820c: db $18 ; duration
#_1AF309: #_3821c: db C4
#_1AF30A: #_3822c: db $48 ; duration
#_1AF30B: #_3823c: db F4
#_1AF30C: #_3824c: db $08 ; duration
#_1AF30D: #_3825c: db F4
#_1AF30E: #_3826c: db E4
#_1AF30F: #_3827c: db D4
#_1AF310: #_3828c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_3829:
#_1AF311: #_3829c: db $30 ; duration
#_1AF312: #_382Ac: db E4
#_1AF313: #_382Bc: db C4
#_1AF314: #_382Cc: db $48 ; duration
#_1AF315: #_382Dc: db D4
#_1AF316: #_382Ec: db $18 ; duration
#_1AF317: #_382Fc: db C4
#_1AF318: #_3830c: db $48 ; duration
#_1AF319: #_3831c: db B3
#_1AF31A: #_3832c: db $08, $4D ; duration, params
#_1AF31C: #_3834c: db G4
#_1AF31D: #_3835c: db R
#_1AF31E: #_3836c: db G4
#_1AF31F: #_3837c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_3838:
#_1AF320: #_3838c: db $18 ; duration
#_1AF321: #_3839c: db R
#_1AF322: #_383Ac: db $06, $7D ; duration, params
#_1AF324: #_383Cc: db E3
#_1AF325: #_383Dc: db A3
#_1AF326: #_383Ec: db C4
#_1AF327: #_383Fc: db E4
#_1AF328: #_3840c: db $30 ; duration
#_1AF329: #_3841c: db A4
#_1AF32A: #_3842c: db $18 ; duration
#_1AF32B: #_3843c: db R
#_1AF32C: #_3844c: db $06 ; duration
#_1AF32D: #_3845c: db G3
#_1AF32E: #_3846c: db B3
#_1AF32F: #_3847c: db E4
#_1AF330: #_3848c: db G4
#_1AF331: #_3849c: db $30 ; duration
#_1AF332: #_384Ac: db B4
#_1AF333: #_384Bc: db $18 ; duration
#_1AF334: #_384Cc: db R
#_1AF335: #_384Dc: db $06 ; duration
#_1AF336: #_384Ec: db A3
#_1AF337: #_384Fc: db C4
#_1AF338: #_3850c: db F4
#_1AF339: #_3851c: db A4
#_1AF33A: #_3852c: db $30 ; duration
#_1AF33B: #_3853c: db C5
#_1AF33C: #_3854c: db $18 ; duration
#_1AF33D: #_3855c: db R
#_1AF33E: #_3856c: db $06 ; duration
#_1AF33F: #_3857c: db E3
#_1AF340: #_3858c: db G3
#_1AF341: #_3859c: db C4
#_1AF342: #_385Ac: db E4
#_1AF343: #_385Bc: db $30 ; duration
#_1AF344: #_385Cc: db G4
#_1AF345: #_385Dc: db $18 ; duration
#_1AF346: #_385Ec: db R
#_1AF347: #_385Fc: db $06 ; duration
#_1AF348: #_3860c: db F3
#_1AF349: #_3861c: db C4
#_1AF34A: #_3862c: db D4
#_1AF34B: #_3863c: db F4
#_1AF34C: #_3864c: db $30 ; duration
#_1AF34D: #_3865c: db A4
#_1AF34E: #_3866c: db $18 ; duration
#_1AF34F: #_3867c: db R
#_1AF350: #_3868c: db $06 ; duration
#_1AF351: #_3869c: db C4
#_1AF352: #_386Ac: db E4
#_1AF353: #_386Bc: db G4
#_1AF354: #_386Cc: db A4
#_1AF355: #_386Dc: db $30 ; duration
#_1AF356: #_386Ec: db C5
#_1AF357: #_386Fc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_3870:
#_1AF358: #_3870c: db $18 ; duration
#_1AF359: #_3871c: db R
#_1AF35A: #_3872c: db $06 ; duration
#_1AF35B: #_3873c: db C4
#_1AF35C: #_3874c: db Ds4
#_1AF35D: #_3875c: db Fs4
#_1AF35E: #_3876c: db Gs4
#_1AF35F: #_3877c: db $30 ; duration
#_1AF360: #_3878c: db C5
#_1AF361: #_3879c: db $18 ; duration
#_1AF362: #_387Ac: db R
#_1AF363: #_387Bc: db $06 ; duration
#_1AF364: #_387Cc: db As3
#_1AF365: #_387Dc: db Cs4
#_1AF366: #_387Ec: db E4
#_1AF367: #_387Fc: db Fs4
#_1AF368: #_3880c: db $30 ; duration
#_1AF369: #_3881c: db C5
#_1AF36A: #_3882c: db $18 ; duration
#_1AF36B: #_3883c: db R
#_1AF36C: #_3884c: db $06 ; duration
#_1AF36D: #_3885c: db Gs3
#_1AF36E: #_3886c: db C4
#_1AF36F: #_3887c: db E4
#_1AF370: #_3888c: db Gs4
#_1AF371: #_3889c: db $30 ; duration
#_1AF372: #_388Ac: db C5
#_1AF373: #_388Bc: db $48 ; duration
#_1AF374: #_388Cc: db A3
#_1AF375: #_388Dc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_388E:
#_1AF376: #_388Ec: db $48, $7D ; duration, params
#_1AF378: #_3890c: db E4
#_1AF379: #_3891c: db $08 ; duration
#_1AF37A: #_3892c: db E4
#_1AF37B: #_3893c: db D4
#_1AF37C: #_3894c: db C4
#_1AF37D: #_3895c: db $48 ; duration
#_1AF37E: #_3896c: db D4
#_1AF37F: #_3897c: db $08 ; duration
#_1AF380: #_3898c: db B3
#_1AF381: #_3899c: db R
#_1AF382: #_389Ac: db B3
#_1AF383: #_389Bc: db $48 ; duration
#_1AF384: #_389Cc: db C4
#_1AF385: #_389Dc: db $08 ; duration
#_1AF386: #_389Ec: db C4
#_1AF387: #_389Fc: db B3
#_1AF388: #_38A0c: db A3
#_1AF389: #_38A1c: db $48 ; duration
#_1AF38A: #_38A2c: db B3
#_1AF38B: #_38A3c: db $18 ; duration
#_1AF38C: #_38A4c: db E3
#_1AF38D: #_38A5c: db $48 ; duration
#_1AF38E: #_38A6c: db A3
#_1AF38F: #_38A7c: db $08 ; duration
#_1AF390: #_38A8c: db A3
#_1AF391: #_38A9c: db G3
#_1AF392: #_38AAc: db F3
#_1AF393: #_38ABc: db $48 ; duration
#_1AF394: #_38ACc: db C4
#_1AF395: #_38ADc: db $10 ; duration
#_1AF396: #_38AEc: db C4
#_1AF397: #_38AFc: db $08 ; duration
#_1AF398: #_38B0c: db D4
#_1AF399: #_38B1c: db $48 ; duration
#_1AF39A: #_38B2c: db Ds4
#_1AF39B: #_38B3c: db $10 ; duration
#_1AF39C: #_38B4c: db C4
#_1AF39D: #_38B5c: db $08 ; duration
#_1AF39E: #_38B6c: db D4
#_1AF39F: #_38B7c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_38B8:
#_1AF3A0: #_38B8c: db !VOLUME, $8C
#_1AF3A2: #_38BAc: db !INSTR, $0F
#_1AF3A4: #_38BCc: db !PAN, $12
#_1AF3A6: #_38BEc: db $60 ; duration
#_1AF3A7: #_38BFc: db R
#_1AF3A8: #_38C0c: db R
#_1AF3A9: #_38C1c: db R
#_1AF3AA: #_38C2c: db R
#_1AF3AB: #_38C3c: db R
#_1AF3AC: #_38C4c: db R
#_1AF3AD: #_38C5c: db R
#_1AF3AE: #_38C6c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_38C7:
#_1AF3AF: #_38C7c: db $48 ; duration
#_1AF3B0: #_38C8c: db C5
#_1AF3B1: #_38C9c: db $10 ; duration
#_1AF3B2: #_38CAc: db Gs4
#_1AF3B3: #_38CBc: db $08 ; duration
#_1AF3B4: #_38CCc: db As4
#_1AF3B5: #_38CDc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_38CE:
#_1AF3B6: #_38CEc: db $20, $7D ; duration, params
#_1AF3B8: #_38D0c: db F5
#_1AF3B9: #_38D1c: db $08, $4D ; duration, params
#_1AF3BB: #_38D3c: db E5
#_1AF3BC: #_38D4c: db D5
#_1AF3BD: #_38D5c: db $18, $5D ; duration, params
#_1AF3BF: #_38D7c: db C5
#_1AF3C0: #_38D8c: db $18, $4D ; duration, params
#_1AF3C2: #_38DAc: db G4
#_1AF3C3: #_38DBc: db $18, $6D ; duration, params
#_1AF3C5: #_38DDc: db A4
#_1AF3C6: #_38DEc: db $18, $3D ; duration, params
#_1AF3C8: #_38E0c: db C5
#_1AF3C9: #_38E1c: db $18, $6D ; duration, params
#_1AF3CB: #_38E3c: db D5
#_1AF3CC: #_38E4c: db $18, $3D ; duration, params
#_1AF3CE: #_38E6c: db C5
#_1AF3CF: #_38E7c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_38E8:
#_1AF3D0: #_38E8c: db $20, $7D ; duration, params
#_1AF3D2: #_38EAc: db A4
#_1AF3D3: #_38EBc: db $08, $4D ; duration, params
#_1AF3D5: #_38EDc: db G4
#_1AF3D6: #_38EEc: db F4
#_1AF3D7: #_38EFc: db $18, $5D ; duration, params
#_1AF3D9: #_38F1c: db E4
#_1AF3DA: #_38F2c: db $18, $4D ; duration, params
#_1AF3DC: #_38F4c: db C4
#_1AF3DD: #_38F5c: db $18, $6D ; duration, params
#_1AF3DF: #_38F7c: db C4
#_1AF3E0: #_38F8c: db $18, $3D ; duration, params
#_1AF3E2: #_38FAc: db F4
#_1AF3E3: #_38FBc: db $18, $6D ; duration, params
#_1AF3E5: #_38FDc: db Fs4
#_1AF3E6: #_38FEc: db $18, $3D ; duration, params
#_1AF3E8: #_3900c: db Fs4
#_1AF3E9: #_3901c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_3902:
#_1AF3EA: #_3902c: db $0C, $5D ; duration, params
#_1AF3EC: #_3904c: db C5
#_1AF3ED: #_3905c: db C5
#_1AF3EE: #_3906c: db C5
#_1AF3EF: #_3907c: db C5
#_1AF3F0: #_3908c: db C5
#_1AF3F1: #_3909c: db C5
#_1AF3F2: #_390Ac: db C5
#_1AF3F3: #_390Bc: db C5
#_1AF3F4: #_390Cc: db B4
#_1AF3F5: #_390Dc: db B4
#_1AF3F6: #_390Ec: db B4
#_1AF3F7: #_390Fc: db B4
#_1AF3F8: #_3910c: db B4
#_1AF3F9: #_3911c: db B4
#_1AF3FA: #_3912c: db B4
#_1AF3FB: #_3913c: db B4
#_1AF3FC: #_3914c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_3915:
#_1AF3FD: #_3915c: db C5
#_1AF3FE: #_3916c: db C5
#_1AF3FF: #_3917c: db C5
#_1AF400: #_3918c: db C5
#_1AF401: #_3919c: db C5
#_1AF402: #_391Ac: db C5
#_1AF403: #_391Bc: db C5
#_1AF404: #_391Cc: db C5
#_1AF405: #_391Dc: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_391E:
#_1AF406: #_391Ec: db E5
#_1AF407: #_391Fc: db E5
#_1AF408: #_3920c: db E5
#_1AF409: #_3921c: db E5
#_1AF40A: #_3922c: db E5
#_1AF40B: #_3923c: db E5
#_1AF40C: #_3924c: db E5
#_1AF40D: #_3925c: db E5
#_1AF40E: #_3926c: db !PART_END

;---------------------------------------------------------------------------------------------------

Song21_Sub_3927:
#_1AF40F: #_3927c: db F5
#_1AF410: #_3928c: db F5
#_1AF411: #_3929c: db F5
#_1AF412: #_392Ac: db F5
#_1AF413: #_392Bc: db F5
#_1AF414: #_392Cc: db F5
#_1AF415: #_392Dc: db F5
#_1AF416: #_392Ec: db F5
#_1AF417: #_392Fc: db E5
#_1AF418: #_3930c: db E5
#_1AF419: #_3931c: db E5
#_1AF41A: #_3932c: db E5
#_1AF41B: #_3933c: db E5
#_1AF41C: #_3934c: db E5
#_1AF41D: #_3935c: db E5
#_1AF41E: #_3936c: db E5
#_1AF41F: #_3937c: db !PART_END

base off

#_1AF420: dw !END_TRANSFER, SPC_ENGINE

;===================================================================================================
; FREE ROM: 0xDC
; including garbage
;===================================================================================================
GARBAGE_1AF424:
#_1AF424: db $34, $00, $00, $00, $00, $01, $FF, $00, $00, $00, $00, $00

;===================================================================================================

NULL_1AF430:
#_1AF430: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF438: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF440: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF448: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF450: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF458: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF460: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF468: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF470: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF478: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF480: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF488: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF490: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF498: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF4A0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF4A8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF4B0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF4B8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF4C0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF4C8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF4D0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF4D8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF4E0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF4E8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF4F0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1AF4F8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

pool SpriteDraw_BatCrash

.oam_groups

.oam_group00
#_1AF500: dw   0,   0 : db $4B, $04, $00, $00

.oam_group01
#_1AF508: dw   5,  -4 : db $5B, $04, $00, $00

.oam_group02
#_1AF510: dw  -2,  -4 : db $64, $04, $00, $02

.oam_group03
#_1AF518: dw  -2,  -4 : db $49, $04, $00, $02

.oam_group04
#_1AF520: dw  -8,  -9 : db $6C, $04, $00, $02
#_1AF528: dw   8,  -9 : db $6C, $44, $00, $02

.oam_group05
#_1AF530: dw  -8,  -7 : db $4C, $04, $00, $02
#_1AF538: dw   8,  -7 : db $4C, $44, $00, $02

.oam_group06
#_1AF540: dw  -8,  -9 : db $44, $04, $00, $02
#_1AF548: dw   8,  -9 : db $44, $44, $00, $02

.oam_group07
#_1AF550: dw  -8,  -8 : db $62, $04, $00, $02
#_1AF558: dw   8,  -8 : db $62, $44, $00, $02

.oam_group08
#_1AF560: dw  -8,  -7 : db $60, $04, $00, $02
#_1AF568: dw   8,  -7 : db $60, $44, $00, $02

.oam_group09
#_1AF570: dw   0,   0 : db $4E, $04, $00, $02
#_1AF578: dw  16,   0 : db $4E, $44, $00, $02
#_1AF580: dw   0,  16 : db $6E, $04, $00, $02
#_1AF588: dw  16,  16 : db $6E, $44, $00, $02

pool off

;===================================================================================================

pool BatCrash BatCrash_Approach

.position_x
#_1AF590: dw $07DC, $07F0, $0820, $0818

.position_y
#_1AF598: dw $062E, $0636, $0630, $05E0

.anim_timer
#_1AF5A0: db     4,     3,     4,     6,     0

pool off

;===================================================================================================
; This handles the animation for waterfalls, such as in Swamp Palace or the waterfall fairy.
; Also handles the Ganon Tower and Pyramid opening cutscenes.
;===================================================================================================
Sprite_37_Waterfall:
#_1AF5A5: PHB
#_1AF5A6: PHK
#_1AF5A7: PLB

#_1AF5A8: JSR .main

#_1AF5AB: PLB

#_1AF5AC: RTL

;---------------------------------------------------------------------------------------------------

.main
#_1AF5AD: LDA.w $0E80,X
#_1AF5B0: JSL JumpTableLocal
#_1AF5B4: dw Waterfall
#_1AF5B6: dw BatCrash

;===================================================================================================

Waterfall:
#_1AF5B8: JSR Sprite_CheckIfActive_Bank1A
#_1AF5BB: JSL Sprite_CheckDamageToLink_same_layer_long
#_1AF5BF: BCC .exit

#_1AF5C1: LDA.b $8A
#_1AF5C3: CMP.b #$43
#_1AF5C5: BEQ .on_gt_screen

#_1AF5C7: PHX

#_1AF5C8: JSL AncillaAdd_WaterfallSplash

#_1AF5CC: PLX

.exit
#_1AF5CD: RTS

;---------------------------------------------------------------------------------------------------

.on_gt_screen
#_1AF5CE: PHX

#_1AF5CF: JSL AncillaAdd_GTCutscene

#_1AF5D3: PLX

#_1AF5D4: RTS

;===================================================================================================
; The specific sprite for the bat crash on pyramid cutscene.
;===================================================================================================
pool BatCrash

.shake_low
#_1AF5D5: db  1, -1

.shake_high
#_1AF5D7: db  0, -1

pool off

;---------------------------------------------------------------------------------------------------

BatCrash:
#_1AF5D9: JSR SpriteDraw_BatCrash
#_1AF5DC: JSR Sprite_CheckIfActive_Bank1A
#_1AF5DF: JSL Sprite_Move_XY_Bank1D_long
#_1AF5E3: JSR BatCrash_DrawHardcodedGarbage

#_1AF5E6: STZ.w $011C
#_1AF5E9: STZ.w $011D

#_1AF5EC: LDA.w $0EE0,X
#_1AF5EF: BEQ .timer1_done

#_1AF5F1: DEC A
#_1AF5F2: BNE .still_nonzero

; Play this sound on the last frame
#_1AF5F4: LDY.b #!SFX1_05
#_1AF5F6: STY.w $012D

.still_nonzero
#_1AF5F9: AND.b #$01
#_1AF5FB: TAY

#_1AF5FC: LDA.w .shake_low,Y
#_1AF5FF: STA.w $011C

#_1AF602: LDA.w .shake_high,Y
#_1AF605: STA.w $011D

.timer1_done
#_1AF608: LDA.w $0DF0,X
#_1AF60B: BNE .timer_running

#_1AF60D: LDA.w $0DC0,X
#_1AF610: INC A
#_1AF611: AND.b #$03
#_1AF613: STA.w $0DC0,X
#_1AF616: BNE .no_flap_sfx

#_1AF618: LDA.w $0D80,X
#_1AF61B: CMP.b #$02
#_1AF61D: BCS .no_flap_sfx

#_1AF61F: LDA.b #!SFX2_03
#_1AF621: JSL SpriteSFX_QueueSFX2WithPan

.no_flap_sfx
#_1AF625: LDY.w $0DE0,X

#_1AF628: LDA.w .anim_timer,Y
#_1AF62B: STA.w $0DF0,X

.timer_running
#_1AF62E: LDA.w $0D80,X
#_1AF631: JSL JumpTableLocal
#_1AF635: dw BatCrash_Approach
#_1AF637: dw BatCrash_Ascend
#_1AF639: dw BatCrash_DiveBomb
#_1AF63B: dw BatCrash_StallTheInevitable

;===================================================================================================
; The part of the cutscene where the bat approaches the pyramid.
;===================================================================================================
BatCrash_Approach:
#_1AF63D: LDA.w $0D90,X
#_1AF640: ASL A
#_1AF641: TAY

#_1AF642: REP #$20

#_1AF644: LDA.w .position_x,Y
#_1AF647: CMP.w $0FD8

#_1AF64A: SEP #$30
#_1AF64C: BCS BatCrash_HandleYMovement

#_1AF64E: CPY.b #$04
#_1AF650: BCC .still_approaching

#_1AF652: INC.w $0D80,X

#_1AF655: LDA.b #$D0
#_1AF657: STA.w $0E00,X

.still_approaching
#_1AF65A: INC.w $0D90,X

#_1AF65D: INC.w $0DE0,X

;===================================================================================================

#BatCrash_HandleYMovement:
#_1AF660: LDA.b $1A
#_1AF662: AND.b #$07
#_1AF664: BNE .done_Y

#_1AF666: REP #$20

#_1AF668: LDA.w .position_y,Y
#_1AF66B: CMP.w $0FDA

#_1AF66E: SEP #$30
#_1AF670: BCC .ypos_not_reached

#_1AF672: INC.w $0D40,X
#_1AF675: BRA .done_Y

.ypos_not_reached
#_1AF677: DEC.w $0D40,X

.done_Y
#_1AF67A: LDA.b $1A
#_1AF67C: AND.b #$0F
#_1AF67E: BNE .exit

#_1AF680: INC.w $0D50,X

.exit
#_1AF683: RTS

;===================================================================================================
; Fly the bat off screen to prepare for a divebomb
;===================================================================================================
BatCrash_Ascend:
#_1AF684: LDA.w $0E00,X
#_1AF687: BNE .ascending

; Interesting...
; They don't seem to trust the state of the bat as it flies in.
; This hardcodes the bat's coordinates as it advances to its next AI.
#_1AF689: INC.w $0D80,X

#_1AF68C: LDA.b #!SFX3_26
#_1AF68E: JSL SpriteSFX_QueueSFX3WithPan

#_1AF692: INC.w $0DE0,X

#_1AF695: LDA.b #$E8
#_1AF697: STA.w $0D10,X

#_1AF69A: LDA.b #$07
#_1AF69C: STA.w $0D30,X

#_1AF69F: LDA.b #$E0
#_1AF6A1: STA.w $0D00,X

#_1AF6A4: LDA.b #$05
#_1AF6A6: STA.w $0D20,X
#_1AF6A9: STZ.w $0D50,X

#_1AF6AC: LDA.b #$40
#_1AF6AE: STA.w $0D40,X

#_1AF6B1: LDA.b #$2D
#_1AF6B3: STA.w $0E00,X

#_1AF6B6: RTS

.ascending
#_1AF6B7: LDA.b $1A
#_1AF6B9: AND.b #$03
#_1AF6BB: BNE .dont_tick

#_1AF6BD: DEC.w $0D50,X

.dont_tick
#_1AF6C0: LDA.w $0D90,X
#_1AF6C3: ASL A
#_1AF6C4: TAY

#_1AF6C5: JMP.w BatCrash_HandleYMovement

;===================================================================================================
; Portion of the cutscene where the bat crashes downwards.
;===================================================================================================
BatCrash_DiveBomb:
#_1AF6C8: LDA.w $0E00,X
#_1AF6CB: BNE .descending

#_1AF6CD: STZ.w $0D40,X

#_1AF6D0: LDA.b #$60
#_1AF6D2: STA.w $0E00,X

#_1AF6D5: INC.w $0D80,X

.descending
#_1AF6D8: LDA.w $0E00,X
#_1AF6DB: CMP.b #$09
#_1AF6DD: BNE .exit

#_1AF6DF: JSR BatCrash_SpawnDebris

#_1AF6E2: PHX

#_1AF6E3: JSL CreatePyramidHole

#_1AF6E7: PLX

.exit
#_1AF6E8: RTS

;===================================================================================================
; Just adds a delay before the duck swoops in.
;===================================================================================================
BatCrash_StallTheInevitable:
#_1AF6E9: LDA.w $0E00,X
#_1AF6EC: BNE .stayin_alive

#_1AF6EE: STZ.w $0DD0,X

#_1AF6F1: INC.w $0200

.stayin_alive
#_1AF6F4: RTS

;===================================================================================================
; This is what actually spawns the bat.
;===================================================================================================
Sprite_SpawnBatCrashCutscene:
#_1AF6F5: LDA.b #!SPRITE_37
#_1AF6F7: JSL Sprite_SpawnDynamically

#_1AF6FB: LDA.b #$00
#_1AF6FD: STA.w $0D40,Y
#_1AF700: STA.w $0DA0,Y
#_1AF703: STA.w $0DE0,Y
#_1AF706: STA.w $0F20,Y

#_1AF709: INC A
#_1AF70A: STA.w $0E80,Y
#_1AF70D: STA.w $0E40,Y
#_1AF710: STA.w $0E60,Y
#_1AF713: STA.w $0F50,Y

#_1AF716: LDA.b #$CC
#_1AF718: STA.w $0D10,Y

#_1AF71B: LDA.b #$07
#_1AF71D: STA.w $0D30,Y

#_1AF720: LDA.b #$32
#_1AF722: STA.w $0D00,Y

#_1AF725: LDA.b #$06
#_1AF727: STA.w $0D20,Y

#_1AF72A: LDA.b #$80
#_1AF72C: STA.w $0CAA,Y

#_1AF72F: RTL

;===================================================================================================
; This can't even be seen during the cutscene.
; But there's hardcoded sprites being drawn every frame.
;===================================================================================================
pool BatCrash_DrawHardcodedGarbage

.data
#_1AF730: db $68, $97, $57, $01
#_1AF734: db $78, $97, $57, $01
#_1AF738: db $88, $97, $57, $01
#_1AF73C: db $68, $A7, $57, $01
#_1AF740: db $78, $A7, $57, $01
#_1AF744: db $88, $A7, $57, $01
#_1AF748: db $65, $90, $57, $01
#_1AF74C: db $8B, $90, $57, $01

pool off

;---------------------------------------------------------------------------------------------------

BatCrash_DrawHardcodedGarbage:
#_1AF750: REP #$20

#_1AF752: LDY.b #$20

.next_object
#_1AF754: LDA.w .data-2,Y
#_1AF757: STA.w $092E,Y

#_1AF75A: DEY
#_1AF75B: DEY
#_1AF75C: BNE .next_object

;---------------------------------------------------------------------------------------------------

#_1AF75E: LDY.b #$08

#_1AF760: LDA.w #$0202

; This does the smaller table properties
.next_prop
#_1AF763: STA.w $0A6C,Y

#_1AF766: DEY
#_1AF767: DEY
#_1AF768: BPL .next_prop

#_1AF76A: SEP #$30

#_1AF76C: RTS

;===================================================================================================
; A lot of garnish
;===================================================================================================
pool BatCrash_SpawnDebris

.offset_x
#_1AF76D: db  -8,   0,   8,  16,  24,  32
#_1AF773: db  -8,   0,   8,  16,  24,  32
#_1AF779: db  -8,   0,   8,  16,  24,  32
#_1AF77F: db  -8,   0,   8,  16,  24,  32
#_1AF785: db  -8,   0,   8,  16,  24,  32

.offset_y
#_1AF78B: db  48,  48,  48,  48,  48,  48
#_1AF791: db  40,  40,  40,  40,  40,  40
#_1AF797: db  32,  32,  32,  32,  32,  32
#_1AF79D: db  24,  24,  24,  24,  24,  24
#_1AF7A3: db  16,  16,  16,  16,  16,  16

.speed_x
#_1AF7A9: db $E2, $E7, $F8, $08, $19, $1E
#_1AF7AF: db $CE, $D3, $EC, $14, $2D, $32
#_1AF7B5: db $CE, $DD, $E7, $19, $23, $32
#_1AF7BB: db $D3, $CE, $C4, $3C, $32, $2D
#_1AF7C1: db $E2, $DD, $D8, $28, $23, $1E

.speed_y
#_1AF7C7: db $02, $05, $0A, $0A, $05, $02
#_1AF7CD: db $05, $14, $1E, $1E, $14, $05
#_1AF7D3: db $0A, $1E, $28, $28, $1E, $0A
#_1AF7D9: db $EC, $D8, $C4, $C4, $D8, $EC
#_1AF7DF: db $F6, $EC, $D8, $D8, $EC, $F6

pool off

;---------------------------------------------------------------------------------------------------

BatCrash_SpawnDebris:
#_1AF7E5: LDY.b #$1D

.next_particle
#_1AF7E7: LDA.w .offset_x,Y
#_1AF7EA: STA.b $00

#_1AF7EC: LDA.w .offset_y,Y
#_1AF7EF: STA.b $01

#_1AF7F1: LDA.w .speed_x,Y
#_1AF7F4: STA.b $02

#_1AF7F6: LDA.w .speed_y,Y
#_1AF7F9: STA.b $03

#_1AF7FB: PHY
#_1AF7FC: JSL GarnishSpawn_PyramidDebris
#_1AF800: PLY

#_1AF801: DEY
#_1AF802: BPL .next_particle

#_1AF804: LDA.b #$20
#_1AF806: STA.w $0EE0,X

#_1AF809: RTS

;===================================================================================================

pool SpriteDraw_BatCrash

.pointer_low
#_1AF80A: db SpriteDraw_BatCrash_oam_group00
#_1AF80B: db SpriteDraw_BatCrash_oam_group00
#_1AF80C: db SpriteDraw_BatCrash_oam_group01
#_1AF80D: db SpriteDraw_BatCrash_oam_group01
#_1AF80E: db SpriteDraw_BatCrash_oam_group02
#_1AF80F: db SpriteDraw_BatCrash_oam_group02
#_1AF810: db SpriteDraw_BatCrash_oam_group03
#_1AF811: db SpriteDraw_BatCrash_oam_group03
#_1AF812: db SpriteDraw_BatCrash_oam_group04
#_1AF813: db SpriteDraw_BatCrash_oam_group04
#_1AF814: db SpriteDraw_BatCrash_oam_group05
#_1AF815: db SpriteDraw_BatCrash_oam_group05
#_1AF816: db SpriteDraw_BatCrash_oam_group06
#_1AF817: db SpriteDraw_BatCrash_oam_group07
#_1AF818: db SpriteDraw_BatCrash_oam_group08
#_1AF819: db SpriteDraw_BatCrash_oam_group07
#_1AF81A: db SpriteDraw_BatCrash_oam_group09
#_1AF81B: db SpriteDraw_BatCrash_oam_group09
#_1AF81C: db SpriteDraw_BatCrash_oam_group09
#_1AF81D: db SpriteDraw_BatCrash_oam_group09

;---------------------------------------------------------------------------------------------------

.pointer_high
#_1AF81E: db SpriteDraw_BatCrash_oam_groups>>8

;---------------------------------------------------------------------------------------------------

.obj_count
#_1AF81F: db 1
#_1AF820: db 1
#_1AF821: db 1
#_1AF822: db 1
#_1AF823: db 1
#_1AF824: db 1
#_1AF825: db 1
#_1AF826: db 1
#_1AF827: db 2
#_1AF828: db 2
#_1AF829: db 2
#_1AF82A: db 2
#_1AF82B: db 2
#_1AF82C: db 2
#_1AF82D: db 2
#_1AF82E: db 2
#_1AF82F: db 4
#_1AF830: db 4
#_1AF831: db 4
#_1AF832: db 4

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_BatCrash:
#_1AF833: REP #$20

; !HARDCODED oam slots
#_1AF835: LDA.w #$0960
#_1AF838: STA.b $90

#_1AF83A: LDA.w #$0A78
#_1AF83D: STA.b $92

#_1AF83F: SEP #$20

#_1AF841: LDA.w $0DE0,X
#_1AF844: ASL A
#_1AF845: ASL A
#_1AF846: ADC.w $0DC0,X
#_1AF849: TAY

#_1AF84A: LDA.w .pointer_low,Y
#_1AF84D: STA.b $08

#_1AF84F: LDA.w .pointer_high
#_1AF852: STA.b $09

#_1AF854: LDA.w .obj_count,Y
#_1AF857: JSL Sprite_DrawMultiple

#_1AF85B: RTS

;===================================================================================================

pool SpriteDraw_Drunkard

.oam_groups
; group00
#_1AF85C: dw   8,   2 : db $AE, $00, $00, $00
#_1AF864: dw   0,  -9 : db $22, $08, $00, $02
#_1AF86C: dw   0,   0 : db $06, $00, $00, $02

; group01
#_1AF874: dw   7,   0 : db $AF, $00, $00, $00
#_1AF87C: dw   0,  -9 : db $22, $08, $00, $02
#_1AF884: dw   0,   0 : db $06, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Drunkard:
#_1AF88C: PHB
#_1AF88D: PHK
#_1AF88E: PLB

#_1AF88F: LDA.w $0DC0,X
#_1AF892: ASL A
#_1AF893: ADC.w $0DC0,X
#_1AF896: ASL A
#_1AF897: ASL A
#_1AF898: ASL A
#_1AF899: ADC.b #.oam_groups>>0
#_1AF89B: STA.b $08

#_1AF89D: LDA.b #.oam_groups>>8
#_1AF89F: ADC.b #$00

#_1AF8A1: STA.b $09

#_1AF8A3: LDA.b #$03
#_1AF8A5: STA.b $06
#_1AF8A7: STZ.b $07

#_1AF8A9: JMP.w SpriteDraw_Drunkard_continue

;===================================================================================================

pool SpriteDraw_RaceGameLady

.oam_groups
; group00
#_1AF8AC: dw   0,  -8 : db $E0, $00, $00, $02
#_1AF8B4: dw   0,   0 : db $E8, $00, $00, $02
#_1AF8BC: dw   0,  -7 : db $E0, $00, $00, $02
#_1AF8C4: dw   0,   1 : db $E8, $40, $00, $02

; group01
#_1AF8CC: dw   0,  -8 : db $C0, $00, $00, $02
#_1AF8D4: dw   0,   0 : db $C2, $00, $00, $02
#_1AF8DC: dw   0,  -7 : db $C0, $00, $00, $02
#_1AF8E4: dw   0,   1 : db $C2, $40, $00, $02

; group02
#_1AF8EC: dw   0,  -8 : db $E2, $00, $00, $02
#_1AF8F4: dw   0,   0 : db $E4, $00, $00, $02
#_1AF8FC: dw   0,  -7 : db $E2, $00, $00, $02
#_1AF904: dw   0,   1 : db $E6, $00, $00, $02

; group03
#_1AF90C: dw   0,  -8 : db $E2, $40, $00, $02
#_1AF914: dw   0,   0 : db $E4, $40, $00, $02
#_1AF91C: dw   0,  -7 : db $E2, $40, $00, $02
#_1AF924: dw   0,   1 : db $E6, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_RaceGameLady:
#_1AF92C: PHB
#_1AF92D: PHK
#_1AF92E: PLB

#_1AF92F: LDA.b #$02
#_1AF931: STA.b $06
#_1AF933: STZ.b $07

#_1AF935: LDA.w $0DE0,X
#_1AF938: ASL A
#_1AF939: ADC.w $0DC0,X
#_1AF93C: ASL A
#_1AF93D: ASL A
#_1AF93E: ASL A
#_1AF93F: ASL A
#_1AF940: ADC.b #.oam_groups>>0
#_1AF942: STA.b $08

#_1AF944: LDA.b #.oam_groups>>8
#_1AF946: ADC.b #$00
#_1AF948: STA.b $09

;---------------------------------------------------------------------------------------------------

#SpriteDraw_Drunkard_continue:
#_1AF94A: JSL Sprite_DrawMultiple_player_deferred
#_1AF94E: JSL SpriteDraw_Shadow_long

#_1AF952: PLB

#_1AF953: RTL

;===================================================================================================
; Standard activeness check for sprites
;===================================================================================================
Sprite_CheckIfActive_Bank1A:
#_1AF954: LDA.w $0DD0,X
#_1AF957: CMP.b #$09
#_1AF959: BNE .inactive

#_1AF95B: LDA.w $0FC1
#_1AF95E: BNE .inactive

#_1AF960: LDA.b $11
#_1AF962: BNE .inactive

#_1AF964: LDA.w $0CAA,X
#_1AF967: BMI .active

#_1AF969: LDA.w $0F00,X
#_1AF96C: BEQ .active

.inactive
#_1AF96E: PLA
#_1AF96F: PLA

.active
#_1AF970: RTS

;===================================================================================================

pool Lanmola_SpawnShrapnel

.speed_y
#_1AF971: db  28, -28,  28, -28,   0,  36,   0, -36

.speed_x
#_1AF979: db -28, -28,  28,  28, -36,   0,  36,   0

pool off

;---------------------------------------------------------------------------------------------------

Lanmola_SpawnShrapnel:
#_1AF981: LDY.b #$03

; what the hell is this?
; The sprite module handlers are being used to determine how much is spawned!
; If any worm is alive (9) and another isn't gone, Y=7
; Or if 2 are dying and 1 is not gone (4+4+n)
#_1AF983: LDA.w $0DD0
#_1AF986: CLC
#_1AF987: ADC.w $0DD1
#_1AF98A: ADC.w $0DD2
#_1AF98D: CMP.b #$0A
#_1AF98F: BCS .too_much_stuff

#_1AF991: LDY.b #$07

.too_much_stuff
#_1AF993: STY.w $0FB5

.next_spawn
#_1AF996: LDA.b #!SPRITE_C2
#_1AF998: JSL Sprite_SpawnDynamically
#_1AF99C: BMI .no_space

#_1AF99E: JSL Sprite_SetSpawnedCoordinates

#_1AF9A2: LDA.b $00
#_1AF9A4: ADC.b #$04
#_1AF9A6: STA.w $0D10,Y

#_1AF9A9: LDA.b $02
#_1AF9AB: ADC.b #$04
#_1AF9AD: STA.w $0D00,Y

#_1AF9B0: LDA.b #$01
#_1AF9B2: STA.w $0BA0,Y
#_1AF9B5: STA.w $0CD2,Y
#_1AF9B8: STA.w $0F60,Y

#_1AF9BB: DEC A
#_1AF9BC: STA.w $0F70,Y

#_1AF9BF: LDA.b #$20
#_1AF9C1: STA.w $0E40,Y

#_1AF9C4: PHX
#_1AF9C5: LDX.w $0FB5

#_1AF9C8: LDA.l .speed_x,X
#_1AF9CC: STA.w $0D50,Y

#_1AF9CF: LDA.l .speed_y,X
#_1AF9D3: STA.w $0D40,Y

#_1AF9D6: JSL GetRandomNumber

#_1AF9DA: AND.b #$01
#_1AF9DC: STA.w $0DC0,Y

#_1AF9DF: PLX

.no_space
#_1AF9E0: DEC.w $0FB5
#_1AF9E3: BPL .next_spawn

#_1AF9E5: RTL

;===================================================================================================
; Unreachable pickle routine.
; Nice!
;===================================================================================================
UNREACHABLE_1AF9E6:
#_1AF9E6: LDY.b #$00
#_1AF9E8: CMP.b #$00
#_1AF9EA: BPL .positive

#_1AF9EC: DEY

.positive
#_1AF9ED: CLC
#_1AF9EE: ADC.w $0FDA
#_1AF9F1: STA.w $0FDA

#_1AF9F4: TYA
#_1AF9F5: ADC.w $0FDB
#_1AF9F8: STA.w $0FDB

#_1AF9FB: LDA.w $0F50,X
#_1AF9FE: PHA

#_1AF9FF: JSL Sprite_Cukeman

#_1AFA03: PLA
#_1AFA04: STA.w $0F50,X

#_1AFA07: JSL Sprite_Get16BitCoords_long

#_1AFA0B: RTL

;===================================================================================================
; Called every frame before spritedraw for.
; Checks for player interaction with a custom hitbox.
;===================================================================================================
Sprite_Cukeman:
#_1AFA0C: LDA.w $0EB0,X
#_1AFA0F: BEQ .exit

#_1AFA11: LDA.w $0DD0,X
#_1AFA14: CMP.b #$09
#_1AFA16: BNE .dont_speak

#_1AFA18: LDA.b $11
#_1AFA1A: ORA.w $0FC1
#_1AFA1D: BNE .dont_speak

; !HARDCODED hitbox and input detection
#_1AFA1F: REP #$20

#_1AFA21: LDA.w $0FD8
#_1AFA24: SEC
#_1AFA25: SBC.b $22
#_1AFA27: CLC
#_1AFA28: ADC.w #$0018
#_1AFA2B: CMP.w #$0030
#_1AFA2E: BCS .dont_speak

#_1AFA30: LDA.b $20
#_1AFA32: SEC
#_1AFA33: SBC.w $0FDA
#_1AFA36: CLC
#_1AFA37: ADC.w #$0020
#_1AFA3A: CMP.w #$0030
#_1AFA3D: BCS .dont_speak

#_1AFA3F: SEP #$20

#_1AFA41: LDA.b $F6
#_1AFA43: BPL .dont_speak

; Swap messages
#_1AFA45: LDA.w $0E30,X
#_1AFA48: INC.w $0E30,X
#_1AFA4B: AND.b #$01

; Message 0178 or Message 0179
#_1AFA4D: CLC
#_1AFA4E: ADC.b #$78
#_1AFA50: STA.w $1CF0

#_1AFA53: LDA.b #$01
#_1AFA55: STA.w $1CF1
#_1AFA58: JSL Sprite_ShowMessageMinimal

.dont_speak
#_1AFA5C: SEP #$20

;---------------------------------------------------------------------------------------------------

#_1AFA5E: PHB
#_1AFA5F: PHK
#_1AFA60: PLB

#_1AFA61: LDA.w $0F50,X
#_1AFA64: AND.b #$F0
#_1AFA66: PHA

#_1AFA67: ORA.b #$08
#_1AFA69: STA.w $0F50,X

#_1AFA6C: JSR SpriteDraw_Cukeman

#_1AFA6F: PLA
#_1AFA70: ORA.b #$0D
#_1AFA72: STA.w $0F50,X

#_1AFA75: LDA.b #$10
#_1AFA77: JSL OAM_AllocateFromRegionA

#_1AFA7B: PLB

#_1AFA7C: RTL

;---------------------------------------------------------------------------------------------------

.exit
#_1AFA7D: RTL

;===================================================================================================

pool SpriteDraw_Cukeman

.oam_groups
; group00
#_1AFA7E: dw   0,   0 : db $F3, $01, $00, $00
#_1AFA86: dw   7,   0 : db $F3, $41, $00, $00
#_1AFA8E: dw   4,   7 : db $E0, $07, $00, $00

; group01
#_1AFA96: dw  -1,   2 : db $F3, $01, $00, $00
#_1AFA9E: dw   6,   1 : db $F3, $41, $00, $00
#_1AFAA6: dw   4,   8 : db $E0, $07, $00, $00

; group02
#_1AFAAE: dw   1,   1 : db $F3, $01, $00, $00
#_1AFAB6: dw   8,   2 : db $F3, $41, $00, $00
#_1AFABE: dw   4,   8 : db $E0, $07, $00, $00

; group03
#_1AFAC6: dw  -2,   0 : db $F3, $01, $00, $00
#_1AFACE: dw  10,   0 : db $F3, $41, $00, $00
#_1AFAD6: dw   4,   7 : db $E0, $07, $00, $00

; group04
#_1AFADE: dw   0,   0 : db $F3, $01, $00, $00
#_1AFAE6: dw   8,   0 : db $F3, $41, $00, $00
#_1AFAEE: dw   4,   6 : db $E0, $07, $00, $00

; group05
#_1AFAF6: dw  -5,   0 : db $F3, $01, $00, $00
#_1AFAFE: dw  16,   0 : db $F3, $41, $00, $00
#_1AFB06: dw   4,   8 : db $E0, $07, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Cukeman:
#_1AFB0E: LDA.b #$00
#_1AFB10: XBA
#_1AFB11: LDA.w $0DC0,X

#_1AFB14: REP #$20

#_1AFB16: ASL A
#_1AFB17: ASL A
#_1AFB18: ASL A
#_1AFB19: STA.b $00

#_1AFB1B: ASL A
#_1AFB1C: ADC.b $00
#_1AFB1E: ADC.w #.oam_groups
#_1AFB21: STA.b $08

#_1AFB23: SEP #$20

#_1AFB25: LDA.b #$03
#_1AFB27: JSL Sprite_DrawMultiple

#_1AFB2B: RTS

;===================================================================================================
; WTF
; This reuses the stun/key drop flag.
;===================================================================================================
RunningBoy_SpawnDushGarnish:
#_1AFB2C: INC.w $0CBA,X

#_1AFB2F: LDA.w $0CBA,X
#_1AFB32: AND.b #$0F
#_1AFB34: BNE .exit

#_1AFB36: PHX
#_1AFB37: TXY

#_1AFB38: LDX.b #$1D

.next_slot
#_1AFB3A: LDA.l $7FF800,X
#_1AFB3E: BEQ .free_slot

#_1AFB40: DEX
#_1AFB41: BPL .next_slot

#_1AFB43: INX

.free_slot
#_1AFB44: LDA.b #!GARNISH_14
#_1AFB46: STA.l $7FF800,X
#_1AFB4A: STA.w $0FB4

#_1AFB4D: LDA.w $0D10,Y
#_1AFB50: CLC
#_1AFB51: ADC.b #$04
#_1AFB53: STA.l $7FF83C,X

#_1AFB57: LDA.w $0D30,Y
#_1AFB5A: ADC.b #$00
#_1AFB5C: STA.l $7FF878,X

#_1AFB60: LDA.w $0D00,Y
#_1AFB63: CLC
#_1AFB64: ADC.b #$1C
#_1AFB66: STA.l $7FF81E,X

#_1AFB6A: LDA.w $0D20,Y
#_1AFB6D: ADC.b #$00
#_1AFB6F: STA.l $7FF85A,X

#_1AFB73: LDA.b #$0A
#_1AFB75: STA.l $7FF90E,X

#_1AFB79: PLX

.exit
#_1AFB7A: RTL

;===================================================================================================

pool Overworld_SubstituteAlternateSecret

.screen_mask
#_1AFB7B: db $00, $00, $00, $00, $00, $00, $00, $04
#_1AFB83: db $00, $00, $00, $00, $00, $00, $00, $00
#_1AFB8B: db $04, $04, $06, $04, $04, $06, $00, $00
#_1AFB93: db $0F, $0F, $04, $05, $05, $04, $06, $06
#_1AFB9B: db $0F, $0F, $04, $05, $05, $07, $06, $06
#_1AFBA3: db $1F, $1F, $04, $07, $07, $04, $06, $06
#_1AFBAB: db $06, $07, $02, $00, $00, $00, $00, $00
#_1AFBB3: db $06, $06, $02, $00, $00, $00, $00, $00

;---------------------------------------------------------------------------------------------------

.secret_index
; light world
#_1AFBBB: db $01 ; Green rupee
#_1AFBBC: db $01 ; Green rupee
#_1AFBBD: db $01 ; Green rupee
#_1AFBBE: db $01 ; Green rupee
#_1AFBBF: db $0F ; Green guard
#_1AFBC0: db $01 ; Green rupee
#_1AFBC1: db $01 ; Green rupee
#_1AFBC2: db $12 ; Landmine

; dark world
#_1AFBC3: db $10 ; Bush stal
#_1AFBC4: db $01 ; Green rupee
#_1AFBC5: db $01 ; Green rupee
#_1AFBC6: db $01 ; Green rupee
#_1AFBC7: db $11 ; Blue guard
#_1AFBC8: db $01 ; Green rupee
#_1AFBC9: db $01 ; Green rupee
#_1AFBCA: db $03 ; Bee

;---------------------------------------------------------------------------------------------------

.prize_mask
; light world
#_1AFBCB: db $00 ; Green rupee
#_1AFBCC: db $00 ; Green rupee
#_1AFBCD: db $00 ; Green rupee
#_1AFBCE: db $00 ; Green rupee
#_1AFBCF: db $02 ; Green guard
#_1AFBD0: db $00 ; Green rupee
#_1AFBD1: db $00 ; Green rupee
#_1AFBD2: db $08 ; Landmine

; dark world
#_1AFBD3: db $10 ; Bush stal
#_1AFBD4: db $00 ; Green rupee
#_1AFBD5: db $00 ; Green rupee
#_1AFBD6: db $00 ; Green rupee
#_1AFBD7: db $01 ; Blue guard
#_1AFBD8: db $00 ; Green rupee
#_1AFBD9: db $00 ; Green rupee
#_1AFBDA: db $00 ; Bee

pool off

;---------------------------------------------------------------------------------------------------

Overworld_SubstituteAlternateSecret:
#_1AFBDB: PHB
#_1AFBDC: PHK
#_1AFBDD: PLB

#_1AFBDE: JSL GetRandomNumber
#_1AFBE2: AND.b #$01
#_1AFBE4: BNE .exit

#_1AFBE6: STZ.b $0D

#_1AFBE8: LDY.b #$0F

; Count the number of nonempty slots
; skips mirror portal
.next_slot
#_1AFBEA: LDA.w $0DD0,Y
#_1AFBED: BEQ .skip_slot

#_1AFBEF: LDA.w $0E20,Y
#_1AFBF2: CMP.b #!SPRITE_6C
#_1AFBF4: BEQ .skip_slot

#_1AFBF6: INC.b $0D

.skip_slot
#_1AFBF8: DEY
#_1AFBF9: BPL .next_slot

;---------------------------------------------------------------------------------------------------

#_1AFBFB: LDA.b $0D
#_1AFBFD: CMP.b #$04
#_1AFBFF: BCS .exit

#_1AFC01: LDA.l $7EF3C5 ; bad game state
#_1AFC05: CMP.b #$02
#_1AFC07: BCC .exit

#_1AFC09: LDA.w $0CF7

#_1AFC0C: INC.w $0CF7
#_1AFC0F: AND.b #$07

#_1AFC11: LDY.w $0FFF
#_1AFC14: BEQ .light_world

#_1AFC16: ORA.b #$08

.light_world
#_1AFC18: TAY

#_1AFC19: PHX

; Get screen ID, ignoring world of screen
#_1AFC1A: LDA.w $040A
#_1AFC1D: AND.b #$3F
#_1AFC1F: TAX

#_1AFC20: LDA.w .screen_mask,X
#_1AFC23: AND.w .prize_mask,Y
#_1AFC26: BNE .no_sub

#_1AFC28: LDA.w .secret_index,Y
#_1AFC2B: STA.w $0B9C

.no_sub
#_1AFC2E: PLX

.exit
#_1AFC2F: PLB

#_1AFC30: RTL

;===================================================================================================
; It's not really a throne, but we call it thus.
;===================================================================================================
Sprite_EE_CastleThrone:
#_1AFC31: PHB
#_1AFC32: PHK
#_1AFC33: PLB

#_1AFC34: JSR .main

#_1AFC37: PLB

#_1AFC38: RTL

;---------------------------------------------------------------------------------------------------

.main
#_1AFC39: JSR SpriteDraw_CastleThrone
#_1AFC3C: JSR Sprite_CheckIfActive_Bank1A

#_1AFC3F: JSL Sprite_CheckDamageToLink_same_layer_long
#_1AFC43: BCC .exit

#_1AFC45: JSL Sprite_CancelHookshot
#_1AFC49: JSL Sprite_RepelDash_long

; Zelda follower
#_1AFC4D: LDA.l $7EF3CC
#_1AFC51: CMP.b #!FOLLOWER_01
#_1AFC53: BNE .exit

; Own lamp
#_1AFC55: LDA.l $7EF34A
#_1AFC59: BEQ .exit

; Not dashing
#_1AFC5B: LDA.w $0372
#_1AFC5E: BNE .exit

; Max distance of push
#_1AFC60: LDA.w $0ED0,X
#_1AFC63: CMP.b #$90
#_1AFC65: BEQ .exit

; No recoil
#_1AFC67: LDA.b $28
#_1AFC69: CMP.b #$18
#_1AFC6B: BMI .exit

; Set spawn location to here
#_1AFC6D: LDA.b #$04
#_1AFC6F: STA.l $7EF3C8

; Movement induced every other frame
; Subpixel advances every other frame
; First 8 movements are 0
#_1AFC73: INC.w $0E80,X

#_1AFC76: LDA.w $0E80,X
#_1AFC79: AND.b #$01
#_1AFC7B: BNE .swap_parity

#_1AFC7D: INC.w $0ED0,X

.swap_parity
#_1AFC80: LDA.w $0ED0,X
#_1AFC83: CMP.b #$08
#_1AFC85: BCC .exit

#_1AFC87: LDA.w $012E
#_1AFC8A: BNE .skip_sfx

#_1AFC8C: LDA.b #!SFX2_22
#_1AFC8E: STA.w $012E

.skip_sfx
#_1AFC91: LDA.b #$02
#_1AFC93: STA.w $0D50,X

#_1AFC96: JSL Sprite_Move_XY_Bank1D_long

.exit
#_1AFC9A: RTS

;===================================================================================================

pool SpriteDraw_CastleThrone

.offset_x
#_1AFC9B: db   0,  16,  32,   0,  16,  32

.offset_y
#_1AFCA1: db   0,   0,   0,  16,  16,  16

.char
#_1AFCA7: db $0C, $0E, $0C, $2C, $2E, $2C

.prop
#_1AFCAD: db $31, $31, $71, $31, $31, $71

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_CastleThrone:
#_1AFCB3: LDA.b #$20
#_1AFCB5: JSL OAM_AllocateFromRegionB

#_1AFCB9: JSL Sprite_PrepOAMCoord_long
#_1AFCBD: BCS .exit

#_1AFCBF: PHX

#_1AFCC0: LDX.b #$05

.next_object
#_1AFCC2: LDA.b $00
#_1AFCC4: CLC
#_1AFCC5: ADC.w .offset_x,X
#_1AFCC8: STA.b ($90),Y

#_1AFCCA: LDA.b $02
#_1AFCCC: CLC
#_1AFCCD: ADC.w .offset_y,X
#_1AFCD0: INY
#_1AFCD1: STA.b ($90),Y

#_1AFCD3: LDA.w .char,X
#_1AFCD6: INY
#_1AFCD7: STA.b ($90),Y

#_1AFCD9: LDA.w .prop,X
#_1AFCDC: INY
#_1AFCDD: STA.b ($90),Y

#_1AFCDF: INY

#_1AFCE0: DEX
#_1AFCE1: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_1AFCE3: PLX

#_1AFCE4: LDY.b #$02
#_1AFCE6: LDA.b #$05
#_1AFCE8: JSL Sprite_CorrectOAMEntries_long

.exit
#_1AFCEC: RTS

;===================================================================================================

pool SpriteDraw_Mothula

.oam_groups
; group00
#_1AFCED: dw -24,  -8 : db $80, $00, $00, $02
#_1AFCF5: dw  -8,  -8 : db $82, $00, $00, $02
#_1AFCFD: dw   8,  -8 : db $82, $40, $00, $02
#_1AFD05: dw  24,  -8 : db $80, $40, $00, $02
#_1AFD0D: dw -24,   8 : db $A0, $00, $00, $02
#_1AFD15: dw  -8,   8 : db $A2, $00, $00, $02
#_1AFD1D: dw   8,   8 : db $A2, $40, $00, $02
#_1AFD25: dw  24,   8 : db $A0, $40, $00, $02

; group01
#_1AFD2D: dw -24,  -8 : db $84, $00, $00, $02
#_1AFD35: dw  -8,  -8 : db $86, $00, $00, $02
#_1AFD3D: dw   8,  -8 : db $86, $40, $00, $02
#_1AFD45: dw  24,  -8 : db $84, $40, $00, $02
#_1AFD4D: dw -24,   8 : db $A4, $00, $00, $02
#_1AFD55: dw  -8,   8 : db $A6, $00, $00, $02
#_1AFD5D: dw   8,   8 : db $A6, $40, $00, $02
#_1AFD65: dw  24,   8 : db $A4, $40, $00, $02

; group02
#_1AFD6D: dw  -8,  -8 : db $88, $00, $00, $02
#_1AFD75: dw  -8,  -8 : db $88, $00, $00, $02
#_1AFD7D: dw   8,  -8 : db $88, $40, $00, $02
#_1AFD85: dw   8,  -8 : db $88, $40, $00, $02
#_1AFD8D: dw  -8,   8 : db $A8, $00, $00, $02
#_1AFD95: dw  -8,   8 : db $A8, $00, $00, $02
#_1AFD9D: dw   8,   8 : db $A8, $40, $00, $02
#_1AFDA5: dw   8,   8 : db $A8, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Mothula:
#_1AFDAD: PHB
#_1AFDAE: PHK
#_1AFDAF: PLB

#_1AFDB0: JSR .draw_her

#_1AFDB3: PLB

#_1AFDB4: RTL

;---------------------------------------------------------------------------------------------------

.draw_her
#_1AFDB5: LDA.b #$00
#_1AFDB7: XBA
#_1AFDB8: LDA.w $0DC0,X

#_1AFDBB: REP #$20

#_1AFDBD: ASL A ; x64
#_1AFDBE: ASL A
#_1AFDBF: ASL A
#_1AFDC0: ASL A
#_1AFDC1: ASL A
#_1AFDC2: ASL A

#_1AFDC3: ADC.w #.oam_groups
#_1AFDC6: STA.b $08

; !HARDCODED OAM slots
#_1AFDC8: LDA.w #$0920
#_1AFDCB: STA.b $90

#_1AFDCD: LDA.w #$0A68
#_1AFDD0: STA.b $92

#_1AFDD2: SEP #$20

#_1AFDD4: LDA.b #$08
#_1AFDD6: JSL Sprite_DrawMultiple

#_1AFDDA: LDA.w $0F00,X
#_1AFDDD: BNE .exit

;---------------------------------------------------------------------------------------------------

#_1AFDDF: PHX

#_1AFDE0: LDA.w $0DC0,X
#_1AFDE3: ASL A ; x8
#_1AFDE4: ASL A
#_1AFDE5: ASL A
#_1AFDE6: ADC.w $0DC0,X
#_1AFDE9: STA.b $06

#_1AFDEB: LDA.b $02
#_1AFDED: CLC
#_1AFDEE: ADC.w $0F70,X
#_1AFDF1: STA.b $02

#_1AFDF3: LDA.b $03
#_1AFDF5: ADC.b #$00
#_1AFDF7: STA.b $03

#_1AFDF9: LDY.b #$28
#_1AFDFB: LDX.b #$08

;---------------------------------------------------------------------------------------------------

.next_object
#_1AFDFD: PHX

#_1AFDFE: TXA
#_1AFDFF: CLC
#_1AFE00: ADC.b $06
#_1AFE02: ASL A
#_1AFE03: TAX

#_1AFE04: REP #$20

#_1AFE06: LDA.b $00
#_1AFE08: CLC
#_1AFE09: ADC.w .offset_x,X
#_1AFE0C: STA.b ($90),Y

#_1AFE0E: AND.w #$0100
#_1AFE11: STA.b $0E

#_1AFE13: INY
#_1AFE14: LDA.b $02

#_1AFE16: CLC
#_1AFE17: ADC.w #$0010
#_1AFE1A: STA.b ($90),Y

#_1AFE1C: CLC
#_1AFE1D: ADC.w #$0010
#_1AFE20: CMP.w #$0100

#_1AFE23: SEP #$20
#_1AFE25: BCC .off_screeen

#_1AFE27: LDA.b #$F0
#_1AFE29: STA.b ($90),Y

.off_screeen
#_1AFE2B: INY
#_1AFE2C: LDA.b #$6C
#_1AFE2E: STA.b ($90),Y

#_1AFE30: INY
#_1AFE31: LDA.b #$24
#_1AFE33: STA.b ($90),Y

#_1AFE35: PHY

#_1AFE36: TYA
#_1AFE37: LSR A
#_1AFE38: LSR A
#_1AFE39: TAY

#_1AFE3A: LDA.b #$02
#_1AFE3C: ORA.b $0F
#_1AFE3E: STA.b ($92),Y

#_1AFE40: PLY
#_1AFE41: INY

#_1AFE42: PLX
#_1AFE43: DEX
#_1AFE44: BPL .next_object

;---------------------------------------------------------------------------------------------------

#_1AFE46: PLX

.exit
#_1AFE47: RTS

;---------------------------------------------------------------------------------------------------

.offset_x
#_1AFE48: dw   0,   3,   6,   9,  12,  -3,  -6,   -9, -12
#_1AFE5A: dw   0,   2,   4,   6,   8,  -2,  -4,   -6,  -8
#_1AFE6C: dw   0,   1,   2,   3,   4,  -1,  -2,   -3,  -4

;===================================================================================================
; He throws stuff at you!
;===================================================================================================
pool BottleMerchant_BuyBee

.speed_x
#_1AFE7E: db  -6,  -3,   0,   4,   7

.speed_y
#_1AFE83: db  11,  14,  16,  14,  11

pool off

;---------------------------------------------------------------------------------------------------

BottleMerchant_BuyBee:
#_1AFE88: PHB
#_1AFE89: PHK
#_1AFE8A: PLB

#_1AFE8B: LDA.b #!SFX3_13
#_1AFE8D: JSL SpriteSFX_QueueSFX3WithPan

; Spawns 5 sprites
#_1AFE91: LDA.b #$04
#_1AFE93: STA.w $0FB5

.next_spawn
; all red rupees
#_1AFE96: LDA.b #!SPRITE_DB
#_1AFE98: JSL Sprite_SpawnDynamically
#_1AFE9C: BMI .no_space

#_1AFE9E: JSL Sprite_SetSpawnedCoordinates

#_1AFEA2: LDA.b $00
#_1AFEA4: CLC
#_1AFEA5: ADC.b #$04
#_1AFEA7: STA.w $0D10,Y

#_1AFEAA: LDA.b #$FF
#_1AFEAC: STA.w $0B58,Y

; If you're using X, you could have kept the data bank and used LDA.l,X
#_1AFEAF: PHX

#_1AFEB0: LDX.w $0FB5

#_1AFEB3: LDA.w .speed_x,X
#_1AFEB6: STA.w $0D50,Y

#_1AFEB9: LDA.w .speed_y,X
#_1AFEBC: STA.w $0D40,Y

#_1AFEBF: LDA.b #$20
#_1AFEC1: STA.w $0F80,Y
#_1AFEC4: STA.w $0F10,Y

#_1AFEC7: PLX

.no_space
#_1AFEC8: DEC.w $0FB5
#_1AFECB: BPL .next_spawn

#_1AFECD: PLB

#_1AFECE: RTL

;===================================================================================================
; Secret powder lady
;===================================================================================================
ChickenLady:
#_1AFECF: JSR .main

#_1AFED2: RTL

;---------------------------------------------------------------------------------------------------

.main
#_1AFED3: LDA.b #$01
#_1AFED5: STA.w $0DE0,X

#_1AFED8: JSL SpriteDraw_RaceGameLady
#_1AFEDC: JSR Sprite_CheckIfActive_Bank1A

#_1AFEDF: LDA.w $0DF0,X
#_1AFEE2: CMP.b #$01
#_1AFEE4: BNE .no_message

; Message 017B
#_1AFEE6: LDA.b #$7B
#_1AFEE8: STA.w $1CF0

#_1AFEEB: LDA.b #$01
#_1AFEED: STA.w $1CF1
#_1AFEF0: JSL Sprite_ShowMessageMinimal

; Animation with a 16 frame step
.no_message
#_1AFEF4: LDA.b $1A
#_1AFEF6: LSR A ; x16
#_1AFEF7: LSR A
#_1AFEF8: LSR A
#_1AFEF9: LSR A
#_1AFEFA: AND.b #$01
#_1AFEFC: STA.w $0DC0,X

#_1AFEFF: RTS

;===================================================================================================
; If you're above this guy when he spawns, he won't let you play.
; He'll also move left 9 pixels, so you can exit.
;===================================================================================================
SpritePrep_DiggingGameGuy:
#_1AFF00: LDA.w $0D00,X
#_1AFF03: STA.b $00

#_1AFF05: LDA.w $0D20,X
#_1AFF08: STA.b $01

#_1AFF0A: REP #$20

#_1AFF0C: LDA.b $20
#_1AFF0E: CMP.b $00

#_1AFF10: SEP #$30
#_1AFF12: BCS .link_is_below

#_1AFF14: LDA.b #$05
#_1AFF16: STA.w $0D80,X

#_1AFF19: LDA.w $0D10,X
#_1AFF1C: SEC
#_1AFF1D: SBC.b #$09
#_1AFF1F: STA.w $0D10,X

#_1AFF22: LDA.b #$01
#_1AFF24: STA.w $0DC0,X

.link_is_below
#_1AFF27: INC.w $0BA0,X

#_1AFF2A: RTL

;===================================================================================================

pool SpawnHammerWaterSplash

.offset_x
#_1AFF2B: dw   0,  12,  -8,  24

.offset_y
#_1AFF33: dw   8,  32,  24,  24

pool off

;---------------------------------------------------------------------------------------------------

#EXIT_1AFF3B:
#_1AFF3B: RTL

;---------------------------------------------------------------------------------------------------

SpawnHammerWaterSplash:
; Don't spawn a splash if the game is paused
; or during a cutscene
#_1AFF3C: LDA.b $11
#_1AFF3E: ORA.w $02E4
#_1AFF41: ORA.w $0FC1
#_1AFF44: BNE EXIT_1AFF3B

#_1AFF46: PHX
#_1AFF47: PHY

; Use Link's direction to index the offsets
#_1AFF48: LDX.b $2F

#_1AFF4A: REP #$20

; Prep offsets for adding in later
#_1AFF4C: LDA.b $22
#_1AFF4E: CLC
#_1AFF4F: ADC.l .offset_x,X
#_1AFF53: STA.b $00

#_1AFF55: LDA.b $20
#_1AFF57: CLC
#_1AFF58: ADC.l .offset_y,X
#_1AFF5C: STA.b $02

; Match Link's layer
#_1AFF5E: SEP #$20

#_1AFF60: LDA.b $EE
#_1AFF62: CMP.b #$01

#_1AFF64: REP #$30

#_1AFF66: STZ.b $05
#_1AFF68: BCC .lower_layer

#_1AFF6A: LDA.w #$1000
#_1AFF6D: STA.b $05

.lower_layer
#_1AFF6F: SEP #$20

#_1AFF71: LDA.b $1B

#_1AFF73: REP #$20
#_1AFF75: BEQ .outdoors

;---------------------------------------------------------------------------------------------------

; check for water tiles indoors

; get tile X index
#_1AFF77: LDA.b $00
#_1AFF79: AND.w #$01FF
#_1AFF7C: LSR A
#_1AFF7D: LSR A
#_1AFF7E: LSR A
#_1AFF7F: STA.b $04

; add tile Y index
#_1AFF81: LDA.b $02
#_1AFF83: AND.w #$01F8
#_1AFF86: ASL A
#_1AFF87: ASL A
#_1AFF88: ASL A
#_1AFF89: CLC
#_1AFF8A: ADC.b $04

; add tile layer index
#_1AFF8C: CLC
#_1AFF8D: ADC.b $05

; get tile from index
#_1AFF8F: TAX

#_1AFF90: LDA.l $7F2000,X
#_1AFF94: BRA .verify_water

;---------------------------------------------------------------------------------------------------

.outdoors
; check for water tiles outdoors

; we're just swapping X and Y with the stack juggling
; save tile Y index
; shoulda used PEI
#_1AFF96: LDA.b $02
#_1AFF98: PHA

; get tile X index
#_1AFF99: LDA.b $00
#_1AFF9B: LSR A
#_1AFF9C: LSR A
#_1AFF9D: LSR A
#_1AFF9E: STA.b $02

#_1AFFA0: PLA
#_1AFFA1: STA.b $00

#_1AFFA3: SEP #$30

#_1AFFA5: JSL Overworld_ReadTileAttribute

#_1AFFA9: REP #$10 ; !USELESS

;---------------------------------------------------------------------------------------------------

.verify_water
#_1AFFAB: SEP #$30

#_1AFFAD: CMP.b #$08
#_1AFFAF: BEQ .is_water

#_1AFFB1: CMP.b #$09
#_1AFFB3: BNE .no_splash

.is_water
#_1AFFB5: JSL Sprite_SpawnSmallSplash
#_1AFFB9: BMI .no_splash

; Index with direction again for offsets
#_1AFFBB: LDX.b $2F

#_1AFFBD: LDA.b $20
#_1AFFBF: CLC
#_1AFFC0: ADC.l .offset_y+0,X
#_1AFFC4: PHP

#_1AFFC5: SEC
#_1AFFC6: SBC.b #$10
#_1AFFC8: STA.w $0D00,Y

#_1AFFCB: LDA.b $21
#_1AFFCD: SBC.b #$00

#_1AFFCF: PLP
#_1AFFD0: ADC.l .offset_y+1,X
#_1AFFD4: STA.w $0D20,Y

#_1AFFD7: LDA.b $22
#_1AFFD9: CLC
#_1AFFDA: ADC.l .offset_x+0,X
#_1AFFDE: PHP

#_1AFFDF: SEC
#_1AFFE0: SBC.b #$08
#_1AFFE2: STA.w $0D10,Y

#_1AFFE5: LDA.b $23
#_1AFFE7: SBC.b #$00

#_1AFFE9: PLP
#_1AFFEA: ADC.l .offset_x+1,X
#_1AFFEE: STA.w $0D30,Y

#_1AFFF1: LDA.b $EE
#_1AFFF3: STA.w $0F20,Y

#_1AFFF6: LDA.b #$00
#_1AFFF8: STA.w $0F70,Y

.no_splash
#_1AFFFB: PLX
#_1AFFFC: PLY

#_1AFFFD: RTL

;===================================================================================================
; FREE ROM: 0x02
;===================================================================================================
NULL_1AFFFE:
#_1AFFFE: db $FF, $FF
