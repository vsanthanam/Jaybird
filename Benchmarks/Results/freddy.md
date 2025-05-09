## Jaybird vs. Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3471 |      3531 |      3574 |      3856 |      3965 |      4078 |      4199 |       269 |
|                 jaybird                  |      2144 |      2204 |      2241 |      2451 |      2501 |      2568 |      2596 |       425 |
|                    Δ                     |     -1327 |     -1327 |     -1333 |     -1405 |     -1464 |     -1510 |     -1603 |       156 |
|              Improvement %               |        38 |        38 |        37 |        36 |        37 |        37 |        38 |       156 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3473 |      3535 |      3576 |      3846 |      3967 |      4082 |      4197 |       269 |
|                 jaybird                  |      2146 |      2206 |      2241 |      2449 |      2503 |      2570 |      2607 |       425 |
|                    Δ                     |     -1327 |     -1329 |     -1335 |     -1397 |     -1464 |     -1512 |     -1590 |       156 |
|              Improvement %               |        38 |        38 |        37 |        36 |        37 |        37 |        38 |       156 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       288 |       283 |       280 |       259 |       252 |       245 |       238 |       269 |
|                 jaybird                  |       466 |       454 |       447 |       408 |       400 |       390 |       385 |       425 |
|                    Δ                     |       178 |       171 |       167 |       149 |       148 |       145 |       147 |       156 |
|              Improvement %               |        62 |        60 |        60 |        58 |        59 |        59 |        62 |       156 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        28 |        28 |        28 |        28 |        28 |        28 |       269 |
|                 jaybird                  |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       425 |
|                    Δ                     |         2 |         3 |         3 |         3 |         3 |         3 |         3 |       156 |
|              Improvement %               |        -7 |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       156 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       269 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       425 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       156 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       156 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        67 |        67 |        67 |        67 |        68 |        68 |       269 |
|                 jaybird                  |        47 |        47 |        47 |        47 |        47 |        48 |        49 |       425 |
|                    Δ                     |       -19 |       -20 |       -20 |       -20 |       -20 |       -20 |       -19 |       156 |
|              Improvement %               |        29 |        30 |        30 |        30 |        30 |        29 |        28 |       156 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3479 |      3564 |      3645 |      3910 |      3992 |      4053 |      4093 |       265 |
|                 jaybird                  |      2187 |      2247 |      2339 |      2509 |      2591 |      2695 |      2859 |       412 |
|                    Δ                     |     -1292 |     -1317 |     -1306 |     -1401 |     -1401 |     -1358 |     -1234 |       147 |
|              Improvement %               |        37 |        37 |        36 |        36 |        35 |        34 |        30 |       147 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3488 |      3566 |      3643 |      3920 |      3996 |      4049 |      4095 |       265 |
|                 jaybird                  |      2189 |      2249 |      2341 |      2509 |      2589 |      2695 |      2863 |       412 |
|                    Δ                     |     -1299 |     -1317 |     -1302 |     -1411 |     -1407 |     -1354 |     -1232 |       147 |
|              Improvement %               |        37 |        37 |        36 |        36 |        35 |        33 |        30 |       147 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       287 |       281 |       274 |       256 |       251 |       247 |       244 |       265 |
|                 jaybird                  |       457 |       445 |       428 |       399 |       386 |       371 |       350 |       412 |
|                    Δ                     |       170 |       164 |       154 |       143 |       135 |       124 |       106 |       147 |
|              Improvement %               |        59 |        58 |        56 |        56 |        54 |        50 |        43 |       147 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        28 |        28 |        29 |        29 |        29 |        29 |       265 |
|                 jaybird                  |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       412 |
|                    Δ                     |         2 |         3 |         3 |         2 |         2 |         2 |         2 |       147 |
|              Improvement %               |        -7 |       -11 |       -11 |        -7 |        -7 |        -7 |        -7 |       147 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       265 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       412 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       147 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       147 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        68 |        68 |        68 |        68 |        69 |        69 |       265 |
|                 jaybird                  |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       412 |
|                    Δ                     |       -19 |       -20 |       -20 |       -20 |       -20 |       -20 |       -19 |       147 |
|              Improvement %               |        28 |        29 |        29 |        29 |        29 |        29 |        28 |       147 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       849 |       866 |       879 |       959 |       984 |      1010 |      1062 |      1049 |
|                 jaybird                  |       529 |       548 |       560 |       606 |       626 |       657 |       700 |      1615 |
|                    Δ                     |      -320 |      -318 |      -319 |      -353 |      -358 |      -353 |      -362 |       566 |
|              Improvement %               |        38 |        37 |        36 |        37 |        36 |        35 |        34 |       566 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       852 |       868 |       881 |       961 |       986 |      1012 |      1072 |      1049 |
|                 jaybird                  |       530 |       550 |       562 |       607 |       627 |       657 |       702 |      1615 |
|                    Δ                     |      -322 |      -318 |      -319 |      -354 |      -359 |      -355 |      -370 |       566 |
|              Improvement %               |        38 |        37 |        36 |        37 |        36 |        35 |        35 |       566 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1178 |      1155 |      1138 |      1043 |      1017 |       991 |       942 |      1049 |
|                 jaybird                  |      1892 |      1827 |      1787 |      1652 |      1599 |      1523 |      1429 |      1615 |
|                    Δ                     |       714 |       672 |       649 |       609 |       582 |       532 |       487 |       566 |
|              Improvement %               |        61 |        58 |        57 |        58 |        57 |        54 |        52 |       566 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1049 |
|                 jaybird                  |        25 |        26 |        27 |        27 |        27 |        27 |        27 |      1615 |
|                    Δ                     |         0 |         0 |         1 |         1 |         1 |         1 |         1 |       566 |
|              Improvement %               |         0 |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |       566 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1049 |
|                 jaybird                  |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1615 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       566 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       566 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1049 |
|                 jaybird                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1615 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |       566 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       566 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       859 |       878 |       891 |       965 |       995 |      1026 |      1043 |      1038 |
|                 jaybird                  |       532 |       552 |       566 |       619 |       634 |       658 |       685 |      1591 |
|                    Δ                     |      -327 |      -326 |      -325 |      -346 |      -361 |      -368 |      -358 |       553 |
|              Improvement %               |        38 |        37 |        36 |        36 |        36 |        36 |        34 |       553 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       861 |       880 |       893 |       966 |       998 |      1027 |      1042 |      1038 |
|                 jaybird                  |       534 |       554 |       568 |       621 |       636 |       658 |       674 |      1591 |
|                    Δ                     |      -327 |      -326 |      -325 |      -345 |      -362 |      -369 |      -368 |       553 |
|              Improvement %               |        38 |        37 |        36 |        36 |        36 |        36 |        35 |       553 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1164 |      1139 |      1122 |      1037 |      1005 |       975 |       959 |      1038 |
|                 jaybird                  |      1879 |      1811 |      1766 |      1616 |      1578 |      1520 |      1460 |      1591 |
|                    Δ                     |       715 |       672 |       644 |       579 |       573 |       545 |       501 |       553 |
|              Improvement %               |        61 |        59 |        57 |        56 |        57 |        56 |        52 |       553 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1038 |
|                 jaybird                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1591 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       553 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       553 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1038 |
|                 jaybird                  |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1591 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       553 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       553 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1038 |
|                 jaybird                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1591 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |       553 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       553 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1708 |      1751 |      1778 |      1950 |      1988 |      2067 |      2115 |       530 |
|                 jaybird                  |      1058 |      1087 |      1103 |      1196 |      1241 |      1293 |      1501 |       846 |
|                    Δ                     |      -650 |      -664 |      -675 |      -754 |      -747 |      -774 |      -614 |       316 |
|              Improvement %               |        38 |        38 |        38 |        39 |        38 |        37 |        29 |       316 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1715 |      1754 |      1779 |      1949 |      1990 |      2070 |      2114 |       530 |
|                 jaybird                  |      1060 |      1090 |      1105 |      1199 |      1244 |      1294 |      1505 |       846 |
|                    Δ                     |      -655 |      -664 |      -674 |      -750 |      -746 |      -776 |      -609 |       316 |
|              Improvement %               |        38 |        38 |        38 |        38 |        37 |        37 |        29 |       316 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       586 |       571 |       562 |       513 |       503 |       484 |       473 |       530 |
|                 jaybird                  |       945 |       920 |       907 |       836 |       806 |       773 |       666 |       846 |
|                    Δ                     |       359 |       349 |       345 |       323 |       303 |       289 |       193 |       316 |
|              Improvement %               |        61 |        61 |        61 |        63 |        60 |        60 |        41 |       316 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |       530 |
|                 jaybird                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       846 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       316 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       316 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       530 |
|                 jaybird                  |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       846 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       316 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       316 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       530 |
|                 jaybird                  |        23 |        23 |        24 |        24 |        24 |        24 |        25 |       846 |
|                    Δ                     |       -10 |       -10 |        -9 |        -9 |        -9 |       -10 |        -9 |       316 |
|              Improvement %               |        30 |        30 |        27 |        27 |        27 |        29 |        26 |       316 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1734 |      1777 |      1803 |      1945 |      1994 |      2030 |      2088 |       527 |
|                 jaybird                  |      1084 |      1118 |      1136 |      1235 |      1279 |      1404 |      1568 |       820 |
|                    Δ                     |      -650 |      -659 |      -667 |      -710 |      -715 |      -626 |      -520 |       293 |
|              Improvement %               |        37 |        37 |        37 |        37 |        36 |        31 |        25 |       293 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1736 |      1778 |      1805 |      1948 |      1995 |      2028 |      2085 |       527 |
|                 jaybird                  |      1086 |      1120 |      1138 |      1236 |      1280 |      1405 |      1566 |       820 |
|                    Δ                     |      -650 |      -658 |      -667 |      -712 |      -715 |      -623 |      -519 |       293 |
|              Improvement %               |        37 |        37 |        37 |        37 |        36 |        31 |        25 |       293 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       577 |       563 |       555 |       514 |       502 |       493 |       479 |       527 |
|                 jaybird                  |       922 |       894 |       881 |       810 |       782 |       713 |       638 |       820 |
|                    Δ                     |       345 |       331 |       326 |       296 |       280 |       220 |       159 |       293 |
|              Improvement %               |        60 |        59 |        59 |        58 |        56 |        45 |        33 |       293 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |       527 |
|                 jaybird                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       820 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       293 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       293 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       527 |
|                 jaybird                  |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       820 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       293 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       293 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        34 |        34 |        34 |        34 |        34 |        34 |        34 |       527 |
|                 jaybird                  |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       820 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |        -9 |        -9 |       293 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        26 |        26 |       293 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        18 |        18 |        19 |        19 |        20 |        20 |        54 |
|                 jaybird                  |        12 |        12 |        13 |        14 |        14 |        14 |        14 |        76 |
|                    Δ                     |        -6 |        -6 |        -5 |        -5 |        -5 |        -6 |        -6 |        22 |
|              Improvement %               |        33 |        33 |        28 |        26 |        26 |        30 |        30 |        22 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        18 |        18 |        19 |        19 |        20 |        20 |        54 |
|                 jaybird                  |        12 |        12 |        13 |        14 |        14 |        14 |        14 |        76 |
|                    Δ                     |        -6 |        -6 |        -5 |        -5 |        -5 |        -6 |        -6 |        22 |
|              Improvement %               |        33 |        33 |        28 |        26 |        26 |        30 |        30 |        22 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        57 |        56 |        54 |        52 |        51 |        50 |        50 |        54 |
|                 jaybird                  |        83 |        81 |        76 |        74 |        73 |        71 |        71 |        76 |
|                    Δ                     |        26 |        25 |        22 |        22 |        22 |        21 |        21 |        22 |
|              Improvement %               |        46 |        45 |        41 |        42 |        43 |        42 |        42 |        22 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        40 |        41 |        41 |        42 |        42 |        42 |        54 |
|                 jaybird                  |        43 |        49 |        52 |        52 |        52 |        52 |        52 |        76 |
|                    Δ                     |        10 |         9 |        11 |        11 |        10 |        10 |        10 |        22 |
|              Improvement %               |       -30 |       -22 |       -27 |       -27 |       -24 |       -24 |       -24 |        22 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        54 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        76 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        22 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        22 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       333 |       333 |       333 |       333 |       334 |       338 |       338 |        54 |
|                 jaybird                  |       241 |       244 |       244 |       245 |       245 |       254 |       254 |        76 |
|                    Δ                     |       -92 |       -89 |       -89 |       -88 |       -89 |       -84 |       -84 |        22 |
|              Improvement %               |        28 |        27 |        27 |        26 |        27 |        25 |        25 |        22 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        18 |        19 |        19 |        20 |        20 |        20 |        54 |
|                 jaybird                  |        12 |        12 |        13 |        13 |        13 |        14 |        14 |        78 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -7 |        -6 |        -6 |        24 |
|              Improvement %               |        33 |        33 |        32 |        32 |        35 |        30 |        30 |        24 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        18 |        19 |        19 |        20 |        20 |        20 |        54 |
|                 jaybird                  |        12 |        12 |        13 |        13 |        13 |        14 |        14 |        78 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -7 |        -6 |        -6 |        24 |
|              Improvement %               |        33 |        33 |        32 |        32 |        35 |        30 |        30 |        24 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        57 |        55 |        53 |        52 |        50 |        49 |        49 |        54 |
|                 jaybird                  |        86 |        82 |        79 |        76 |        75 |        69 |        69 |        78 |
|                    Δ                     |        29 |        27 |        26 |        24 |        25 |        20 |        20 |        24 |
|              Improvement %               |        51 |        49 |        49 |        46 |        50 |        41 |        41 |        24 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        35 |        39 |        39 |        40 |        40 |        40 |        40 |        54 |
|                 jaybird                  |        43 |        52 |        52 |        60 |        60 |        60 |        60 |        78 |
|                    Δ                     |         8 |        13 |        13 |        20 |        20 |        20 |        20 |        24 |
|              Improvement %               |       -23 |       -33 |       -33 |       -50 |       -50 |       -50 |       -50 |        24 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        54 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        78 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        24 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        24 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       338 |       339 |       339 |       339 |       339 |       347 |       347 |        54 |
|                 jaybird                  |       244 |       245 |       245 |       249 |       249 |       253 |       253 |        78 |
|                    Δ                     |       -94 |       -94 |       -94 |       -90 |       -90 |       -94 |       -94 |        24 |
|              Improvement %               |        28 |        28 |        28 |        27 |        27 |        27 |        27 |        24 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       212 |       218 |       223 |       235 |       250 |       263 |       289 |      3682 |
|                 jaybird                  |       133 |       137 |       141 |       154 |       159 |       171 |       187 |      5335 |
|                    Δ                     |       -79 |       -81 |       -82 |       -81 |       -91 |       -92 |      -102 |      1653 |
|              Improvement %               |        37 |        37 |        37 |        34 |        36 |        35 |        35 |      1653 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       215 |       220 |       224 |       237 |       252 |       264 |       283 |      3682 |
|                 jaybird                  |       134 |       138 |       143 |       156 |       161 |       171 |       190 |      5335 |
|                    Δ                     |       -81 |       -82 |       -81 |       -81 |       -91 |       -93 |       -93 |      1653 |
|              Improvement %               |        38 |        37 |        36 |        34 |        36 |        35 |        33 |      1653 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4712 |      4583 |      4495 |      4255 |      3993 |      3803 |      3460 |      3682 |
|                 jaybird                  |      7545 |      7315 |      7071 |      6511 |      6299 |      5839 |      5356 |      5335 |
|                    Δ                     |      2833 |      2732 |      2576 |      2256 |      2306 |      2036 |      1896 |      1653 |
|              Improvement %               |        60 |        60 |        57 |        53 |        58 |        54 |        55 |      1653 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      3682 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      5335 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1653 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1653 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      3682 |
|                 jaybird                  |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5335 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1653 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1653 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4160 |      4166 |      4168 |      4170 |      4174 |      4235 |      4249 |      3682 |
|                 jaybird                  |      2935 |      2937 |      2941 |      2943 |      2945 |      3011 |      3081 |      5335 |
|                    Δ                     |     -1225 |     -1229 |     -1227 |     -1227 |     -1229 |     -1224 |     -1168 |      1653 |
|              Improvement %               |        29 |        30 |        29 |        29 |        29 |        29 |        27 |      1653 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       215 |       222 |       228 |       246 |       254 |       262 |       285 |      3607 |
|                 jaybird                  |       136 |       140 |       144 |       154 |       160 |       172 |       193 |      5289 |
|                    Δ                     |       -79 |       -82 |       -84 |       -92 |       -94 |       -90 |       -92 |      1682 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        34 |        32 |      1682 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       224 |       230 |       248 |       255 |       263 |       285 |      3607 |
|                 jaybird                  |       137 |       141 |       146 |       156 |       162 |       172 |       194 |      5289 |
|                    Δ                     |       -79 |       -83 |       -84 |       -92 |       -93 |       -91 |       -91 |      1682 |
|              Improvement %               |        37 |        37 |        37 |        37 |        36 |        35 |        32 |      1682 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4653 |      4507 |      4395 |      4061 |      3945 |      3823 |      3506 |      3607 |
|                 jaybird                  |      7364 |      7163 |      6955 |      6475 |      6243 |      5823 |      5177 |      5289 |
|                    Δ                     |      2711 |      2656 |      2560 |      2414 |      2298 |      2000 |      1671 |      1682 |
|              Improvement %               |        58 |        59 |        58 |        59 |        58 |        52 |        48 |      1682 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      3607 |
|                 jaybird                  |        25 |        25 |        25 |        26 |        26 |        26 |        26 |      5289 |
|                    Δ                     |         0 |         0 |         0 |         1 |         1 |         1 |         1 |      1682 |
|              Improvement %               |         0 |         0 |         0 |        -4 |        -4 |        -4 |        -4 |      1682 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      3607 |
|                 jaybird                  |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5289 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1682 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1682 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4226 |      4231 |      4235 |      4235 |      4239 |      4301 |      4322 |      3607 |
|                 jaybird                  |      2993 |      2994 |      2998 |      3000 |      3002 |      3070 |      3143 |      5289 |
|                    Δ                     |     -1233 |     -1237 |     -1237 |     -1235 |     -1237 |     -1231 |     -1179 |      1682 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        27 |      1682 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       104 |       106 |       108 |       118 |       123 |       129 |       149 |      6580 |
|                 jaybird                  |        99 |       102 |       104 |       113 |       118 |       124 |       145 |      6943 |
|                    Δ                     |        -5 |        -4 |        -4 |        -5 |        -5 |        -5 |        -4 |       363 |
|              Improvement %               |         5 |         4 |         4 |         4 |         4 |         4 |         3 |       363 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       105 |       108 |       110 |       120 |       125 |       131 |       152 |      6580 |
|                 jaybird                  |       101 |       104 |       106 |       115 |       120 |       125 |       148 |      6943 |
|                    Δ                     |        -4 |        -4 |        -4 |        -5 |        -5 |        -6 |        -4 |       363 |
|              Improvement %               |         4 |         4 |         4 |         4 |         4 |         5 |         3 |       363 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      9658 |      9447 |      9231 |      8479 |      8139 |      7727 |      6702 |      6580 |
|                 jaybird                  |     10076 |      9775 |      9583 |      8847 |      8487 |      8039 |      6912 |      6943 |
|                    Δ                     |       418 |       328 |       352 |       368 |       348 |       312 |       210 |       363 |
|              Improvement %               |         4 |         3 |         4 |         4 |         4 |         4 |         3 |       363 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6580 |
|                 jaybird                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6943 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       363 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       363 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      6580 |
|                 jaybird                  |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      6943 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       363 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       363 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2662 |      2664 |      2666 |      2669 |      2671 |      2689 |      2825 |      6580 |
|                 jaybird                  |      2478 |      2478 |      2480 |      2482 |      2484 |      2497 |      2713 |      6943 |
|                    Δ                     |      -184 |      -186 |      -186 |      -187 |      -187 |      -192 |      -112 |       363 |
|              Improvement %               |         7 |         7 |         7 |         7 |         7 |         7 |         4 |       363 |

<p>
</details>

### Parse (micro) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1708 |      1875 |      1958 |      2291 |      2375 |      3209 |     20875 |     10000 |
|                 jaybird                  |      1750 |      1958 |      2000 |      2083 |      2459 |      3417 |     14584 |     10000 |
|                    Δ                     |        42 |        83 |        42 |      -208 |        84 |       208 |     -6291 |         0 |
|              Improvement %               |        -2 |        -4 |        -2 |         9 |        -4 |        -6 |        30 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3291 |      3501 |      3585 |      4211 |      4379 |      5835 |     17667 |     10000 |
|                 jaybird                  |      3250 |      3501 |      3583 |      3791 |      4375 |      5919 |     18082 |     10000 |
|                    Δ                     |       -41 |         0 |        -2 |      -420 |        -4 |        84 |       415 |         0 |
|              Improvement %               |         1 |         0 |         0 |        10 |         0 |        -1 |        -2 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       585 |       534 |       511 |       437 |       421 |       308 |        48 |     10000 |
|                 jaybird                  |       571 |       511 |       500 |       480 |       407 |       293 |        69 |     10000 |
|                    Δ                     |       -14 |       -23 |       -11 |        43 |       -14 |       -15 |        21 |         0 |
|              Improvement %               |        -2 |        -4 |        -2 |        10 |        -3 |        -5 |        44 |         0 |

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
|                  freddy                  |        18 |        18 |        18 |        18 |        18 |        20 |        32 |     10000 |
|                 jaybird                  |        19 |        19 |        19 |        19 |        19 |        21 |        35 |     10000 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         3 |         0 |
|              Improvement %               |        -6 |        -6 |        -6 |        -6 |        -6 |        -5 |        -9 |         0 |

<p>
</details>

### Parse (micro-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1750 |      1916 |      1959 |      2375 |      2459 |      3251 |     18500 |     10000 |
|                 jaybird                  |      1791 |      2041 |      2417 |      2501 |      2875 |      3751 |     23750 |     10000 |
|                    Δ                     |        41 |       125 |       458 |       126 |       416 |       500 |      5250 |         0 |
|              Improvement %               |        -2 |        -7 |       -23 |        -5 |       -17 |       -15 |       -28 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3249 |      3501 |      3625 |      4211 |      4459 |      5835 |     16750 |     10000 |
|                 jaybird                  |      3292 |      3709 |      4043 |      4211 |      4875 |      6251 |     19250 |     10000 |
|                    Δ                     |        43 |       208 |       418 |         0 |       416 |       416 |      2500 |         0 |
|              Improvement %               |        -1 |        -6 |       -12 |         0 |        -9 |        -7 |       -15 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       571 |       522 |       511 |       421 |       407 |       308 |        54 |     10000 |
|                 jaybird                  |       558 |       490 |       414 |       400 |       348 |       267 |        42 |     10000 |
|                    Δ                     |       -13 |       -32 |       -97 |       -21 |       -59 |       -41 |       -12 |         0 |
|              Improvement %               |        -2 |        -6 |       -19 |        -5 |       -14 |       -13 |       -22 |         0 |

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
|                  freddy                  |        18 |        18 |        18 |        18 |        18 |        20 |        30 |     10000 |
|                 jaybird                  |        19 |        19 |        19 |        19 |        19 |        21 |        35 |     10000 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         5 |         0 |
|              Improvement %               |        -6 |        -6 |        -6 |        -6 |        -6 |        -5 |       -17 |         0 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        97 |       101 |       103 |       112 |       117 |       123 |       145 |      6852 |
|                 jaybird                  |        58 |        60 |        63 |        68 |        71 |        81 |       126 |      9897 |
|                    Δ                     |       -39 |       -41 |       -40 |       -44 |       -46 |       -42 |       -19 |      3045 |
|              Improvement %               |        40 |        41 |        39 |        39 |        39 |        34 |        13 |      3045 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        99 |       103 |       105 |       114 |       118 |       124 |       142 |      6852 |
|                 jaybird                  |        60 |        62 |        65 |        70 |        73 |        81 |       130 |      9897 |
|                    Δ                     |       -39 |       -41 |       -40 |       -44 |       -45 |       -43 |       -12 |      3045 |
|              Improvement %               |        39 |        40 |        38 |        39 |        38 |        35 |         8 |      3045 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     10340 |      9895 |      9679 |      8927 |      8591 |      8123 |      6883 |      6852 |
|                 jaybird                  |     17204 |     16575 |     15895 |     14735 |     14159 |     12383 |      7958 |      9897 |
|                    Δ                     |      6864 |      6680 |      6216 |      5808 |      5568 |      4260 |      1075 |      3045 |
|              Improvement %               |        66 |        68 |        64 |        65 |        65 |        52 |        16 |      3045 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      6852 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      9897 |
|                    Δ                     |         0 |         0 |        -1 |        -1 |        -1 |        -1 |        -1 |      3045 |
|              Improvement %               |         0 |         0 |         4 |         4 |         4 |         4 |         4 |      3045 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      6852 |
|                 jaybird                  |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      9897 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      3045 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      3045 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1801 |      1802 |      1804 |      1806 |      1808 |      1820 |      1876 |      6852 |
|                 jaybird                  |      1533 |      1534 |      1534 |      1536 |      1538 |      1547 |      1670 |      9897 |
|                    Δ                     |      -268 |      -268 |      -270 |      -270 |      -270 |      -273 |      -206 |      3045 |
|              Improvement %               |        15 |        15 |        15 |        15 |        15 |        15 |        11 |      3045 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       380 |       391 |       400 |       436 |       446 |       472 |       580 |      2194 |
|                 jaybird                  |        78 |        83 |        87 |        94 |       101 |       123 |       206 |      7569 |
|                    Δ                     |      -302 |      -308 |      -313 |      -342 |      -345 |      -349 |      -374 |      5375 |
|              Improvement %               |        79 |        79 |        78 |        78 |        77 |        74 |        64 |      5375 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       381 |       392 |       402 |       438 |       448 |       474 |       581 |      2194 |
|                 jaybird                  |        80 |        85 |        89 |        96 |       103 |       125 |       211 |      7569 |
|                    Δ                     |      -301 |      -307 |      -313 |      -342 |      -345 |      -349 |      -370 |      5375 |
|              Improvement %               |        79 |        78 |        78 |        78 |        77 |        74 |        64 |      5375 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2635 |      2561 |      2503 |      2297 |      2243 |      2121 |      1725 |      2194 |
|                 jaybird                  |     12780 |     12047 |     11439 |     10607 |      9887 |      8119 |      4845 |      7569 |
|                    Δ                     |     10145 |      9486 |      8936 |      8310 |      7644 |      5998 |      3120 |      5375 |
|              Improvement %               |       385 |       370 |       357 |       362 |       341 |       283 |       181 |      5375 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      2194 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      7569 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5375 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5375 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5701 |      5701 |      5701 |      5701 |      5701 |      5701 |      5701 |      2194 |
|                 jaybird                  |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      7569 |
|                    Δ                     |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |      5375 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      5375 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8224 |      8229 |      8237 |      8241 |      8245 |      8675 |      8690 |      2194 |
|                 jaybird                  |      1462 |      1463 |      1465 |      1466 |      1467 |      1480 |      1504 |      7569 |
|                    Δ                     |     -6762 |     -6766 |     -6772 |     -6775 |     -6778 |     -7195 |     -7186 |      5375 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        83 |        83 |      5375 |

<p>
</details>

