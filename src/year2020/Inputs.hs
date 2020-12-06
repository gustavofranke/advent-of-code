module Inputs where

-- https://adventofcode.com/2020/day/1/input
day1 :: [Integer]
day1 =
  [ 1914,
    1931,
    1892,
    1584,
    1546,
    1988,
    1494,
    1709,
    1624,
    1755,
    1849,
    1430,
    1890,
    1675,
    1604,
    1580,
    1500,
    1277,
    1729,
    1456,
    2002,
    1075,
    1512,
    895,
    1843,
    1921,
    1904,
    1989,
    1407,
    1552,
    1714,
    757,
    1733,
    1459,
    1777,
    1440,
    1649,
    1409,
    1662,
    1968,
    1775,
    1998,
    1754,
    1938,
    1964,
    1415,
    1990,
    1997,
    1870,
    1664,
    1145,
    1782,
    1820,
    1625,
    1599,
    1530,
    1759,
    1575,
    1614,
    1869,
    1620,
    1818,
    1295,
    1667,
    1361,
    1520,
    1555,
    1485,
    1502,
    1983,
    1104,
    1973,
    1433,
    1906,
    1583,
    1562,
    1493,
    1945,
    1528,
    1600,
    1814,
    1712,
    1848,
    1454,
    1801,
    1710,
    1824,
    1426,
    1977,
    1511,
    1644,
    1302,
    1428,
    1513,
    1261,
    1761,
    1680,
    1731,
    1724,
    1970,
    907,
    600,
    1613,
    1091,
    1571,
    1418,
    1806,
    1542,
    1909,
    1445,
    1344,
    1937,
    1450,
    1865,
    1561,
    1962,
    1637,
    1803,
    1889,
    365,
    1810,
    1791,
    1591,
    1532,
    1863,
    1658,
    1808,
    1816,
    1837,
    1764,
    1443,
    1805,
    1616,
    1403,
    1656,
    1661,
    1734,
    1930,
    1120,
    1920,
    1227,
    1618,
    1640,
    1586,
    1982,
    1534,
    1278,
    1269,
    1572,
    1654,
    1472,
    1974,
    1748,
    1425,
    1553,
    1708,
    1394,
    1417,
    1746,
    1745,
    1834,
    1787,
    1298,
    1786,
    1966,
    1768,
    1932,
    1523,
    1356,
    1547,
    1634,
    1951,
    1922,
    222,
    1461,
    1628,
    1888,
    1639,
    473,
    1568,
    1783,
    572,
    1522,
    1934,
    1629,
    1283,
    1550,
    1859,
    2007,
    1996,
    1822,
    996,
    1911,
    1689,
    1537,
    1793,
    1762,
    1677,
    1266,
    1715
  ]

-- | <min>dash<max>space<char>semicolonSpacePasswd
-- https://adventofcode.com/2020/day/2/input
day2 :: [[Char]]
day2 = [
   "2-5 l: fllxf",
   "4-5 r: rrrjmrrrrrrh",
   "1-4 k: kkksk",
   "7-8 k: tknsqknzkckrwkjkk",
   "2-3 p: mpbstpxmsxmpnhbwlb",
   "2-7 j: xkjjtjjjj",
   "2-7 m: gczbmgk",
   "15-16 q: qqqqqqqqqckqqqfqqq",
   "7-14 d: dgdddlddddddrvfddnsd",
   "7-12 r: rrrrrrrrbrrrl",
   "2-11 p: zppjpwpqppbnppd",
   "6-8 w: wqhwwnpwwwr",
   "4-10 m: fmkmrrrdkmr",
   "1-2 n: nnjvtnzk",
   "3-8 t: tdxmzslxtvft",
   "13-14 m: mmmmmhmmmmmmmm",
   "9-10 l: lljllllllll",
   "12-16 t: vdtbdtxtttttrctttkt",
   "2-6 q: nqghxqgjqvzswbxww",
   "4-6 k: khkkkkvrkgfwvbd",
   "4-5 r: hrrpv",
   "5-8 g: gggggggg",
   "5-8 f: fjsfftfs",
   "9-12 p: ppfpnxpvppfspp",
   "14-19 x: lrxxxtxxxxxxxzxxxxx",
   "4-6 b: pqbqbbx",
   "10-12 x: mlxkxxxzctrkz",
   "2-7 b: tmbzmsb",
   "16-19 k: kkkdkkkkkkkmklhkkkkk",
   "4-11 h: lpnhfccshxhg",
   "4-5 n: nsnhgnk",
   "1-7 j: jjjjjwsjd",
   "9-12 s: snsssssskssss",
   "7-8 w: wwlwwwhww",
   "3-12 h: znhvqgfgjvlh",
   "9-11 d: dddfddddddg",
   "2-5 j: jjkkrndpdmscjfwvx",
   "1-10 v: vfgbvzlwvvcc",
   "6-15 q: mcqqqqbqcgltqqjz",
   "5-9 q: qprqvzkqsqqt",
   "4-6 l: kldtxl",
   "6-14 j: jjjjjjjjjjjjjjjj",
   "3-6 m: mmmjwwsm",
   "6-15 p: pffpppppdqpfppbpppk",
   "12-14 s: sssssssssssssz",
   "7-13 b: xmbblmsksbbbwbb",
   "4-5 q: dfqfmtqjcvqrq",
   "3-5 l: kvrll",
   "2-4 w: wsww",
   "8-10 f: bfffzfpcfjhw",
   "9-10 c: ccccjcccckc",
   "11-14 q: vqqqpqtqqqlqqqqqxsft",
   "2-4 l: xrzlkmcfl",
   "7-17 c: cccccsccccccccccg",
   "6-8 z: jzzljvmzzvzzgvzz",
   "5-10 w: fwwwwxwmqwz",
   "10-12 d: dddddddddmddd",
   "1-2 k: lzptzkccbmnpqpc",
   "3-5 j: bjmzzjt",
   "4-10 q: qrjtfzgqdt",
   "8-14 m: mmmmmmsmmmmmmm",
   "12-13 b: bbbbbbbbbbbrz",
   "2-4 p: vppzp",
   "4-8 q: tqqqnvhqprdqrqd",
   "6-8 r: gcrwjcrq",
   "9-13 p: pgppvppppppsp",
   "8-10 n: npnngnndvndn",
   "3-9 h: hwmkhhhnnh",
   "4-12 l: lnllwtrsctgl",
   "3-4 b: bpbbkqddb",
   "1-3 d: dbdsfhnzp",
   "9-10 l: lllllftlllll",
   "3-5 v: vvvvvv",
   "3-5 p: dpvppp",
   "1-4 z: zzzfz",
   "6-7 q: qqqqqcq",
   "4-6 p: pcppppbbfrcfbp",
   "3-8 x: qqxfbxjtmqk",
   "4-5 m: tmmmrmm",
   "9-10 h: hhshhhhhhhhhhh",
   "3-4 b: dbbvbx",
   "2-5 s: sspzssckbzrjjsbbw",
   "5-11 w: wbbzkwnnbpggqprbmzg",
   "5-10 d: dddxdddddtdgdsdd",
   "9-13 p: pnkrpxcspctmwphsh",
   "17-18 b: bbbbbbbhbbbbbbqbbqb",
   "1-3 r: blfcfnrrqkfh",
   "2-5 j: jvjsjj",
   "8-15 x: fxvxkxxxxvxxlxzxb",
   "4-10 k: kkkktkkkkpkkkk",
   "4-5 j: sjjjj",
   "4-6 b: mbbtbb",
   "2-12 p: ppfspvgmvzzpcf",
   "4-5 h: crzbh",
   "13-17 d: qdddddddddddddkdd",
   "6-7 n: pnfzhbg",
   "9-11 x: xpxxxtfhbxxxxt",
   "5-7 d: ddzdxdw",
   "12-18 j: zjlsrtflbpjjljfjjh",
   "2-4 l: qclk",
   "7-8 w: wwwgwwrw",
   "4-5 q: qqqwq",
   "3-6 z: fczcjzpsdddqmbqkz",
   "7-8 z: mkhzjzzl",
   "2-3 k: kdkp",
   "11-12 d: qdqddxdwdbdddddddktw",
   "13-16 w: wwwwcwwwwwwmwwwwpw",
   "6-7 s: sxsjstsss",
   "15-16 c: cccccwccccccccvc",
   "13-14 v: xvdtvghjvkvmvbvvx",
   "5-6 g: gggggpg",
   "6-7 l: lllllzljl",
   "4-10 z: nkczdqzhfz",
   "2-10 x: xlxxxxxfxx",
   "1-7 t: jttglvttttm",
   "7-8 k: hkkkrkkk",
   "9-12 n: wrnnnnnnpnnnnn",
   "3-4 l: llgk",
   "6-7 h: vhzhhghh",
   "8-9 h: hhmhhhhjhmhz",
   "3-4 m: gmrsmm",
   "12-14 s: ssstxhsssssssjnsssf",
   "10-19 l: lllllllllllllllllll",
   "14-16 m: mmcmmmmmmmmmmqmm",
   "11-12 p: fppppptppppqpp",
   "7-16 s: ssssdssssssssssh",
   "2-6 c: zcxcpm",
   "5-10 h: hhhrhjjhhhhnhhhwl",
   "14-15 x: xxxxxxxxxxnxxtxtx",
   "3-8 f: fpffpfkzff",
   "3-7 x: xxxxkxkx",
   "8-9 n: nnnnnnnnnn",
   "6-9 c: pccccqcccc",
   "7-13 s: sssspsrsssssfss",
   "3-6 q: qqqqqq",
   "5-6 d: ddddfz",
   "4-5 p: gpqppdbpcptfpczlpcbm",
   "2-4 b: xbtbjmmxrbfbwbxb",
   "1-7 w: vwwwwwx",
   "9-20 w: wwwwwwwwwwwwwwwwwwww",
   "4-6 d: cdwtdddwtqs",
   "8-15 r: rrlrrndprzrrrrklr",
   "4-19 h: rhhhhcxhhctknztthhf",
   "2-11 r: pvchfrzhgcqxsjx",
   "8-12 m: mqfmqmmmpmmmpmkvzsm",
   "2-5 b: fbmnkrxh",
   "4-5 q: qqrlp",
   "3-4 r: kprrr",
   "2-3 q: qzql",
   "8-16 t: ctktlttttcktxqtqht",
   "10-14 z: zzzzzzzzzpzzzzzzzz",
   "9-12 z: zrvjkzzgkzzrzzqzzfm",
   "2-4 c: ccdcp",
   "4-6 z: zpzrzh",
   "7-10 n: wnnlhdpntvsmrnbmps",
   "14-15 v: vbvsvvvnvvvfvvfvvvv",
   "6-10 w: xwwwwvwwww",
   "1-6 n: nnnnnnn",
   "2-12 g: pgmdgpgggsngpwgvjkg",
   "12-13 g: ggggmgmggggggg",
   "4-7 q: vthqqchfn",
   "2-4 q: qpmqq",
   "10-11 j: pjhjjjjjjjjjvj",
   "1-10 l: lgdgqqgvmnscl",
   "12-13 l: rlmnkmnltzlmlq",
   "4-9 l: lllllgllh",
   "10-16 v: xjjvvvdvvvvvvvvvvvv",
   "1-6 x: glxzxfcxglrcwrwcgl",
   "2-4 t: tttntd",
   "9-16 w: wwwhmwwwwwwmwwwxww",
   "9-11 m: mnmsmmmmmmmm",
   "8-16 h: pnrsxhrhhjlqchnh",
   "9-15 c: cxwmcpnjtrccrcn",
   "8-9 s: rsssnsshnsksd",
   "2-6 s: cfklcdd",
   "6-9 m: qmmmmmmvxmwm",
   "3-6 c: cwctccshc",
   "3-4 x: xpkxffbfkzvjrxb",
   "4-5 r: rrrnrr",
   "10-12 j: jjjjjjbjjkjj",
   "3-17 d: sndddlgljdjckpbldb",
   "5-6 x: wzrxxgxwvdfxnq",
   "7-9 l: hhlflqhxknlnbllkl",
   "8-11 m: wmhmmmmnmmmmm",
   "13-14 k: kknkfkkkhzkkkkkxkkk",
   "2-4 s: skss",
   "2-4 m: mmgtm",
   "2-8 r: qrrdpppvgrrcrrvs",
   "12-16 d: dddddddddrdddddczd",
   "19-20 x: xxxxxxxxcxxxxxxxxxxl",
   "7-10 b: bcfpbmlqnrpcnx",
   "1-14 d: fdpddhdrddqdddqdd",
   "5-7 d: ddddxdvdd",
   "11-18 j: fjxjjjjjjjkmjjjjjgjj",
   "3-4 t: zjtp",
   "2-4 r: rrrdr",
   "9-11 b: bbbbbqbjqgbbbbbhbjq",
   "6-7 f: ffbfffgf",
   "4-5 x: xxxqf",
   "1-7 c: jcnbqbcwcc",
   "13-15 q: qqwqqqqqqqgqrqj",
   "13-14 h: kxkjzplvmhrrhl",
   "6-10 j: jjjjjtjjjmj",
   "4-8 v: vvvnvmvrhb",
   "1-12 k: kkkdrkqhkkdkkhdk",
   "2-5 n: lnfjb",
   "10-12 q: qqqqqqcfqlqqqq",
   "1-16 s: ssssssssssssssscs",
   "12-14 l: nlllsllltllcllll",
   "4-5 p: ppppcxwngtcgkjmpb",
   "16-17 h: hhhhhhlhhhhhhhhnhh",
   "3-4 x: xxxx",
   "3-4 f: ffhff",
   "5-6 t: tntthtth",
   "15-18 f: jffffffnffffffffff",
   "14-18 z: zzzzzszzzzzgmszzzzzz",
   "3-4 n: nfnnnn",
   "1-8 q: bmfhqhqqqqmqqqdz",
   "4-7 q: kqqhtqqjqkqqrxvjzqc",
   "4-5 j: jsjjjjj",
   "12-18 v: vvvvvvvvvvvsvvvvvnv",
   "2-10 f: nfffffffmmhn",
   "1-7 z: zzzxzczzc",
   "1-8 l: jpflllcllqdllckwvrb",
   "7-10 x: xxxxxxxxxz",
   "3-6 t: stftpt",
   "1-5 t: tttzt",
   "2-4 g: gggsgggggggwg",
   "4-7 l: xlllvvlmrlrqfzx",
   "8-11 q: qqqqqqzrqqq",
   "1-9 f: ffcltnxdrdnfnk",
   "1-13 f: ffffffffffffhfffff",
   "13-18 g: gsggggggggggtggggg",
   "6-12 c: xrcrcccccxckgcch",
   "2-9 f: pfcdmnfzjdqjnl",
   "4-15 r: wxrlrfrrgrrbrdvrr",
   "8-9 l: llllllllxlll",
   "1-2 d: dpdddd",
   "4-6 w: wwwpwdnww",
   "1-3 s: vhkzssg",
   "10-13 x: xxxxxxxxxxxxxx",
   "1-7 n: nnnnnnjnn",
   "3-8 x: xvxxnxzx",
   "12-13 l: lllllllllllll",
   "15-17 l: lllzllllllllllklll",
   "10-14 m: hmmmmmmmmmmmmm",
   "2-9 m: mmmvmsntmmmn",
   "6-8 z: zzzzzqzz",
   "1-4 h: gqlhh",
   "2-5 q: wqksgtqxgqgdhgqwcq",
   "17-19 q: qpqqqqqqqqqqqqqqhqq",
   "1-4 z: jzzzz",
   "2-5 z: gznrz",
   "1-5 j: wjjjjj",
   "4-5 h: hhmglhh",
   "2-12 w: nhqwwwtwdbwwmwwwzhw",
   "10-13 x: xxxxxxgxxlrxmtxxpm",
   "7-15 w: ktwhswwhwwwhsqwfw",
   "1-3 h: hnwthhcd",
   "2-5 c: rdcvh",
   "10-13 x: fwxqxxzxnxtbx",
   "3-10 m: dmjmzmqmhbml",
   "8-15 s: wcsswxxbrsdsrpss",
   "4-5 c: cjccvc",
   "9-10 z: zzzzzzzzzz",
   "2-3 h: hhhz",
   "6-7 w: wwgzsjwwvwlgww",
   "3-8 g: gtxgggggcgfg",
   "2-3 m: gmmrsgkmsvslw",
   "10-11 x: xmxxxxxxxmxx",
   "2-17 r: bcrtchxrgrqvrqgnm",
   "7-18 r: rrrxrrrrzfrjrwrrrrmk",
   "7-11 z: zzzwzzwzzzzrz",
   "2-5 j: jmrjj",
   "7-11 g: gkgggqgglmggnggqglqg",
   "2-5 l: rlbkllxctprqflhll",
   "4-13 p: mppprjpnxhrzpbp",
   "14-16 p: pkppppzpppppjppg",
   "13-15 n: jdndnxnnhntnnndsnn",
   "1-2 m: pqmm",
   "4-13 j: jjwjfmmjjjjjjpg",
   "3-4 j: nfht",
   "7-11 f: vfffffzffcff",
   "10-12 p: pppppppppjpj",
   "3-4 b: bbbb",
   "5-9 p: ppqppppppppt",
   "5-7 g: ggggggvg",
   "11-14 z: zvzzfzzzqzkzzzzzzzf",
   "2-5 c: hcgpjqjkpvgcxxrf",
   "9-11 v: vvkvvcfqqvvffgvvvvs",
   "8-9 d: rldntbdcz",
   "15-19 p: ppppppppnpppppppgppp",
   "7-8 w: wwwzwpwzmkxcwwtgw",
   "4-8 z: zzrzzfdzk",
   "8-9 g: gggggggqn",
   "1-7 c: czcccngw",
   "3-12 t: btdtgfclmpttqttctstt",
   "2-3 n: jjglbnnzrjgd",
   "7-10 h: hmhhpxhhhhh",
   "4-6 v: vvvvnv",
   "9-11 m: mmdbmmmqgmrh",
   "2-3 r: rjrrrrrrrl",
   "1-5 q: qjjqfzfq",
   "4-5 z: zbzzc",
   "9-12 c: ccccccccqccc",
   "6-8 d: kdfkdtrv",
   "4-12 r: rrrzrrrrrrrmrrrrr",
   "1-5 h: hhhhxh",
   "9-10 t: cztttttttttttt",
   "15-17 j: jjjjjjrjcjvjfjjjcjdj",
   "4-5 t: tftvt",
   "2-4 d: qddvrp",
   "7-13 p: pdrspdzpcxdcpzzxpwtg",
   "12-13 l: llllllljllllll",
   "13-14 s: sssssssssssssn",
   "5-7 f: lnfsffrfg",
   "2-8 r: krtrhgqnn",
   "3-5 j: jxjjjnflwcjj",
   "6-7 r: rrrrrrmrxrr",
   "8-9 t: tsttqcctx",
   "4-5 v: vvvvcv",
   "10-17 j: jjjjcjjjjwjjjjjjkzj",
   "15-16 t: nttttsttttzttttt",
   "5-7 c: cccclccc",
   "3-4 x: kxkx",
   "4-9 l: zslllldlnql",
   "13-18 f: fffmflfffffhdffffwf",
   "8-10 m: mvmmmmhmmvmh",
   "4-6 j: jsjjjmfs",
   "11-13 h: hfnhhhhhhhthhh",
   "5-13 g: gsqgcgqggfggl",
   "7-8 p: ppjqppppp",
   "11-12 b: tbbbbbbbbbbdb",
   "1-4 q: qqqzq",
   "8-9 s: xssssssns",
   "6-9 p: pppppppppp",
   "3-8 j: jvjjjjjjrjj",
   "6-17 b: bbbbblbfbvbxbbbbbt",
   "3-7 j: jjgjmhjjj",
   "4-6 v: njvgsq",
   "17-18 h: hhhhhhhhvhhhhhlhshhh",
   "8-9 m: mmmmmmjdbm",
   "2-11 x: xxxjdgxpxxwxtvkxxxlm",
   "9-16 n: nnnnnnnnnnnnnnnsnn",
   "17-19 w: wwbwwwwwwwwwtwwwwwww",
   "7-8 n: qwbxqsbmpnj",
   "5-6 j: jjjjqjjjjj",
   "2-4 s: fssg",
   "5-12 l: dgnzdllptvvlx",
   "7-12 x: xwxxxxgxxtxbkx",
   "6-12 x: xkmxzgxlnnxq",
   "2-6 h: vnshjh",
   "2-5 x: dxxqxpvsm",
   "13-14 p: pppppppptpppjp",
   "7-8 h: hthhhxhph",
   "5-12 j: jtjrjcnjjjjxjjjj",
   "1-5 j: jfjjwjj",
   "5-6 q: qqqqqq",
   "6-8 t: ttnttvttt",
   "3-5 n: gksnnn",
   "6-9 j: jjjjjljjj",
   "3-4 d: dbdh",
   "1-5 n: hjhfhrgbcnqn",
   "10-13 l: llwllllllllll",
   "2-3 s: dqss",
   "1-3 l: lwqbqdml",
   "10-11 r: rrvdcgrrwhrpsrzjtrl",
   "1-2 d: bcdd",
   "10-11 v: vvvvvvvvvcq",
   "5-15 z: qcgsnhcrzzdfzpp",
   "1-15 w: cfwzjwcgpwwwwwgwxw",
   "11-12 t: gttfknrmtkbwt",
   "2-4 h: blhhhcgfgmh",
   "5-7 v: vjczvqsjzvpjvplhtdvl",
   "1-2 d: tdjdb",
   "5-6 m: mmzmzg",
   "3-8 n: vwjfpdrn",
   "2-9 c: ccccccccm",
   "8-14 w: jxmpsswkhdpqrw",
   "5-6 q: qqrfcj",
   "7-13 g: hgwgqgrkgwggxggmqq",
   "3-5 h: hnhhvhpjsh",
   "1-12 k: hkkmkkkpkkjk",
   "5-6 m: mmcmfm",
   "12-13 w: wwwwwwwwwwwxw",
   "8-10 q: qwbsdnqqlznvqjqqzqqv",
   "5-7 j: jgjfjwmqmtsszf",
   "4-5 c: cctcmc",
   "18-19 v: vvvvvvvvvvvcvgvvvfq",
   "1-8 j: qjbsjsjghj",
   "14-18 b: bbbbbbbbbbbbbbbbbg",
   "9-15 w: wwwwwvwwhwwnwwcwvw",
   "6-9 d: ckvddldddp",
   "3-12 k: qrnchpsjfcckrjx",
   "6-10 c: ccccctccccc",
   "5-6 z: hzzzzzsz",
   "3-5 l: rvwlf",
   "18-20 r: rrrrrrrrrrrrrrrrbhrf",
   "3-4 c: cccvcc",
   "11-17 s: jssssgszsbtsssslss",
   "5-14 k: kkksxkkkxkxknkkkk",
   "1-3 q: qxgsmqxdgx",
   "12-13 q: qqnbqqqqqqhbqqqq",
   "7-13 s: ksrskrslsjfss",
   "3-8 n: nfnnnndsnnnnxs",
   "4-8 g: lglggflgglgnf",
   "6-14 b: bbdkbbmbgbbrlb",
   "3-7 w: wqwrdpw",
   "5-6 j: mdmjjj",
   "13-16 k: kkkkkxkkkkkkqkdk",
   "4-6 h: jmthbwhhfh",
   "16-19 p: ppppppppppppppppppv",
   "15-16 k: fkzkkkkkpkcrkhkklbkr",
   "10-11 k: sjkkgkhkqfk",
   "12-15 l: jjnlvmsppvlglllvljb",
   "3-13 l: llcdlfllqllqjl",
   "3-7 f: ggfgbvfqlrffxrflchx",
   "13-14 d: ddddddddddcddqd",
   "7-18 d: wdjdtdrdddfndkdddddd",
   "8-10 v: rvvzvvvrvb",
   "9-13 n: rlnnnnlnmbnqwlnmlnn",
   "14-15 h: hwrhcmhwbjhcbhc",
   "6-13 t: ttwtkrrtttdbtt",
   "3-5 w: wkwww",
   "1-6 h: fghcxhwldmnb",
   "1-9 f: ffffffffffffff",
   "10-11 k: kkkkkkkkkkvkkkk",
   "2-3 s: sssw",
   "3-6 v: vzvqmdgrnkvcvz",
   "3-4 j: jztw",
   "4-5 b: bbbbb",
   "1-9 l: wllmxlbxfllllcr",
   "14-15 q: pqgqqngpjzhmmqq",
   "4-7 n: jnznczd",
   "2-8 m: cmpmcmshpbmxb",
   "6-9 r: rrrrrhrrr",
   "15-18 t: ttttktmtttttttvtttt",
   "1-5 s: sssxf",
   "9-17 f: zfmkpffpwqfqffffffh",
   "16-19 d: dddddvddddbdddkdddpd",
   "8-10 w: dwwrpwwwxx",
   "6-11 w: wmdmzzcwwpkkwwwqwnww",
   "4-5 s: zssgf",
   "2-8 v: vvpvvvvvqjv",
   "17-18 s: sssssssssssssvsssj",
   "1-3 d: tddd",
   "1-3 s: tssdbfvnlmtspmwlxxl",
   "6-11 k: kkkkkkkkkkkk",
   "1-5 d: dddddgqddmdkdk",
   "6-11 l: nzgwkmqlpnl",
   "2-6 v: kvzlqgzr",
   "1-2 f: xkqzbcrsdswpf",
   "14-15 x: xxxxxxxxxxxxxwx",
   "16-17 j: jjjvhgjzjwjzjmjnj",
   "5-6 p: ppvppcjp",
   "1-4 w: lwpwwh",
   "15-16 s: ssscsssssssssssd",
   "3-7 b: rpqkbbbb",
   "3-6 d: dddddf",
   "10-15 k: kkckzkbpdfkkckl",
   "2-4 v: wvrvkgfpvvm",
   "15-18 v: vvvmvvvvvvvvvvgvvl",
   "1-2 l: hdfll",
   "1-4 v: wtvd",
   "5-6 v: vvvvzmv",
   "6-8 l: llnllmlns",
   "4-5 b: bbkblbsbnbbbbbbgbbbb",
   "5-6 d: xnjmdwddtfdbzdb",
   "4-10 q: qqlqqqqqhq",
   "4-9 c: rcvctlmccccc",
   "3-5 f: fffmnf",
   "9-14 n: xnznnnnnrnrdlzfsn",
   "6-7 w: wdwkrvwww",
   "10-15 v: vvvvvvvvvnvvvvz",
   "10-11 k: hnjzdwqkmskkx",
   "4-8 c: ccqcqfrcnffbncfkc",
   "5-12 c: cclsmccgcccccxnvcckc",
   "5-6 z: cwhbkskzhnzztzzlhz",
   "3-5 v: vkvjvv",
   "3-4 j: jjjj",
   "13-16 h: khxhhhrhkhhhhhhhwhhh",
   "1-3 f: jxdxffjfprs",
   "1-11 l: gllslllllxqlltlmh",
   "8-11 g: kggggvnbkqgbfbgdsgwg",
   "6-7 z: zzzxzfz",
   "3-7 x: xqxjjxxlb",
   "3-4 v: vtdv",
   "7-10 w: wwwwwwwwnww",
   "4-8 w: kgwwwwwwpx",
   "3-5 g: ggggggs",
   "4-8 w: gwwwgzxb",
   "9-10 t: ttttttttmp",
   "3-8 f: fpjdffffzflffmlxfq",
   "11-13 g: gggtgggsggbbzggg",
   "1-5 p: pptcp",
   "13-14 c: cccccccccccccnc",
   "3-13 n: gbjnnqxnjprnhn",
   "5-6 x: qxxdknx",
   "8-9 q: kmlfqxcvqqsqkvtm",
   "3-6 n: xndnvn",
   "6-7 s: scxccsjssstw",
   "14-18 d: dddddddttddddfpddbd",
   "18-20 d: sgljbkdxhvckddpbjdld",
   "5-8 m: dpmnmfmmpm",
   "6-9 w: rfdwwwplw",
   "5-7 b: vbdrcbbgqbspbbv",
   "18-19 b: bbbjbbbbbbbbbbbbbsb",
   "11-12 x: xxxxxxxxxxzjx",
   "6-8 d: dqhgrddhddxdn",
   "6-16 p: dppbbzbpxxpphjppkpp",
   "3-4 k: khkkt",
   "1-2 x: xpwkvcxxqrn",
   "1-4 n: lnnngnnnns",
   "1-11 c: cczvdcgcpcrccpzw",
   "15-17 h: hhhhhhzhhhxhhhshhhh",
   "7-8 t: fttttttt",
   "5-19 z: zczzczmczwzpzblzvxzz",
   "4-8 l: zlpdjnsllkgkjglmnll",
   "9-12 s: spwssjsssdstjssf",
   "8-10 h: hhhhfhhchh",
   "4-11 q: qqqqsqqqqqdqqqq",
   "14-15 w: wwwqwwwwwwwwwmjww",
   "1-2 b: blcbhdqfsbmnq",
   "1-5 m: mlrdhdkfjnknxlw",
   "8-9 r: rrrrrrlhc",
   "9-13 d: ddddddddddddd",
   "2-3 p: tpxpjgpcf",
   "1-2 f: ffff",
   "5-8 k: cdkkgbvfwkkskkw",
   "2-3 r: rrrp",
   "6-10 b: bbbbbdbbbbbbbbbbb",
   "10-12 t: tttttttttgdxt",
   "3-4 k: kjkrkmcmvr",
   "8-10 b: zbbpcwgbsbwdz",
   "2-10 v: zqvdtnxvvcvlrvq",
   "3-4 b: bbbbb",
   "13-16 t: ttttmttttttttttwttt",
   "16-17 n: nbnnnnnnnnnnnnnsgx",
   "8-10 f: fmfsffhjcfzffcxw",
   "7-13 m: mmvmrlmtzmbtmmxcsmm",
   "8-9 m: mmmmmmmmm",
   "1-7 n: nnnnwnpnnn",
   "6-7 z: xzzzhpz",
   "3-4 n: bnnn",
   "5-17 r: rrlrrbwzmkrrhrrrrhnr",
   "9-13 t: ttntttttttttc",
   "11-12 w: wwwwwwwwwcwsw",
   "1-10 j: ljhjjjdgjmj",
   "9-10 c: cccccccccx",
   "3-5 h: hfhhh",
   "18-19 q: qqqqqqqqqqqqqlqqqbqq",
   "1-4 b: pnjntrscpklzfcdl",
   "9-11 c: nrxscrjjcrzc",
   "9-12 q: nqpqqqqqqqqqqc",
   "5-15 k: phmcmnhbckwkvwkb",
   "2-4 t: dtrtmtb",
   "4-5 j: jjjjp",
   "8-9 m: mmhjmmrsqmm",
   "4-5 r: rrsrrrr",
   "6-10 w: wwwwwgwwww",
   "13-18 m: mgmmvmmmkmmmmmgpmfm",
   "10-11 d: ddxdldwdddddzdvrd",
   "3-15 k: mxxgjklzzdbtgddzwrx",
   "9-11 q: qqqqfgqqqqwqqq",
   "2-4 g: gdhthpp",
   "1-11 r: srrrrrrrrrrr",
   "13-14 x: xxxxxxxxxxxxxs",
   "6-17 f: ffvffkffffffffffjf",
   "3-12 m: kmmmvbjlmmmf",
   "9-20 n: nnnplnnnnnnnnnlpjntn",
   "8-14 f: cjflffftftnffd",
   "2-7 b: kbzbbbbbbqb",
   "10-12 n: nnnnnnnnnnnk",
   "7-8 z: zxzdzzzclnjzj",
   "3-11 l: llldlsmltklz",
   "2-5 s: swwxrpscmmhzsgrvnl",
   "1-13 p: kzwjlpfhpskzpsrp",
   "13-15 f: gffffdffkhfffvffjffb",
   "6-7 d: drddddd",
   "4-6 p: pppphpj",
   "12-18 k: jkkkkkkktkzkkxkkfgkn",
   "8-9 j: jjjjjjjpc",
   "5-7 d: ddlkxdmndmdkkhwd",
   "10-11 l: vlllhllfhll",
   "5-6 b: bbjbvbqrjb",
   "17-18 d: dxdnddddddlddddddl",
   "15-18 d: dddxddwwddddddnddd",
   "1-12 x: sxxxxxxxxxxtxxxxx",
   "3-9 k: rfkrnjxxkkm",
   "9-12 n: xnnnnnnggnnln",
   "5-8 w: nwpwqwwwlfwmj",
   "3-11 p: sgprfdprpmqpwvps",
   "5-6 x: sxxhxxkx",
   "11-14 h: hhhhhchhhhhhhh",
   "2-3 p: kxpllmpvfxq",
   "4-14 k: qkpfkskhglhkzkck",
   "3-6 q: jsqbdqq",
   "8-9 n: nnnxnnnnpnnn",
   "12-14 h: stshhhwxhcvhhg",
   "5-8 j: jjjjjjjj",
   "10-14 h: hqlqhxzmdnfzhhhwxnwj",
   "1-8 r: qmlvfqvrbgfrrmppkzwv",
   "3-9 v: hhvnpvvvdvktgbcrr",
   "6-8 q: qqqqqqqp",
   "9-12 l: lxklkwplllvlmljlfll",
   "11-14 w: wwwwwwwwwwwwwpw",
   "6-7 c: cccqrccc",
   "3-6 d: wddgdzd",
   "3-8 d: dddppddddddddfd",
   "5-9 g: jlxgxgkggpg",
   "6-14 b: jbljlvjtqkbbzlpvxmf",
   "2-3 x: nnbx",
   "6-7 q: qqqqqbfqqqq",
   "2-3 n: xnmnnfb",
   "13-14 p: pppppppppppphr",
   "8-11 k: kkkkkkkkkkk",
   "4-5 r: rrrsr",
   "13-19 t: ttttttvtttmttttttbt",
   "8-9 r: rrrlrrrwr",
   "3-6 c: flfhnccccwvtmqz",
   "8-12 s: xshssnnsskcsjsssgs",
   "1-4 r: vzkpphvtwrxgr",
   "11-13 c: ccccccccccqcc",
   "3-5 v: fvvjvzgt",
   "1-4 j: sjjnsjjj",
   "3-6 s: sxsqnfbmssbfnjs",
   "12-15 p: pnppppppppppkpp",
   "9-13 l: wlldrllklllllkl",
   "2-3 s: swsrljzrns",
   "8-9 b: bbbbbbrwb",
   "16-20 f: ffffffhffffffffsffff",
   "5-9 w: wwwwswwwww",
   "7-9 q: qbqqqtqqkd",
   "6-8 z: zzzzzzzz",
   "5-10 m: zlmmnmrgkmtm",
   "1-5 n: mnnflnn",
   "4-8 c: cpccbgccc",
   "9-12 j: jjjjjjjjwjjjj",
   "3-4 s: tdhzbsqsb",
   "15-19 t: tthrqtttttttmtttttx",
   "11-12 b: bbbbbbbbmbjcb",
   "1-13 f: ffqfkfftfjrwfkfm",
   "14-15 v: vvvvvvmvvvvvvdv",
   "4-6 h: qvchkhhccnxwpvhhhb",
   "2-8 k: kskkkxkkkkk",
   "3-10 j: jjjbjjjjjpd",
   "4-13 z: svkjzrfrtftftqhhc",
   "18-19 p: pppppppppppmpppppmd",
   "5-14 b: bbbbcbbntbbfbpbd",
   "5-7 q: qqqqqqq",
   "2-17 j: jbjjjjjjjjjjjjjjcj",
   "1-5 z: zvztgv",
   "4-5 k: kkkrkp",
   "3-5 c: kgmccc",
   "2-8 h: rhhhnhhxh",
   "1-18 s: sbrblpcrxsvdsjrnwwws",
   "6-10 q: qbqqzqqhbdq",
   "1-3 d: sdwgdn",
   "3-6 s: ssssssss",
   "2-13 f: ffffrrfffflbvffff",
   "5-7 w: pxwnfnwzj",
   "17-18 z: zzzzzzzzzzzzzzzzbzzz",
   "7-8 p: pplplpbfppp",
   "1-8 x: xxkzdxzx",
   "3-4 p: jppxp",
   "4-6 j: jthbzjmqjzj",
   "1-12 x: xxxxxxxxxxxxxx",
   "8-19 g: ggggggqgwmgggwggmlg",
   "5-9 b: bxbbbgwbbnxbhbbb",
   "5-6 n: nnnnnd",
   "5-9 b: bwjxbbwbb",
   "4-14 d: ddlddkdddddddl",
   "2-3 t: jqjt",
   "2-3 h: shhp",
   "12-14 p: ppppppxppjfmpdzppp",
   "7-10 f: lnffvfcfzffffft",
   "3-8 s: lqhrstvsr",
   "15-16 v: vvvvvvmvvvvvvvvvv",
   "2-4 h: hhhh",
   "5-8 g: wmtxgdgg",
   "3-6 r: rfrrrg",
   "8-12 q: qqqqqqqqqqqq",
   "4-9 z: zzzzzpzzw",
   "14-19 g: gdggggggggbggtcggggg",
   "5-11 n: nnnktnnlndgnnnnn",
   "5-6 n: nznnnqn",
   "3-4 q: qqlq",
   "12-13 g: ggggggggggggg",
   "16-18 w: wwwwwwwwwwwwmwwxwv",
   "6-10 b: bbbbbmblbg",
   "8-13 m: mwmmmcrmmmtsm",
   "12-17 h: rhhhhnhhhhhlhstkhhh",
   "9-10 q: qqqqqzqqgt",
   "2-6 v: vvfvpgw",
   "8-13 w: mwlxrpbwwwgcwwgn",
   "1-10 m: mmmmmmmrmxm",
   "6-8 f: fgvfgfftfffq",
   "2-6 g: gcggrg",
   "1-6 x: zxxxvxx",
   "1-3 t: txtt",
   "1-2 q: qdqn",
   "6-7 j: jjjjtjjj",
   "13-14 r: rrwrrwrrrrrrrfrr",
   "3-4 j: jjjpj",
   "12-13 v: vvvvvvvvvvvvv",
   "4-5 t: tttcw",
   "4-6 s: sssnxs",
   "9-11 x: xxxxxxxxcvx",
   "1-4 d: lpddds",
   "1-9 t: hbtttttthtt",
   "1-4 z: bsjzz",
   "2-5 t: xrtptqt",
   "1-3 l: lllll",
   "7-8 m: mmmmmmmj",
   "11-13 f: ftffqffffgfszfff",
   "4-5 j: ljjbjbjjjj",
   "3-11 n: nhnnnnnnjnnnnnbmnqnn",
   "3-12 s: swgnlssszsqsvfjwxt",
   "8-9 f: ffffffffn",
   "3-4 t: gtmt",
   "8-9 s: spsmnswlt",
   "7-8 j: jjjnmjjjdjjjqj",
   "9-10 j: jnjljjjjfgj",
   "3-7 x: xrxlbhcxmswlpx",
   "9-11 x: xxwrxxbxxxn",
   "16-17 d: dbddddmtddddddddddd",
   "5-17 n: cnnnhnnnjnnvnsnnwgnn",
   "7-8 m: mmmmmmmm",
   "11-12 l: lllklllltltmllllll",
   "4-5 r: rrrrr",
   "7-8 j: jjjjjjqqjj",
   "10-12 g: gggtkggggggkggg",
   "1-5 h: fxxphhz",
   "1-3 q: jlnq",
   "4-5 s: fssss",
   "16-17 c: cccccccccccccccqc",
   "12-19 q: qqqqqqqqqqpqqqqqqqpq",
   "7-13 s: gmzvssjsfssjssssx",
   "3-4 s: ssxs",
   "15-19 d: ddddddddddtddddddqdd",
   "5-7 l: lllxqlkl",
   "10-11 x: xmxxxxxxxfk",
   "9-14 q: qqqqqtqczqqqqq",
   "4-8 w: zwmllrwmwmwqwww",
   "1-4 l: llllz",
   "14-15 j: jjjjjjjjjjcjjjrjj",
   "10-13 x: xxxxxxxxhbxlzx",
   "6-7 f: fffffdj",
   "9-10 w: msdcwqzwhj",
   "4-8 c: ccccxccccckcccccccc",
   "5-11 r: xffrjsvrjzfrrcrpfbr",
   "2-5 z: zzfwrn",
   "10-13 r: rrrrrfrrrhrrh",
   "5-10 d: dddddddddddd",
   "4-5 z: zzzfs",
   "9-12 t: ttttttttlttt",
   "3-4 r: lpjrr",
   "2-9 v: kkxvvxkvgjtsjtvv",
   "1-8 v: lprgtpvvv",
   "4-6 h: hhhnhfb",
   "2-4 h: hhpxh",
   "4-9 d: bhqdmddrd",
   "2-5 w: wwgtwt",
   "6-7 z: zzzzzszz",
   "4-5 z: zzzzm",
   "12-14 d: mddrddddddrdddddd",
   "9-11 h: sdhzhvhhhkhhhb",
   "2-3 b: zbbtbbqhm",
   "4-11 b: bnbqqbjbbzp",
   "9-10 n: nnnnnmnntj",
   "11-17 w: wwvwwwwwwwrtwwwwdw",
   "1-4 t: svbtbxvptfp",
   "4-5 w: vsbjw",
   "2-7 m: mmpmmmg",
   "11-12 j: jjjjjjjfjjxjjm",
   "6-8 r: rrzrcmrvrr",
   "1-3 n: nqxnzhq",
   "3-4 n: nnnkj",
   "3-5 f: kfffhfthfhf",
   "3-5 m: gwszmmm",
   "1-7 c: tbscmrfbmccrqxzdb",
   "13-14 l: lllllllllllllnll",
   "4-10 k: pfbwsjvfxkxhfzktdj",
   "2-6 f: ffffbf",
   "4-7 w: wwgrwnpbswnz",
   "5-6 z: zzszzzz",
   "8-13 p: zpppppgbjpppcpp",
   "6-7 q: gpqqvwtkxwqjtqdqq",
   "14-15 n: nnnnnnnnnnnnnkn",
   "3-6 q: rkqmjqg",
   "5-6 t: ttttkq",
   "4-6 r: srrsrrprr",
   "1-8 v: kvvvvvvxvvvvvvvb",
   "5-6 z: zzzzzz",
   "3-4 c: cccccbpsp",
   "3-12 c: stvxclcbrcjjcgcxlwtq",
   "13-14 r: nrrrrxrfrrrrrzd",
   "2-3 r: rmfwl",
   "1-4 q: qqhq",
   "11-13 z: zzzmvzzzzzkzzzzzzzz",
   "4-8 h: hhhxhhhh",
   "2-3 b: fpbhn",
   "7-10 v: vgwvvvgvvvvvj",
   "1-4 m: msmk",
   "11-12 d: ddddddddfddddd",
   "15-16 k: kkkkkkkkkkkkkkkk",
   "8-14 m: mmmmmmmwmvmbmmv",
   "10-12 m: mmmmmmmmmlmm",
   "2-7 w: cgbmsww",
   "6-8 t: ttktttgw",
   "4-14 z: vsvmwzvhfzxkfzz",
   "2-4 f: ccgmfhrls",
   "10-11 k: kfxlsfdkbdkmjptqhh",
   "6-16 x: nbxxdxwsxxsqmfxqrxmk",
   "9-17 j: vjjjjvpjgfjxffjxjd",
   "6-9 g: gvpxggggqgg",
   "6-8 t: tttttztft",
   "5-11 q: prklqxrfxjdvgsq",
   "8-9 k: kkkkkjknk",
   "2-4 c: chccl",
   "2-3 x: fxpr",
   "1-4 v: rzvvpvxp",
   "3-5 j: cjfrjldr",
   "3-8 t: zbptntzp",
   "2-7 c: cccqkcfzgcffssgrcsc",
   "5-6 q: qqqqdr",
   "2-6 h: hxfhhghhhk",
   "1-3 v: lvnhv",
   "5-6 r: prrrrw",
   "11-18 z: zfzzzzzzzzdgzzzmzzxz",
   "5-10 x: kxrncghxldxffzbx",
   "17-19 k: kkkkkkkkkkkkkkkkjkkk",
   "7-9 h: hhmhhhdhh",
   "15-16 x: xxxxxxxxxxxxxxxx",
   "4-5 c: nzjchwccgbd",
   "5-6 r: rrrrjrrrr",
   "9-13 c: ccccccjclcccc",
   "6-7 z: zjzfzzzszvzz",
   "6-7 l: llllljll",
   "6-8 m: mmmmmmms",
   "3-5 p: pppppp",
   "14-15 m: mmmmmmmmlmmmnwmm",
   "6-11 b: bbbbbbbbbwb",
   "8-10 g: ggjgbgpgggggggdcgb",
   "9-16 b: bbbbbbcbkbbbbbnbbbbb",
   "10-11 f: dfbffxfnfksfffrw",
   "10-11 h: hhhhhhhhhhq",
   "5-17 v: vvvvjvvwvvvvvvvvvvvv",
   "2-14 x: xgxxxvfcxxxxtbgxkx",
   "1-3 k: kkjbm",
   "18-19 d: dddddddddddddddddxx",
   "5-9 h: vhjzhkjbhl",
   "1-4 k: kskk",
   "7-12 l: lcljknlllclvlldrlpls",
   "14-15 w: wwwwhwwwwrhwwvq",
   "5-6 t: wtvdtmqfbnt",
   "1-4 v: vhvvvv",
   "8-10 n: nnqcnzrnndnjnnnkn",
   "6-8 h: hshhqhhdhhfcj",
   "10-15 j: jjtjjjjjjfzjjjj",
   "3-5 m: mmdmm",
   "10-11 n: nnnnnnnnnng",
   "6-8 p: fzpgppzpthqcthhst",
   "1-7 p: hzxthvpfnpnrzfpvmv",
   "10-11 l: llllvswlllll",
   "1-2 q: jffqfzd",
   "1-3 x: xljxfw",
   "5-6 z: fmzzgl",
   "2-6 v: vbvvvzv",
   "8-10 r: rrrrrrrnsr",
   "1-3 c: crctc",
   "8-10 m: mcmdgxhmhnmmwmzmmg",
   "4-5 h: hdhhhh",
   "1-2 z: vzzm",
   "5-10 z: zzzvnzzzpz",
   "2-5 f: gfffdff",
   "1-4 g: lgfgg",
   "2-4 w: swww",
   "2-6 c: ccscdz",
   "6-7 b: bbsbbbjb",
   "11-16 s: bssrqsslssbcssjrxjk",
   "5-8 c: ccjmcqcglj",
   "13-18 l: lllllmvllllxlllllz",
   "6-7 l: lllllll",
   "5-6 v: vvvtvvvv",
   "4-11 v: vvmvwhvvrkd",
   "4-7 n: knlwnmnnnn",
   "5-6 p: cqmfxppptplkpp",
   "7-11 c: clccnptxmcncrccjcc",
   "1-7 h: fhhfhhzd",
   "1-11 l: llflllllllllll",
   "3-4 g: gmgl",
   "15-16 j: wjjjjjjjjjjjjlhjcjj",
   "2-8 v: gtvvmgvvbtf",
   "3-4 t: fpttgzttwt",
   "4-8 k: klkkkgkkkk",
   "2-8 p: wsdgtplp",
   "9-11 q: qqqqqqqqzqv",
   "1-2 n: nswlnnngxsj",
   "4-5 p: dgpppkjhvgpgppp",
   "10-17 j: jjjjjjjjjfjjjjjjk",
   "2-3 l: lbll",
   "6-7 n: nhwnnnc",
   "3-4 s: ssws",
   "3-9 v: szrvvcxzv",
   "2-4 p: pgzph",
   "4-6 g: rxnjtpggwggglp",
   "10-16 v: vvvvvvvvvvvvvvvjvv",
   "7-9 j: jljjjmjjj",
   "6-11 w: wwwwwqwgmwfwwkw",
   "12-15 w: wqwwwwtwwxwwwfwww",
   "8-11 v: vvvvvvvvvvd",
   "7-11 g: dcgpcggpgxggdphgm",
   "3-5 w: wwrwg",
   "9-16 b: bbbqbbbbbbbbbbbbb",
   "7-8 n: tnnnnnnnnn",
   "3-5 c: ccsctcm",
   "10-17 f: rfsfffffvffjfnkfq",
   "6-11 f: fffhffffffp",
   "10-11 n: hbsnnnntnppdnnzj",
   "3-4 x: ngxbxxx",
   "6-11 t: ttbwkznllhtntbdtltt",
   "5-6 s: sssssms",
   "15-16 c: ccccccccccccccqc",
   "3-5 h: jzslhlhh",
   "7-12 m: mxmjmjmmmmhkm",
   "7-9 r: mtbfxlrvrddrvgxrxxr",
   "14-20 m: gmmlpvclmkvfkmjdslvm",
   "11-17 v: rqvvtmktpvckpvvvv",
   "15-16 b: bbbbbbbbbbbbjblbbc",
   "3-5 z: vpsgzfzvxczbnzw",
   "5-6 j: shlfjc",
   "10-16 b: bbbbbbbbbbbbbbbsn",
   "1-7 j: jjjrkrdq",
   "14-16 x: xbxxxxxxxxxxxjxxx",
   "2-6 b: vzpnbbpqfbbvcbmbchm",
   "10-16 x: xxxrxxxvxxxxxqxxxxk",
   "10-12 j: jjrkjjjjjjjjj",
   "1-5 l: lxfslmj",
   "10-16 s: ssssssssssssssszsss",
   "12-15 r: rrgrrrrrrrrcrrr",
   "10-11 c: ccctccccccj",
   "13-14 f: fqgsffffqffffvfffff",
   "14-15 f: ffffffjffffffqff",
   "8-14 q: gtqqjqqwwxqvprdqpcqq",
   "8-11 f: lqqfqpmffffgcs",
   "6-8 f: frfshkfklf",
   "10-11 w: wlwwwwwwwwrw",
   "2-5 q: qqmmqmmqqq",
   "8-9 g: cjgscgwtg",
   "1-3 w: wljwwvjdcwnkmn",
   "4-5 q: qcqqxq",
   "11-18 g: gqgggvgggghgkggggggg",
   "8-12 z: tbmbzbzhnppz",
   "2-3 t: tzttt",
   "2-5 s: zjlsssssmsss",
   "8-16 w: mwwqwrwwskwcwwbww",
   "3-7 t: ttwttttt",
   "1-4 p: ppclpbpppp",
   "7-9 c: cccccckcxccccc",
   "9-13 g: dgggggcgrrggggggg",
   "4-5 v: vvvvvvvvvvvvvv",
   "15-16 l: lllllllllnlllsqkl",
   "2-6 p: pppjptvpkxp",
   "11-18 j: jjjjjjjjrjcjgjkjjhjj",
   "2-6 x: znkxkc",
   "14-15 b: bbbbbbbbtbbbbssbt",
   "3-8 b: bszbbvbb",
   "15-16 t: dtttttttxtpttttrttt",
   "10-11 b: bwbkqbvdbvj",
   "14-17 k: krjwkfgsqkzjklkkkvxg",
   "13-16 d: ddddddddddddqddd",
   "3-15 s: jmsnpmldstjngfmrp",
   "1-6 s: stssssn",
   "8-12 b: bbbbbthpwlbb",
   "3-4 r: rdrf",
   "10-11 l: glllllllllk",
   "7-16 m: vxjgnbmmbzsxlhblj",
   "4-7 b: bsthbwjrkbmptb",
   "5-7 q: qqdmjqqqq",
   "2-16 v: rvvvvvvvvvrvvvvvvvv",
   "2-3 n: nnnbm",
   "13-16 v: vvvvlvvvvvvxwvvv",
   "4-6 c: nccccccs",
   "10-14 q: qdgsqqqqqqqqqqqnq",
   "4-5 g: gjghg",
   "2-7 f: fffffqdf",
   "15-18 f: fxffffdfhflffbfxff",
   "7-9 w: gpwwcwwwlwbwfkdw",
   "14-17 q: qqjqqqqqqqqnqhqqrhqq",
   "1-4 d: djdqkdkddlvdqdt",
   "4-9 w: qwsvpbwdcngsww",
   "4-9 b: bbbbbbbbb",
   "6-15 g: gmdhggngqdfgqsggsvg",
   "9-16 b: bbbbbbbbdmtbbdbbc",
   "8-9 k: kkxkkkdkkkzkdp",
   "1-8 b: bbxbdbnbjcbbb",
   "15-19 q: qqqqqqvqqqqqqsqqqqq",
   "3-4 t: tttt",
   "2-5 j: bjjjj"
   ]

-- https://adventofcode.com/2020/day/3/input
day3 :: [[Char]]
day3 = [
  cycle ".....#.........#...#..##....#..",
  cycle ".#........#...#........#.......",
  cycle "......#......#..#...#....#.#..#",
  cycle "...#.#####.#.......##.#........",
  cycle "...........#......#..#.....#...",
  cycle "#.#..#...#.#...#.##.....#.....#",
  cycle "....#..#....#...#.#...#.##.....",
  cycle "##...#..........##..######.....",
  cycle ".....#...#......#.............#",
  cycle "........##....#...##..#....#...",
  cycle "...#...#.........#.#..........#",
  cycle "..#.#.....##..........#........",
  cycle "##.......................#.....",
  cycle "#..#...##...##.#.........##....",
  cycle ".#....#.#####....#...#...#.....",
  cycle "#......#......###..#........#.#",
  cycle ".#....##..##.###.#.......#.....",
  cycle ".#..#.........##....#.#....#...",
  cycle "........#..................#...",
  cycle ".......#..#..#............#....",
  cycle "........#...................##.",
  cycle ".#......#......#.####......#...",
  cycle "..###.#..#..#.........#........",
  cycle "..#...........###..#.....#.##..",
  cycle "...#.##.#....#................#",
  cycle "#.....#.............#.#........",
  cycle ".#..............#.........#....",
  cycle "##.................#..........#",
  cycle ".#..#....#.###....##..#..#...#.",
  cycle "##........#......##.....#....##",
  cycle "#......#..#........#......#.#..",
  cycle "....#.##.#.............#...##..",
  cycle ".#...#...#..#............##...#",
  cycle ".#..#...#..#..#....##..#.#.#...",
  cycle "#....#...##.#.#......#........#",
  cycle "#..#..#...#.#.....#..##.#......",
  cycle ".....#..#.#..#.##.......#..###.",
  cycle "#......#......#...#............",
  cycle ".....#......#......#..#.##..#.#",
  cycle "......#..##..#.....#....#......",
  cycle "..#..#...#..#...#....###.#.#...",
  cycle ".................#..#..........",
  cycle "......#...##..#.....#...##.....",
  cycle "..#...............#...#.#.....#",
  cycle ".#....#.##.##..#.........##....",
  cycle "...###....##...#......#......##",
  cycle "....#...#.....#.........#..##..",
  cycle "..###.........#..#..#...#......",
  cycle "...##.....#.........#.......#..",
  cycle ".....#.................#.#.....",
  cycle ".#.###.#..#...#..##....#....##.",
  cycle "....#.....##.........#.#.......",
  cycle ".#.#....#..#................#..",
  cycle "..#.#......#......#........#...",
  cycle "#........#....#..#..#..#....#.#",
  cycle "#...........##..#....#..####...",
  cycle ".....#.......#.#...#.#....###..",
  cycle ".......#....#.......#..........",
  cycle ".............#.....#...........",
  cycle "#....#......#...#..##.#........",
  cycle "....#.......#.#.......#....###.",
  cycle ".####.#...........#.#.#...#.#..",
  cycle "#..##....##.#......#...........",
  cycle "...##...#.#.....#.....#........",
  cycle "...#.............#.....#...#...",
  cycle "...#.....#..#.....##...###..#.#",
  cycle "....##..#..##..#..#...#.....#..",
  cycle "........#...................##.",
  cycle "....#.......#.....#.......#....",
  cycle "....##.........#.#.............",
  cycle "......#..#........#.#...#......",
  cycle ".#..#...#...........#......#..#",
  cycle ".#....#.#........#............#",
  cycle "......#...................#...#",
  cycle "##...#.......................#.",
  cycle "........###.......#.......#..#.",
  cycle "...........##.............#....",
  cycle "..##...#.....#....#......#....#",
  cycle "................###...##...#.#.",
  cycle "..#.#.....#....##...#..##......",
  cycle ".....................#.#......#",
  cycle ".......#....##.#..#........##..",
  cycle ".##....#......#....#.........#.",
  cycle "#............#.........#..#.#..",
  cycle "....#...........#..#....#....##",
  cycle ".......#..#.....##.........#...",
  cycle ".##..........#.#.#....#..#.....",
  cycle "........#....##.##.#......#....",
  cycle "....##..##......##.....#.###...",
  cycle "......##.#....##.#.#....#......",
  cycle "..#..#..........#.....##.....##",
  cycle "#........#.##...#.#....#....###",
  cycle "........##............#........",
  cycle "##.##..##.#..#...##............",
  cycle "....#..#....#...........#....#.",
  cycle "..#.......#.#.......#...#......",
  cycle ".#..........##.....#..#...#...#",
  cycle ".................##.#...#...##.",
  cycle "##.............#......#....#...",
  cycle "..........#.#....#.............",
  cycle "...##..#.#.....#.....#.#.......",
  cycle "...##...##.#......#.#...#......",
  cycle "..#..#.....##..##..........##..",
  cycle "......##........##.......#....#",
  cycle "....#..####..#...##........#...",
  cycle "#.......#....#.......##.......#",
  cycle "........#..........#.........#.",
  cycle ".....#....#.........#.#.#.....#",
  cycle "..##.....#....#....#..#......#.",
  cycle "....#..#.##...#..#.....#......#",
  cycle "........###.........#..###...#.",
  cycle ".....#.......#.....#.#.#.......",
  cycle "...##.....#....##.....#.#.#...#",
  cycle "#.##....#.##.....#.#.#........#",
  cycle ".##..#.......#...#.#.......#...",
  cycle ".#..........#.............#....",
  cycle ".#...#...#......#..##..........",
  cycle ".......................#.#....#",
  cycle "............###....#..##.#..#..",
  cycle "...#.#......##....#..#.........",
  cycle "..#...#....#....#.#............",
  cycle "..#.#..###...............##....",
  cycle ".....##...#.....#........#..#.#",
  cycle "...........#......#..#...#.##.#",
  cycle "#...##......##...#..#...#..#...",
  cycle "..##....#............#......#.#",
  cycle ".#.#..#...#...#.#...#...##..##.",
  cycle "..#.#....#.......#.#.#.#.#.##..",
  cycle "....###.##..#...##....#........",
  cycle ".#...............#........#....",
  cycle "...#..#........##...#.##.......",
  cycle "........#..#..#......##........",
  cycle "##....#....#............#......",
  cycle "#....#...#.###.#.###.......#...",
  cycle "...#.###.##....#.........#...##",
  cycle "..#......##.#.....#..#.......#.",
  cycle "##.............#..#..##....#.#.",
  cycle "#...#...##........#.#.......#..",
  cycle "........#..#.....#.#..#..#.#...",
  cycle "#..##.........#.#.#.##...#....#",
  cycle "............#...#....#..#....#.",
  cycle ".....#.......#......##..#......",
  cycle ".#.....................#......#",
  cycle "...................#....#.#....",
  cycle ".....#....#.....##.............",
  cycle "#....##.#....##..#....##....#..",
  cycle "....#..........#..........#....",
  cycle ".....#.#...............#..##...",
  cycle "...#......###.......#..##......",
  cycle "#.#.#....##..#......#.##.#.....",
  cycle ".#...###..#.....##.........#.#.",
  cycle "..#...#.............#....#.....",
  cycle "#..#.............#.....#.....#.",
  cycle ".#.........#.#...#..#....#...#.",
  cycle "#....#......#....#.#..........#",
  cycle ".........................#.....",
  cycle "...................#...........",
  cycle "#.#...#......#....#............",
  cycle ".#..#........#...##....#....#..",
  cycle "..#......#..#..........##......",
  cycle "#.#....#....##....#.........#..",
  cycle "...#.#.#.#..#....##..#....#..#.",
  cycle "..#..............#.....##......",
  cycle "....#.........#...#.....#..#...",
  cycle "..#..................#.#.......",
  cycle ".....##.##........#.#....#..###",
  cycle "..#.#...#.....#..##..##.#.#.#..",
  cycle ".....#......#............#.....",
  cycle ".#.......#....##...............",
  cycle "...#.................#.....#...",
  cycle "...#.#..#.#...##........#....##",
  cycle "..........##...................",
  cycle "#........#..........#.#........",
  cycle "................#..##.##.#....#",
  cycle "....##..#.#.#...#...#....#.#.#.",
  cycle "..#.........#......##....#.....",
  cycle ".##.........#.....#.#..........",
  cycle "...##...###...........#......##",
  cycle "..#........#......#.....##.#...",
  cycle "###.....#.#.#...#.......#....#.",
  cycle "..##...#....###..##.#.#..##....",
  cycle "..###...##.......#.#..#....#..#",
  cycle "..#...............###....#..#..",
  cycle "...........#....#.##..#........",
  cycle ".#...#..#.#...##..#....#...#..#",
  cycle "..#............#......#.....#..",
  cycle ".#...#...#.#...#.#.............",
  cycle "...####.........#....##....#.#.",
  cycle ".....##...#........#.#......#..",
  cycle "...####...#.#..#.#.#.#.........",
  cycle "........#.##.#..#.......#......",
  cycle "......##......#.........#.#....",
  cycle "..#.#...#....#.....###.....##..",
  cycle "#.#.##..........#...##..#..#.#.",
  cycle ".....#................#.#..#..#",
  cycle ".........#........#.....#..#..#",
  cycle "......#...........#...........#",
  cycle "..#........#.#.........#...##..",
  cycle ".....####.....#....##.#........",
  cycle "....#...#........#.......#...#.",
  cycle "...#..#....#.....##....###.....",
  cycle "........#..#..#.#.#............",
  cycle "#..#......#..#....#....#.#.#..#",
  cycle ".........#...#......##.........",
  cycle "..#....#............#..#.....#.",
  cycle "#............#.#...#......#...#",
  cycle "..#..##...#........#.........##",
  cycle ".#...#....##...#.......#..##...",
  cycle "#..#.##......#........##...#...",
  cycle "...#..........#...#..#..#....#.",
  cycle "##..#........##..##...#..###.#.",
  cycle "............##...............#.",
  cycle "#......#...#....#.........#...#",
  cycle "................#..#.#.........",
  cycle ".....#...#...#...##.......#...#",
  cycle "..##.###...#...#.#..##.#.#...#.",
  cycle "#...##..........#....##.#.#.#..",
  cycle ".#.........#..........#........",
  cycle ".......#.#...............#.....",
  cycle "...#...#............#..........",
  cycle ".........#..#..........#.......",
  cycle ".........#..#...#....#.##....#.",
  cycle "..#............#......#....#.##",
  cycle "...#...#.#........#......#..#.#",
  cycle "........#......##...##...#..#.#",
  cycle ".......###......#............#.",
  cycle "#.....#...##.#.#...#.......#.#.",
  cycle "..#......#..............##....#",
  cycle "..#............##.......#.#.#.#",
  cycle "...#.#.....#.#.#........####...",
  cycle "...#................#..........",
  cycle "..#...#....#....#......#..#...#",
  cycle ".###......#..............#.#..#",
  cycle "......#......#..........##..#..",
  cycle "...##.#...........#.#.....##.#.",
  cycle ".#...#......#..........#.......",
  cycle "....#...#....#..........#.#....",
  cycle "..................##..#.....#.#",
  cycle "###.................#......##..",
  cycle ".....#.....#............#.#..#.",
  cycle ".....#........#...#....#.#.....",
  cycle "#.#...#........................",
  cycle ".#...#.......#..#.......#......",
  cycle ".......#.#.....###.#...#.#.....",
  cycle "#...#.#...........##...#.......",
  cycle ".#.......#.....#..#..#....#....",
  cycle "...#..##.....#..#..#.....#.....",
  cycle "...#................###......#.",
  cycle "#..#...##.###..#..##.......#...",
  cycle ".#.#.#........#.#.............#",
  cycle "#.......#..#.......#.....##...#",
  cycle ".#.#.#............#..#....#.#..",
  cycle "...#.#.##.#......##.....#....##",
  cycle "#............###...#....#......",
  cycle ".....#..#..#.#.........##.#....",
  cycle ".#.##........#.#.#...#.......#.",
  cycle "..###..#..#.#...#.##...###.....",
  cycle "#............#.............#...",
  cycle ".#.##.....#..#.......#...#...#.",
  cycle ".#...#........###...####.......",
  cycle ".#.#..##..#.....#.#..#.........",
  cycle "....#.#.#............##..#...#.",
  cycle "###.##......#.#.....#.....#....",
  cycle ".........#...##.....##....#....",
  cycle "..#................#.........#.",
  cycle "#.......###..##..##............",
  cycle ".....#...#.............#..#..#.",
  cycle "..........#...................#",
  cycle "....#....#...........#.........",
  cycle ".##.......##.##.........##.....",
  cycle "#......#.#....#....#...#.#.#...",
  cycle "..#.##..#.###.#.##....#..#.....",
  cycle "#....##.#...#..................",
  cycle ".......#...#...........#...#...",
  cycle "....###.#...#..#...............",
  cycle "##.#.#..#.#......#.#......#...#",
  cycle ".............#.....#.##....#...",
  cycle "#.............###....#...#.##.#",
  cycle "#..#.##.............#.##...#...",
  cycle ".#.#......#.........#...#......",
  cycle ".#.........#.#.#.....##.#.#....",
  cycle ".................#........#....",
  cycle "....##.#.#..#.........#........",
  cycle "#...##......##....#.#..#......#",
  cycle "..........##...##..#......##...",
  cycle "..........#..#.#..##..#..#.....",
  cycle "..#..#.....##........#...#.#...",
  cycle "#..........#.#.#..............#",
  cycle "#..........##.....#.#...##....#",
  cycle ".....#...#..#..#...##.#.......#",
  cycle ".##.#...............#.#...#....",
  cycle "..........#.....#......#.......",
  cycle ".....#.#......##...#.......#...",
  cycle "...........#.#...#.....#....#.#",
  cycle ".###.#........##....#.##...#...",
  cycle "#....#.##....#.###..##.#.......",
  cycle "##...........#..##.........#...",
  cycle "....#.##...#...#.....#.#..#....",
  cycle "........#.#.#..#.#...........##",
  cycle "..........#.##...#....#......#.",
  cycle ".##.....#.#.....##.#.......#.#.",
  cycle ".#..#....#.#.....#.##.#....#..#",
  cycle "#.......#..#..........##....#..",
  cycle ".#........#...#..#.#...#....#..",
  cycle "#......##...#...##..#.#.......#",
  cycle ".#......#.##.#............##.#.",
  cycle ".#....#.....##..##..........#..",
  cycle "..###..#..#...#...#.#.#..##....",
  cycle ".#.#.##...#..#...........#....#",
  cycle "....#......#.......##...#.#.#..",
  cycle ".......#..#...##..#.........#..",
  cycle "....#..#.#.......##........#..#",
  cycle "........#.#....#.##..#.......#.",
  cycle ".....#.......#.#...#.#.........",
  cycle "........#...#....#.#....###..#.",
  cycle "......#..#.##..##..#...#.#.....",
  cycle ".#.#.....#.....#....#...#...#..",
  cycle "...#..#...#..#......#..#.#.....",
  cycle "...##...#...........#..#......#",
  cycle "..#...#####..#.#.##....##......",
  cycle "...........#......#.#..#.......",
  cycle "..#....##..#.##.......#.#.#..#.",
  cycle "..#..#........#...#.......#...."
  ]

-- https://adventofcode.com/2020/day/4/input
day4 :: [Char]
day4 =
  "ecl:#eef340 eyr:2023 hcl:#c0946f pid:244684338 iyr:2020 cid:57 byr:1969 hgt:152cm "
  ++ "\n"
  ++ "pid:303807545 cid:213 ecl:gry hcl:#fffffd "
  ++ "eyr:2038 byr:1951 "
  ++ "hgt:171cm iyr:2011 "
  ++ "\n"
  ++ "hcl:#c0946f byr:1933 eyr:2025 pid:517067213 hgt:173cm "
  ++ "ecl:hzl "
  ++ "iyr:2018 "
  ++ "\n"
  ++ "pid:5253256652 byr:2009 hgt:152cm iyr:1989 eyr:1968 hcl:64cb63 ecl:hzl "
  ++ "\n"
  ++ "iyr:2013 "
  ++ "pid:862607211 eyr:2020 "
  ++ "hgt:174cm "
  ++ "byr:1990 "
  ++ "ecl:blu hcl:#888785 "
  ++ "\n"
  ++ "ecl:grn byr:1955 "
  ++ "pid:608098408 eyr:2027 iyr:2020 hcl:#b6652a cid:264 "
  ++ "hgt:181cm "
  ++ "\n"
  ++ "byr:1998 ecl:hzl eyr:2021 "
  ++ "hcl:#866857 hgt:189cm iyr:2030 "
  ++ "pid:013735467 "
  ++ "\n"
  ++ "pid:075417314 hcl:#b6652a byr:1957 "
  ++ "iyr:2011 "
  ++ "hgt:154cm "
  ++ "eyr:2025 "
  ++ "ecl:amb "
  ++ "\n"
  ++ "iyr:1993 hgt:74cm eyr:1960 "
  ++ "byr:2029 "
  ++ "hcl:293244 ecl:#3cb5e5 pid:4861232363 "
  ++ "\n"
  ++ "hgt:153cm hcl:#6b5442 pid:065240897 byr:1932 "
  ++ "cid:196 ecl:blu eyr:2028 iyr:2019 "
  ++ "\n"
  ++ "eyr:2024 ecl:amb "
  ++ "hcl:#866857 byr:1922 pid:496904942 hgt:164cm iyr:2020 "
  ++ "\n"
  ++ "pid:847705161 byr:1951 cid:124 iyr:1991 "
  ++ "eyr:2028 ecl:dne "
  ++ "hcl:6b2d28 hgt:172cm "
  ++ "\n"
  ++ "byr:2007 iyr:2029 ecl:hzl eyr:2026 hgt:168in "
  ++ "hcl:z "
  ++ "pid:63151612 "
  ++ "\n"
  ++ "iyr:2027 hgt:172in "
  ++ "cid:174 byr:2014 hcl:z eyr:1921 "
  ++ "ecl:grt pid:#cebdc2 "
  ++ "\n"
  ++ "ecl:amb hcl:#d09c0f "
  ++ "iyr:2015 hgt:156cm eyr:2026 byr:1962 "
  ++ "pid:086120872 "
  ++ "\n"
  ++ "cid:125 "
  ++ "pid:837849996 "
  ++ "byr:1958 ecl:brn hgt:166cm hcl:#ceb3a1 eyr:2028 iyr:2012 "
  ++ "\n"
  ++ "ecl:gry hgt:180cm "
  ++ "pid:939059935 eyr:2023 byr:1977 hcl:#b6652a "
  ++ "\n"
  ++ "hgt:190in byr:2029 eyr:1984 "
  ++ "ecl:gry hcl:z pid:055092916 iyr:2010 "
  ++ "\n"
  ++ "hgt:63in ecl:blu byr:1940 iyr:2012 eyr:2029 hcl:#7d3b0c "
  ++ "pid:163033394 "
  ++ "\n"
  ++ "eyr:2040 pid:181cm "
  ++ "iyr:1928 hgt:76cm hcl:d8aafb byr:1949 cid:275 ecl:xry "
  ++ "\n"
  ++ "hcl:#cfa07d ecl:oth byr:1948 eyr:2021 "
  ++ "pid:719690182 hgt:179cm iyr:2020 "
  ++ "\n"
  ++ "byr:1939 cid:266 "
  ++ "eyr:2026 iyr:2017 hcl:#f116d2 "
  ++ "ecl:hzl pid:522421825 "
  ++ "hgt:68in "
  ++ "\n"
  ++ "hcl:z hgt:61in "
  ++ "cid:115 pid:180cm iyr:2030 byr:2014 eyr:2032 ecl:hzl "
  ++ "\n"
  ++ "ecl:xry "
  ++ "eyr:2028 pid:191cm iyr:2015 hgt:150cm byr:2029 "
  ++ "\n"
  ++ "eyr:2027 "
  ++ "hcl:#a97842 pid:997937480 hgt:61in iyr:2019 "
  ++ "byr:1921 "
  ++ "ecl:grn "
  ++ "\n"
  ++ "hgt:163cm "
  ++ "pid:912318455 iyr:2016 byr:1988 ecl:brn hcl:#a97842 cid:221 eyr:2029 "
  ++ "\n"
  ++ "cid:333 hcl:#c0946f "
  ++ "hgt:163cm iyr:2018 eyr:2027 ecl:oth "
  ++ "\n"
  ++ "cid:70 hcl:#c0946f "
  ++ "pid:961507902 byr:1949 ecl:grn iyr:2017 eyr:2029 hgt:69in "
  ++ "\n"
  ++ "hgt:169cm ecl:amb "
  ++ "iyr:2013 pid:496169901 "
  ++ "byr:1943 eyr:2028 hcl:#ceb3a1 "
  ++ "cid:249 "
  ++ "\n"
  ++ "ecl:blu cid:343 "
  ++ "iyr:1998 hgt:154in hcl:#efcc98 byr:1972 "
  ++ "\n"
  ++ "pid:508213120 iyr:2012 eyr:2025 hcl:z hgt:70cm byr:1976 "
  ++ "ecl:brn "
  ++ "\n"
  ++ "iyr:1924 "
  ++ "eyr:2005 "
  ++ "hcl:z "
  ++ "hgt:167 pid:154cm "
  ++ "byr:2007 "
  ++ "\n"
  ++ "pid:761333244 hgt:180cm iyr:2017 hcl:#18171d eyr:2021 "
  ++ "byr:1983 "
  ++ "cid:67 ecl:oth "
  ++ "\n"
  ++ "eyr:1993 "
  ++ "byr:2003 "
  ++ "hcl:#602927 "
  ++ "ecl:grt "
  ++ "cid:84 hgt:178 "
  ++ "pid:1847086637 iyr:2026 "
  ++ "\n"
  ++ "hcl:#866857 hgt:162cm pid:483774485 iyr:2010 "
  ++ "byr:1946 eyr:2028 ecl:gry "
  ++ "\n"
  ++ "pid:726639691 eyr:2028 "
  ++ "hgt:171cm hcl:#ff65a6 "
  ++ "iyr:2011 byr:1989 "
  ++ "\n"
  ++ "hcl:z iyr:2026 ecl:xry "
  ++ "eyr:2037 byr:2005 pid:#f09a0f "
  ++ "hgt:68 cid:156 "
  ++ "\n"
  ++ "hgt:71in ecl:blu eyr:2026 hcl:#18171d "
  ++ "byr:1981 iyr:2017 "
  ++ "pid:698636544 "
  ++ "\n"
  ++ "eyr:2021 "
  ++ "byr:1957 ecl:brn pid:365378126 cid:93 iyr:2019 hcl:#18171d hgt:179cm "
  ++ "\n"
  ++ "byr:1996 iyr:2014 hgt:64cm "
  ++ "eyr:2034 "
  ++ "hcl:z "
  ++ "\n"
  ++ "pid:629486472 cid:140 "
  ++ "hgt:192cm eyr:2020 hcl:#b6652a iyr:1988 byr:2021 ecl:brn "
  ++ "\n"
  ++ "byr:1955 iyr:2015 eyr:2030 "
  ++ "ecl:gry hcl:z pid:6550198754 "
  ++ "hgt:158cm cid:305 "
  ++ "\n"
  ++ "ecl:gry hcl:#a97842 "
  ++ "hgt:176cm eyr:2022 pid:810146585 iyr:2020 "
  ++ "\n"
  ++ "byr:2027 hcl:#cfa07d "
  ++ "iyr:2011 ecl:#f07598 "
  ++ "cid:293 "
  ++ "hgt:150cm pid:#fa948d eyr:2029 "
  ++ "\n"
  ++ "eyr:2028 iyr:2013 hgt:69in ecl:gry pid:317170371 "
  ++ "cid:147 hcl:#bfe1f1 "
  ++ "\n"
  ++ "byr:1976 "
  ++ "pid:059341891 hgt:174cm "
  ++ "ecl:oth "
  ++ "eyr:2029 iyr:2017 hcl:#733820 "
  ++ "\n"
  ++ "iyr:2018 hcl:#ceb3a1 hgt:188cm cid:308 "
  ++ "pid:792826885 byr:1948 ecl:blu eyr:2028 "
  ++ "\n"
  ++ "iyr:2017 cid:94 hcl:#95c7dc "
  ++ "pid:231757803 eyr:2022 "
  ++ "byr:1992 hgt:153cm ecl:amb "
  ++ "\n"
  ++ "eyr:2027 "
  ++ "iyr:2011 hgt:186cm "
  ++ "ecl:brn pid:996347346 hcl:#866857 "
  ++ "byr:1960 "
  ++ "\n"
  ++ "eyr:2025 byr:2001 "
  ++ "ecl:blu pid:755715478 iyr:2019 hgt:61in "
  ++ "\n"
  ++ "ecl:gry "
  ++ "eyr:2038 "
  ++ "hgt:81 hcl:z iyr:2028 "
  ++ "cid:214 byr:1965 "
  ++ "\n"
  ++ "pid:412744447 byr:1979 hcl:#cfa07d ecl:blu "
  ++ "eyr:2029 cid:157 "
  ++ "hgt:180in iyr:1948 "
  ++ "\n"
  ++ "hgt:170cm "
  ++ "pid:623557081 byr:1924 eyr:2024 hcl:98d623 iyr:2012 ecl:amb "
  ++ "\n"
  ++ "cid:311 ecl:grn "
  ++ "iyr:2011 byr:1982 "
  ++ "eyr:2002 hcl:#ef318a "
  ++ "pid:0548169957 "
  ++ "hgt:87 "
  ++ "\n"
  ++ "eyr:2030 hcl:#733820 iyr:2016 pid:558470391 "
  ++ "byr:1936 ecl:oth hgt:185cm "
  ++ "\n"
  ++ "iyr:2019 "
  ++ "ecl:amb byr:1949 "
  ++ "pid:376468392 "
  ++ "hgt:178cm "
  ++ "\n"
  ++ "pid:019195245 "
  ++ "ecl:grn hgt:171cm "
  ++ "byr:1978 iyr:2011 eyr:2022 hcl:#733820 "
  ++ "cid:134 "
  ++ "\n"
  ++ "hcl:#623a2f hgt:192cm eyr:2026 byr:1977 "
  ++ "ecl:grn cid:308 "
  ++ "\n"
  ++ "ecl:hzl pid:715816358 hgt:69in iyr:2014 hcl:#623a2f "
  ++ "byr:1996 "
  ++ "eyr:2027 "
  ++ "\n"
  ++ "iyr:1947 "
  ++ "ecl:#39a697 "
  ++ "hgt:183cm byr:2029 "
  ++ "eyr:2022 pid:7951883913 "
  ++ "hcl:z "
  ++ "\n"
  ++ "ecl:gry byr:1950 "
  ++ "hcl:#18171d hgt:168cm iyr:2020 pid:677187333 eyr:2027 "
  ++ "\n"
  ++ "byr:1969 ecl:blu hcl:#18171d iyr:2011 "
  ++ "hgt:162cm "
  ++ "pid:701349891 "
  ++ "\n"
  ++ "cid:269 byr:1966 "
  ++ "iyr:2011 "
  ++ "pid:905940527 eyr:2023 hgt:190cm "
  ++ "ecl:brn hcl:#ceb3a1 "
  ++ "\n"
  ++ "eyr:2027 pid:454627395 ecl:brn "
  ++ "hcl:#ceb3a1 cid:302 hgt:184cm "
  ++ "byr:1959 "
  ++ "iyr:2015 "
  ++ "\n"
  ++ "iyr:2011 "
  ++ "eyr:2028 "
  ++ "hgt:166cm "
  ++ "hcl:#733820 byr:1938 ecl:blu pid:857984986 "
  ++ "\n"
  ++ "hcl:#c0946f ecl:brn pid:226877822 "
  ++ "hgt:182cm byr:1998 "
  ++ "cid:160 "
  ++ "\n"
  ++ "hgt:186in pid:26499164 byr:2017 "
  ++ "hcl:z "
  ++ "iyr:1998 eyr:2026 "
  ++ "cid:331 ecl:#236556 "
  ++ "\n"
  ++ "pid:328866543 "
  ++ "hgt:165cm eyr:2039 iyr:1987 ecl:amb byr:2018 hcl:z "
  ++ "\n"
  ++ "iyr:2016 eyr:2036 hcl:#888785 byr:1976 pid:160402352 hgt:76cm ecl:blu "
  ++ "\n"
  ++ "ecl:blu "
  ++ "hcl:#fffffd eyr:2025 hgt:66in pid:979788527 "
  ++ "byr:1957 iyr:2013 "
  ++ "\n"
  ++ "ecl:grn pid:279357265 iyr:2019 eyr:2021 byr:1953 "
  ++ "hgt:177cm hcl:#c0946f "
  ++ "\n"
  ++ "ecl:oth hcl:z eyr:2025 byr:1949 hgt:189cm iyr:2020 pid:901383503 "
  ++ "\n"
  ++ "byr:2019 hcl:#733820 "
  ++ "pid:31022828 eyr:1929 "
  ++ "hgt:75cm iyr:2012 ecl:grn "
  ++ "\n"
  ++ "pid:080462937 "
  ++ "ecl:blu hcl:#866857 "
  ++ "cid:102 "
  ++ "iyr:2013 eyr:2025 byr:1975 hgt:64in "
  ++ "\n"
  ++ "iyr:2016 "
  ++ "eyr:2028 "
  ++ "cid:125 "
  ++ "byr:1979 hcl:#866857 "
  ++ "ecl:brn hgt:173cm pid:814947616 "
  ++ "\n"
  ++ "hcl:z byr:2020 pid:#c3b54b hgt:174in eyr:2038 "
  ++ "iyr:2016 "
  ++ "ecl:gmt "
  ++ "\n"
  ++ "cid:132 "
  ++ "iyr:1958 "
  ++ "pid:61543452 hcl:z "
  ++ "ecl:zzz eyr:2039 byr:2006 "
  ++ "\n"
  ++ "cid:55 eyr:2022 byr:1954 iyr:2015 "
  ++ "hgt:188cm hcl:#a97842 pid:49143631 ecl:amb "
  ++ "\n"
  ++ "hgt:152cm "
  ++ "byr:1982 "
  ++ "iyr:2013 ecl:blu "
  ++ "hcl:#341e13 "
  ++ "eyr:2026 pid:440841976 "
  ++ "\n"
  ++ "iyr:2019 ecl:blu pid:553456616 hcl:#733820 hgt:160cm byr:1932 eyr:2030 "
  ++ "\n"
  ++ "byr:1980 hgt:169cm hcl:#7d3b0c cid:312 iyr:2010 "
  ++ "eyr:2026 pid:028550304 ecl:grn "
  ++ "\n"
  ++ "ecl:amb eyr:2021 iyr:2014 hgt:71in pid:986053283 byr:1981 "
  ++ "\n"
  ++ "ecl:oth "
  ++ "eyr:2023 hcl:#888785 "
  ++ "byr:1949 "
  ++ "iyr:2016 pid:699325656 "
  ++ "\n"
  ++ "hgt:63cm cid:297 eyr:2020 pid:990390922 "
  ++ "hcl:#602927 ecl:lzr "
  ++ "iyr:2012 byr:2016 "
  ++ "\n"
  ++ "hcl:9ea2fa eyr:2023 pid:088680493 "
  ++ "byr:1998 iyr:2017 ecl:utc hgt:170cm cid:175 "
  ++ "\n"
  ++ "cid:316 iyr:2016 eyr:2026 hcl:#79ff1d hgt:65in "
  ++ "byr:1997 pid:215466710 ecl:oth "
  ++ "\n"
  ++ "cid:213 byr:1983 hcl:#888785 iyr:2016 pid:767747981 eyr:2025 "
  ++ "ecl:hzl hgt:168cm "
  ++ "\n"
  ++ "eyr:2030 byr:1972 "
  ++ "cid:282 "
  ++ "ecl:gry hgt:178cm "
  ++ "hcl:#a97842 "
  ++ "iyr:2018 "
  ++ "\n"
  ++ "hcl:#6b5442 ecl:amb "
  ++ "eyr:2028 cid:104 hgt:159cm pid:446429120 iyr:2012 "
  ++ "byr:1938 "
  ++ "\n"
  ++ "byr:1940 hgt:178cm ecl:oth "
  ++ "hcl:#ceb3a1 "
  ++ "pid:845683663 iyr:2015 eyr:2024 "
  ++ "\n"
  ++ "byr:1940 pid:496262233 "
  ++ "hgt:184cm hcl:#b6652a "
  ++ "ecl:grn cid:152 iyr:2012 eyr:2029 "
  ++ "\n"
  ++ "hgt:185cm pid:455744229 byr:1954 eyr:2022 ecl:gry hcl:#6b5442 iyr:2012 "
  ++ "\n"
  ++ "hgt:182cm byr:1966 eyr:2028 ecl:#a5b7fc "
  ++ "iyr:2029 "
  ++ "\n"
  ++ "pid:343591896 "
  ++ "cid:58 "
  ++ "ecl:hzl "
  ++ "eyr:2022 hgt:180in byr:2021 "
  ++ "hcl:#6b5442 "
  ++ "\n"
  ++ "ecl:utc hcl:#b6652a "
  ++ "pid:635147657 byr:2020 "
  ++ "eyr:2022 hgt:157cm iyr:2018 "
  ++ "\n"
  ++ "ecl:grt cid:312 iyr:1959 pid:154262836 "
  ++ "hgt:171cm "
  ++ "hcl:#fffffd "
  ++ "eyr:2024 "
  ++ "byr:1982 "
  ++ "\n"
  ++ "hcl:#7a12b4 pid:223424149 ecl:hzl hgt:175cm "
  ++ "byr:1930 iyr:2010 eyr:2028 "
  ++ "\n"
  ++ "hcl:#c0946f pid:633476454 eyr:2026 iyr:2011 "
  ++ "byr:1934 "
  ++ "hgt:186cm "
  ++ "cid:289 ecl:gry "
  ++ "\n"
  ++ "hcl:#fffffd pid:376300524 hgt:155cm byr:1964 iyr:2017 eyr:2021 ecl:grn "
  ++ "\n"
  ++ "hcl:a5d4dc byr:2006 cid:165 ecl:#db800f iyr:2029 pid:0199789970 eyr:1961 hgt:61cm "
  ++ "\n"
  ++ "eyr:2027 hgt:170cm iyr:2010 "
  ++ "hcl:#c0946f "
  ++ "ecl:grn pid:415726530 "
  ++ "byr:1985 "
  ++ "\n"
  ++ "cid:197 byr:1957 hgt:192in hcl:#a97842 ecl:hzl eyr:2029 pid:958973455 iyr:2011 "
  ++ "\n"
  ++ "iyr:2015 pid:933689314 hgt:162cm ecl:amb "
  ++ "cid:122 eyr:2021 "
  ++ "hcl:#6b5442 byr:1973 "
  ++ "\n"
  ++ "eyr:2026 hgt:172cm "
  ++ "iyr:2012 "
  ++ "ecl:brn hcl:#733820 pid:004474632 "
  ++ "byr:2000 "
  ++ "\n"
  ++ "hgt:191cm eyr:2030 byr:1999 pid:9155071477 iyr:2026 hcl:#602927 cid:315 "
  ++ "ecl:grn "
  ++ "\n"
  ++ "iyr:2010 pid:182884251 hcl:#18171d hgt:154cm "
  ++ "eyr:2020 "
  ++ "byr:1926 ecl:oth "
  ++ "\n"
  ++ "iyr:2019 eyr:1920 pid:132839546 "
  ++ "cid:283 hgt:188in hcl:#efcc98 byr:2027 "
  ++ "\n"
  ++ "iyr:2011 hgt:177cm "
  ++ "cid:117 byr:1976 "
  ++ "ecl:gry "
  ++ "hcl:#623a2f eyr:2030 pid:134592046 "
  ++ "\n"
  ++ "byr:1968 hgt:146 "
  ++ "iyr:2013 hcl:eefdc4 eyr:2028 "
  ++ "ecl:xry pid:722120008 "
  ++ "\n"
  ++ "iyr:2016 byr:1941 hgt:67cm cid:51 hcl:#b6652a ecl:hzl eyr:2034 pid:994005715 "
  ++ "\n"
  ++ "hcl:#cfa07d ecl:oth "
  ++ "hgt:182cm eyr:2021 pid:612583941 "
  ++ "byr:1983 "
  ++ "iyr:2019 "
  ++ "\n"
  ++ "byr:1922 "
  ++ "hcl:#602927 hgt:161cm ecl:gry eyr:2020 pid:190170808 iyr:2013 "
  ++ "\n"
  ++ "hgt:63cm cid:136 "
  ++ "iyr:1999 "
  ++ "pid:8235748647 hcl:z "
  ++ "byr:2022 eyr:1933 "
  ++ "ecl:#304383 "
  ++ "\n"
  ++ "cid:273 ecl:blu hcl:z "
  ++ "iyr:2011 byr:2007 "
  ++ "eyr:2020 "
  ++ "pid:942473857 hgt:178in "
  ++ "\n"
  ++ "ecl:grt byr:2029 hgt:187in eyr:2030 cid:160 "
  ++ "hcl:#efcc98 pid:#39f22b "
  ++ "iyr:1966 "
  ++ "\n"
  ++ "byr:1978 ecl:oth iyr:2011 hgt:164cm eyr:2027 hcl:#cfa07d "
  ++ "\n"
  ++ "hgt:75cm hcl:#1e8137 byr:1986 ecl:blu eyr:2022 pid:796688423 "
  ++ "iyr:2012 "
  ++ "\n"
  ++ "eyr:2026 "
  ++ "ecl:#3013af hcl:z pid:#e8597f hgt:123 iyr:2025 byr:1942 "
  ++ "\n"
  ++ "hcl:z hgt:177in "
  ++ "iyr:1993 pid:#4c9348 byr:2008 eyr:1989 "
  ++ "\n"
  ++ "pid:123524366 byr:1935 "
  ++ "hgt:156cm hcl:#7d3b0c "
  ++ "iyr:2020 ecl:brn eyr:2020 "
  ++ "\n"
  ++ "hcl:z eyr:2038 pid:7663741757 ecl:gmt hgt:174 "
  ++ "byr:2008 iyr:1939 "
  ++ "cid:225 "
  ++ "\n"
  ++ "hcl:#888785 hgt:172cm "
  ++ "ecl:oth pid:500711541 eyr:2027 "
  ++ "byr:1931 iyr:2012 "
  ++ "\n"
  ++ "pid:575447108 ecl:amb byr:1943 "
  ++ "hcl:#888785 hgt:173cm eyr:2024 "
  ++ "\n"
  ++ "eyr:2021 iyr:2010 pid:178773264 hgt:157cm byr:1965 hcl:#bb7bcf ecl:amb "
  ++ "\n"
  ++ "iyr:2023 ecl:#35bd84 byr:2020 "
  ++ "hgt:72in "
  ++ "eyr:2037 "
  ++ "hcl:#6b5442 "
  ++ "pid:421311669 "
  ++ "\n"
  ++ "byr:1921 iyr:2011 "
  ++ "pid:146088688 "
  ++ "eyr:2023 hcl:#15ed24 hgt:183cm "
  ++ "ecl:brn "
  ++ "\n"
  ++ "hcl:#b6652a cid:243 "
  ++ "byr:1993 eyr:2024 "
  ++ "iyr:2014 hgt:172cm "
  ++ "pid:771275594 "
  ++ "\n"
  ++ "eyr:2024 "
  ++ "hcl:#cfa07d pid:858807920 cid:293 hgt:157cm ecl:hzl iyr:2013 byr:1984 "
  ++ "\n"
  ++ "ecl:blu hgt:193cm cid:73 hcl:#18171d eyr:2026 "
  ++ "iyr:2016 pid:124151812 byr:1945 "
  ++ "\n"
  ++ "ecl:amb iyr:2018 "
  ++ "pid:214555737 hgt:157cm "
  ++ "eyr:2028 "
  ++ "byr:1925 hcl:#866857 "
  ++ "\n"
  ++ "pid:5633250409 "
  ++ "hcl:4ef7d8 "
  ++ "byr:2004 iyr:1958 "
  ++ "hgt:96 "
  ++ "eyr:2038 ecl:xry cid:274 "
  ++ "\n"
  ++ "byr:1972 pid:401239851 hgt:184in hcl:z iyr:2017 "
  ++ "eyr:2030 ecl:#cb289a cid:140 "
  ++ "\n"
  ++ "hgt:175cm "
  ++ "byr:1926 hcl:#cfa07d eyr:2029 ecl:gry pid:325039730 iyr:2017 "
  ++ "\n"
  ++ "cid:101 hgt:166cm byr:1986 ecl:amb "
  ++ "hcl:#7d3b0c iyr:2013 "
  ++ "pid:413769688 eyr:2024 "
  ++ "\n"
  ++ "hgt:159cm cid:311 "
  ++ "byr:1993 eyr:2028 pid:188cm ecl:oth hcl:#602927 iyr:2013 "
  ++ "\n"
  ++ "pid:565831038 "
  ++ "ecl:amb "
  ++ "hgt:155cm hcl:#fffffd cid:335 iyr:2016 "
  ++ "eyr:2029 byr:1997 "
  ++ "\n"
  ++ "hgt:122 "
  ++ "byr:2022 "
  ++ "eyr:2028 ecl:blu iyr:2017 pid:269710626 hcl:#b6652a "
  ++ "\n"
  ++ "cid:196 "
  ++ "byr:1953 hcl:#6b5442 iyr:2010 "
  ++ "pid:216121215 hgt:188cm ecl:blu "
  ++ "\n"
  ++ "iyr:2011 hcl:98166c hgt:62cm "
  ++ "byr:2028 "
  ++ "eyr:2024 "
  ++ "pid:792478385 ecl:grn "
  ++ "\n"
  ++ "hcl:#efcc98 iyr:2012 pid:020039675 eyr:2021 byr:1974 hgt:156cm "
  ++ "ecl:hzl "
  ++ "\n"
  ++ "cid:123 hcl:#7d3b0c "
  ++ "byr:2026 eyr:2004 iyr:2012 ecl:oth pid:349203133 hgt:160cm "
  ++ "\n"
  ++ "pid:085461475 "
  ++ "byr:1962 iyr:2020 hcl:#623a2f "
  ++ "eyr:2024 "
  ++ "cid:80 ecl:brn "
  ++ "hgt:154cm "
  ++ "\n"
  ++ "ecl:oth hgt:156cm iyr:2016 "
  ++ "hcl:#6b5442 "
  ++ "byr:1973 "
  ++ "eyr:2021 pid:539898580 "
  ++ "\n"
  ++ "iyr:2026 hgt:191cm "
  ++ "hcl:z "
  ++ "byr:1930 pid:#abc2f0 ecl:blu cid:242 eyr:2024 "
  ++ "\n"
  ++ "cid:167 "
  ++ "hgt:179cm "
  ++ "iyr:2017 eyr:2021 pid:756797571 byr:1949 ecl:brn hcl:#a97842 "
  ++ "\n"
  ++ "byr:1975 eyr:2030 "
  ++ "ecl:oth hgt:169in pid:4031206183 hcl:#733820 iyr:2017 cid:244 "
  ++ "\n"
  ++ "ecl:#54cfeb hgt:152cm "
  ++ "iyr:2026 hcl:36b4b9 "
  ++ "byr:2030 "
  ++ "pid:#fa1cb9 eyr:1964 "
  ++ "\n"
  ++ "byr:1974 cid:99 hcl:9e3296 "
  ++ "eyr:2032 "
  ++ "pid:686747414 "
  ++ "iyr:1995 "
  ++ "ecl:amb "
  ++ "\n"
  ++ "iyr:2030 ecl:oth hcl:z byr:1979 "
  ++ "pid:114661006 hgt:191cm eyr:1941 "
  ++ "\n"
  ++ "hcl:#341e13 iyr:2014 byr:1953 "
  ++ "pid:188326193 ecl:gry hgt:189cm cid:283 "
  ++ "eyr:2030 "
  ++ "\n"
  ++ "byr:1975 "
  ++ "pid:092061576 hgt:73in eyr:2023 "
  ++ "ecl:brn cid:227 hcl:#5e9d91 "
  ++ "iyr:2011 "
  ++ "\n"
  ++ "hcl:#7d3b0c hgt:167cm cid:141 "
  ++ "eyr:1957 byr:2012 ecl:gmt iyr:2019 pid:#1b7c8a "
  ++ "\n"
  ++ "hgt:168cm hcl:#c0946f pid:599500784 byr:1930 eyr:2023 ecl:hzl cid:113 "
  ++ "iyr:2013 "
  ++ "\n"
  ++ "eyr:2030 hcl:#b4cb4f "
  ++ "hgt:68in "
  ++ "ecl:brn byr:1923 pid:699162086 "
  ++ "\n"
  ++ "iyr:2013 "
  ++ "ecl:dne hcl:z eyr:1971 "
  ++ "pid:#580add byr:2020 "
  ++ "hgt:190cm "
  ++ "\n"
  ++ "hcl:#ceb3a1 "
  ++ "byr:1976 eyr:2020 "
  ++ "cid:162 iyr:2016 "
  ++ "hgt:168cm "
  ++ "ecl:hzl "
  ++ "\n"
  ++ "pid:050478613 hgt:59cm "
  ++ "iyr:2017 "
  ++ "ecl:grn byr:2030 hcl:#cfa07d eyr:2025 "
  ++ "\n"
  ++ "pid:352943968 eyr:2025 byr:1980 iyr:2014 ecl:gry hcl:#c0946f "
  ++ "hgt:193cm "
  ++ "\n"
  ++ "pid:328621931 cid:310 hgt:170cm "
  ++ "hcl:#733820 byr:1955 "
  ++ "iyr:2016 "
  ++ "eyr:2028 ecl:hzl "
  ++ "\n"
  ++ "hcl:#866857 "
  ++ "pid:095858739 byr:1956 "
  ++ "iyr:2018 hgt:193cm "
  ++ "ecl:hzl "
  ++ "eyr:2029 "
  ++ "\n"
  ++ "pid:70973661 eyr:2039 ecl:gry "
  ++ "iyr:2016 "
  ++ "cid:291 "
  ++ "hcl:#623a2f hgt:97 "
  ++ "\n"
  ++ "hcl:4d51a8 "
  ++ "eyr:1978 "
  ++ "ecl:gmt "
  ++ "byr:2029 iyr:2022 "
  ++ "pid:34507041 hgt:61cm "
  ++ "\n"
  ++ "byr:1989 ecl:brn pid:769582914 "
  ++ "eyr:2026 cid:218 "
  ++ "iyr:2020 hcl:#866857 hgt:184cm "
  ++ "\n"
  ++ "ecl:brn "
  ++ "iyr:1998 cid:227 "
  ++ "hgt:162in "
  ++ "byr:2026 "
  ++ "hcl:#602927 eyr:2027 pid:236998728 "
  ++ "\n"
  ++ "ecl:gry byr:1984 hgt:157 cid:295 "
  ++ "eyr:2020 "
  ++ "iyr:2018 hcl:#733820 "
  ++ "pid:037871534 "
  ++ "\n"
  ++ "hgt:166cm hcl:#c0946f pid:412146401 "
  ++ "iyr:2011 "
  ++ "eyr:2022 "
  ++ "byr:1938 "
  ++ "ecl:brn "
  ++ "\n"
  ++ "ecl:brn cid:95 byr:1981 eyr:2030 hcl:#efcc98 pid:777041035 hgt:152cm iyr:2011 "
  ++ "\n"
  ++ "eyr:2024 hgt:89 pid:3761913749 iyr:1939 byr:1967 hcl:a222f6 cid:165 ecl:#7fe574 "
  ++ "\n"
  ++ "cid:339 hgt:156cm "
  ++ "ecl:brn iyr:2013 byr:1951 hcl:#efcc98 eyr:2026 "
  ++ "pid:863566946 "
  ++ "\n"
  ++ "ecl:brn hcl:#6b5442 eyr:2023 "
  ++ "pid:787129723 byr:1949 iyr:2015 "
  ++ "\n"
  ++ "pid:#7f615a "
  ++ "cid:202 hcl:#6b5442 eyr:2028 "
  ++ "ecl:#a5419c "
  ++ "hgt:75cm "
  ++ "iyr:2011 "
  ++ "byr:2001 "
  ++ "\n"
  ++ "pid:864001133 "
  ++ "cid:236 "
  ++ "byr:1943 hcl:#733820 ecl:dne eyr:2025 hgt:171cm iyr:1989 "
  ++ "\n"
  ++ "pid:193073684 ecl:grn byr:1962 iyr:2014 "
  ++ "hcl:#cfa07d hgt:189cm "
  ++ "cid:321 eyr:2029 "
  ++ "\n"
  ++ "byr:1959 "
  ++ "hcl:#b6652a "
  ++ "eyr:2026 "
  ++ "hgt:159cm pid:815014918 iyr:2011 ecl:amb "
  ++ "\n"
  ++ "iyr:2017 hgt:182cm "
  ++ "hcl:#a97842 eyr:2023 ecl:grn pid:656177536 "
  ++ "byr:1973 "
  ++ "\n"
  ++ "eyr:1923 ecl:grn "
  ++ "cid:138 iyr:2020 "
  ++ "hgt:164cm byr:1958 hcl:#c0946f pid:783366277 "
  ++ "\n"
  ++ "iyr:1932 hgt:172 ecl:blu "
  ++ "hcl:#733820 byr:1962 pid:554221464 "
  ++ "\n"
  ++ "cid:169 pid:922622614 "
  ++ "byr:1942 hcl:#ceb3a1 hgt:169cm eyr:2024 "
  ++ "ecl:gry iyr:2017 "
  ++ "\n"
  ++ "cid:219 ecl:grn "
  ++ "hgt:156cm byr:1998 eyr:2021 "
  ++ "iyr:2017 hcl:#ceb3a1 pid:450186263 "
  ++ "\n"
  ++ "ecl:amb hgt:179cm pid:768428582 iyr:2010 eyr:2023 byr:1952 hcl:#fffffd "
  ++ "\n"
  ++ "eyr:2024 "
  ++ "hgt:193cm "
  ++ "iyr:2017 pid:469033795 byr:1979 hcl:#18171d cid:67 ecl:amb "
  ++ "\n"
  ++ "iyr:2016 byr:1937 pid:798267514 hgt:155cm hcl:#866857 eyr:2026 "
  ++ "ecl:oth "
  ++ "\n"
  ++ "hgt:172cm hcl:#866857 iyr:2018 pid:662186551 "
  ++ "byr:1996 "
  ++ "eyr:2025 ecl:amb "
  ++ "\n"
  ++ "pid:2854521962 "
  ++ "iyr:2021 "
  ++ "ecl:zzz "
  ++ "hcl:12f1ba eyr:2037 hgt:159cm "
  ++ "byr:1937 "
  ++ "\n"
  ++ "ecl:oth pid:488050418 byr:1927 hcl:#a97842 hgt:153cm iyr:2013 eyr:2024 "
  ++ "\n"
  ++ "pid:119536312 ecl:#2036ad "
  ++ "hcl:543178 iyr:2020 "
  ++ "byr:2013 "
  ++ "hgt:177cm "
  ++ "eyr:2022 "
  ++ "\n"
  ++ "pid:788908662 hcl:#602927 eyr:2029 "
  ++ "ecl:oth byr:1930 "
  ++ "iyr:2020 "
  ++ "hgt:179cm "
  ++ "\n"
  ++ "byr:1972 "
  ++ "pid:053386972 iyr:2014 ecl:grn hgt:65in hcl:#cfa07d "
  ++ "\n"
  ++ "pid:9828921035 ecl:blu "
  ++ "hcl:z hgt:152in "
  ++ "eyr:1949 byr:2010 "
  ++ "\n"
  ++ "cid:157 pid:097910554 byr:1999 "
  ++ "hgt:159cm hcl:#6b5442 ecl:blu eyr:2024 "
  ++ "iyr:2010 "
  ++ "\n"
  ++ "hcl:#a97842 "
  ++ "eyr:2040 ecl:#f8ad77 "
  ++ "hgt:173cm "
  ++ "byr:2019 iyr:2010 "
  ++ "pid:#d16a6e "
  ++ "\n"
  ++ "ecl:dne hgt:191cm iyr:2020 hcl:#b6652a "
  ++ "eyr:2021 pid:571971509 byr:1983 "
  ++ "\n"
  ++ "hcl:#18171d iyr:2016 pid:159074622 "
  ++ "eyr:2027 hgt:163cm byr:1954 "
  ++ "cid:257 "
  ++ "\n"
  ++ "pid:243560302 cid:58 "
  ++ "hcl:53a4cf byr:2012 "
  ++ "ecl:#fdbfb8 eyr:1920 hgt:179 iyr:2026 "
  ++ "\n"
  ++ "pid:040606106 eyr:2030 hgt:188cm "
  ++ "byr:1969 "
  ++ "iyr:2012 hcl:#ceb3a1 ecl:amb "
  ++ "\n"
  ++ "eyr:2022 "
  ++ "hgt:175cm hcl:#b6652a byr:1967 pid:269969031 "
  ++ "iyr:2018 "
  ++ "\n"
  ++ "hcl:#18171d cid:278 byr:1931 "
  ++ "pid:134809791 "
  ++ "eyr:2035 ecl:#44e6cd iyr:1993 "
  ++ "\n"
  ++ "hgt:177in "
  ++ "ecl:utc cid:289 "
  ++ "iyr:1923 "
  ++ "hcl:13a67a pid:3045345984 byr:2030 eyr:1944 "
  ++ "\n"
  ++ "pid:839901650 eyr:2030 "
  ++ "ecl:grn "
  ++ "byr:2015 iyr:2017 hgt:168 hcl:131f4e "
  ++ "\n"
  ++ "iyr:2015 pid:529736732 ecl:brn hgt:176cm "
  ++ "eyr:2026 byr:1952 hcl:#6b5442 "
  ++ "\n"
  ++ "hcl:#c0946f "
  ++ "cid:323 pid:303966428 iyr:2019 "
  ++ "eyr:2027 hgt:170cm "
  ++ "byr:2001 "
  ++ "ecl:brn "
  ++ "\n"
  ++ "pid:193678728 hgt:72in eyr:2027 iyr:2015 byr:1951 ecl:gry hcl:#18171d "
  ++ "\n"
  ++ "eyr:2026 cid:283 "
  ++ "iyr:1938 pid:687430885 "
  ++ "hgt:186cm "
  ++ "byr:1949 ecl:#521638 hcl:d13b2f "
  ++ "\n"
  ++ "eyr:2024 hcl:#ceb3a1 iyr:2013 ecl:brn "
  ++ "hgt:168cm pid:792088241 "
  ++ "\n"
  ++ "hcl:#888785 ecl:amb "
  ++ "byr:2009 iyr:2015 "
  ++ "hgt:151cm "
  ++ "eyr:2020 pid:223927808 "
  ++ "\n"
  ++ "byr:1926 "
  ++ "pid:717704850 "
  ++ "hcl:#623a2f eyr:2022 hgt:64in iyr:2018 ecl:gry "
  ++ "\n"
  ++ "eyr:2023 byr:1954 "
  ++ "hgt:169cm "
  ++ "ecl:hzl "
  ++ "iyr:2010 pid:116868997 hcl:#18171d "
  ++ "\n"
  ++ "ecl:hzl byr:1965 hcl:#a97842 iyr:2011 pid:506354451 hgt:172cm eyr:2029 "
  ++ "\n"
  ++ "eyr:2022 pid:994565705 "
  ++ "iyr:2013 ecl:brn hcl:#623a2f "
  ++ "byr:1979 "
  ++ "\n"
  ++ "iyr:2011 "
  ++ "byr:1931 hgt:183cm hcl:#284f26 cid:306 "
  ++ "ecl:amb eyr:2021 "
  ++ "pid:977533079 "
  ++ "\n"
  ++ "eyr:2027 "
  ++ "iyr:2011 ecl:gry "
  ++ "byr:1993 "
  ++ "pid:272334781 hgt:161cm hcl:#9a35b6 "
  ++ "\n"
  ++ "eyr:2026 "
  ++ "hcl:#602927 ecl:blu "
  ++ "pid:212300161 byr:1946 "
  ++ "cid:193 iyr:2020 hgt:157cm "
  ++ "\n"
  ++ "pid:538594567 byr:1976 eyr:2027 hcl:#efcc98 iyr:2011 hgt:154cm ecl:oth "
  ++ "\n"
  ++ "byr:1949 "
  ++ "hcl:z ecl:#ce67aa "
  ++ "eyr:1942 pid:7978941589 iyr:2025 hgt:161in "
  ++ "\n"
  ++ "hcl:#c0946f "
  ++ "cid:55 "
  ++ "byr:1963 ecl:blu hgt:161cm "
  ++ "pid:547120453 iyr:2015 eyr:2021 "
  ++ "\n"
  ++ "hgt:173cm eyr:2022 "
  ++ "iyr:2016 byr:2001 "
  ++ "ecl:hzl pid:239803460 "
  ++ "\n"
  ++ "hcl:#b6652a ecl:oth eyr:2021 hgt:167cm pid:401266644 iyr:1969 byr:1974 "
  ++ "\n"
  ++ "eyr:2030 pid:581963885 "
  ++ "hcl:#64cb23 "
  ++ "ecl:blu "
  ++ "byr:1928 hgt:181cm iyr:2018 "
  ++ "\n"
  ++ "pid:186338247 "
  ++ "ecl:hzl hgt:193cm hcl:#ceb3a1 "
  ++ "eyr:2022 iyr:2010 "
  ++ "\n"
  ++ "iyr:2015 ecl:gry hgt:159cm eyr:2027 hcl:#ceb3a1 "
  ++ "byr:1925 pid:715902111 cid:149 "
  ++ "\n"
  ++ "iyr:2018 hcl:#623a2f eyr:2020 hgt:162cm ecl:grn cid:135 "
  ++ "byr:1922 "
  ++ "pid:373216777 "
  ++ "\n"
  ++ "eyr:2020 pid:749899012 hcl:#888785 ecl:brn "
  ++ "iyr:2010 cid:225 hgt:172cm "
  ++ "byr:1972 "
  ++ "\n"
  ++ "iyr:2020 hgt:178cm ecl:grn hcl:#18171d pid:613792489 cid:240 "
  ++ "eyr:2028 "
  ++ "byr:1972 "
  ++ "\n"
  ++ "iyr:2015 byr:1938 eyr:2026 "
  ++ "cid:113 ecl:grn "
  ++ "pid:846231640 hgt:161cm "
  ++ "hcl:#b6652a "
  ++ "\n"
  ++ "ecl:gry "
  ++ "hcl:#ceb3a1 "
  ++ "byr:1956 cid:338 pid:936012518 "
  ++ "hgt:62in "
  ++ "eyr:2029 iyr:2016 "
  ++ "\n"
  ++ "pid:730866353 ecl:brn byr:1986 "
  ++ "iyr:2014 "
  ++ "hgt:190cm "
  ++ "eyr:2021 hcl:#a97842 cid:126 "
  ++ "\n"
  ++ "eyr:2021 "
  ++ "cid:180 pid:958310635 ecl:brn iyr:2015 hgt:189cm hcl:#efcc98 "
  ++ "\n"
  ++ "hgt:188cm ecl:hzl pid:179001863 iyr:2016 eyr:2029 hcl:#341e13 byr:1932 "
  ++ "\n"
  ++ "cid:77 eyr:2027 hcl:#623a2f iyr:2016 ecl:brn hgt:170cm "
  ++ "byr:1947 "
  ++ "\n"
  ++ "hgt:66in pid:617518313 iyr:2013 byr:1977 hcl:#b6652a ecl:brn eyr:2025 "
  ++ "\n"
  ++ "pid:787861420 "
  ++ "iyr:2014 hcl:#623a2f hgt:61in "
  ++ "ecl:oth cid:78 "
  ++ "eyr:2022 byr:1975 "
  ++ "\n"
  ++ "ecl:hzl "
  ++ "iyr:2017 eyr:2028 hcl:#602927 "
  ++ "byr:1958 pid:985208714 "
  ++ "hgt:160cm "
  ++ "\n"
  ++ "byr:2002 "
  ++ "iyr:2013 "
  ++ "hcl:#341e13 pid:188110633 ecl:gry hgt:169cm "
  ++ "eyr:2025 "
  ++ "\n"
  ++ "byr:1981 "
  ++ "eyr:2028 "
  ++ "hcl:#341e13 ecl:amb hgt:160cm cid:121 "
  ++ "iyr:2015 pid:963848397 "
  ++ "\n"
  ++ "iyr:2013 hcl:#866857 pid:#db8648 eyr:2021 ecl:gry "
  ++ "byr:1975 "
  ++ "hgt:153cm cid:114 "
  ++ "\n"
  ++ "hgt:109 "
  ++ "cid:287 hcl:#6b5442 "
  ++ "iyr:2028 byr:1926 eyr:2036 pid:2378208387 "
  ++ "ecl:#245a62 "
  ++ "\n"
  ++ "pid:857722366 "
  ++ "byr:1975 eyr:2027 "
  ++ "ecl:grn iyr:2019 hcl:#0afad1 "
  ++ "hgt:66in "
  ++ "\n"
  ++ "byr:1935 hcl:#cfa07d hgt:173cm ecl:brn eyr:2021 iyr:2019 "
  ++ "\n"
  ++ "cid:66 eyr:2024 hcl:#efcc98 byr:2002 iyr:2010 "
  ++ "hgt:176cm pid:697153153 ecl:amb "
  ++ "\n"
  ++ "iyr:2019 "
  ++ "hcl:#cfa07d ecl:blu "
  ++ "pid:695914972 "
  ++ "eyr:2024 "
  ++ "hgt:158cm "
  ++ "byr:1943 "
  ++ "\n"
  ++ "ecl:xry hgt:62in "
  ++ "pid:14733148 cid:148 "
  ++ "iyr:2016 byr:1925 hcl:#6b5442 "
  ++ "eyr:2028 "
  ++ "\n"
  ++ "iyr:2025 "
  ++ "cid:53 hgt:132 ecl:gmt hcl:159b19 "
  ++ "pid:156cm "
  ++ "byr:2025 eyr:2001 "
  ++ "\n"
  ++ "hcl:#623a2f ecl:oth byr:1974 iyr:2018 hgt:161cm eyr:2029 pid:6826285172 "
  ++ "\n"
  ++ "ecl:gry "
  ++ "byr:1956 hcl:#7d3b0c hgt:170cm iyr:2020 "
  ++ "\n"
  ++ "eyr:2020 "
  ++ "pid:#946a88 hgt:186cm hcl:#733820 byr:1946 ecl:#016645 iyr:2015 "
  ++ "\n"
  ++ "hgt:181cm hcl:#888785 iyr:2013 pid:634152817 "
  ++ "byr:1982 cid:245 ecl:grn eyr:2021 "
  ++ "\n"
  ++ "ecl:brn "
  ++ "pid:737531770 iyr:2010 "
  ++ "eyr:2020 "
  ++ "byr:1929 hgt:189cm hcl:#c0946f "
  ++ "\n"
  ++ "cid:158 iyr:2019 hcl:#341e13 eyr:2027 ecl:amb "
  ++ "byr:1986 pid:834976623 "
  ++ "\n"
  ++ "pid:976934668 cid:61 eyr:2020 iyr:2020 "
  ++ "hgt:76in byr:1927 ecl:amb "
  ++ "hcl:#e05ee3 "
  ++ "\n"
  ++ "pid:526042518 iyr:2019 eyr:2027 hcl:#623a2f byr:1976 ecl:amb "
  ++ "\n"
  ++ "pid:279367290 hcl:#a97842 hgt:158cm "
  ++ "eyr:2027 "
  ++ "byr:1959 "
  ++ "iyr:2020 "
  ++ "\n"
  ++ "ecl:xry byr:2028 "
  ++ "pid:357216861 hcl:#a97842 eyr:2024 hgt:66cm "
  ++ "iyr:2012 "
  ++ "\n"
  ++ "hgt:188in "
  ++ "ecl:lzr cid:64 eyr:1958 byr:2014 hcl:z pid:285207570 iyr:2026 "
  ++ "\n"
  ++ "eyr:1973 iyr:2017 ecl:oth cid:282 pid:695814158 "
  ++ "hcl:z "
  ++ "\n"
  ++ "iyr:2010 pid:661168409 "
  ++ "hcl:#53c696 "
  ++ "hgt:186cm ecl:amb "
  ++ "byr:1960 "
  ++ "eyr:2029 "
  ++ "\n"
  ++ "eyr:1982 hgt:169cm "
  ++ "iyr:2002 byr:2025 hcl:327f93 pid:831648100 "
  ++ "\n"
  ++ "byr:1967 ecl:oth "
  ++ "eyr:2021 "
  ++ "hcl:#602927 iyr:2014 "
  ++ "pid:274974402 hgt:183cm "

-- https://adventofcode.com/2020/day/5/input
day5 :: [[Char]]
day5 = [
  "BBFFFFBRLL",
  "BFBBBBFLLL",
  "FBBBFBFLLR",
  "BFBBBFBLRR",
  "FBBFFBFLRR",
  "FFBFFBFRRR",
  "FBFBBBBLLL",
  "BFFBFFFRLR",
  "BFFBFFFRLL",
  "BFBBFBFRRL",
  "FBFFFFBLRR",
  "BBFFBFBLLR",
  "BBFBFFBRLR",
  "BFBFBFFRLR",
  "FBFFBFBRRL",
  "BFFFFBFRLR",
  "FFBBBBBRLR",
  "BFFFBFBLLR",
  "FBBBBBBRLL",
  "FBBFBFBRRL",
  "FBFBFBFLRL",
  "FFBFBBFRLL",
  "BFBFFBFRRL",
  "FBBBBFBLLR",
  "FFBBFBFLRR",
  "BFBFBBFRRL",
  "FBFFFBBLLR",
  "FBBFFBFRRR",
  "FFFBFBBLRL",
  "FBBBBFBRRL",
  "BFBFBBFLRL",
  "BBFFBFBLRL",
  "BBFFFFFLRL",
  "BBFBBFFRLR",
  "FFBFBBBRRL",
  "FBFFFFFRLR",
  "FFFBBFFLRR",
  "BFFFBFFLRL",
  "BFBFFFBRLR",
  "BBFBFBFLRR",
  "FBBBBFFRRR",
  "FBFFFBFRLL",
  "FBFFFFFLRL",
  "BFFFFFBLRR",
  "FFFBBBFLRL",
  "FBFBBBFRLL",
  "FFBFBBBLRR",
  "FBFFFFFRLL",
  "FFBFFFFLRR",
  "BBFBFBBRRL",
  "FFFBFBBLRR",
  "BFFBFBBRRR",
  "FFBBFFBLRL",
  "BFBBBFFRRL",
  "FFBBFFFRLL",
  "FBFFBFBLRR",
  "FBBFBBBRLL",
  "FBBFFFBRLR",
  "FBFFBFFLRL",
  "FFFBFBBRRR",
  "BBFFFBBRLL",
  "BFBFBBBRRR",
  "BBFFBFFLRR",
  "FFBFFBBLLL",
  "FFFBBBFLLL",
  "FBBFBBBRRL",
  "BBFBFBFLLR",
  "BFBFFFFRLL",
  "BFFBBFFRLR",
  "BFBBFFFRLR",
  "BBFFFBBRRL",
  "BFBFFBFLRR",
  "FBBFFFBRRR",
  "FFBFFFBLLR",
  "BFFFFBBRLR",
  "BBFFBBFRRR",
  "BFBBBFBLLL",
  "FFBBBFBLRR",
  "FFBFFBFLRL",
  "FFFBBBBRLR",
  "BFBFFFBRRR",
  "BBFFBFFRRL",
  "BFFBBFFLRR",
  "FFFBFBBLLL",
  "FBBBBBFLLL",
  "BFBFFBFLLR",
  "BBFBFBBRRR",
  "FBFBBFBRLR",
  "FBBFFBFRLL",
  "BFBBFFBLRL",
  "BFBBFFFRRL",
  "FBFFBBFRLR",
  "FBBFBBBLRL",
  "FBFFBFFLLR",
  "FFFBBFBRLR",
  "FBBFFBBLLR",
  "FFFBBBFRRL",
  "BBFBBFFRRL",
  "FFBBBFFRLR",
  "BFFFFBBRRR",
  "FBBBBBFRLR",
  "BBFBFFBRRR",
  "BFFBFBFRLL",
  "BFBFFFFLRL",
  "FBBBFFBRRR",
  "FBBFBBFLLL",
  "BFFFFBFLLR",
  "BBFFFFBLLR",
  "FFBFBFFLRR",
  "FBBBFBBRRL",
  "BFFFBBFLRL",
  "FBFFFBFLLL",
  "BBFFFFFRLR",
  "FFFBBBFRLL",
  "FFBBBFBRLL",
  "BFFBFFBRLR",
  "BBFFBBFLRR",
  "FBBBBFBLRR",
  "BFFBFFBLRL",
  "FFBFFFFRLR",
  "FBBBBBBRRL",
  "FBBFFFBLLR",
  "FBFFFFFLLR",
  "FBBFBBFRLL",
  "BFFBFFFRRL",
  "FBBFFBFLLR",
  "FFBBFFBLLR",
  "FBBBFBBRLR",
  "BFFBBBFLLR",
  "FFBBFBFRRR",
  "FFFBFBBRLL",
  "FBFFFBBRRL",
  "BFFFBBBLRL",
  "BBFFBBBLLL",
  "FBFBBFBLRL",
  "BBFFFBBLRL",
  "FBBBBFBLRL",
  "BBFFBBFLLL",
  "FBFBBFFRRR",
  "BFBBFBFLRL",
  "FBFFBBFLRL",
  "BFBFBFBLRL",
  "BFBBFBBLRL",
  "FFFBBFBLLR",
  "FFFBFBFRRL",
  "FBBBFBFRRR",
  "FBBBFFBLLR",
  "BFFFBBFLRR",
  "BFFFBFFLRR",
  "BBFFFBFRRR",
  "FFFBBFBLRR",
  "BFFFFFFRRL",
  "FBBFFFFLLR",
  "BBFBFFFRRR",
  "FBBBFFFRRR",
  "BFBFFFFRLR",
  "BFBBFFFRLL",
  "FFBBBFBLLR",
  "BFFBBBFLLL",
  "FBFFFBFRRL",
  "FFBFFFFRRR",
  "FFBBBBFRRL",
  "FFBFFFBLRR",
  "FBBBBFBRRR",
  "BBFFBFFLLL",
  "FBBBBFFLLR",
  "FBFFBBFLLL",
  "BFBBBFBRLL",
  "FBBFFFFRLL",
  "FBBFBFBRLR",
  "BFFBBFBLRR",
  "FFBFBFBRLL",
  "BBFFBBFRLL",
  "FFBFBBFLLL",
  "BFFBBFBLLL",
  "FBFFFFFRRL",
  "FBFFBFBLRL",
  "FFBFFBFRLL",
  "BFBBBBBRRR",
  "FBFFBFBLLR",
  "FFBFFFBLRL",
  "FFBFFBBLRR",
  "BFBFFBBRRL",
  "FFBFBFBRLR",
  "FFBFBFFLRL",
  "BBFBBFFLRL",
  "FFBFFBFLLR",
  "FFFBBBBLRR",
  "BFFBFBBRRL",
  "FFBBFBBRLR",
  "BFFBFBFLLR",
  "FFBBFBBRRR",
  "BBFFBBBRRR",
  "BFFFBFFLLR",
  "BFBBBFFRRR",
  "BFBBFBBLLL",
  "FFBBFBBLLL",
  "FBFBFBBLLR",
  "FFBBBFFLRR",
  "FFBFFBFLLL",
  "BFFBFFBLLL",
  "FBFBBBFLLL",
  "BBFBFBBRLL",
  "FBFFBFBRRR",
  "BBFBFFFRLL",
  "BBFBFFFRRL",
  "BFFFFBBLRL",
  "BFBFFFFRRL",
  "FFBFFBFRRL",
  "FBBFBBFLRR",
  "BFFFBBBRRL",
  "FFBFFFBLLL",
  "FFBBBBBLLR",
  "BFBFBFBLRR",
  "FFBBFFFLRL",
  "FBBBBBBRRR",
  "FBFBFFBLLL",
  "FBFFBBBRRL",
  "BFFBFFFRRR",
  "BFBBFFBRRR",
  "BBFBBFFLRR",
  "BBFBFFBRRL",
  "BBFFBBBLLR",
  "FBFFFFBRLR",
  "BBFFFFFRRR",
  "BFBFFBFRLL",
  "FBBBFBBRLL",
  "FFBBFBFRLR",
  "BFBFBFBRLR",
  "FFBBBFFLLR",
  "FBFFFFFLRR",
  "FBFFBFFRLR",
  "BFBBBBFRLR",
  "FBFBBFBLRR",
  "FBBBBFBRLR",
  "BFBFFBBRLL",
  "FFBBFBFLLL",
  "FFBFBFBLLL",
  "FFBFBFBRRR",
  "BFBFBFBLLR",
  "BFBBBBBRRL",
  "FBBBBBFRRR",
  "BBFBFFBLRL",
  "FBBBBFFRLR",
  "BBFFFFFLLR",
  "FBBFFBBLRR",
  "FBFFFFBRRR",
  "BFFFBBFRLL",
  "FBFBFFBLRR",
  "BFBBFBBRRL",
  "BFFFFBFRRL",
  "FFBFFFBRRR",
  "FFBFBBBRLL",
  "BBFFFFFRRL",
  "BFBBFBBLRR",
  "FBBFBFFRRR",
  "BFFBFFBLRR",
  "BFFFBBFLLL",
  "BFBFFFBRLL",
  "BBFBBFBLLL",
  "BFBFBFFRLL",
  "FFFBBBFLLR",
  "FBBBFFFRLL",
  "BFBFFBFRRR",
  "FFBBFFFRRR",
  "BBFFFBBRRR",
  "BFFFFBFLRR",
  "BFFFFFFRRR",
  "BBFFBFBLRR",
  "FBBBBBBRLR",
  "BBFFBFFLLR",
  "BFFBBBBLLR",
  "FBBBBFFLRR",
  "FFBBBFFRRL",
  "FBFBBFFLLL",
  "BBFFBBBRLL",
  "FBFFBFBLLL",
  "BFFBFBBRLR",
  "FBBFFFBLRL",
  "FFBFBFFLLL",
  "FBBBFBFLRL",
  "FFFBBFFLRL",
  "FBBBBFFRRL",
  "BFBFBBBRRL",
  "BFFFBBBLLR",
  "FBFBFBBLRL",
  "BFBBFFBLRR",
  "BBFBFFFLRR",
  "FBFFBBBLRR",
  "FFBFFBBRLL",
  "BFBFFFFLRR",
  "BBFBFFBRLL",
  "FBBBFBFRLL",
  "BFBBBFFLRL",
  "BFFBBBBRRL",
  "BFFBBBBLRR",
  "FFBBFBFRLL",
  "FBFBFFFLLL",
  "BFFFFFFLRL",
  "BFBBBFBRRL",
  "FFFBBBBRRL",
  "FBFFFFBLRL",
  "FBBBBBFRLL",
  "FFBBFFFLRR",
  "FBBFBBFLLR",
  "BFBFBBFRLL",
  "BFBFFFBLLR",
  "BFBFBBBLRL",
  "FFBFFFBRLR",
  "BFFBBBFRRL",
  "BFBBBBBLRR",
  "FBFFFBBRLL",
  "FBFBFBBRRR",
  "FFFBFBBRLR",
  "BFBFBBFLRR",
  "FBFBFBBLLL",
  "FFBBFFBRLL",
  "FBBFBFBRRR",
  "BFFFFFBRRL",
  "FBBBFBBLLL",
  "BBFBFFBLLL",
  "FFBFBFBLLR",
  "FFBBBFBRRL",
  "FBFBFBFLLL",
  "BFBFBBFRLR",
  "FBBFBFFRLR",
  "FFBFFBBRRR",
  "BFFBFFBLLR",
  "FBFFFBFLRL",
  "FBFFFFFRRR",
  "FFBBFBBRLL",
  "FBFFBFFRLL",
  "BBFFFBFLRR",
  "BFBBBFFRLL",
  "FBFBBBBLRL",
  "FFFBBBBLLL",
  "BBFFFFBRRR",
  "FBBBBBBLLL",
  "FFBFBFBLRL",
  "BFFBFFBRRL",
  "FFBBFBBLRR",
  "BFBFFBFLLL",
  "FBBBBFFRLL",
  "FFFBBFBRLL",
  "BFFFBFBLLL",
  "BBFBBFBRLL",
  "FFBFFBBLLR",
  "BBFFFFBLRL",
  "BBFBBBFLLR",
  "BFBBFFBRLR",
  "BFFFFBFLLL",
  "BBFFBBFLLR",
  "BBFBFFFLLL",
  "FBBBFFFLLL",
  "BFBBFBBRRR",
  "FFBBBBFRRR",
  "BBFBBFBRLR",
  "BFBBFFFLLL",
  "FFBFFFFLLR",
  "FBFBFFBLLR",
  "FBBBFFFLLR",
  "BFBBBBFLRR",
  "FBBFBFFLRR",
  "FBFBBFBRRL",
  "BFFBFFFLLL",
  "FBBFBBFRRR",
  "FBFFBBBRLL",
  "FBFBBBBRRL",
  "FFFBBBFRRR",
  "FBFBFFBRRL",
  "FFBBFBFLLR",
  "BFBFBBBLLL",
  "FFBFFBFLRR",
  "BFBFBBFRRR",
  "FBBBBBBLLR",
  "BFFBFBFRRR",
  "FBFFFBFRRR",
  "BBFFFBFLLL",
  "FBBFFBBRRR",
  "BFBFBFBLLL",
  "BBFFBBBLRR",
  "FFBFFFFRRL",
  "FFBFBBFLLR",
  "FFFBBBFRLR",
  "FFFBBFBLLL",
  "FBFBBFFLLR",
  "FBFBFBFRRR",
  "BFBBFFFRRR",
  "BFBFFBBRRR",
  "FBFBBFFRLR",
  "FFBFBBFRLR",
  "BFFBBFFRRR",
  "BFBFBBFLLL",
  "FFFBBFBRRR",
  "BFFBBFFRLL",
  "FFBFFFFLLL",
  "FFBBBFFRLL",
  "BBFBBFBRRL",
  "BBFBFFBLRR",
  "FFBFFBBRRL",
  "FBBFBBFRRL",
  "BBFFFFBLLL",
  "BFBBFFBRLL",
  "FFBFBFFRLL",
  "BFBBFFFLLR",
  "FBBFFBBRLR",
  "BFBFFBFLRL",
  "BFBBFBBRLL",
  "FFBBBFFRRR",
  "FBFBBFFLRL",
  "BFBBFBFRLR",
  "FFBBFFBRRL",
  "FBFFBBFLLR",
  "FBFBBBFLLR",
  "BFFFBBFRRL",
  "FFFBBBBRRR",
  "BFFFBBBRRR",
  "FBBFBFFRRL",
  "BBFFFFBRRL",
  "BBFFFBBLLR",
  "BFBBFBFRRR",
  "BFFFFBBRRL",
  "FBBFBBFLRL",
  "FBBFBBBRLR",
  "FBFBFFFLRL",
  "BFFBFBFRRL",
  "FBFBBBFLRL",
  "BFBBBBBLRL",
  "FFBFFFBRLL",
  "BFFBBFBLRL",
  "FBFBFBFRLR",
  "BFFBBFFLLL",
  "BFBBBBBLLL",
  "FFBFBBFLRR",
  "BBFBFBFRRR",
  "FFFBBFFRRR",
  "BFFFBFFRRL",
  "BBFBFFFRLR",
  "BBFBFFFLLR",
  "BFFFFFFLRR",
  "FBBFBBFRLR",
  "FFBBBFFLRL",
  "FBFBFFFRLR",
  "FFBFBFFLLR",
  "BFBFFBBLRR",
  "BFFBBBFRLL",
  "FBBFFBBLRL",
  "BFBBFFBLLR",
  "FBFFBFFRRR",
  "BFFBBBFRLR",
  "BFBFBBBLLR",
  "BFFFFBBLLR",
  "BFFBFBFLLL",
  "BFBBFFFLRR",
  "BFFFFFFRLR",
  "BBFFBFFLRL",
  "BFBFBFFLLR",
  "BBFFFFFLRR",
  "FFBFBBFLRL",
  "FBFBFFBRRR",
  "FFBBBBFRLR",
  "BBFBBBFLLL",
  "BFFFFBBRLL",
  "FBFBBBFRRR",
  "BFFBFBFRLR",
  "FFFBBFFLLR",
  "FBBFBFFLLL",
  "FFFBFBBRRL",
  "BFBBBBFLRL",
  "FFBFFBFRLR",
  "FBFFBFBRLL",
  "FBBBFBFLRR",
  "BBFFBBFRLR",
  "FBBBBBFLRR",
  "FBFFFFBRLL",
  "BFFBFFFLRL",
  "BFBFFFFLLL",
  "BBFFBFBRLR",
  "BFBBBFBLLR",
  "FBBFFBBRLL",
  "FBFBFBFRLL",
  "BBFBFBBLRL",
  "BFFBFBBLRL",
  "FFBBBFBLRL",
  "FFBBFBBLLR",
  "BFFBFBFLRR",
  "FBBBFBFRRL",
  "BFFBBBFLRL",
  "BFBBFBBLLR",
  "BFBFFFBLRR",
  "FBFFBBBLRL",
  "FBFFBFFLLL",
  "BBFFBFFRRR",
  "BFFBFBBRLL",
  "BFFFBFFRRR",
  "BFFBBBBLRL",
  "FBBFFBFRLR",
  "FBFFBFFRRL",
  "FBFFFBBRRR",
  "BBFFFFBLRR",
  "FBBBFFFLRL",
  "FFBBBBFLRL",
  "BFFFBFFLLL",
  "BFBBBFFRLR",
  "FFBFBBFRRL",
  "FBFBBBFLRR",
  "FFFBBBFLRR",
  "BFFFBFBRLR",
  "FBBBFBBLRR",
  "FFBBBFFLLL",
  "FFFBFBFRLR",
  "FBBFFFBRLL",
  "FBBFBBBRRR",
  "BFBFFFFRRR",
  "BFBBBFBLRL",
  "BBFFFBBLRR",
  "BFBFFBBLLR",
  "BFBBFBFLLR",
  "BBFFBBBRRL",
  "FBBFFFFLLL",
  "BBFBFFBLLR",
  "BFBBBBBLLR",
  "FFBFFBBRLR",
  "FFBBBFBRLR",
  "FBFBBBBLRR",
  "FBBFBFBLRR",
  "BBFFBBFRRL",
  "BBFFBFFRLL",
  "FBBBFFBLRR",
  "BFFFBFBRRR",
  "BFFBFFFLRR",
  "FFBBFBBRRL",
  "FBFBBBBRRR",
  "BBFBBFFLLL",
  "FBFFBBBLLL",
  "FBBFFFBLRR",
  "BFBBFFBLLL",
  "FBFFFFBLLL",
  "BFBFBBBLRR",
  "BFFFFFBLLR",
  "BFFBBFBLLR",
  "FBFFBFFLRR",
  "FBBFBBBLLR",
  "FFBBBBBRLL",
  "BFFFBBFLLR",
  "FFBFBBBLRL",
  "FBFBBBFRRL",
  "BFFFFBFLRL",
  "FBBFFBFRRL",
  "FFFBBFBRRL",
  "FFBBBBBRRL",
  "BBFFFBFLRL",
  "FBBFFFFLRR",
  "BFBBBBFRLL",
  "BFFBFFBRRR",
  "FFBBFFFLLL",
  "BFFBBBBRLR",
  "BFBBFFFLRL",
  "BFBFFBBLRL",
  "BBFFFBFRLR",
  "FBFBFBFLLR",
  "BBFFFBBRLR",
  "FBBBFFBLLL",
  "FBBBFFFRRL",
  "BFFFFFFRLL",
  "FFBFBFFRRR",
  "BFFFBFBRLL",
  "FBBBFFFRLR",
  "BFBBBFFLLL",
  "FBBFBFBLLL",
  "FFBBFFFLLR",
  "BFFFBBFRLR",
  "BBFFFBFRLL",
  "FBBBBBBLRL",
  "BFBFBFBRLL",
  "FBBBBBFRRL",
  "BBFBFFFLRL",
  "BFBBBBFRRR",
  "BFBFFFBLRL",
  "FFBFBFBRRL",
  "BFBFBFBRRR",
  "FFBFFFFRLL",
  "BBFBBFFLLR",
  "FFBFBBBLLR",
  "BBFBBBFLRL",
  "FBFBBBBRLL",
  "FFBBBBFLRR",
  "FFBFFBBLRL",
  "BBFFBBBRLR",
  "BFBBFBFLLL",
  "FBFBFFBLRL",
  "BFFFFFBLLL",
  "FBFFBFBRLR",
  "FBBBBFBLLL",
  "FBBFFBFLRL",
  "BFFFBBBLLL",
  "FBBFBFFLRL",
  "FFFBBFFLLL",
  "BFBFBFFRRL",
  "BFFFFFBRLL",
  "BFFBFBFLRL",
  "BFFBBFBRRL",
  "BFBBFFBRRL",
  "FFFBBBBLRL",
  "FFBFBBBRRR",
  "FBFBBFBRRR",
  "FFBBBBFLLL",
  "BBFFBFBRLL",
  "FBFFBBFRLL",
  "FBFBFFFLLR",
  "BFFFFBFRRR",
  "FFBBBFBLLL",
  "FBBBFFBLRL",
  "BFFFBBBLRR",
  "FFFBFBFRRR",
  "FBFFFBBRLR",
  "FBFBFFFLRR",
  "FBBBFBBLRL",
  "FBBBFBBRRR",
  "BBFBFBBLRR",
  "BFFBBBFLRR",
  "BFFFFFFLLR",
  "BBFBFBFRLL",
  "BFFBFBBLLL",
  "FFBBBBFLLR",
  "BFFFFBBLRR",
  "FBFBFFFRLL",
  "BFBFFFBRRL",
  "BBFBFBBLLR",
  "FFFBFBBLLR",
  "FBFFBBBRRR",
  "FBBFBFFLLR",
  "FBFBFBBRLL",
  "BFFBBBBRRR",
  "BFFBFFFLLR",
  "BFBFBFBRRL",
  "BFBBBBFLLR",
  "FBBFBFBLLR",
  "BFFFFFBRLR",
  "FBFFFBBLLL",
  "BBFFFFFLLL",
  "FFBBBBBLRR",
  "FFBBFBBLRL",
  "BBFFFFFRLL",
  "FBFBBFFRRL",
  "FFBFBBBLLL",
  "BFFFBBBRLR",
  "FBBBFBFRLR",
  "FBBFFFFLRL",
  "FFBBFFBRRR",
  "FBFBFBFLRR",
  "BFBFBBBRLL",
  "BFBFBFFLLL",
  "FBFFBBBLLR",
  "BFFFBFBLRL",
  "FBBFFFFRRR",
  "FBBBBBFLLR",
  "BFFFFBBLLL",
  "FBBFBFBLRL",
  "BFFFBBFRRR",
  "BBFFBFBRRR",
  "BBFFBFBRRL",
  "FFFBBBBRLL",
  "BBFFBBBLRL",
  "BFBBFBBRLR",
  "BBFBBFBLLR",
  "BFBBFBFLRR",
  "FBFFFFBRRL",
  "BFFBFBBLRR",
  "BBFFBFBLLL",
  "FBBBFBBLLR",
  "FBFBBFBLLL",
  "BBFBFBFRLR",
  "BFFBBBBLLL",
  "BFFBFFBRLL",
  "BBFBBFBLRR",
  "FBFFBBFLRR",
  "BBFFBFFRLR",
  "BFFFBFFRLR",
  "FBFBBFFRLL",
  "BFFBBBFRRR",
  "FBBBFBFLLL",
  "BBFBBBFLRR",
  "FBBFFBFLLL",
  "BBFBBFBLRL",
  "FBFFFBBLRL",
  "FBFBBFBRLL",
  "BFBBBBFRRL",
  "BFFFBFFRLL",
  "BFBFBBBRLR",
  "FFBFFFFLRL",
  "FFBFFFBRRL",
  "FBFFBBFRRR",
  "BBFFFFBRLR",
  "BFFFBFBLRR",
  "BBFFBBFLRL",
  "FFBBFFFRRL",
  "FBFBFBBRLR",
  "FBBFBFFRLL",
  "FBBBFFBRLL",
  "FBBFBBBLLL",
  "FBBFFBBRRL",
  "BFBFBBFLLR",
  "FFBBFFBLRR",
  "FFBBBBBLLL",
  "BBFFFBFLLR",
  "FBFBBBBRLR",
  "BFBFBFFLRL",
  "FFBBBBBRRR",
  "BFBFFBFRLR",
  "FBBBBFBRLL",
  "BFBBBBBRLL",
  "BFBBBBBRLR",
  "FBBBBFFLLL",
  "FBBFFFBLLL",
  "BBFBFBFLLL",
  "BFFFFFBLRL",
  "FBBFBFBRLL",
  "BBFBFBBRLR",
  "BFFBFBBLLR",
  "FFBBFBFLRL",
  "FBFBBBFRLR",
  "FBBBFFBRLR",
  "FBFFFBFLRR",
  "BFBFBFFLRR",
  "BFFFFFBRRR",
  "BFFBBFBRLL",
  "FBFBFBFRRL",
  "BBFBBFFRRR",
  "FBBFBBBLRR",
  "FBFFBBBRLR",
  "BBFBFBBLLL",
  "FFBFBBFRRR",
  "FBFBBFBLLR",
  "BFBFBFFRRR",
  "BBFBBFBRRR",
  "FFBFBBBRLR",
  "FBFBFBBRRL",
  "BFBFFFBLLL",
  "FBFBFFBRLL",
  "FBFFFBFRLR",
  "FBFFFBBLRR",
  "FBBFFFFRLR",
  "BFBBFBFRLL",
  "FBFBFBBLRR",
  "FFBBBFBRRR",
  "FBBFFFFRRL",
  "FBFBBFFLRR",
  "FBBBFFBRRL",
  "FBFFFBFLLR",
  "FFBFBFFRLR",
  "FBBFFBBLLL",
  "FFFBBFFRLR",
  "BFFFFFFLLL",
  "FFFBBBBLLR",
  "FFBFBFFRRL",
  "BBFBBFFRLL",
  "FFFBBFFRLL",
  "BBFFFBFRRL",
  "FFBBFFBLLL",
  "FBFFBBFRRL",
  "BFBBBFBRLR",
  "BFBFFBBRLR",
  "FBFBFFFRRR",
  "BFBBBFFLLR",
  "FBFBFFFRRL",
  "BFFBBFFLLR",
  "FBFBBBBLLR",
  "FFBBFFBRLR",
  "FBFFFFFLLL",
  "BBFBFBFRRL",
  "FBBBBFFLRL",
  "BFBBBFBRRR",
  "BFFBBFFLRL",
  "BFFBBFFRRL",
  "BBFBFBFLRL",
  "FBBFFFBRRL",
  "BFFFBFBRRL",
  "FBFFFFBLLR",
  "FFBBFBFRRL",
  "BFFBBBBRLL",
  "BFBFFFFLLR",
  "FFBBFFFRLR",
  "BFBFFBBLLL",
  "BFFBBFBRRR",
  "BFFFBBBRLL",
  "FFFBBFBLRL",
  "FFBFBFBLRR",
  "FFFBBFFRRL",
  "FFBBBBBLRL",
  "BFBBBFFLRR",
  "FBBBBBFLRL",
  "FBBBFFFLRR",
  "BFFBBFBRLR",
  "BBFFFBBLLL",
  "FBBBBBBLRR",
  "FBFBFFBRLR",
  "FFBBBBFRLL"
  ]

-- https://adventofcode.com/2020/day/6/input
day6 =
  "xtpmjeuayzkflcdo"
  ++ "zdaeyxlpftkmojc"
  ++ "\n"
  ++ "ifnkhzalvprjtyus"
  ++ "lmihuzrytjns"
  ++ "uilmsotygbnhrzj"
  ++ "uwslqctjnirzxhy"
  ++ "\n"
  ++ "lhuydwqxaempbisrnfcjtvz"
  ++ "rvtcegbhljadfpxzsiuyqwnm"
  ++ "rzyvtefjdsplucmqbinahxw"
  ++ "\n"
  ++ "whlxgytuoaidpfrsbvmkjqez"
  ++ "iwfghlytovbpdemzanjq"
  ++ "mpejclwhqziatybogvdf"
  ++ "\n"
  ++ "qsmuehbvfiwlkx"
  ++ "gtmdsbrqfwhk"
  ++ "\n"
  ++ "lagwjpd"
  ++ "dpglwja"
  ++ "qgdawplj"
  ++ "\n"
  ++ "faqjpheg"
  ++ "acnfgtkzj"
  ++ "msjdfox"
  ++ "\n"
  ++ "gsqhdrcvyxbp"
  ++ "yhvgpsqxcbdr"
  ++ "drqvgxhyspcb"
  ++ "cgqrypdhbxvs"
  ++ "hbdxgyscjqprv"
  ++ "\n"
  ++ "bgahiyplewc"
  ++ "qaprike"
  ++ "aojpszixe"
  ++ "airpksoe"
  ++ "mpzaiek"
  ++ "\n"
  ++ "ihyudtfbjqnxop"
  ++ "poyiuqjdlhmtxb"
  ++ "\n"
  ++ "gw"
  ++ "bg"
  ++ "g"
  ++ "\n"
  ++ "zxjgytpsnol"
  ++ "tfuexgspvdkb"
  ++ "\n"
  ++ "zmisajphc"
  ++ "paifmh"
  ++ "ipnhdma"
  ++ "dbacphmi"
  ++ "omhpwailkyv"
  ++ "\n"
  ++ "ind"
  ++ "jd"
  ++ "olxtyd"
  ++ "daylkbtox"
  ++ "\n"
  ++ "hjmdrgevkztwfsx"
  ++ "gsm"
  ++ "gsapioqm"
  ++ "ngoaqms"
  ++ "omlqgys"
  ++ "\n"
  ++ "qfxwksiyluhvgnaotd"
  ++ "hqnrauzcdifeoglsyt"
  ++ "dgnfqsaytlihmou"
  ++ "\n"
  ++ "brmeuyxlagqsz"
  ++ "zfkiyxnloagjeqwh"
  ++ "\n"
  ++ "whqgiduclktrebyfp"
  ++ "kcirhydwebpfqgtul"
  ++ "tfclebygmdnuriqkwhp"
  ++ "ytfipklgubqwdrehc"
  ++ "\n"
  ++ "yubh"
  ++ "dhu"
  ++ "\n"
  ++ "sncvemkuwhi"
  ++ "wizhecnxlvbkms"
  ++ "ykvshenmicwu"
  ++ "\n"
  ++ "dlfbyscp"
  ++ "oruaxtg"
  ++ "rowqu"
  ++ "gze"
  ++ "i"
  ++ "\n"
  ++ "hgtejbrcxdolv"
  ++ "lbmhepjxsvdrqcgo"
  ++ "jelrbohcdxvngf"
  ++ "\n"
  ++ "wrqxeocjni"
  ++ "lnirqcoxjwk"
  ++ "\n"
  ++ "xmshq"
  ++ "mhqxs"
  ++ "shxqm"
  ++ "mxsqh"
  ++ "hmqsx"
  ++ "\n"
  ++ "rbwdsfcgute"
  ++ "oa"
  ++ "lqizp"
  ++ "kxvjyz"
  ++ "\n"
  ++ "gxikepca"
  ++ "cigaekx"
  ++ "xkgacei"
  ++ "kceigxa"
  ++ "ecxikag"
  ++ "\n"
  ++ "ltpzifo"
  ++ "ozitrslp"
  ++ "\n"
  ++ "tixaqjd"
  ++ "qtw"
  ++ "ctrlqfznmg"
  ++ "wqtbk"
  ++ "\n"
  ++ "uyi"
  ++ "nuiy"
  ++ "iyu"
  ++ "\n"
  ++ "nwid"
  ++ "zkmf"
  ++ "\n"
  ++ "oqerdmwk"
  ++ "dmorkew"
  ++ "meorkwd"
  ++ "\n"
  ++ "gjvkzlbrxiyotpfqedu"
  ++ "xtqfgluozkvimrydpjeb"
  ++ "rzbfjotiuqkpgxvldey"
  ++ "ixkptzqdouvbgrlyefj"
  ++ "pvxqydniuegjwbartfkolz"
  ++ "\n"
  ++ "rkhexctuiopsjlzw"
  ++ "thxscuzrdlpjekiwo"
  ++ "sjihrzuwkcoelxtp"
  ++ "rtjcusoipxewklhz"
  ++ "sokecrwuzpxltihj"
  ++ "\n"
  ++ "sdqlwfuo"
  ++ "uqsdlwfo"
  ++ "slqdufow"
  ++ "oafswqdlu"
  ++ "wfquosld"
  ++ "\n"
  ++ "qksticygoejwnvhf"
  ++ "lnkipymvstjqzgfcaorxw"
  ++ "fwqgcyovjteisdkn"
  ++ "\n"
  ++ "fjcywhvqdirxblzkaegpumnsto"
  ++ "qjigrmzsfexaholvnutcbywpdk"
  ++ "\n"
  ++ "qgbaphtxuf"
  ++ "khpug"
  ++ "ipuzshgky"
  ++ "pmgshu"
  ++ "\n"
  ++ "fjpvbdtlcugxizhwsrokmaqy"
  ++ "fgznwthadpvkxrsbqcyom"
  ++ "\n"
  ++ "oqet"
  ++ "toeq"
  ++ "\n"
  ++ "mrfhtwenxykibpsoj"
  ++ "qlucvsmroghwzpbtadx"
  ++ "\n"
  ++ "aspnfmxi"
  ++ "ivlgfmy"
  ++ "\n"
  ++ "mznti"
  ++ "tnzmi"
  ++ "itnmz"
  ++ "\n"
  ++ "hlmx"
  ++ "xhlmp"
  ++ "lmxh"
  ++ "lmxh"
  ++ "lxguhm"
  ++ "\n"
  ++ "fhmcgwtsj"
  ++ "jtomcfzwklh"
  ++ "wfybihtjcm"
  ++ "\n"
  ++ "pkwqvtgzmjsenudxifbc"
  ++ "gwdfhjicypnmltroeqavk"
  ++ "\n"
  ++ "euklmi"
  ++ "iumerlh"
  ++ "uimkle"
  ++ "iunzmelcv"
  ++ "\n"
  ++ "fkumqizsynacr"
  ++ "nqzxycskufaih"
  ++ "asfpckruyinqz"
  ++ "\n"
  ++ "ibpehrotv"
  ++ "pehovrntbi"
  ++ "voehitbpqr"
  ++ "\n"
  ++ "cvqsfartyxkw"
  ++ "snvwkazcfqritxy"
  ++ "frayckvwtqxus"
  ++ "\n"
  ++ "preot"
  ++ "ezj"
  ++ "eju"
  ++ "uezcd"
  ++ "\n"
  ++ "qvwmxcnhpzjyadkbisotu"
  ++ "hnoxjqyudkgapbiwcmtsz"
  ++ "qklozhpyvrcxwjsitudbnma"
  ++ "\n"
  ++ "gmspxjbwnray"
  ++ "wypmxsgjr"
  ++ "drlpsjgmxy"
  ++ "xykgesrjpvhm"
  ++ "xjmsypgro"
  ++ "\n"
  ++ "ncexy"
  ++ "nycex"
  ++ "xneyc"
  ++ "\n"
  ++ "ej"
  ++ "kre"
  ++ "lesxzt"
  ++ "gphfre"
  ++ "e"
  ++ "\n"
  ++ "oribjg"
  ++ "bu"
  ++ "kvq"
  ++ "\n"
  ++ "vnfpsmwc"
  ++ "\n"
  ++ "qd"
  ++ "qd"
  ++ "dq"
  ++ "dq"
  ++ "\n"
  ++ "rsc"
  ++ "rpaszc"
  ++ "ecrsom"
  ++ "\n"
  ++ "bofltugqahsjyzew"
  ++ "osahjqwtlzevb"
  ++ "ojxtvlnqhrswzeab"
  ++ "bajepotzqhvwsl"
  ++ "\n"
  ++ "elyhw"
  ++ "lwytrh"
  ++ "ljwyh"
  ++ "\n"
  ++ "cboxndurmi"
  ++ "hjzslvq"
  ++ "\n"
  ++ "wiozfcehptsxjrqmlbky"
  ++ "fzgilbuhktasdmvo"
  ++ "zileftmnhpcskbo"
  ++ "\n"
  ++ "qeabixvh"
  ++ "awgkoqejh"
  ++ "\n"
  ++ "ncrshioxklvumztdqfewpbg"
  ++ "vekofqmgclxzsdbuhwipnt"
  ++ "nlzxouwtmkfsgqcdbehipv"
  ++ "ibpwlqnmzfhkosuvtcxgd"
  ++ "wphavfyloszidgjbmxqtukcn"
  ++ "\n"
  ++ "zat"
  ++ "cilkbqxr"
  ++ "nzwsgy"
  ++ "\n"
  ++ "z"
  ++ "d"
  ++ "d"
  ++ "d"
  ++ "\n"
  ++ "v"
  ++ "m"
  ++ "v"
  ++ "v"
  ++ "\n"
  ++ "fjeayswno"
  ++ "jefwuxnoc"
  ++ "\n"
  ++ "iugjno"
  ++ "jugmenoi"
  ++ "ncuiogj"
  ++ "ojfguin"
  ++ "jiugno"
  ++ "\n"
  ++ "mcr"
  ++ "cmuq"
  ++ "cm"
  ++ "cm"
  ++ "\n"
  ++ "rvwgteoxlnqpu"
  ++ "onubqretvwxgpl"
  ++ "agitsumplxnzrkoeqvw"
  ++ "oleurpvnxcgtqdw"
  ++ "\n"
  ++ "ajedfrwstqn"
  ++ "pmnw"
  ++ "cwn"
  ++ "gcnbw"
  ++ "uvnw"
  ++ "\n"
  ++ "l"
  ++ "zqxij"
  ++ "prlu"
  ++ "ek"
  ++ "l"
  ++ "\n"
  ++ "rpht"
  ++ "whk"
  ++ "okhcbfw"
  ++ "whomk"
  ++ "\n"
  ++ "hlkyo"
  ++ "kp"
  ++ "\n"
  ++ "dnl"
  ++ "ldn"
  ++ "dnl"
  ++ "nld"
  ++ "\n"
  ++ "bgor"
  ++ "dlou"
  ++ "mdvn"
  ++ "cyzkw"
  ++ "vjentu"
  ++ "\n"
  ++ "trxvafpwesciqombhlkgjndy"
  ++ "oamdvntbsgcfphlkrwzyeqjx"
  ++ "kovjselaqpfnmyrxbzcthdguw"
  ++ "\n"
  ++ "van"
  ++ "ltexgv"
  ++ "dfcjoskzyriw"
  ++ "\n"
  ++ "jusk"
  ++ "a"
  ++ "lxg"
  ++ "hvnwf"
  ++ "exus"
  ++ "\n"
  ++ "fawkveqgsrbjzlncxyhot"
  ++ "rklfzsvbwhxetjcaoqg"
  ++ "rakjszvgtxbfhwqodlec"
  ++ "sxpzekgwjdocbqtrvlhaf"
  ++ "fzrlsavojxmcbktgeuhwq"
  ++ "\n"
  ++ "eitrvamwxfckzgqdoljyhnsb"
  ++ "yiptlazkxdwnmohujsecr"
  ++ "\n"
  ++ "xoyvn"
  ++ "noyx"
  ++ "fotnyax"
  ++ "noxy"
  ++ "noyqx"
  ++ "\n"
  ++ "nfvogds"
  ++ "fnsgvy"
  ++ "sqjvgfn"
  ++ "\n"
  ++ "mjcekdpwxr"
  ++ "xkuphcmrg"
  ++ "\n"
  ++ "by"
  ++ "by"
  ++ "bytda"
  ++ "yb"
  ++ "\n"
  ++ "mefouswzphqrdvn"
  ++ "cdbyjmintfpgxlk"
  ++ "\n"
  ++ "lemysjcrknvfpzwoxhqaig"
  ++ "yodnmfwpkjurscbtezqv"
  ++ "\n"
  ++ "zw"
  ++ "saqv"
  ++ "kbermi"
  ++ "lwvo"
  ++ "\n"
  ++ "oi"
  ++ "io"
  ++ "\n"
  ++ "zdyk"
  ++ "ckdy"
  ++ "jyu"
  ++ "\n"
  ++ "eldnugikcpxvwm"
  ++ "gcxdpukeln"
  ++ "ucnkdhxegljp"
  ++ "rdkegcnupxl"
  ++ "\n"
  ++ "uxokmrefyw"
  ++ "fyrwucohsnxem"
  ++ "rmbfeyuwxjoth"
  ++ "lquwdiyaropmexf"
  ++ "uweyxofmr"
  ++ "\n"
  ++ "jhoufbsc"
  ++ "juodbchs"
  ++ "bcuwljhos"
  ++ "sbujhcfoz"
  ++ "ubosjdhce"
  ++ "\n"
  ++ "nuyhefxwclzsobmjvrgt"
  ++ "uvyswnqfgxemobrclzjth"
  ++ "cydtgefhwnisjorumvlzbx"
  ++ "nbcghyjtsvkwzroefuxmla"
  ++ "leitjyscbuzrxmvowhgfnd"
  ++ "\n"
  ++ "c"
  ++ "sc"
  ++ "\n"
  ++ "fc"
  ++ "fc"
  ++ "cf"
  ++ "fc"
  ++ "cf"
  ++ "\n"
  ++ "iupatydhxkvmbjrl"
  ++ "hbptrxjliaymud"
  ++ "udxeyjrkbphamilt"
  ++ "yuspxdmtiajlqrbh"
  ++ "\n"
  ++ "hjgkstroxypi"
  ++ "melkwdhiqbypjxc"
  ++ "isxfgjyohpk"
  ++ "\n"
  ++ "jcshpztfgoynimedwxrqba"
  ++ "izjtbypodrxfwgcqahmsen"
  ++ "mqwgbpzhijdonfryxetcas"
  ++ "nfywrtdoejsxzaipghbmcq"
  ++ "mgrazowyxfecspntdhqjbi"
  ++ "\n"
  ++ "pzctfawmn"
  ++ "hzinstwv"
  ++ "zntipwh"
  ++ "wjvtzfubnm"
  ++ "zknyqrltgxow"
  ++ "\n"
  ++ "bxtvgjkreoupqzayh"
  ++ "jezpkhrovugaqtxby"
  ++ "htxbojraqzpuvnykegs"
  ++ "\n"
  ++ "jakdyhimbtwxlncsg"
  ++ "bjnkcmatgwyxidlhs"
  ++ "mycwkdighnablsxjt"
  ++ "\n"
  ++ "smokt"
  ++ "eunfogxytclshm"
  ++ "\n"
  ++ "r"
  ++ "r"
  ++ "\n"
  ++ "pdasnreog"
  ++ "uyljkar"
  ++ "\n"
  ++ "whriktcn"
  ++ "ujewkhdfrs"
  ++ "mxdfrhgkw"
  ++ "fwhkrp"
  ++ "\n"
  ++ "h"
  ++ "hw"
  ++ "h"
  ++ "\n"
  ++ "xmvjkhoebzqs"
  ++ "osvxbzheqmkj"
  ++ "szekvxjobmhq"
  ++ "hezjmxqbsokv"
  ++ "voekqxjbshzm"
  ++ "\n"
  ++ "kzysiheptuxgob"
  ++ "zhyxepbwsugikot"
  ++ "goxkzsebyphitu"
  ++ "hsuxotzbpikgey"
  ++ "sbgtoeyizkhupdx"
  ++ "\n"
  ++ "gdrqitano"
  ++ "rqdiaotgn"
  ++ "daogqtirn"
  ++ "atgoqdrni"
  ++ "\n"
  ++ "dluy"
  ++ "fm"
  ++ "dry"
  ++ "\n"
  ++ "nyseo"
  ++ "jenyo"
  ++ "ovyne"
  ++ "nyeox"
  ++ "\n"
  ++ "zawiflvhpjgomecdrk"
  ++ "iloejmrghpkwfzcadv"
  ++ "hfwejokzirldvpcgma"
  ++ "dihcwlmgoefkrazjvp"
  ++ "ephokwjzicdflvgmra"
  ++ "\n"
  ++ "gyubiopxhflqkrvcwtszmj"
  ++ "cfmwxogquzyhtsbvpkjil"
  ++ "qxmgoflbyjzwucphksitv"
  ++ "fjzixwusycvbhgqomtpkl"
  ++ "hgmtcbszywpvukjqoxifl"
  ++ "\n"
  ++ "jkvthqorywsux"
  ++ "qwukhroxytjvs"
  ++ "wktonyqjvuxi"
  ++ "\n"
  ++ "esmpgqur"
  ++ "rspqm"
  ++ "sqmpr"
  ++ "sprqm"
  ++ "rspmq"
  ++ "\n"
  ++ "e"
  ++ "e"
  ++ "\n"
  ++ "vkamztjcdqhroblnyw"
  ++ "tmoqwyzharjvbdnlc"
  ++ "ojynamchbztdlqvsrw"
  ++ "whjrocnadetmlqyzbv"
  ++ "jlmqcyxbdvzhoawrntu"
  ++ "\n"
  ++ "yljxnwtpirgqe"
  ++ "rtwyxij"
  ++ "iywjtxr"
  ++ "yrjwzxit"
  ++ "\n"
  ++ "qovbwdzhlif"
  ++ "dbuvhifyzqw"
  ++ "\n"
  ++ "yaeigdrovcqmnbxfw"
  ++ "vpwnimfaexocyqgdr"
  ++ "nivqcoemawydxrgf"
  ++ "wmxfiornakcgvtuqdhye"
  ++ "\n"
  ++ "ctywzurhk"
  ++ "rtyzwuchk"
  ++ "wrycuhmtkz"
  ++ "\n"
  ++ "z"
  ++ "vz"
  ++ "zma"
  ++ "\n"
  ++ "gcrivmshxknuwot"
  ++ "hqgwunvkitsorfx"
  ++ "\n"
  ++ "ulmkvwz"
  ++ "qlkfmczovysuw"
  ++ "dumwaljrvzk"
  ++ "nuwzkmilv"
  ++ "wluntvmkzx"
  ++ "\n"
  ++ "ydw"
  ++ "qwstbd"
  ++ "jhd"
  ++ "idxfn"
  ++ "\n"
  ++ "defbuaptricmwk"
  ++ "nylgehpvsu"
  ++ "\n"
  ++ "zkelcmpdatj"
  ++ "tacjldxkem"
  ++ "\n"
  ++ "hjvmubrtyzpwnskexflod"
  ++ "bdgfcwkmtzxrqoupnljhiva"
  ++ "\n"
  ++ "eubykwhqdxivgmfpzjcnors"
  ++ "qcrexkjnmibzhsvfoydgpuw"
  ++ "rejovgknxuwymhfcpidzqsb"
  ++ "qgzkjwiepyhosmvrxdubncf"
  ++ "\n"
  ++ "jfqsrwzg"
  ++ "csyuoabhvikmd"
  ++ "nejsz"
  ++ "eqxs"
  ++ "jsgwl"
  ++ "\n"
  ++ "vkfjpozcxm"
  ++ "qsephmdo"
  ++ "aormp"
  ++ "eqponhym"
  ++ "\n"
  ++ "tdhaizeyqfcvm"
  ++ "yvzgctnph"
  ++ "vkojgzbhtypcs"
  ++ "wbcyhxnvtzs"
  ++ "hztvcyp"
  ++ "\n"
  ++ "yehaqkotbnzlj"
  ++ "qohzbyjltnieak"
  ++ "lhkyqzjbeotans"
  ++ "\n"
  ++ "msvofdluxnpht"
  ++ "otmnflzvds"
  ++ "slmtnzodvf"
  ++ "tflsjivnomd"
  ++ "tdonmsfvl"
  ++ "\n"
  ++ "hyqoneaujczkmwlx"
  ++ "ynkheqzwfaolc"
  ++ "nhkzqalyewco"
  ++ "wznkfcaeyohlq"
  ++ "yechalzpoqsknw"
  ++ "\n"
  ++ "mnebgrhqjlkpod"
  ++ "ecxgvlwdfzhiabstj"
  ++ "\n"
  ++ "rgjhy"
  ++ "dqgh"
  ++ "\n"
  ++ "inel"
  ++ "heniy"
  ++ "ndei"
  ++ "edin"
  ++ "\n"
  ++ "yomqetfwnpixh"
  ++ "lqsvgkdcizjyfb"
  ++ "\n"
  ++ "qksm"
  ++ "qms"
  ++ "smq"
  ++ "sqm"
  ++ "\n"
  ++ "xpigmrvtc"
  ++ "mdcxgrip"
  ++ "rmzgxcip"
  ++ "xigmcrp"
  ++ "ugflmyircxbp"
  ++ "\n"
  ++ "uaibcnygjvroqxtmkz"
  ++ "aunrkmxqbzjgwyeod"
  ++ "qxmogsazkujrcnby"
  ++ "qojxaybszlrcuknfmg"
  ++ "\n"
  ++ "recwyhnda"
  ++ "nchryaw"
  ++ "\n"
  ++ "gi"
  ++ "ig"
  ++ "\n"
  ++ "tzq"
  ++ "bkj"
  ++ "\n"
  ++ "rz"
  ++ "r"
  ++ "qr"
  ++ "\n"
  ++ "bkdftxjvrioq"
  ++ "xkodfbivrtq"
  ++ "biqtovdxkfr"
  ++ "\n"
  ++ "zxybwjcqvkmt"
  ++ "swaeftrnhd"
  ++ "\n"
  ++ "vk"
  ++ "vkw"
  ++ "kv"
  ++ "vk"
  ++ "\n"
  ++ "jmpli"
  ++ "jpgim"
  ++ "jmoipw"
  ++ "\n"
  ++ "uliwvnpmk"
  ++ "lwvinmk"
  ++ "mvnwleik"
  ++ "\n"
  ++ "h"
  ++ "h"
  ++ "h"
  ++ "\n"
  ++ "aizpyuhrsm"
  ++ "rmiuzdbhy"
  ++ "iruhmtzy"
  ++ "\n"
  ++ "fsc"
  ++ "c"
  ++ "c"
  ++ "zuag"
  ++ "\n"
  ++ "kinylrdqtf"
  ++ "yilkfrdwxqno"
  ++ "rynlkfdiqp"
  ++ "\n"
  ++ "ruskgfcylowvmjiahezb"
  ++ "gsicyhqnxfpjrlt"
  ++ "\n"
  ++ "awgx"
  ++ "gawx"
  ++ "xagw"
  ++ "axgw"
  ++ "awxg"
  ++ "\n"
  ++ "iu"
  ++ "u"
  ++ "u"
  ++ "u"
  ++ "xsu"
  ++ "\n"
  ++ "xr"
  ++ "d"
  ++ "\n"
  ++ "z"
  ++ "z"
  ++ "z"
  ++ "z"
  ++ "\n"
  ++ "epdf"
  ++ "d"
  ++ "d"
  ++ "\n"
  ++ "vdlrbif"
  ++ "cjsotfdwexh"
  ++ "qdrfa"
  ++ "\n"
  ++ "qwfkdupgvszibt"
  ++ "smpzetkihb"
  ++ "\n"
  ++ "slvfkubejdcowqr"
  ++ "ruwedaqcvolbfpsigj"
  ++ "jblrauwseokvdcf"
  ++ "vxhntcrfzubwdosjel"
  ++ "oslwdmvcjebfru"
  ++ "\n"
  ++ "wnkaszlfjgupvbxmhocrt"
  ++ "nbohjymstlfrvxckgu"
  ++ "\n"
  ++ "ampvjczwtn"
  ++ "rchznpfjvaw"
  ++ "zpcjnwtva"
  ++ "\n"
  ++ "slqon"
  ++ "ados"
  ++ "losn"
  ++ "\n"
  ++ "mvuy"
  ++ "uxogtvmcqp"
  ++ "\n"
  ++ "ql"
  ++ "yopbdme"
  ++ "swhkg"
  ++ "iwlcq"
  ++ "\n"
  ++ "pdfuvyqokgxsbzhacirjlm"
  ++ "pgdakovmurfcyisqbljzhx"
  ++ "ypifcvlojsagrxdqzubhkm"
  ++ "pjyfozrlcxhvbgdiukasqm"
  ++ "lphfyuskrqioacxgdvjzbm"
  ++ "\n"
  ++ "vjq"
  ++ "oqjv"
  ++ "jqv"
  ++ "jqvb"
  ++ "qjv"
  ++ "\n"
  ++ "u"
  ++ "u"
  ++ "u"
  ++ "u"
  ++ "\n"
  ++ "mife"
  ++ "eaxz"
  ++ "\n"
  ++ "wukfghacoqi"
  ++ "kjcphli"
  ++ "\n"
  ++ "elmf"
  ++ "xogzbpwcmds"
  ++ "\n"
  ++ "udrqzjglkefhcimptvanyx"
  ++ "fnczjgaekihwyuvldqsrxtmp"
  ++ "banxpouvchgikqemtdfzjrl"
  ++ "\n"
  ++ "bdzvtqygucirm"
  ++ "ibyzgcvtumd"
  ++ "\n"
  ++ "poxgflmjweuqhktcazb"
  ++ "ugzfcjeqkwnbmoatph"
  ++ "qyjtwbfgouzhcpamek"
  ++ "\n"
  ++ "o"
  ++ "ov"
  ++ "o"
  ++ "o"
  ++ "o"
  ++ "\n"
  ++ "actbd"
  ++ "czose"
  ++ "zcpys"
  ++ "\n"
  ++ "btwhfmpi"
  ++ "umhtbfiw"
  ++ "imfwhbt"
  ++ "\n"
  ++ "afolhyqvxeg"
  ++ "qohvcregl"
  ++ "rvhclosqge"
  ++ "hcoeqglv"
  ++ "\n"
  ++ "ozqibfhewgpndavmly"
  ++ "wnlzepyoivkxqfbgamdh"
  ++ "oiztbvmlfnaqyhdgewp"
  ++ "egvlmrwpqdiyozanfbh"
  ++ "zkpnwmfydlheaqivbogu"
  ++ "\n"
  ++ "jnl"
  ++ "njl"
  ++ "ljn"
  ++ "\n"
  ++ "a"
  ++ "qtn"
  ++ "ntzr"
  ++ "\n"
  ++ "eohmibyp"
  ++ "yokm"
  ++ "owumy"
  ++ "kojmy"
  ++ "nomay"
  ++ "\n"
  ++ "ebx"
  ++ "dapbe"
  ++ "dbex"
  ++ "erb"
  ++ "\n"
  ++ "btrkcljqxdm"
  ++ "dtbrck"
  ++ "dkrucbt"
  ++ "tbrcdk"
  ++ "\n"
  ++ "igvhpejrmxkcofznuyb"
  ++ "oygpxuvbjzrkcnhiem"
  ++ "\n"
  ++ "mj"
  ++ "my"
  ++ "mj"
  ++ "m"
  ++ "dmw"
  ++ "\n"
  ++ "ljxhmbda"
  ++ "ahdjxblm"
  ++ "\n"
  ++ "umqytpknxl"
  ++ "uondmpyblqt"
  ++ "abndmyuphtq"
  ++ "nwgmiujyszqeptf"
  ++ "nbprlqvycutm"
  ++ "\n"
  ++ "ebxpwykcgiuhv"
  ++ "yxgwehcpvbkui"
  ++ "\n"
  ++ "fpalrvgksjn"
  ++ "pxchrbnkfajvdg"
  ++ "\n"
  ++ "dsunk"
  ++ "gtwuse"
  ++ "xvlbcmhufi"
  ++ "sozgqpue"
  ++ "\n"
  ++ "trn"
  ++ "e"
  ++ "e"
  ++ "ey"
  ++ "a"
  ++ "\n"
  ++ "vwdazum"
  ++ "mauvgzw"
  ++ "fuzwpvmiaq"
  ++ "\n"
  ++ "ihowsqrbxdetuvcgajf"
  ++ "sdojqeaiwygfubxrkv"
  ++ "\n"
  ++ "abzi"
  ++ "fbajiu"
  ++ "baicf"
  ++ "rsbyeliad"
  ++ "azib"
  ++ "\n"
  ++ "nscxriyzoapflkwj"
  ++ "ptrnscyfjdxazoiwlk"
  ++ "zxraykosfjlpcinw"
  ++ "zoplikjyxwcvnsgraf"
  ++ "zcspbroxlikfawynj"
  ++ "\n"
  ++ "vqefizng"
  ++ "ix"
  ++ "dcs"
  ++ "apoujwtylk"
  ++ "nbg"
  ++ "\n"
  ++ "thvu"
  ++ "utvh"
  ++ "vuth"
  ++ "\n"
  ++ "cb"
  ++ "qb"
  ++ "znisjautvpo"
  ++ "e"
  ++ "rmk"
  ++ "\n"
  ++ "yps"
  ++ "ps"
  ++ "sp"
  ++ "pds"
  ++ "\n"
  ++ "htldayejcm"
  ++ "qgwmjit"
  ++ "tmsj"
  ++ "\n"
  ++ "qw"
  ++ "qnzpei"
  ++ "tjq"
  ++ "\n"
  ++ "gmri"
  ++ "rimg"
  ++ "gqeimrt"
  ++ "\n"
  ++ "nvoqdje"
  ++ "nvojeqd"
  ++ "nojevqd"
  ++ "njeoqdv"
  ++ "qndovje"
  ++ "\n"
  ++ "mdhvwfnarbpksjt"
  ++ "dftsmnvrjpkwbha"
  ++ "dmtnhbrypzvjsfakw"
  ++ "\n"
  ++ "xnctqbezompvi"
  ++ "tcivzqxjemo"
  ++ "trmizegvcqxo"
  ++ "yeozqitcjxmv"
  ++ "\n"
  ++ "rpvezm"
  ++ "pmre"
  ++ "reopimut"
  ++ "vmpezr"
  ++ "hpermz"
  ++ "\n"
  ++ "dshourgilv"
  ++ "hovgluedis"
  ++ "ugvsohldi"
  ++ "dshvuiglo"
  ++ "\n"
  ++ "xufdhyst"
  ++ "tuh"
  ++ "htkbuwv"
  ++ "\n"
  ++ "uyhmkzgprft"
  ++ "lptqenbofxwk"
  ++ "\n"
  ++ "klhnprixqc"
  ++ "ptyfsz"
  ++ "\n"
  ++ "gbdilsxjvyuceqnw"
  ++ "vguqmicyjlnoxstkzdb"
  ++ "\n"
  ++ "ajbvdz"
  ++ "jbdavz"
  ++ "\n"
  ++ "qwoaltfyjecup"
  ++ "bikznrxehdsvgl"
  ++ "\n"
  ++ "il"
  ++ "il"
  ++ "lai"
  ++ "\n"
  ++ "hnxbpeudogywqjtzf"
  ++ "xrfwsypilokbghmn"
  ++ "\n"
  ++ "lnprticjufgk"
  ++ "tkgifnrcpluj"
  ++ "jkptrinlcgfu"
  ++ "ntruckifpjgl"
  ++ "kjutlfcrpnig"
  ++ "\n"
  ++ "pjxn"
  ++ "d"
  ++ "\n"
  ++ "cehjgirskzdfupnayqbtx"
  ++ "tfcrbgqoxipjnshyu"
  ++ "ircpljyuqgbnthxmsf"
  ++ "\n"
  ++ "elknv"
  ++ "kjle"
  ++ "\n"
  ++ "rlfimhpjtxcbgqysnkev"
  ++ "fxmpjhcvnqgtsykbrlie"
  ++ "geilpnftyhdqrmvbckxsj"
  ++ "\n"
  ++ "iwrhjuxaylt"
  ++ "rutxwihlja"
  ++ "\n"
  ++ "xgjqs"
  ++ "jlgbxz"
  ++ "gjsxb"
  ++ "jxnhtg"
  ++ "\n"
  ++ "rojtvpudx"
  ++ "rdpoxtjv"
  ++ "vjrpxdot"
  ++ "doxtvjpr"
  ++ "xdtrojpv"
  ++ "\n"
  ++ "hwpaqudromg"
  ++ "pfqarht"
  ++ "pnqhear"
  ++ "pxrenahq"
  ++ "eapqthvr"
  ++ "\n"
  ++ "nrhfdzetwixcjsqlbupko"
  ++ "btijqrefckosadwlnxyhu"
  ++ "hievkwjcoqtrdbxunsfml"
  ++ "\n"
  ++ "odhzjpkrxueqymavltbsc"
  ++ "vchxyqjdsmfrupoanezltbk"
  ++ "\n"
  ++ "xsdmczyvhojibkarqeplgfn"
  ++ "cjrzmybhfvdakqexngsplio"
  ++ "yogeivplzxmqskfcdrnhajb"
  ++ "\n"
  ++ "jhtogzx"
  ++ "zoxjght"
  ++ "xtjhozg"
  ++ "ghtzoxj"
  ++ "ztoxhgj"
  ++ "\n"
  ++ "edvbanpitmhjgwxrofklyu"
  ++ "cpemyxlabkdjinzrg"
  ++ "yadxlqkepbrgnjim"
  ++ "\n"
  ++ "yq"
  ++ "mj"
  ++ "\n"
  ++ "gbylw"
  ++ "zuc"
  ++ "\n"
  ++ "glbsezpfrdxu"
  ++ "krzfoxgcbdsp"
  ++ "jfrgxsdbzpo"
  ++ "gzsrpbdfx"
  ++ "rzxfgspdb"
  ++ "\n"
  ++ "srwzajgvukpflidxn"
  ++ "sdialkfnjqvrxwzp"
  ++ "fakwsjmnbldtrvopyxzi"
  ++ "zrifwvjnacxspedkql"
  ++ "\n"
  ++ "qfbszxo"
  ++ "zqsbfox"
  ++ "bozqfxs"
  ++ "fosbxzq"
  ++ "xofbzsq"
  ++ "\n"
  ++ "lfgirdtnsbmuhx"
  ++ "fuirqanhzmtdwxcs"
  ++ "pxhinjvuflrdsmt"
  ++ "\n"
  ++ "kd"
  ++ "bdkc"
  ++ "dk"
  ++ "\n"
  ++ "ysakvxpc"
  ++ "xascbykpz"
  ++ "ygkstxp"
  ++ "ikfspxyeh"
  ++ "\n"
  ++ "sxewnt"
  ++ "anwezrxstqkgp"
  ++ "weysxnftij"
  ++ "stnxhwe"
  ++ "tesxwnv"
  ++ "\n"
  ++ "ozpbw"
  ++ "plyobt"
  ++ "bjcdnoavuh"
  ++ "\n"
  ++ "vuhczmygikjqtnwelxsap"
  ++ "ljhsbinurypwxmkqgca"
  ++ "\n"
  ++ "ktlucpm"
  ++ "clupktf"
  ++ "\n"
  ++ "lfx"
  ++ "uqrmedh"
  ++ "\n"
  ++ "tdbnijescrzghomwvkfuxq"
  ++ "nsriukmjqeavxlzwgtofd"
  ++ "ekyoupxdzflqntrimjwvsg"
  ++ "\n"
  ++ "jhdtvxrg"
  ++ "vtgjrdhx"
  ++ "txrgdvjh"
  ++ "txrdhvgj"
  ++ "rgtvjdxh"
  ++ "\n"
  ++ "rfjl"
  ++ "bl"
  ++ "\n"
  ++ "rp"
  ++ "pr"
  ++ "pr"
  ++ "qpr"
  ++ "pr"
  ++ "\n"
  ++ "qatusrmofjiv"
  ++ "kovrwcgijz"
  ++ "jivolnry"
  ++ "tjylrnmoiv"
  ++ "\n"
  ++ "bscyonuaed"
  ++ "eckjonawsbz"
  ++ "\n"
  ++ "sl"
  ++ "ls"
  ++ "ls"
  ++ "\n"
  ++ "dcypgbktwevhju"
  ++ "fhlopxgejscqziambnt"
  ++ "\n"
  ++ "glwuep"
  ++ "welpug"
  ++ "lguewmp"
  ++ "wugelp"
  ++ "lgwpue"
  ++ "\n"
  ++ "cbnprvmgujfeahkod"
  ++ "gcjinupbmrehvakdfo"
  ++ "upyjvnhcamfokdrbeg"
  ++ "oueagfpkmljrvnchtbd"
  ++ "\n"
  ++ "ngoqjkxyeztcar"
  ++ "tawokezjqyxn"
  ++ "qetojylkxaznvdfp"
  ++ "qzcanobyxesthkj"
  ++ "oyzetagnqukjx"
  ++ "\n"
  ++ "oluzdqyevricxgpbjh"
  ++ "jczoidqgpuhbrylvex"
  ++ "eoawvlqpzidybgcusx"
  ++ "\n"
  ++ "gbkhxr"
  ++ "xgbkvhr"
  ++ "\n"
  ++ "gynjrlazuhdsiebpm"
  ++ "zwgmvhr"
  ++ "xtfgrmhzq"
  ++ "wgtzrkcmh"
  ++ "mohrzg"
  ++ "\n"
  ++ "ips"
  ++ "eiop"
  ++ "spi"
  ++ "blcipw"
  ++ "pie"
  ++ "\n"
  ++ "m"
  ++ "mg"
  ++ "rmib"
  ++ "\n"
  ++ "brelhau"
  ++ "aerulhb"
  ++ "eularhb"
  ++ "\n"
  ++ "ntjcb"
  ++ "hlpfq"
  ++ "mhlfp"
  ++ "\n"
  ++ "gkbzfmjinp"
  ++ "rwfq"
  ++ "wcftl"
  ++ "cotf"
  ++ "\n"
  ++ "pcklviqyxumegznob"
  ++ "gsqecynpzlimoxukbv"
  ++ "\n"
  ++ "hu"
  ++ "uhl"
  ++ "hu"
  ++ "\n"
  ++ "mzktplnxfqwrd"
  ++ "dplwmzfrtqknx"
  ++ "frqpmkdxtnlziw"
  ++ "kyxwlztrjdsfqnmp"
  ++ "twzlqxkprfdmne"
  ++ "\n"
  ++ "afblckugpyzwvh"
  ++ "chfuvgklywz"
  ++ "pxkwuvlychgdf"
  ++ "igshyklvecwfur"
  ++ "qcvtwgylunkfhj"
  ++ "\n"
  ++ "jvbsuodzptghycqkx"
  ++ "thjxozkvudqsgby"
  ++ "yeqodxvpbukthzjgs"
  ++ "jutnksfqbvodzglxyh"
  ++ "\n"
  ++ "amodbsxrzg"
  ++ "apbcgrskzinm"
  ++ "awmgtzhbsr"
  ++ "qvsgzbeamjlrx"
  ++ "\n"
  ++ "rwaisemcuqxo"
  ++ "lrojvqxczigbsmay"
  ++ "facqkrmiusxo"
  ++ "mxdsoaqcuri"
  ++ "\n"
  ++ "rbvzikynfoxctwghdupaem"
  ++ "bytwuofvzknrqagmixdpchse"
  ++ "vxgtnrukcidoepfbyzahwm"
  ++ "dzwgutvhaocryeinmkpbxf"
  ++ "\n"
  ++ "fbp"
  ++ "c"
  ++ "auyk"
  ++ "\n"
  ++ "lbmyuotpcnsikvgrx"
  ++ "ycvhpkibmtsflxegunr"
  ++ "gpibcmtsulxarknzjv"
  ++ "gpkimtovlxnrscub"
  ++ "dxkbghlnctswevrimpu"
  ++ "\n"
  ++ "qok"
  ++ "iqz"
  ++ "qetpgrwyd"
  ++ "qnsco"
  ++ "\n"
  ++ "ioud"
  ++ "udiopc"
  ++ "mzsfhdiu"
  ++ "\n"
  ++ "ueikvmsr"
  ++ "hkvmrjuiase"
  ++ "evsxikplfrom"
  ++ "krzmgisev"
  ++ "iesgmvkur"
  ++ "\n"
  ++ "kdwbteoufy"
  ++ "wbdfokuy"
  ++ "\n"
  ++ "dbsj"
  ++ "dbfqgjek"
  ++ "dhbjp"
  ++ "pdbjo"
  ++ "jbd"
  ++ "\n"
  ++ "ywnmpicadove"
  ++ "vawkoyice"
  ++ "vyaocqwie"
  ++ "aeiryxvwco"
  ++ "tecoiywav"
  ++ "\n"
  ++ "grqoevckijwfmspahltuz"
  ++ "zwgcvraqfimotjlhsekp"
  ++ "okeahcrpmjsigtqwlzvf"
  ++ "rmcielqkwpogfthsvzja"
  ++ "iotprlamgjqfecwsvzhk"
  ++ "\n"
  ++ "pdwxajyokg"
  ++ "jrsdkwgxbfae"
  ++ "\n"
  ++ "dqlsnwreptfjxcybv"
  ++ "ujlpmzqrikgyantvse"
  ++ "\n"
  ++ "wjc"
  ++ "cj"
  ++ "cj"
  ++ "\n"
  ++ "tvzla"
  ++ "wacevhg"
  ++ "\n"
  ++ "bq"
  ++ "bq"
  ++ "qub"
  ++ "qb"
  ++ "fqdbs"
  ++ "\n"
  ++ "yks"
  ++ "sbyeuf"
  ++ "\n"
  ++ "mgntlwyv"
  ++ "tqzvgn"
  ++ "gnktipzv"
  ++ "\n"
  ++ "apkwmxjluocsvzi"
  ++ "ixzqpcsalkmowvj"
  ++ "\n"
  ++ "bajuygnrwt"
  ++ "yubjgatrwn"
  ++ "gtjuwnbary"
  ++ "wajbgntyru"
  ++ "yrnbgwjuta"
  ++ "\n"
  ++ "bmcwie"
  ++ "cibjwme"
  ++ "bweimc"
  ++ "eiwcmb"
  ++ "\n"
  ++ "dbkylhiwzusm"
  ++ "ujkistmfwcldh"
  ++ "vrsplkinguhmwqxd"
  ++ "wiysuchkzolmd"
  ++ "\n"
  ++ "dxkrutihaz"
  ++ "uiarkhtdxz"
  ++ "uzdksihtxarb"
  ++ "krihuztxad"
  ++ "rakhjxiztud"
  ++ "\n"
  ++ "vhfsnzep"
  ++ "fsckleqdhirjyp"
  ++ "fshwpaeuogmx"
  ++ "behftsp"
  ++ "\n"
  ++ "gxotrha"
  ++ "karogh"
  ++ "dohgnaqjm"
  ++ "\n"
  ++ "mvs"
  ++ "my"
  ++ "\n"
  ++ "fbgqisx"
  ++ "sfilvgax"
  ++ "\n"
  ++ "gcvwlreubdmo"
  ++ "mrfcwgblvudho"
  ++ "vdicaompgulwtrn"
  ++ "cvglyduohwbjrem"
  ++ "\n"
  ++ "axfqlgezschyiubm"
  ++ "xeyabhzilqusfgc"
  ++ "fzixqebhyslacgu"
  ++ "fqyucihzxgblpeas"
  ++ "cxqvtwrkfhbzauliysjge"
  ++ "\n"
  ++ "lnxj"
  ++ "alwoycs"
  ++ "uqedvgz"
  ++ "\n"
  ++ "ztkagdloihcmvjen"
  ++ "ovcdmjekgazhtnli"
  ++ "\n"
  ++ "mpohrwbesqfvd"
  ++ "kdehobasjwrq"
  ++ "suebmqvdrowh"
  ++ "hdewrbpusoqf"
  ++ "\n"
  ++ "fnebwpxqjzrukgo"
  ++ "alfwgtnhzrejdvmu"
  ++ "\n"
  ++ "con"
  ++ "on"
  ++ "\n"
  ++ "tamhynfpc"
  ++ "mcrhflnpujxtk"
  ++ "pmvicnhgsdwot"
  ++ "\n"
  ++ "leiyrvjncqphbftdo"
  ++ "ldorbvncyhpfiqej"
  ++ "oqhnyaipjrlegcvfdb"
  ++ "clibfjpnyedovhqr"
  ++ "idfrhbevkjloycnqp"
  ++ "\n"
  ++ "bfchelm"
  ++ "lbhf"
  ++ "\n"
  ++ "b"
  ++ "qst"
  ++ "\n"
  ++ "vpngb"
  ++ "gvbj"
  ++ "gnavbcu"
  ++ "nlgvb"
  ++ "sidbvg"
  ++ "\n"
  ++ "tkpwsnedf"
  ++ "bxrvmltfaonhkezwyp"
  ++ "etkjwupgcnifq"
  ++ "\n"
  ++ "ypvk"
  ++ "ypk"
  ++ "pwyk"
  ++ "kyp"
  ++ "\n"
  ++ "farmkwguisvzbljdcqtnoe"
  ++ "irtcfvmbndwejgaoqzuks"
  ++ "omjvzkdnugcesafiqtwbr"
  ++ "bocntzgfuwksarjmivqed"
  ++ "wrtznsgijemqdkfuoabvc"
  ++ "\n"
  ++ "a"
  ++ "epn"
  ++ "\n"
  ++ "xcpqb"
  ++ "xszwbeujqv"
  ++ "bxdzejv"
  ++ "bq"
  ++ "iyrltkbf"
  ++ "\n"
  ++ "vpolaxmcutnk"
  ++ "ovctkpumnl"
  ++ "\n"
  ++ "od"
  ++ "tuod"
  ++ "od"
  ++ "\n"
  ++ "okcewuzdtplshgxb"
  ++ "czkpdgohbwlseuxt"
  ++ "epbzodlgtuwkschx"
  ++ "wtbgdmzjohpxulckse"
  ++ "stbuhgdokewxclzp"
  ++ "\n"
  ++ "oubmwaygzsvrpeiktq"
  ++ "nuaqotbmgcvrejdshkizwpy"
  ++ "\n"
  ++ "kxw"
  ++ "kwd"
  ++ "wk"
  ++ "\n"
  ++ "afysdhlriocjxq"
  ++ "yafqcrdxlohsjiz"
  ++ "sofqizhlxypdcjra"
  ++ "sjmqylwcahrofibedux"
  ++ "\n"
  ++ "fkwbvap"
  ++ "jgdkzrwfvo"
  ++ "wifnkev"
  ++ "kbncvwxfp"
  ++ "\n"
  ++ "gkhstvwcadxfrp"
  ++ "atfrwdksmphbvgx"
  ++ "rcdhgkvspawtfx"
  ++ "\n"
  ++ "vbmzqp"
  ++ "r"
  ++ "\n"
  ++ "ewluxs"
  ++ "mosuqlxwg"
  ++ "rwuclxsi"
  ++ "xsilwu"
  ++ "\n"
  ++ "qpdjbnyi"
  ++ "mackzh"
  ++ "\n"
  ++ "vwmsy"
  ++ "dctoz"
  ++ "\n"
  ++ "xgidfke"
  ++ "dqxfik"
  ++ "davf"
  ++ "\n"
  ++ "gwluyxi"
  ++ "ihoxnbazsmj"
  ++ "qypwitvkxcdeflr"
  ++ "\n"
  ++ "yibzorjh"
  ++ "hbijqrzf"
  ++ "\n"
  ++ "xwednlczvukoftbmajphg"
  ++ "wlvjfuzkapbnghdmcoex"
  ++ "noajcfhzgmvkweupdblx"
  ++ "\n"
  ++ "dvhytk"
  ++ "mljydszthqk"
  ++ "cyftakh"
  ++ "\n"
  ++ "zrhupwkt"
  ++ "hgrlusqofkyvipztdbn"
  ++ "hpcrzkumta"
  ++ "kerutxhpaz"
  ++ "pkzucwthr"
  ++ "\n"
  ++ "wmyaf"
  ++ "lmhgou"
  ++ "\n"
  ++ "rhwitl"
  ++ "eztgnli"
  ++ "dlti"
  ++ "\n"
  ++ "svzxbogmhnteu"
  ++ "smzypvbelngjoucx"
  ++ "zebvognsmxuid"
  ++ "obuveznmgxs"
  ++ "\n"
  ++ "djcqa"
  ++ "qadj"
  ++ "ajqd"
  ++ "\n"
  ++ "lvpe"
  ++ "epl"
  ++ "\n"
  ++ "nxevifrzshgutcqdm"
  ++ "rqvxcgnutiesdzmhf"
  ++ "rteshnfuvizglxwcj"
  ++ "fuchnevszixtrg"
  ++ "\n"
  ++ "vmnhsx"
  ++ "mwhp"
  ++ "smheg"
  ++ "\n"
  ++ "k"
  ++ "k"
  ++ "k"
  ++ "k"
  ++ "kj"
  ++ "\n"
  ++ "cmki"
  ++ "dkacm"
  ++ "\n"
  ++ "jhomeuldz"
  ++ "drozch"
  ++ "dsziqwxph"
  ++ "bhmzdtrl"
  ++ "\n"
  ++ "umxh"
  ++ "xhp"
  ++ "hqx"
  ++ "xh"
  ++ "xh"
  ++ "\n"
  ++ "vfmrzqltn"
  ++ "qtzlrv"
  ++ "lzavurtq"
  ++ "vzlrqtf"
  ++ "vzrtql"
  ++ "\n"
  ++ "jflmxkwv"
  ++ "xlmwkvfj"
  ++ "wilkxjvfm"
  ++ "\n"
  ++ "tyrsw"
  ++ "fsajp"
  ++ "\n"
  ++ "pkchzmtelv"
  ++ "tcezkhvmpl"
  ++ "ptevlczmkh"
  ++ "\n"
  ++ "ifxnytesvzbgwqhc"
  ++ "thbgxsqwyfiznemv"
  ++ "\n"
  ++ "j"
  ++ "wi"
  ++ "hen"
  ++ "i"
  ++ "\n"
  ++ "lgjzaswrpcvednutqko"
  ++ "newpozcqlkjsvrdaug"
  ++ "\n"
  ++ "izmhfde"
  ++ "dghestzmi"
  ++ "ivhuwdzmej"
  ++ "\n"
  ++ "icsjrlghtvayp"
  ++ "chysgvpletijr"
  ++ "pijtvryshglc"
  ++ "hijscpgvqrtly"
  ++ "\n"
  ++ "nyrtchmao"
  ++ "cboztuhpflkq"
  ++ "exjgsvidw"
  ++ "\n"
  ++ "z"
  ++ "z"
  ++ "z"
  ++ "z"
  ++ "z"
  ++ "\n"
  ++ "azvph"
  ++ "tedzxmvh"
  ++ "yuzvh"
  ++ "\n"
  ++ "vfqzjhp"
  ++ "jzqbflhvp"
  ++ "pzqkvdjihf"
  ++ "vjzfqexhaynp"
  ++ "qvjotzuhfp"
  ++ "\n"
  ++ "kawzqvehnldpfyjms"
  ++ "qwgjsvmlyfedhpnkza"
  ++ "lqmwjfpsknhvyaezd"
  ++ "\n"
  ++ "plrjckxaihbn"
  ++ "xbcnfhpauktir"
  ++ "hxbekmqwzidnaoc"
  ++ "sgynjacxhkib"
  ++ "\n"
  ++ "elstkqybopx"
  ++ "qpldszxenu"
  ++ "philxrvacem"
  ++ "\n"
  ++ "zfqvwapib"
  ++ "vyuwqtaizlfmr"
  ++ "fwxaqizoknc"
  ++ "\n"
  ++ "fcxkg"
  ++ "kgucf"
  ++ "cfgwk"
  ++ "\n"
  ++ "bifpnhqodgzy"
  ++ "qeudfpyozihng"
  ++ "ihqgyofndzp"
  ++ "\n"
  ++ "gbdlhztckxvfmp"
  ++ "bdflhegkvmtapxz"
  ++ "gkvdtbfhxlzcpm"
  ++ "fblkphjzxvgmdt"
  ++ "\n"
  ++ "mbkqegcvysdat"
  ++ "dgamlysetcbq"
  ++ "gcyedbmsqat"
  ++ "stdcmgbqeya"
  ++ "mdgaseytbqc"
  ++ "\n"
  ++ "mbanitlspwd"
  ++ "idohstranwluby"
  ++ "tlfihanjszbwdq"
  ++ "csvwnatkibeldx"
  ++ "gdlnbawsit"
  ++ "\n"
  ++ "koc"
  ++ "aklh"
  ++ "\n"
  ++ "nwforsix"
  ++ "rfoinxgsq"
  ++ "ponu"
  ++ "\n"
  ++ "frkqweaplmyjtszc"
  ++ "evqlhgdnofpbsx"
  ++ "\n"
  ++ "xmjafe"
  ++ "nasx"
  ++ "gvtoirb"
  ++ "\n"
  ++ "fh"
  ++ "ahcvf"
  ++ "fubh"
  ++ "hf"
  ++ "\n"
  ++ "cnziuowlvd"
  ++ "wdulnczo"
  ++ "clnuwozid"
  ++ "usnolwdcz"
  ++ "lzuodcnw"
  ++ "\n"
  ++ "qzvo"
  ++ "ozqv"
  ++ "ozqv"
  ++ "ovqz"
  ++ "\n"
  ++ "petyqas"
  ++ "ysap"
  ++ "ypsjia"
  ++ "\n"
  ++ "as"
  ++ "jrd"
  ++ "\n"
  ++ "vczyxagnhlik"
  ++ "axhcklzgviny"
  ++ "rnlayxcgvzkhi"
  ++ "hcnizvgklyxa"
  ++ "\n"
  ++ "bhzyoer"
  ++ "odrnzth"
  ++ "bdrzpxohf"
  ++ "onrzh"
  ++ "ozmrwgh"
  ++ "\n"
  ++ "dwbikvq"
  ++ "qbdkivw"
  ++ "kvwbdiq"
  ++ "bqitkvdw"
  ++ "\n"
  ++ "zaiwc"
  ++ "nzdipc"
  ++ "\n"
  ++ "hupmeoy"
  ++ "feonhpym"
  ++ "pojmytcehkz"
  ++ "mhpoey"
  ++ "pehoyfmn"
  ++ "\n"
  ++ "iexqrjdunpmhkzsvcy"
  ++ "tzjhxenvdqmpbcuykris"
  ++ "xyenuidspclvmkhjzrq"
  ++ "\n"
  ++ "eputvsadhcwmxilyzrf"
  ++ "xhldizuwfpryamsctev"
  ++ "\n"
  ++ "vruljzbpqwkimgcdnhox"
  ++ "dvrhjzwlubxgqmpnokci"
  ++ "rogckbmzwlnjphxdvqiu"
  ++ "\n"
  ++ "mflxyrdnaiojwh"
  ++ "hvxdjufmlwgryioq"
  ++ "hialwfmxdoryj"
  ++ "\n"
  ++ "zqjyx"
  ++ "qyjxz"
  ++ "guyrjxczq"
  ++ "\n"
  ++ "jkptbc"
  ++ "ctpnbk"
  ++ "\n"
  ++ "djoxvsbktw"
  ++ "zhryojfgxnpamtbiqc"
  ++ "keloxbwjtu"
  ++ "\n"
  ++ "waeixkdunptl"
  ++ "atejnixwk"
  ++ "yaiwnebzktjx"
  ++ "nraxetkwi"
  ++ "\n"
  ++ "srvltzm"
  ++ "artzpiml"
  ++ "zmfrutld"
  ++ "trmzl"
  ++ "rzfltm"
  ++ "\n"
  ++ "upews"
  ++ "uwesp"
  ++ "ewusp"
  ++ "upwes"
  ++ "uwsep"
  ++ "\n"
  ++ "gmqadcilxpustz"
  ++ "zmdaputbsglxcki"
  ++ "gtudmizpcaxsl"
  ++ "audigpclmsxzt"
  ++ "zcxasluogptmdin"
  ++ "\n"
  ++ "mjxvndbfygluqh"
  ++ "vbpdxunmh"
  ++ "\n"
  ++ "thlqwmnfyvxkcjaibro"
  ++ "wnohvfbukmtcjrqxlyai"
  ++ "\n"
  ++ "iauh"
  ++ "dh"
  ++ "pqsnwke"
  ++ "td"
  ++ "t"
  ++ "\n"
  ++ "k"
  ++ "k"
  ++ "k"
  ++ "k"
  ++ "\n"
  ++ "tnirszcf"
  ++ "tprnchfolzi"
  ++ "\n"
  ++ "vyf"
  ++ "vftay"
  ++ "pvof"
  ++ "\n"
  ++ "nrzbpfdae"
  ++ "ofanrjbep"
  ++ "avnprbemfo"
  ++ "bgaufphxern"
  ++ "tbncrqeafjzidp"
  ++ "\n"
  ++ "wbosukfnidm"
  ++ "bptmsnodiuef"
  ++ "\n"
  ++ "fop"
  ++ "pfo"
  ++ "\n"
  ++ "ztfplvdymqciuarewxgkn"
  ++ "vwufqxyerpcoitnadlmgzk"
  ++ "ndlwgymuirapzxketqvfhc"
  ++ "gwecvyqdmlraunxjiktpzf"
  ++ "\n"
  ++ "ozjs"
  ++ "tmqezknf"
  ++ "rmvcn"
  ++ "hydpigwulb"
  ++ "es"
  ++ "\n"
  ++ "umlvzepcx"
  ++ "vuxmeclzp"
  ++ "vlzuexcpm"
  ++ "zmecpvulx"
  ++ "mpzvulcex"
  ++ "\n"
  ++ "oeixhj"
  ++ "iexhoj"
  ++ "jexoih"
  ++ "iohvejxnk"
  ++ "ihexjo"
  ++ "\n"
  ++ "uzw"
  ++ "zsb"
  ++ "zu"
  ++ "zp"
  ++ "\n"
  ++ "mrqanvodfx"
  ++ "rnqmdvfa"
  ++ "abdptrgzflyhnvs"
  ++ "\n"
  ++ "pjivzyacou"
  ++ "vnapjyzuwbf"
  ++ "ajpuvzy"
  ++ "\n"
  ++ "yrbptzgsevaomukldqxwicnj"
  ++ "ksatveqludrmbjngoixwycz"
  ++ "zdrigcyauxvmlsektbqojnw"
  ++ "lrwdgumyojnqcaizxsebkvt"
  ++ "\n"
  ++ "ipsc"
  ++ "picl"
  ++ "ptcasgi"
  ++ "pgvci"
  ++ "\n"
  ++ "u"
  ++ "e"
  ++ "j"
  ++ "e"
  ++ "\n"
  ++ "gz"
  ++ "ezj"
  ++ "ibolpzf"
  ++ "zg"
  ++ "z"
  ++ "\n"
  ++ "ihsemv"
  ++ "ocaj"
  ++ "gu"
  ++ "kidw"
  ++ "vmultwkr"
  ++ "\n"
  ++ "xka"
  ++ "x"
  ++ "xq"
  ++ "\n"
  ++ "vdyzsapbwntmxojfqiclek"
  ++ "dfhscbwpqxltmjzoga"
  ++ "\n"
  ++ "aiswlquvcmhy"
  ++ "cusylqwiav"
  ++ "\n"
  ++ "jmowrpbflkcysdzt"
  ++ "fvaxlbkmdiowjtzrqp"
  ++ "lpuwrjkohfdtmsbzge"
  ++ "\n"
  ++ "jgrqosxzyuki"
  ++ "skhoquigzrypjbx"
  ++ "zysixgukrqjo"
  ++ "\n"
  ++ "tesvcrwaqzmfnyb"
  ++ "fbeciswqrzmta"
  ++ "wmqerlfczatbps"
  ++ "\n"
  ++ "hx"
  ++ "xvjh"
  ++ "xh"
  ++ "xurcwzh"
  ++ "hvx"
  ++ "\n"
  ++ "kzh"
  ++ "kzh"
  ++ "khz"
  ++ "khz"
  ++ "zhk"
  ++ "\n"
  ++ "rezwblynpvodigmj"
  ++ "ltzreviupnybgqdjkm"
  ++ "zjervlnixmydgspb"
  ++ "\n"
  ++ "abfcgeymizjdnxklrtqs"
  ++ "czqemlanjpfsohryxg"
  ++ "xjfnqyeagrsuczlmh"
  ++ "\n"
  ++ "myrqdea"
  ++ "mdtkp"
  ++ "wjudvohlmn"
  ++ "pmdc"
  ++ "mkd"
  ++ "\n"
  ++ "x"
  ++ "n"
  ++ "n"
  ++ "n"
  ++ "\n"
  ++ "obpuqvwmnx"
  ++ "mwnqbxvupo"
  ++ "oqwpnuxvmb"
  ++ "uxmpwbqvno"
  ++ "qmpuxbvnow"
  ++ "\n"
  ++ "xzesnocrmaqtfvlkby"
  ++ "ltzxykcnbfaqvmesor"
  ++ "cstoenkyfmplzqxgvab"
  ++ "\n"
  ++ "qwkuhcmvrlg"
  ++ "hlkrmuygwqxv"
  ++ "\n"
  ++ "rkgvmfyz"
  ++ "sqnc"
  ++ "dohxti"
  ++ "\n"
  ++ "pkufhtwxvnjqd"
  ++ "fshdqpizmvtoewculnb"
  ++ "phgduwftvqn"
  ++ "dqajtyhprvgufnw"
  ++ "\n"
  ++ "qwzkrhs"
  ++ "zulqk"
  ++ "qvozjkyga"
  ++ "ntcbqlkz"
  ++ "\n"
  ++ "ucgmdbajz"
  ++ "xtg"
  ++ "\n"
  ++ "nx"
  ++ "xn"
  ++ "\n"
  ++ "kajgbcyoetfiplx"
  ++ "twloixgaekbjpfcy"
  ++ "jlifxpbtoycagek"
  ++ "\n"
  ++ "mrspqwdnuye"
  ++ "yujewnrasqmp"
  ++ "\n"
  ++ "mafzxkliquynsropbtgejhcw"
  ++ "mrxfnicjwelukgzqtspahybo"
  ++ "xryozujfakinebpqwslhtmgc"
  ++ "poschfkrtxjwegimuzqyalnb"
  ++ "omtswhzuijaxlpgeybknrfqcv"
  ++ "\n"
  ++ "qs"
  ++ "sq"
  ++ "lqs"
  ++ "sq"
  ++ "sqpi"
  ++ "\n"
  ++ "apfgtns"
  ++ "ryigfnsq"
  ++ "\n"
  ++ "vjz"
  ++ "ql"
  ++ "\n"
  ++ "pftkg"
  ++ "dyncoulih"
  ++ "bzpg"
  ++ "f"
  ++ "g"
  ++ "\n"
  ++ "qhc"
  ++ "ehxdzqc"
  ++ "qgb"
  ++ "qjrvlsf"
  ++ "cdqtb"
  ++ "\n"
  ++ "rusxpwgebjtqc"
  ++ "lgdzuinwvje"
  ++ "lfjwmgoeuadz"
  ++ "\n"
  ++ "dafvyi"
  ++ "iylefg"
  ++ "flciy"
  ++ "\n"
  ++ "echxoit"
  ++ "ytup"
  ++ "thxasiod"
  ++ "\n"
  ++ "singvkzjohmct"
  ++ "njvcmzthkigps"
  ++ "gmnjsdctizvhk"
  ++ "psmvjkhzogictn"
  ++ "\n"
  ++ "xjgukmfnls"
  ++ "sukxjf"
  ++ "xfudbsejnkv"
  ++ "ubhmjksfzx"
  ++ "stxpqfucjkioaw"
  ++ "\n"
  ++ "tq"
  ++ "tq"
  ++ "\n"
  ++ "bleyvp"
  ++ "ebypv"
  ++ "yewvpdb"
  ++ "\n"
  ++ "xsjbancl"
  ++ "asq"
  ++ "as"
  ++ "\n"
  ++ "inl"
  ++ "ny"
  ++ "vn"
  ++ "sbtf"
  ++ "\n"
  ++ "ihgvopwqzydftlxcbjm"
  ++ "xpdhgjtqybocekl"
  ++ "uhogsrjblpdxcyqtn"
  ++ "rqbltpahkjgcodyx"
  ++ "\n"
  ++ "tzagysvdrebjhnlmu"
  ++ "djugelzvrsnabt"
  ++ "brsculznevdjtag"
  ++ "udbzxjgtievarnsl"
  ++ "\n"
  ++ "icalhfwu"
  ++ "uafcliw"
  ++ "waulzfic"
  ++ "auilcwf"
  ++ "filcuwma"
  ++ "\n"
  ++ "qetcajuhmpbkvsdi"
  ++ "khpwjutmvcyesbadqi"
  ++ "bpvucajhidemqtsk"
  ++ "\n"
  ++ "f"
  ++ "m"
  ++ "m"
  ++ "\n"
  ++ "bxqtkhwynlezfp"
  ++ "moptexhzfabwcy"
  ++ "dzkryhtpbvqxefw"
  ++ "\n"
  ++ "gyznickf"
  ++ "ws"
  ++ "o"
  ++ "abd"
  ++ "shj"
  ++ "\n"
  ++ "moqsnucx"
  ++ "mnucxqso"
  ++ "qoxcsnum"
  ++ "mjcsnqxuo"
  ++ "\n"
  ++ "yad"
  ++ "cday"
  ++ "dya"
  ++ "ady"
  ++ "\n"
  ++ "acsl"
  ++ "la"
  ++ "ila"
  ++ "lavwj"
  ++ "al"
  ++ "\n"
  ++ "eq"
  ++ "eq"
  ++ "teq"
  ++ "qe"
  ++ "\n"
  ++ "ypgtbcqnio"
  ++ "vwj"
  ++ "jwu"
  ++ "rk"
  ++ "\n"
  ++ "b"
  ++ "b"
  ++ "b"
  ++ "uab"
  ++ "b"
  ++ "\n"
  ++ "vpnjtyldieokwc"
  ++ "dlyifcjxzmvgbhwnper"
  ++ "\n"
  ++ "cpxasmqgytkbl"
  ++ "lqstpbgmkiza"
  ++ "bgamkdtsplq"
  ++ "jatqcxlsyubkpmgrw"
  ++ "ksgqpdltafnbcm"
  ++ "\n"
  ++ "vikupeozmxgqw"
  ++ "kexgjzvmwuqoip"
  ++ "wzgvoimkpexqu"
  ++ "kuwgizqxompev"
  ++ "\n"
  ++ "dbctojnhsz"
  ++ "mpochelwauvbjdqrn"
  ++ "bhdjonscz"
  ++ "\n"
  ++ "tmxgo"
  ++ "ogxmt"
  ++ "ogmtx"
  ++ "gtxom"
  ++ "\n"
  ++ "ogdzpe"
  ++ "dzpgeo"
  ++ "zopdeg"
  ++ "\n"
  ++ "ajit"
  ++ "rintad"
  ++ "\n"
  ++ "xtjghyrzcfl"
  ++ "atfzxcyrljq"
  ++ "\n"
  ++ "dl"
  ++ "arl"
  ++ "arlg"
  ++ "pl"
  ++ "mwoklu"
  ++ "\n"
  ++ "w"
  ++ "k"
  ++ "w"
  ++ "w"
  ++ "\n"
  ++ "tzycrupmsh"
  ++ "trucmzsphy"
  ++ "husmrczpty"
  ++ "mryuczptsh"
  ++ "zuyjtpmrhsc"
  ++ "\n"
  ++ "txbpilyem"
  ++ "lbtzex"
  ++ "xgehlbtw"
  ++ "eclmbxt"
  ++ "\n"
  ++ "aiwbpzesk"
  ++ "yugvlxojqd"
  ++ "ichwa"
  ++ "inz"
  ++ "\n"
  ++ "bdes"
  ++ "sedb"
  ++ "sueqfbd"
  ++ "dbes"
  ++ "rbeds"
  ++ "\n"
  ++ "xbzefntus"
  ++ "snypzbfmeku"
  ++ "\n"
  ++ "skjrbtqewpyg"
  ++ "iqjkyxaswe"
  ++ "\n"
  ++ "hdegjifr"
  ++ "jwxrahfmbei"
  ++ "irfqolet"
  ++ "eairzfnhs"
  ++ "\n"
  ++ "p"
  ++ "sp"
  ++ "p"
  ++ "\n"
  ++ "g"
  ++ "x"
  ++ "xv"
  ++ "ia"
  ++ "\n"
  ++ "jozvgcpk"
  ++ "vpo"
  ++ "opfv"
  ++ "pov"
  ++ "\n"
  ++ "owgfclzraqikb"
  ++ "rkbqalfico"
  ++ "\n"
  ++ "djsyxnkw"
  ++ "ws"
  ++ "wgs"
  ++ "wlsg"
  ++ "svpfwu"
  ++ "\n"
  ++ "oyjlxstrebvpfhmd"
  ++ "opfrjctbnemyvd"
  ++ "\n"
  ++ "lpqebxykmfdsnt"
  ++ "emfnsdxptbkyq"
  ++ "mdobqptnkjxfeys"
  ++ "\n"
  ++ "waktzxvocjruilhgym"
  ++ "uvtakjblqwsyoghzp"
  ++ "yklvjwniutehzgoa"
  ++ "\n"
  ++ "fhqgy"
  ++ "yqhfg"
  ++ "\n"
  ++ "brlsfdopmqyng"
  ++ "fnlrdpbosqymg"
  ++ "\n"
  ++ "lyksz"
  ++ "rzyk"
  ++ "\n"
  ++ "jamvlpcydqzu"
  ++ "azdcpmvquylj"
  ++ "zlqmpydvuacj"
  ++ "cydluaqmzvjp"
  ++ "lmqzdvajuycp"
  ++ "\n"
  ++ "nuixfj"
  ++ "ixozbutyj"
  ++ "isxlpkqhwrmvj"
  ++ "jincxga"
  ++ "jenidx"
