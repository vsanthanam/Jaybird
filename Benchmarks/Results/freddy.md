## Jaybird vs. Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3504 |      3576 |      3627 |      3977 |      4035 |      4149 |      4695 |       263 |
|                 jaybird                  |      2159 |      2206 |      2265 |      2474 |      2531 |      2669 |      2700 |       419 |
|                    Δ                     |     -1345 |     -1370 |     -1362 |     -1503 |     -1504 |     -1480 |     -1995 |       156 |
|              Improvement %               |        38 |        38 |        38 |        38 |        37 |        36 |        42 |       156 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3510 |      3578 |      3633 |      3983 |      4037 |      4151 |      4697 |       263 |
|                 jaybird                  |      2161 |      2208 |      2265 |      2478 |      2529 |      2671 |      2698 |       419 |
|                    Δ                     |     -1349 |     -1370 |     -1368 |     -1505 |     -1508 |     -1480 |     -1999 |       156 |
|              Improvement %               |        38 |        38 |        38 |        38 |        37 |        36 |        43 |       156 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       285 |       280 |       276 |       251 |       248 |       241 |       213 |       263 |
|                 jaybird                  |       463 |       454 |       442 |       404 |       395 |       375 |       370 |       419 |
|                    Δ                     |       178 |       174 |       166 |       153 |       147 |       134 |       157 |       156 |
|              Improvement %               |        62 |        62 |        60 |        61 |        59 |        56 |        74 |       156 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       263 |
|                 jaybird                  |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       419 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       156 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       156 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       263 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       419 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       156 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       156 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        66 |        66 |        67 |        67 |        68 |        68 |       263 |
|                 jaybird                  |        47 |        47 |        47 |        47 |        47 |        49 |        49 |       419 |
|                    Δ                     |       -19 |       -19 |       -19 |       -20 |       -20 |       -19 |       -19 |       156 |
|              Improvement %               |        29 |        29 |        29 |        30 |        30 |        28 |        28 |       156 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3548 |      3627 |      3682 |      3922 |      4024 |      4211 |      4246 |       263 |
|                 jaybird                  |      2190 |      2243 |      2304 |      2488 |      2578 |      2824 |      8147 |       412 |
|                    Δ                     |     -1358 |     -1384 |     -1378 |     -1434 |     -1446 |     -1387 |      3901 |       149 |
|              Improvement %               |        38 |        38 |        37 |        37 |        36 |        33 |       -92 |       149 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3550 |      3631 |      3686 |      3922 |      4033 |      4215 |      4245 |       263 |
|                 jaybird                  |      2192 |      2245 |      2302 |      2492 |      2578 |      2822 |      2965 |       412 |
|                    Δ                     |     -1358 |     -1386 |     -1384 |     -1430 |     -1455 |     -1393 |     -1280 |       149 |
|              Improvement %               |        38 |        38 |        38 |        36 |        36 |        33 |        30 |       149 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       282 |       276 |       272 |       255 |       248 |       238 |       236 |       263 |
|                 jaybird                  |       457 |       446 |       434 |       402 |       388 |       354 |       123 |       412 |
|                    Δ                     |       175 |       170 |       162 |       147 |       140 |       116 |      -113 |       149 |
|              Improvement %               |        62 |        62 |        60 |        58 |        56 |        49 |       -48 |       149 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       263 |
|                 jaybird                  |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       412 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       149 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       149 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       263 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       412 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       149 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       149 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        68 |        68 |        68 |        68 |        69 |        69 |       263 |
|                 jaybird                  |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       412 |
|                    Δ                     |       -19 |       -20 |       -20 |       -20 |       -20 |       -20 |       -19 |       149 |
|              Improvement %               |        28 |        29 |        29 |        29 |        29 |        29 |        28 |       149 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       860 |       884 |       900 |       985 |      1005 |      1035 |      1082 |      1024 |
|                 jaybird                  |       530 |       547 |       567 |       616 |       630 |       660 |      5401 |      1588 |
|                    Δ                     |      -330 |      -337 |      -333 |      -369 |      -375 |      -375 |      4319 |       564 |
|              Improvement %               |        38 |        38 |        37 |        37 |        37 |        36 |      -399 |       564 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       861 |       887 |       902 |       988 |      1007 |      1040 |      1079 |      1024 |
|                 jaybird                  |       532 |       549 |       569 |       619 |       632 |       660 |       744 |      1588 |
|                    Δ                     |      -329 |      -338 |      -333 |      -369 |      -375 |      -380 |      -335 |       564 |
|              Improvement %               |        38 |        38 |        37 |        37 |        37 |        37 |        31 |       564 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1163 |      1131 |      1112 |      1015 |       995 |       966 |       924 |      1024 |
|                 jaybird                  |      1888 |      1828 |      1763 |      1623 |      1588 |      1514 |       185 |      1588 |
|                    Δ                     |       725 |       697 |       651 |       608 |       593 |       548 |      -739 |       564 |
|              Improvement %               |        62 |        62 |        59 |        60 |        60 |        57 |       -80 |       564 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1024 |
|                 jaybird                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1588 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       564 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       564 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1024 |
|                 jaybird                  |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1588 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       564 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       564 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1024 |
|                 jaybird                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1588 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |       564 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       564 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       867 |       896 |       928 |      1001 |      1020 |      1052 |      1088 |      1002 |
|                 jaybird                  |       548 |       571 |       597 |       650 |       669 |       721 |      6803 |      1517 |
|                    Δ                     |      -319 |      -325 |      -331 |      -351 |      -351 |      -331 |      5715 |       515 |
|              Improvement %               |        37 |        36 |        36 |        35 |        34 |        31 |      -525 |       515 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       869 |       899 |       930 |      1004 |      1023 |      1054 |      1091 |      1002 |
|                 jaybird                  |       550 |       573 |       600 |       653 |       672 |       719 |       759 |      1517 |
|                    Δ                     |      -319 |      -326 |      -330 |      -351 |      -351 |      -335 |      -332 |       515 |
|              Improvement %               |        37 |        36 |        35 |        35 |        34 |        32 |        30 |       515 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1153 |      1117 |      1077 |       999 |       980 |       951 |       920 |      1002 |
|                 jaybird                  |      1826 |      1752 |      1675 |      1538 |      1494 |      1387 |       147 |      1517 |
|                    Δ                     |       673 |       635 |       598 |       539 |       514 |       436 |      -773 |       515 |
|              Improvement %               |        58 |        57 |        56 |        54 |        52 |        46 |       -84 |       515 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1002 |
|                 jaybird                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1517 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       515 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       515 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1002 |
|                 jaybird                  |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1517 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       515 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       515 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1002 |
|                 jaybird                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1517 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |       515 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       515 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1703 |      1780 |      1820 |      1977 |      2009 |      2064 |      2090 |       521 |
|                 jaybird                  |      1070 |      1117 |      1175 |      1252 |      1313 |      1399 |      1471 |       808 |
|                    Δ                     |      -633 |      -663 |      -645 |      -725 |      -696 |      -665 |      -619 |       287 |
|              Improvement %               |        37 |        37 |        35 |        37 |        35 |        32 |        30 |       287 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1705 |      1783 |      1822 |      1979 |      2009 |      2066 |      2086 |       521 |
|                 jaybird                  |      1072 |      1119 |      1176 |      1255 |      1316 |      1403 |      1474 |       808 |
|                    Δ                     |      -633 |      -664 |      -646 |      -724 |      -693 |      -663 |      -612 |       287 |
|              Improvement %               |        37 |        37 |        35 |        37 |        34 |        32 |        29 |       287 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       587 |       562 |       550 |       506 |       498 |       484 |       479 |       521 |
|                 jaybird                  |       935 |       895 |       852 |       798 |       762 |       715 |       680 |       808 |
|                    Δ                     |       348 |       333 |       302 |       292 |       264 |       231 |       201 |       287 |
|              Improvement %               |        59 |        59 |        55 |        58 |        53 |        48 |        42 |       287 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        28 |        28 |        28 |        28 |       521 |
|                 jaybird                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       808 |
|                    Δ                     |         0 |         1 |         1 |         0 |         0 |         0 |         0 |       287 |
|              Improvement %               |         0 |        -4 |        -4 |         0 |         0 |         0 |         0 |       287 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       521 |
|                 jaybird                  |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       808 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       287 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       287 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       521 |
|                 jaybird                  |        23 |        23 |        24 |        24 |        24 |        24 |        25 |       808 |
|                    Δ                     |       -10 |       -10 |        -9 |        -9 |        -9 |       -10 |        -9 |       287 |
|              Improvement %               |        30 |        30 |        27 |        27 |        27 |        29 |        26 |       287 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1745 |      1799 |      1835 |      1977 |      2035 |      2079 |      2139 |       519 |
|                 jaybird                  |      1080 |      1107 |      1123 |      1235 |      1255 |      1304 |      1329 |       828 |
|                    Δ                     |      -665 |      -692 |      -712 |      -742 |      -780 |      -775 |      -810 |       309 |
|              Improvement %               |        38 |        38 |        39 |        38 |        38 |        37 |        38 |       309 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1747 |      1802 |      1837 |      1979 |      2038 |      2083 |      2135 |       519 |
|                 jaybird                  |      1082 |      1110 |      1125 |      1237 |      1257 |      1306 |      1332 |       828 |
|                    Δ                     |      -665 |      -692 |      -712 |      -742 |      -781 |      -777 |      -803 |       309 |
|              Improvement %               |        38 |        38 |        39 |        37 |        38 |        37 |        38 |       309 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       573 |       556 |       545 |       506 |       492 |       481 |       468 |       519 |
|                 jaybird                  |       926 |       903 |       891 |       810 |       797 |       768 |       752 |       828 |
|                    Δ                     |       353 |       347 |       346 |       304 |       305 |       287 |       284 |       309 |
|              Improvement %               |        62 |        62 |        63 |        60 |        62 |        60 |        61 |       309 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |       519 |
|                 jaybird                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       828 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       309 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       309 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       519 |
|                 jaybird                  |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       828 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       309 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       309 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        34 |        34 |        34 |        34 |        34 |        34 |        34 |       519 |
|                 jaybird                  |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       828 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |        -9 |        -9 |       309 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        26 |        26 |       309 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        18 |        19 |        19 |        20 |        20 |        20 |        53 |
|                 jaybird                  |        12 |        12 |        13 |        14 |        14 |        16 |        16 |        75 |
|                    Δ                     |        -6 |        -6 |        -6 |        -5 |        -6 |        -4 |        -4 |        22 |
|              Improvement %               |        33 |        33 |        32 |        26 |        30 |        20 |        20 |        22 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        18 |        19 |        19 |        20 |        20 |        20 |        53 |
|                 jaybird                  |        12 |        12 |        13 |        14 |        14 |        16 |        16 |        75 |
|                    Δ                     |        -6 |        -6 |        -6 |        -5 |        -6 |        -4 |        -4 |        22 |
|              Improvement %               |        33 |        33 |        32 |        26 |        30 |        20 |        20 |        22 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        56 |        55 |        53 |        51 |        50 |        49 |        49 |        53 |
|                 jaybird                  |        83 |        80 |        76 |        73 |        70 |        63 |        63 |        75 |
|                    Δ                     |        27 |        25 |        23 |        22 |        20 |        14 |        14 |        22 |
|              Improvement %               |        48 |        45 |        43 |        43 |        40 |        29 |        29 |        22 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        34 |        40 |        42 |        42 |        42 |        42 |        42 |        53 |
|                 jaybird                  |        50 |        50 |        51 |        59 |        59 |        59 |        59 |        75 |
|                    Δ                     |        16 |        10 |         9 |        17 |        17 |        17 |        17 |        22 |
|              Improvement %               |       -47 |       -25 |       -21 |       -40 |       -40 |       -40 |       -40 |        22 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        53 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        75 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        22 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        22 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       333 |       333 |       333 |       334 |       334 |       338 |       338 |        53 |
|                 jaybird                  |       240 |       241 |       245 |       245 |       246 |       256 |       256 |        75 |
|                    Δ                     |       -93 |       -92 |       -88 |       -89 |       -88 |       -82 |       -82 |        22 |
|              Improvement %               |        28 |        28 |        26 |        27 |        26 |        24 |        24 |        22 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        18 |        19 |        19 |        20 |        22 |        22 |        53 |
|                 jaybird                  |        12 |        12 |        13 |        13 |        14 |        15 |        15 |        76 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -7 |        -7 |        23 |
|              Improvement %               |        33 |        33 |        32 |        32 |        30 |        32 |        32 |        23 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        18 |        19 |        19 |        20 |        22 |        22 |        53 |
|                 jaybird                  |        12 |        12 |        13 |        13 |        14 |        15 |        15 |        76 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -7 |        -7 |        23 |
|              Improvement %               |        33 |        33 |        32 |        32 |        30 |        32 |        32 |        23 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        57 |        55 |        53 |        52 |        50 |        45 |        45 |        53 |
|                 jaybird                  |        84 |        80 |        78 |        75 |        72 |        68 |        68 |        76 |
|                    Δ                     |        27 |        25 |        25 |        23 |        22 |        23 |        23 |        23 |
|              Improvement %               |        47 |        45 |        47 |        44 |        44 |        51 |        51 |        23 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        39 |        39 |        39 |        39 |        39 |        39 |        53 |
|                 jaybird                  |        51 |        52 |        52 |        52 |        52 |        52 |        52 |        76 |
|                    Δ                     |        19 |        13 |        13 |        13 |        13 |        13 |        13 |        23 |
|              Improvement %               |       -59 |       -33 |       -33 |       -33 |       -33 |       -33 |       -33 |        23 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        53 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        76 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        23 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        23 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       339 |       339 |       339 |       340 |       340 |       347 |       347 |        53 |
|                 jaybird                  |       245 |       245 |       246 |       246 |       246 |       261 |       261 |        76 |
|                    Δ                     |       -94 |       -94 |       -93 |       -94 |       -94 |       -86 |       -86 |        23 |
|              Improvement %               |        28 |        28 |        27 |        28 |        28 |        25 |        25 |        23 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       212 |       223 |       228 |       247 |       255 |       268 |       288 |      3595 |
|                 jaybird                  |       133 |       142 |       148 |       159 |       169 |       183 |       211 |      5148 |
|                    Δ                     |       -79 |       -81 |       -80 |       -88 |       -86 |       -85 |       -77 |      1553 |
|              Improvement %               |        37 |        36 |        35 |        36 |        34 |        32 |        27 |      1553 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       214 |       225 |       231 |       249 |       257 |       269 |       286 |      3595 |
|                 jaybird                  |       135 |       145 |       150 |       162 |       171 |       185 |       210 |      5148 |
|                    Δ                     |       -79 |       -80 |       -81 |       -87 |       -86 |       -84 |       -76 |      1553 |
|              Improvement %               |        37 |        36 |        35 |        35 |        33 |        31 |        27 |      1553 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4708 |      4491 |      4383 |      4057 |      3921 |      3741 |      3475 |      3595 |
|                 jaybird                  |      7502 |      7023 |      6759 |      6271 |      5919 |      5471 |      4736 |      5148 |
|                    Δ                     |      2794 |      2532 |      2376 |      2214 |      1998 |      1730 |      1261 |      1553 |
|              Improvement %               |        59 |        56 |        54 |        55 |        51 |        46 |        36 |      1553 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      3595 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      5148 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1553 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1553 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      3595 |
|                 jaybird                  |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5148 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1553 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1553 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4155 |      4157 |      4164 |      4166 |      4168 |      4231 |      4246 |      3595 |
|                 jaybird                  |      2936 |      2937 |      2941 |      2943 |      2945 |      3015 |      3083 |      5148 |
|                    Δ                     |     -1219 |     -1220 |     -1223 |     -1223 |     -1223 |     -1216 |     -1163 |      1553 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        27 |      1553 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       218 |       227 |       233 |       253 |       260 |       270 |       297 |      3525 |
|                 jaybird                  |       135 |       144 |       150 |       160 |       168 |       186 |       212 |      5118 |
|                    Δ                     |       -83 |       -83 |       -83 |       -93 |       -92 |       -84 |       -85 |      1593 |
|              Improvement %               |        38 |        37 |        36 |        37 |        35 |        31 |        29 |      1593 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       220 |       229 |       235 |       255 |       262 |       272 |       294 |      3525 |
|                 jaybird                  |       136 |       146 |       152 |       162 |       170 |       188 |       214 |      5118 |
|                    Δ                     |       -84 |       -83 |       -83 |       -93 |       -92 |       -84 |       -80 |      1593 |
|              Improvement %               |        38 |        36 |        35 |        36 |        35 |        31 |        27 |      1593 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4579 |      4403 |      4291 |      3951 |      3847 |      3709 |      3370 |      3525 |
|                 jaybird                  |      7433 |      6947 |      6663 |      6263 |      5951 |      5379 |      4710 |      5118 |
|                    Δ                     |      2854 |      2544 |      2372 |      2312 |      2104 |      1670 |      1340 |      1593 |
|              Improvement %               |        62 |        58 |        55 |        59 |        55 |        45 |        40 |      1593 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      3525 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      5118 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1593 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1593 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      3525 |
|                 jaybird                  |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5118 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1593 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1593 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4225 |      4231 |      4235 |      4235 |      4239 |      4293 |      4308 |      3525 |
|                 jaybird                  |      2990 |      2992 |      2996 |      2998 |      3000 |      3070 |      3148 |      5118 |
|                    Δ                     |     -1235 |     -1239 |     -1239 |     -1237 |     -1239 |     -1223 |     -1160 |      1593 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        28 |        27 |      1593 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       104 |       108 |       112 |       120 |       124 |       131 |       158 |      6451 |
|                 jaybird                  |        98 |       102 |       106 |       115 |       118 |       124 |       151 |      6881 |
|                    Δ                     |        -6 |        -6 |        -6 |        -5 |        -6 |        -7 |        -7 |       430 |
|              Improvement %               |         6 |         6 |         5 |         4 |         5 |         5 |         4 |       430 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       106 |       110 |       114 |       122 |       127 |       132 |       162 |      6451 |
|                 jaybird                  |       100 |       104 |       108 |       117 |       121 |       126 |       155 |      6881 |
|                    Δ                     |        -6 |        -6 |        -6 |        -5 |        -6 |        -6 |        -7 |       430 |
|              Improvement %               |         6 |         5 |         5 |         4 |         5 |         5 |         4 |       430 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      9585 |      9287 |      8951 |      8335 |      8035 |      7659 |      6321 |      6451 |
|                 jaybird                  |     10157 |      9831 |      9415 |      8711 |      8455 |      8083 |      6606 |      6881 |
|                    Δ                     |       572 |       544 |       464 |       376 |       420 |       424 |       285 |       430 |
|              Improvement %               |         6 |         6 |         5 |         5 |         5 |         6 |         5 |       430 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6451 |
|                 jaybird                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6881 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       430 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       430 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      6451 |
|                 jaybird                  |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      6881 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       430 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       430 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2661 |      2662 |      2664 |      2666 |      2669 |      2683 |      2819 |      6451 |
|                 jaybird                  |      2478 |      2478 |      2480 |      2482 |      2484 |      2497 |      2710 |      6881 |
|                    Δ                     |      -183 |      -184 |      -184 |      -184 |      -185 |      -186 |      -109 |       430 |
|              Improvement %               |         7 |         7 |         7 |         7 |         7 |         7 |         4 |       430 |

<p>
</details>

### Parse (micro) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1750 |      1916 |      2000 |      2293 |      2459 |      3335 |     15875 |     10000 |
|                 jaybird                  |      1750 |      1958 |      2042 |      2375 |      2583 |      3459 |     17375 |     10000 |
|                    Δ                     |         0 |        42 |        42 |        82 |       124 |       124 |      1500 |         0 |
|              Improvement %               |         0 |        -2 |        -2 |        -4 |        -5 |        -4 |        -9 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3291 |      3751 |      3917 |      4419 |      4751 |      5919 |     18542 |     10000 |
|                 jaybird                  |      3333 |      3833 |      4001 |      4587 |      4875 |      6127 |     17250 |     10000 |
|                    Δ                     |        42 |        82 |        84 |       168 |       124 |       208 |     -1292 |         0 |
|              Improvement %               |        -1 |        -2 |        -2 |        -4 |        -3 |        -4 |         7 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       571 |       522 |       500 |       436 |       407 |       296 |        63 |     10000 |
|                 jaybird                  |       571 |       511 |       490 |       421 |       387 |       289 |        58 |     10000 |
|                    Δ                     |         0 |       -11 |       -10 |       -15 |       -20 |        -7 |        -5 |         0 |
|              Improvement %               |         0 |        -2 |        -2 |        -3 |        -5 |        -2 |        -8 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10000 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10000 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     10000 |
|                 jaybird                  |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     10000 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        18 |        18 |        18 |        18 |        20 |        29 |     10000 |
|                 jaybird                  |        19 |        19 |        19 |        19 |        19 |        21 |        32 |     10000 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         3 |         0 |
|              Improvement %               |        -6 |        -6 |        -6 |        -6 |        -6 |        -5 |       -10 |         0 |

<p>
</details>

### Parse (micro-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1750 |      1959 |      2335 |      2501 |      2917 |      3501 |     20917 |     10000 |
|                 jaybird                  |      1791 |      2042 |      2417 |      2583 |      2959 |      3709 |     18959 |     10000 |
|                    Δ                     |        41 |        83 |        82 |        82 |        42 |       208 |     -1958 |         0 |
|              Improvement %               |        -2 |        -4 |        -4 |        -3 |        -1 |        -6 |         9 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3375 |      3919 |      4335 |      4751 |      5211 |      6087 |     19333 |     10000 |
|                 jaybird                  |      3417 |      4001 |      4335 |      4711 |      5251 |      6251 |     19833 |     10000 |
|                    Δ                     |        42 |        82 |         0 |       -40 |        40 |       164 |       500 |         0 |
|              Improvement %               |        -1 |        -2 |         0 |         1 |        -1 |        -3 |        -3 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       571 |       511 |       429 |       400 |       343 |       286 |        48 |     10000 |
|                 jaybird                  |       558 |       490 |       414 |       387 |       338 |       267 |        53 |     10000 |
|                    Δ                     |       -13 |       -21 |       -15 |       -13 |        -5 |       -19 |         5 |         0 |
|              Improvement %               |        -2 |        -4 |        -3 |        -3 |        -1 |        -7 |        10 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10000 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10000 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     10000 |
|                 jaybird                  |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     10000 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        18 |        18 |        18 |        18 |        20 |        35 |     10000 |
|                 jaybird                  |        19 |        19 |        19 |        19 |        19 |        21 |        32 |     10000 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |        -3 |         0 |
|              Improvement %               |        -6 |        -6 |        -6 |        -6 |        -6 |        -5 |         9 |         0 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        98 |       101 |       103 |       112 |       116 |       121 |       265 |      6858 |
|                 jaybird                  |        59 |        61 |        62 |        68 |        70 |        78 |       118 |      9905 |
|                    Δ                     |       -39 |       -40 |       -41 |       -44 |       -46 |       -43 |      -147 |      3047 |
|              Improvement %               |        40 |        40 |        40 |        39 |        40 |        36 |        55 |      3047 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        99 |       103 |       106 |       114 |       118 |       123 |       144 |      6858 |
|                 jaybird                  |        60 |        63 |        65 |        70 |        73 |        78 |       123 |      9905 |
|                    Δ                     |       -39 |       -40 |       -41 |       -44 |       -45 |       -45 |       -21 |      3047 |
|              Improvement %               |        39 |        39 |        39 |        39 |        38 |        37 |        15 |      3047 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     10239 |      9951 |      9679 |      8959 |      8647 |      8271 |      3768 |      6858 |
|                 jaybird                  |     17082 |     16495 |     16039 |     14767 |     14199 |     12807 |      8466 |      9905 |
|                    Δ                     |      6843 |      6544 |      6360 |      5808 |      5552 |      4536 |      4698 |      3047 |
|              Improvement %               |        67 |        66 |        66 |        65 |        64 |        55 |       125 |      3047 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      6858 |
|                 jaybird                  |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      9905 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      3047 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      3047 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      6858 |
|                 jaybird                  |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      9905 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      3047 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      3047 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1800 |      1801 |      1803 |      1805 |      1806 |      1819 |      1876 |      6858 |
|                 jaybird                  |      1533 |      1534 |      1535 |      1536 |      1538 |      1546 |      1665 |      9905 |
|                    Δ                     |      -267 |      -267 |      -268 |      -269 |      -268 |      -273 |      -211 |      3047 |
|              Improvement %               |        15 |        15 |        15 |        15 |        15 |        15 |        11 |      3047 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       383 |       409 |       429 |       455 |       478 |       521 |       595 |      2088 |
|                 jaybird                  |        81 |        87 |        93 |        99 |       107 |       134 |       198 |      7280 |
|                    Δ                     |      -302 |      -322 |      -336 |      -356 |      -371 |      -387 |      -397 |      5192 |
|              Improvement %               |        79 |        79 |        78 |        78 |        78 |        74 |        67 |      5192 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       385 |       411 |       431 |       457 |       480 |       525 |       595 |      2088 |
|                 jaybird                  |        82 |        89 |        95 |       101 |       109 |       137 |       201 |      7280 |
|                    Δ                     |      -303 |      -322 |      -336 |      -356 |      -371 |      -388 |      -394 |      5192 |
|              Improvement %               |        79 |        78 |        78 |        78 |        77 |        74 |        66 |      5192 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2609 |      2447 |      2331 |      2199 |      2091 |      1921 |      1679 |      2088 |
|                 jaybird                  |     12416 |     11527 |     10791 |     10103 |      9391 |      7451 |      5054 |      7280 |
|                    Δ                     |      9807 |      9080 |      8460 |      7904 |      7300 |      5530 |      3375 |      5192 |
|              Improvement %               |       376 |       371 |       363 |       359 |       349 |       288 |       201 |      5192 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      2088 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      7280 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5192 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5192 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5701 |      5701 |      5701 |      5701 |      5701 |      5701 |      5701 |      2088 |
|                 jaybird                  |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      7280 |
|                    Δ                     |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |      5192 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      5192 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8225 |      8229 |      8237 |      8241 |      8245 |      8675 |      8690 |      2088 |
|                 jaybird                  |      1462 |      1463 |      1465 |      1467 |      1467 |      1481 |      1505 |      7280 |
|                    Δ                     |     -6763 |     -6766 |     -6772 |     -6774 |     -6778 |     -7194 |     -7185 |      5192 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        83 |        83 |      5192 |

<p>
</details>

