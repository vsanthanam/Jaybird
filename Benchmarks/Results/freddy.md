## Jaybird vs. Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3504 |      3576 |      3627 |      3977 |      4035 |      4149 |      4695 |       263 |
|                 jaybird                  |      2139 |      2191 |      2216 |      2333 |      2480 |      2560 |      2619 |       432 |
|                    Δ                     |     -1365 |     -1385 |     -1411 |     -1644 |     -1555 |     -1589 |     -2076 |       169 |
|              Improvement %               |        39 |        39 |        39 |        41 |        39 |        38 |        44 |       169 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3510 |      3578 |      3633 |      3983 |      4037 |      4151 |      4697 |       263 |
|                 jaybird                  |      2146 |      2193 |      2218 |      2333 |      2480 |      2562 |      2620 |       432 |
|                    Δ                     |     -1364 |     -1385 |     -1415 |     -1650 |     -1557 |     -1589 |     -2077 |       169 |
|              Improvement %               |        39 |        39 |        39 |        41 |        39 |        38 |        44 |       169 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       285 |       280 |       276 |       251 |       248 |       241 |       213 |       263 |
|                 jaybird                  |       468 |       456 |       451 |       429 |       404 |       391 |       382 |       432 |
|                    Δ                     |       183 |       176 |       175 |       178 |       156 |       150 |       169 |       169 |
|              Improvement %               |        64 |        63 |        63 |        71 |        63 |        62 |        79 |       169 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       263 |
|                 jaybird                  |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       432 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       169 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       169 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       263 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       432 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       169 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       169 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        66 |        66 |        67 |        67 |        68 |        68 |       263 |
|                 jaybird                  |        47 |        47 |        47 |        47 |        47 |        48 |        49 |       432 |
|                    Δ                     |       -19 |       -19 |       -19 |       -20 |       -20 |       -20 |       -19 |       169 |
|              Improvement %               |        29 |        29 |        29 |        30 |        30 |        29 |        28 |       169 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3548 |      3627 |      3682 |      3922 |      4024 |      4211 |      4246 |       263 |
|                 jaybird                  |      2206 |      2251 |      2292 |      2492 |      2548 |      2660 |      2991 |       415 |
|                    Δ                     |     -1342 |     -1376 |     -1390 |     -1430 |     -1476 |     -1551 |     -1255 |       152 |
|              Improvement %               |        38 |        38 |        38 |        36 |        37 |        37 |        30 |       152 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3550 |      3631 |      3686 |      3922 |      4033 |      4215 |      4245 |       263 |
|                 jaybird                  |      2207 |      2251 |      2292 |      2494 |      2548 |      2664 |      2991 |       415 |
|                    Δ                     |     -1343 |     -1380 |     -1394 |     -1428 |     -1485 |     -1551 |     -1254 |       152 |
|              Improvement %               |        38 |        38 |        38 |        36 |        37 |        37 |        30 |       152 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       282 |       276 |       272 |       255 |       248 |       238 |       236 |       263 |
|                 jaybird                  |       453 |       445 |       437 |       401 |       393 |       376 |       334 |       415 |
|                    Δ                     |       171 |       169 |       165 |       146 |       145 |       138 |        98 |       152 |
|              Improvement %               |        61 |        61 |        61 |        57 |        58 |        58 |        42 |       152 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       263 |
|                 jaybird                  |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       415 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       152 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       152 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       263 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       415 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       152 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       152 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        68 |        68 |        68 |        68 |        69 |        69 |       263 |
|                 jaybird                  |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       415 |
|                    Δ                     |       -19 |       -20 |       -20 |       -20 |       -20 |       -20 |       -19 |       152 |
|              Improvement %               |        28 |        29 |        29 |        29 |        29 |        29 |        28 |       152 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       860 |       884 |       900 |       985 |      1005 |      1035 |      1082 |      1024 |
|                 jaybird                  |       528 |       547 |       558 |       607 |       623 |       663 |       769 |      1616 |
|                    Δ                     |      -332 |      -337 |      -342 |      -378 |      -382 |      -372 |      -313 |       592 |
|              Improvement %               |        39 |        38 |        38 |        38 |        38 |        36 |        29 |       592 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       861 |       887 |       902 |       988 |      1007 |      1040 |      1079 |      1024 |
|                 jaybird                  |       530 |       549 |       560 |       609 |       625 |       665 |       773 |      1616 |
|                    Δ                     |      -331 |      -338 |      -342 |      -379 |      -382 |      -375 |      -306 |       592 |
|              Improvement %               |        38 |        38 |        38 |        38 |        38 |        36 |        28 |       592 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1163 |      1131 |      1112 |      1015 |       995 |       966 |       924 |      1024 |
|                 jaybird                  |      1895 |      1830 |      1794 |      1647 |      1606 |      1510 |      1300 |      1616 |
|                    Δ                     |       732 |       699 |       682 |       632 |       611 |       544 |       376 |       592 |
|              Improvement %               |        63 |        62 |        61 |        62 |        61 |        56 |        41 |       592 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1024 |
|                 jaybird                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1616 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       592 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       592 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1024 |
|                 jaybird                  |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1616 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       592 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       592 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1024 |
|                 jaybird                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1616 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |       592 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       592 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       867 |       896 |       928 |      1001 |      1020 |      1052 |      1088 |      1002 |
|                 jaybird                  |       533 |       553 |       567 |       619 |       633 |       683 |       748 |      1589 |
|                    Δ                     |      -334 |      -343 |      -361 |      -382 |      -387 |      -369 |      -340 |       587 |
|              Improvement %               |        39 |        38 |        39 |        38 |        38 |        35 |        31 |       587 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       869 |       899 |       930 |      1004 |      1023 |      1054 |      1091 |      1002 |
|                 jaybird                  |       535 |       555 |       568 |       621 |       635 |       686 |       750 |      1589 |
|                    Δ                     |      -334 |      -344 |      -362 |      -383 |      -388 |      -368 |      -341 |       587 |
|              Improvement %               |        38 |        38 |        39 |        38 |        38 |        35 |        31 |       587 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1153 |      1117 |      1077 |       999 |       980 |       951 |       920 |      1002 |
|                 jaybird                  |      1876 |      1809 |      1765 |      1616 |      1579 |      1465 |      1337 |      1589 |
|                    Δ                     |       723 |       692 |       688 |       617 |       599 |       514 |       417 |       587 |
|              Improvement %               |        63 |        62 |        64 |        62 |        61 |        54 |        45 |       587 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1002 |
|                 jaybird                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1589 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       587 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       587 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1002 |
|                 jaybird                  |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1589 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       587 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       587 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1002 |
|                 jaybird                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1589 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |       587 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       587 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1703 |      1780 |      1820 |      1977 |      2009 |      2064 |      2090 |       521 |
|                 jaybird                  |      1060 |      1090 |      1108 |      1218 |      1243 |      1335 |      1598 |       838 |
|                    Δ                     |      -643 |      -690 |      -712 |      -759 |      -766 |      -729 |      -492 |       317 |
|              Improvement %               |        38 |        39 |        39 |        38 |        38 |        35 |        24 |       317 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1705 |      1783 |      1822 |      1979 |      2009 |      2066 |      2086 |       521 |
|                 jaybird                  |      1062 |      1092 |      1109 |      1220 |      1245 |      1332 |      1601 |       838 |
|                    Δ                     |      -643 |      -691 |      -713 |      -759 |      -764 |      -734 |      -485 |       317 |
|              Improvement %               |        38 |        39 |        39 |        38 |        38 |        36 |        23 |       317 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       587 |       562 |       550 |       506 |       498 |       484 |       479 |       521 |
|                 jaybird                  |       944 |       918 |       903 |       822 |       805 |       749 |       626 |       838 |
|                    Δ                     |       357 |       356 |       353 |       316 |       307 |       265 |       147 |       317 |
|              Improvement %               |        61 |        63 |        64 |        62 |        62 |        55 |        31 |       317 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        28 |        28 |        28 |        28 |       521 |
|                 jaybird                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       838 |
|                    Δ                     |         0 |         1 |         1 |         0 |         0 |         0 |         0 |       317 |
|              Improvement %               |         0 |        -4 |        -4 |         0 |         0 |         0 |         0 |       317 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       521 |
|                 jaybird                  |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       838 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       317 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       317 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       521 |
|                 jaybird                  |        23 |        23 |        24 |        24 |        24 |        24 |        25 |       838 |
|                    Δ                     |       -10 |       -10 |        -9 |        -9 |        -9 |       -10 |        -9 |       317 |
|              Improvement %               |        30 |        30 |        27 |        27 |        27 |        29 |        26 |       317 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1745 |      1799 |      1835 |      1977 |      2035 |      2079 |      2139 |       519 |
|                 jaybird                  |      1079 |      1111 |      1132 |      1241 |      1273 |      1323 |      1380 |       824 |
|                    Δ                     |      -666 |      -688 |      -703 |      -736 |      -762 |      -756 |      -759 |       305 |
|              Improvement %               |        38 |        38 |        38 |        37 |        37 |        36 |        35 |       305 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1747 |      1802 |      1837 |      1979 |      2038 |      2083 |      2135 |       519 |
|                 jaybird                  |      1081 |      1113 |      1134 |      1243 |      1274 |      1322 |      1380 |       824 |
|                    Δ                     |      -666 |      -689 |      -703 |      -736 |      -764 |      -761 |      -755 |       305 |
|              Improvement %               |        38 |        38 |        38 |        37 |        37 |        37 |        35 |       305 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       573 |       556 |       545 |       506 |       492 |       481 |       468 |       519 |
|                 jaybird                  |       926 |       900 |       884 |       806 |       786 |       756 |       725 |       824 |
|                    Δ                     |       353 |       344 |       339 |       300 |       294 |       275 |       257 |       305 |
|              Improvement %               |        62 |        62 |        62 |        59 |        60 |        57 |        55 |       305 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |       519 |
|                 jaybird                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       824 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       305 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       305 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       519 |
|                 jaybird                  |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       824 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       305 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       305 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        34 |        34 |        34 |        34 |        34 |        34 |        34 |       519 |
|                 jaybird                  |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       824 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |        -9 |        -9 |       305 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        26 |        26 |       305 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        18 |        19 |        19 |        20 |        20 |        20 |        53 |
|                 jaybird                  |        11 |        12 |        12 |        13 |        13 |        15 |        15 |        80 |
|                    Δ                     |        -7 |        -6 |        -7 |        -6 |        -7 |        -5 |        -5 |        27 |
|              Improvement %               |        39 |        33 |        37 |        32 |        35 |        25 |        25 |        27 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        18 |        19 |        19 |        20 |        20 |        20 |        53 |
|                 jaybird                  |        11 |        12 |        12 |        13 |        13 |        15 |        15 |        80 |
|                    Δ                     |        -7 |        -6 |        -7 |        -6 |        -7 |        -5 |        -5 |        27 |
|              Improvement %               |        39 |        33 |        37 |        32 |        35 |        25 |        25 |        27 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        56 |        55 |        53 |        51 |        50 |        49 |        49 |        53 |
|                 jaybird                  |        87 |        85 |        82 |        78 |        76 |        68 |        68 |        80 |
|                    Δ                     |        31 |        30 |        29 |        27 |        26 |        19 |        19 |        27 |
|              Improvement %               |        55 |        55 |        55 |        53 |        52 |        39 |        39 |        27 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        34 |        40 |        42 |        42 |        42 |        42 |        42 |        53 |
|                 jaybird                  |        51 |        52 |        52 |        52 |        52 |        52 |        52 |        80 |
|                    Δ                     |        17 |        12 |        10 |        10 |        10 |        10 |        10 |        27 |
|              Improvement %               |       -50 |       -30 |       -24 |       -24 |       -24 |       -24 |       -24 |        27 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        53 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        80 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        27 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        27 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       333 |       333 |       333 |       334 |       334 |       338 |       338 |        53 |
|                 jaybird                  |       240 |       241 |       241 |       241 |       242 |       252 |       252 |        80 |
|                    Δ                     |       -93 |       -92 |       -92 |       -93 |       -92 |       -86 |       -86 |        27 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        25 |        25 |        27 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        18 |        19 |        19 |        20 |        22 |        22 |        53 |
|                 jaybird                  |        12 |        12 |        13 |        14 |        14 |        15 |        15 |        76 |
|                    Δ                     |        -6 |        -6 |        -6 |        -5 |        -6 |        -7 |        -7 |        23 |
|              Improvement %               |        33 |        33 |        32 |        26 |        30 |        32 |        32 |        23 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        18 |        19 |        19 |        20 |        22 |        22 |        53 |
|                 jaybird                  |        12 |        13 |        13 |        14 |        14 |        15 |        15 |        76 |
|                    Δ                     |        -6 |        -5 |        -6 |        -5 |        -6 |        -7 |        -7 |        23 |
|              Improvement %               |        33 |        28 |        32 |        26 |        30 |        32 |        32 |        23 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        57 |        55 |        53 |        52 |        50 |        45 |        45 |        53 |
|                 jaybird                  |        81 |        80 |        77 |        74 |        71 |        67 |        67 |        76 |
|                    Δ                     |        24 |        25 |        24 |        22 |        21 |        22 |        22 |        23 |
|              Improvement %               |        42 |        45 |        45 |        42 |        42 |        49 |        49 |        23 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        39 |        39 |        39 |        39 |        39 |        39 |        53 |
|                 jaybird                  |        50 |        50 |        50 |        50 |        51 |        51 |        51 |        76 |
|                    Δ                     |        18 |        11 |        11 |        11 |        12 |        12 |        12 |        23 |
|              Improvement %               |       -56 |       -28 |       -28 |       -28 |       -31 |       -31 |       -31 |        23 |

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
|                 jaybird                  |       247 |       250 |       250 |       250 |       250 |       259 |       259 |        76 |
|                    Δ                     |       -92 |       -89 |       -89 |       -90 |       -90 |       -88 |       -88 |        23 |
|              Improvement %               |        27 |        26 |        26 |        26 |        26 |        25 |        25 |        23 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       212 |       223 |       228 |       247 |       255 |       268 |       288 |      3595 |
|                 jaybird                  |       134 |       138 |       144 |       155 |       160 |       172 |       204 |      5290 |
|                    Δ                     |       -78 |       -85 |       -84 |       -92 |       -95 |       -96 |       -84 |      1695 |
|              Improvement %               |        37 |        38 |        37 |        37 |        37 |        36 |        29 |      1695 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       214 |       225 |       231 |       249 |       257 |       269 |       286 |      3595 |
|                 jaybird                  |       136 |       140 |       146 |       157 |       162 |       171 |       198 |      5290 |
|                    Δ                     |       -78 |       -85 |       -85 |       -92 |       -95 |       -98 |       -88 |      1695 |
|              Improvement %               |        36 |        38 |        37 |        37 |        37 |        36 |        31 |      1695 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4708 |      4491 |      4383 |      4057 |      3921 |      3741 |      3475 |      3595 |
|                 jaybird                  |      7463 |      7231 |      6951 |      6467 |      6255 |      5823 |      4891 |      5290 |
|                    Δ                     |      2755 |      2740 |      2568 |      2410 |      2334 |      2082 |      1416 |      1695 |
|              Improvement %               |        59 |        61 |        59 |        59 |        60 |        56 |        41 |      1695 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      3595 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      5290 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1695 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1695 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      3595 |
|                 jaybird                  |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5290 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1695 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1695 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4155 |      4157 |      4164 |      4166 |      4168 |      4231 |      4246 |      3595 |
|                 jaybird                  |      2941 |      2943 |      2947 |      2949 |      2951 |      3017 |      3087 |      5290 |
|                    Δ                     |     -1214 |     -1214 |     -1217 |     -1217 |     -1217 |     -1214 |     -1159 |      1695 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        27 |      1695 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       218 |       227 |       233 |       253 |       260 |       270 |       297 |      3525 |
|                 jaybird                  |       135 |       140 |       144 |       158 |       164 |       173 |       195 |      5254 |
|                    Δ                     |       -83 |       -87 |       -89 |       -95 |       -96 |       -97 |      -102 |      1729 |
|              Improvement %               |        38 |        38 |        38 |        38 |        37 |        36 |        34 |      1729 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       220 |       229 |       235 |       255 |       262 |       272 |       294 |      3525 |
|                 jaybird                  |       137 |       141 |       146 |       159 |       166 |       174 |       199 |      5254 |
|                    Δ                     |       -83 |       -88 |       -89 |       -96 |       -96 |       -98 |       -95 |      1729 |
|              Improvement %               |        38 |        38 |        38 |        38 |        37 |        36 |        32 |      1729 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4579 |      4403 |      4291 |      3951 |      3847 |      3709 |      3370 |      3525 |
|                 jaybird                  |      7389 |      7163 |      6951 |      6347 |      6115 |      5775 |      5125 |      5254 |
|                    Δ                     |      2810 |      2760 |      2660 |      2396 |      2268 |      2066 |      1755 |      1729 |
|              Improvement %               |        61 |        63 |        62 |        61 |        59 |        56 |        52 |      1729 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      3525 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      5254 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1729 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1729 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      3525 |
|                 jaybird                  |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5254 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1729 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1729 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4225 |      4231 |      4235 |      4235 |      4239 |      4293 |      4308 |      3525 |
|                 jaybird                  |      2991 |      2992 |      2996 |      2998 |      3000 |      3064 |      3144 |      5254 |
|                    Δ                     |     -1234 |     -1239 |     -1239 |     -1237 |     -1239 |     -1229 |     -1164 |      1729 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        27 |      1729 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       104 |       108 |       112 |       120 |       124 |       131 |       158 |      6451 |
|                 jaybird                  |        99 |       103 |       107 |       116 |       120 |       128 |       155 |      6835 |
|                    Δ                     |        -5 |        -5 |        -5 |        -4 |        -4 |        -3 |        -3 |       384 |
|              Improvement %               |         5 |         5 |         4 |         3 |         3 |         2 |         2 |       384 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       106 |       110 |       114 |       122 |       127 |       132 |       162 |      6451 |
|                 jaybird                  |       101 |       104 |       109 |       118 |       121 |       128 |       155 |      6835 |
|                    Δ                     |        -5 |        -6 |        -5 |        -4 |        -6 |        -4 |        -7 |       384 |
|              Improvement %               |         5 |         5 |         4 |         3 |         5 |         3 |         4 |       384 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      9585 |      9287 |      8951 |      8335 |      8035 |      7659 |      6321 |      6451 |
|                 jaybird                  |     10054 |      9743 |      9335 |      8631 |      8367 |      7835 |      6443 |      6835 |
|                    Δ                     |       469 |       456 |       384 |       296 |       332 |       176 |       122 |       384 |
|              Improvement %               |         5 |         5 |         4 |         4 |         4 |         2 |         2 |       384 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6451 |
|                 jaybird                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6835 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       384 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       384 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      6451 |
|                 jaybird                  |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      6835 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       384 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       384 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2661 |      2662 |      2664 |      2666 |      2669 |      2683 |      2819 |      6451 |
|                 jaybird                  |      2478 |      2478 |      2480 |      2482 |      2484 |      2497 |      2729 |      6835 |
|                    Δ                     |      -183 |      -184 |      -184 |      -184 |      -185 |      -186 |       -90 |       384 |
|              Improvement %               |         7 |         7 |         7 |         7 |         7 |         7 |         3 |       384 |

<p>
</details>

### Parse (micro) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1750 |      1916 |      2000 |      2293 |      2459 |      3335 |     15875 |     10000 |
|                 jaybird                  |      1791 |      2000 |      2375 |      2459 |      2917 |      3625 |     17125 |     10000 |
|                    Δ                     |        41 |        84 |       375 |       166 |       458 |       290 |      1250 |         0 |
|              Improvement %               |        -2 |        -4 |       -19 |        -7 |       -19 |        -9 |        -8 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3291 |      3751 |      3917 |      4419 |      4751 |      5919 |     18542 |     10000 |
|                 jaybird                  |      3333 |      3667 |      4001 |      4295 |      4919 |      5959 |     15751 |     10000 |
|                    Δ                     |        42 |       -84 |        84 |      -124 |       168 |        40 |     -2791 |         0 |
|              Improvement %               |        -1 |         2 |        -2 |         3 |        -4 |        -1 |        15 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       571 |       522 |       500 |       436 |       407 |       296 |        63 |     10000 |
|                 jaybird                  |       558 |       500 |       421 |       407 |       343 |       276 |        58 |     10000 |
|                    Δ                     |       -13 |       -22 |       -79 |       -29 |       -64 |       -20 |        -5 |         0 |
|              Improvement %               |        -2 |        -4 |       -16 |        -7 |       -16 |        -7 |        -8 |         0 |

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
|                 jaybird                  |        19 |        19 |        19 |        19 |        20 |        21 |        33 |     10000 |
|                    Δ                     |         1 |         1 |         1 |         1 |         2 |         1 |         4 |         0 |
|              Improvement %               |        -6 |        -6 |        -6 |        -6 |       -11 |        -5 |       -14 |         0 |

<p>
</details>

### Parse (micro-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1750 |      1959 |      2335 |      2501 |      2917 |      3501 |     20917 |     10000 |
|                 jaybird                  |      1791 |      1958 |      2000 |      2293 |      2459 |      3335 |     16584 |     10000 |
|                    Δ                     |        41 |        -1 |      -335 |      -208 |      -458 |      -166 |     -4333 |         0 |
|              Improvement %               |        -2 |         0 |        14 |         8 |        16 |         5 |        21 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3375 |      3919 |      4335 |      4751 |      5211 |      6087 |     19333 |     10000 |
|                 jaybird                  |      3375 |      3625 |      3709 |      4211 |      4543 |      6167 |     20792 |     10000 |
|                    Δ                     |         0 |      -294 |      -626 |      -540 |      -668 |        80 |      1459 |         0 |
|              Improvement %               |         0 |         8 |        14 |        11 |        13 |        -1 |        -8 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       571 |       511 |       429 |       400 |       343 |       286 |        48 |     10000 |
|                 jaybird                  |       558 |       511 |       500 |       436 |       407 |       296 |        60 |     10000 |
|                    Δ                     |       -13 |         0 |        71 |        36 |        64 |        10 |        12 |         0 |
|              Improvement %               |        -2 |         0 |        17 |         9 |        19 |         3 |        25 |         0 |

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
|                 jaybird                  |        19 |        19 |        19 |        19 |        20 |        21 |        34 |     10000 |
|                    Δ                     |         1 |         1 |         1 |         1 |         2 |         1 |        -1 |         0 |
|              Improvement %               |        -6 |        -6 |        -6 |        -6 |       -11 |        -5 |         3 |         0 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        98 |       101 |       103 |       112 |       116 |       121 |       265 |      6858 |
|                 jaybird                  |        58 |        60 |        61 |        67 |        69 |        80 |       127 |     10000 |
|                    Δ                     |       -40 |       -41 |       -42 |       -45 |       -47 |       -41 |      -138 |      3142 |
|              Improvement %               |        41 |        41 |        41 |        40 |        41 |        34 |        52 |      3142 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        99 |       103 |       106 |       114 |       118 |       123 |       144 |      6858 |
|                 jaybird                  |        60 |        61 |        63 |        68 |        71 |        81 |       131 |     10000 |
|                    Δ                     |       -39 |       -42 |       -43 |       -46 |       -47 |       -42 |       -13 |      3142 |
|              Improvement %               |        39 |        41 |        41 |        40 |        40 |        34 |         9 |      3142 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     10239 |      9951 |      9679 |      8959 |      8647 |      8271 |      3768 |      6858 |
|                 jaybird                  |     17217 |     16783 |     16319 |     15039 |     14415 |     12423 |      7903 |     10000 |
|                    Δ                     |      6978 |      6832 |      6640 |      6080 |      5768 |      4152 |      4135 |      3142 |
|              Improvement %               |        68 |        69 |        69 |        68 |        67 |        50 |       110 |      3142 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      6858 |
|                 jaybird                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10000 |
|                    Δ                     |         0 |         1 |         0 |         0 |         0 |         0 |         0 |      3142 |
|              Improvement %               |         0 |        -4 |         0 |         0 |         0 |         0 |         0 |      3142 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      6858 |
|                 jaybird                  |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10000 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      3142 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      3142 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1800 |      1801 |      1803 |      1805 |      1806 |      1819 |      1876 |      6858 |
|                 jaybird                  |      1533 |      1534 |      1535 |      1536 |      1537 |      1546 |      1664 |     10000 |
|                    Δ                     |      -267 |      -267 |      -268 |      -269 |      -269 |      -273 |      -212 |      3142 |
|              Improvement %               |        15 |        15 |        15 |        15 |        15 |        15 |        11 |      3142 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       383 |       409 |       429 |       455 |       478 |       521 |       595 |      2088 |
|                 jaybird                  |        79 |        84 |        88 |        96 |       103 |       127 |       215 |      7519 |
|                    Δ                     |      -304 |      -325 |      -341 |      -359 |      -375 |      -394 |      -380 |      5431 |
|              Improvement %               |        79 |        79 |        79 |        79 |        78 |        76 |        64 |      5431 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       385 |       411 |       431 |       457 |       480 |       525 |       595 |      2088 |
|                 jaybird                  |        80 |        86 |        90 |        98 |       105 |       128 |       212 |      7519 |
|                    Δ                     |      -305 |      -325 |      -341 |      -359 |      -375 |      -397 |      -383 |      5431 |
|              Improvement %               |        79 |        79 |        79 |        79 |        78 |        76 |        64 |      5431 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2609 |      2447 |      2331 |      2199 |      2091 |      1921 |      1679 |      2088 |
|                 jaybird                  |     12698 |     11903 |     11343 |     10447 |      9711 |      7903 |      4650 |      7519 |
|                    Δ                     |     10089 |      9456 |      9012 |      8248 |      7620 |      5982 |      2971 |      5431 |
|              Improvement %               |       387 |       386 |       387 |       375 |       364 |       311 |       177 |      5431 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      2088 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      7519 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5431 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5431 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5701 |      5701 |      5701 |      5701 |      5701 |      5701 |      5701 |      2088 |
|                 jaybird                  |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      7519 |
|                    Δ                     |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |      5431 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      5431 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8225 |      8229 |      8237 |      8241 |      8245 |      8675 |      8690 |      2088 |
|                 jaybird                  |      1463 |      1463 |      1465 |      1467 |      1468 |      1480 |      1510 |      7519 |
|                    Δ                     |     -6762 |     -6766 |     -6772 |     -6774 |     -6777 |     -7195 |     -7180 |      5431 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        83 |        83 |      5431 |

<p>
</details>

