## Jaybird vs. Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2957 |      3021 |      3074 |      3260 |      3402 |      3473 |      3528 |       314 |
|                 jaybird                  |      2144 |      2204 |      2241 |      2451 |      2501 |      2568 |      2596 |       425 |
|                    Δ                     |      -813 |      -817 |      -833 |      -809 |      -901 |      -905 |      -932 |       111 |
|              Improvement %               |        27 |        27 |        27 |        25 |        26 |        26 |        26 |       111 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2959 |      3025 |      3074 |      3256 |      3402 |      3475 |      3529 |       314 |
|                 jaybird                  |      2146 |      2206 |      2241 |      2449 |      2503 |      2570 |      2607 |       425 |
|                    Δ                     |      -813 |      -819 |      -833 |      -807 |      -899 |      -905 |      -922 |       111 |
|              Improvement %               |        27 |        27 |        27 |        25 |        26 |        26 |        26 |       111 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       338 |       331 |       325 |       307 |       294 |       288 |       283 |       314 |
|                 jaybird                  |       466 |       454 |       447 |       408 |       400 |       390 |       385 |       425 |
|                    Δ                     |       128 |       123 |       122 |       101 |       106 |       102 |       102 |       111 |
|              Improvement %               |        38 |        37 |        38 |        33 |        36 |        35 |        36 |       111 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       140 |       252 |       367 |       436 |       474 |       479 |       314 |
|                 jaybird                  |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       425 |
|                    Δ                     |         3 |      -109 |      -221 |      -336 |      -405 |      -443 |      -448 |       111 |
|              Improvement %               |       -12 |        78 |        88 |        92 |        93 |        93 |        94 |       111 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       314 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       425 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       111 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       111 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        64 |        64 |        64 |        64 |        64 |        65 |       314 |
|                 jaybird                  |        47 |        47 |        47 |        47 |        47 |        48 |        49 |       425 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |       -16 |       111 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        25 |        25 |       111 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3052 |      3135 |      3183 |      3434 |      3533 |      3652 |      3720 |       302 |
|                 jaybird                  |      2187 |      2247 |      2339 |      2509 |      2591 |      2695 |      2859 |       412 |
|                    Δ                     |      -865 |      -888 |      -844 |      -925 |      -942 |      -957 |      -861 |       110 |
|              Improvement %               |        28 |        28 |        27 |        27 |        27 |        26 |        23 |       110 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3054 |      3138 |      3183 |      3430 |      3529 |      3652 |      3723 |       302 |
|                 jaybird                  |      2189 |      2249 |      2341 |      2509 |      2589 |      2695 |      2863 |       412 |
|                    Δ                     |      -865 |      -889 |      -842 |      -921 |      -940 |      -957 |      -860 |       110 |
|              Improvement %               |        28 |        28 |        26 |        27 |        27 |        26 |        23 |       110 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       328 |       319 |       314 |       291 |       283 |       274 |       269 |       302 |
|                 jaybird                  |       457 |       445 |       428 |       399 |       386 |       371 |       350 |       412 |
|                    Δ                     |       129 |       126 |       114 |       108 |       103 |        97 |        81 |       110 |
|              Improvement %               |        39 |        39 |        36 |        37 |        36 |        35 |        30 |       110 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       136 |       245 |       351 |       417 |       456 |       462 |       302 |
|                 jaybird                  |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       412 |
|                    Δ                     |         3 |      -105 |      -214 |      -320 |      -386 |      -425 |      -431 |       110 |
|              Improvement %               |       -12 |        77 |        87 |        91 |        93 |        93 |        93 |       110 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       302 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       412 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       110 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       110 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        66 |        66 |       302 |
|                 jaybird                  |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       412 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |       110 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        26 |        24 |       110 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       744 |       764 |       778 |       841 |       866 |       910 |       962 |      1188 |
|                 jaybird                  |       529 |       548 |       560 |       606 |       626 |       657 |       700 |      1615 |
|                    Δ                     |      -215 |      -216 |      -218 |      -235 |      -240 |      -253 |      -262 |       427 |
|              Improvement %               |        29 |        28 |        28 |        28 |        28 |        28 |        27 |       427 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       746 |       766 |       781 |       843 |       867 |       912 |       964 |      1188 |
|                 jaybird                  |       530 |       550 |       562 |       607 |       627 |       657 |       702 |      1615 |
|                    Δ                     |      -216 |      -216 |      -219 |      -236 |      -240 |      -255 |      -262 |       427 |
|              Improvement %               |        29 |        28 |        28 |        28 |        28 |        28 |        27 |       427 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1343 |      1308 |      1285 |      1189 |      1155 |      1099 |      1039 |      1188 |
|                 jaybird                  |      1892 |      1827 |      1787 |      1652 |      1599 |      1523 |      1429 |      1615 |
|                    Δ                     |       549 |       519 |       502 |       463 |       444 |       424 |       390 |       427 |
|              Improvement %               |        41 |        40 |        39 |        39 |        38 |        39 |        38 |       427 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       133 |       242 |       353 |       419 |       456 |       461 |      1188 |
|                 jaybird                  |        25 |        26 |        27 |        27 |        27 |        27 |        27 |      1615 |
|                    Δ                     |         0 |      -107 |      -215 |      -326 |      -392 |      -429 |      -434 |       427 |
|              Improvement %               |         0 |        80 |        89 |        92 |        94 |        94 |        94 |       427 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1188 |
|                 jaybird                  |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1615 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       427 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       427 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1188 |
|                 jaybird                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1615 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       427 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       427 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       763 |       793 |       811 |       884 |       902 |       935 |       967 |      1138 |
|                 jaybird                  |       532 |       552 |       566 |       619 |       634 |       658 |       685 |      1591 |
|                    Δ                     |      -231 |      -241 |      -245 |      -265 |      -268 |      -277 |      -282 |       453 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        29 |       453 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       764 |       795 |       814 |       886 |       903 |       934 |       976 |      1138 |
|                 jaybird                  |       534 |       554 |       568 |       621 |       636 |       658 |       674 |      1591 |
|                    Δ                     |      -230 |      -241 |      -246 |      -265 |      -267 |      -276 |      -302 |       453 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        31 |       453 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1311 |      1261 |      1232 |      1131 |      1109 |      1069 |      1034 |      1138 |
|                 jaybird                  |      1879 |      1811 |      1766 |      1616 |      1578 |      1520 |      1460 |      1591 |
|                    Δ                     |       568 |       550 |       534 |       485 |       469 |       451 |       426 |       453 |
|              Improvement %               |        43 |        44 |        43 |        43 |        42 |        42 |        41 |       453 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       125 |       234 |       340 |       400 |       438 |       443 |      1138 |
|                 jaybird                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1591 |
|                    Δ                     |         1 |       -98 |      -207 |      -313 |      -373 |      -411 |      -416 |       453 |
|              Improvement %               |        -4 |        78 |        88 |        92 |        93 |        94 |        94 |       453 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1138 |
|                 jaybird                  |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1591 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       453 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       453 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1138 |
|                 jaybird                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1591 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -5 |       453 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        29 |        29 |       453 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1485 |      1540 |      1631 |      1708 |      1735 |      1770 |      1781 |       598 |
|                 jaybird                  |      1058 |      1087 |      1103 |      1196 |      1241 |      1293 |      1501 |       846 |
|                    Δ                     |      -427 |      -453 |      -528 |      -512 |      -494 |      -477 |      -280 |       248 |
|              Improvement %               |        29 |        29 |        32 |        30 |        28 |        27 |        16 |       248 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1486 |      1543 |      1629 |      1710 |      1736 |      1773 |      1794 |       598 |
|                 jaybird                  |      1060 |      1090 |      1105 |      1199 |      1244 |      1294 |      1505 |       846 |
|                    Δ                     |      -426 |      -453 |      -524 |      -511 |      -492 |      -479 |      -289 |       248 |
|              Improvement %               |        29 |        29 |        32 |        30 |        28 |        27 |        16 |       248 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       674 |       649 |       612 |       586 |       577 |       565 |       561 |       598 |
|                 jaybird                  |       945 |       920 |       907 |       836 |       806 |       773 |       666 |       846 |
|                    Δ                     |       271 |       271 |       295 |       250 |       229 |       208 |       105 |       248 |
|              Improvement %               |        40 |        42 |        48 |        43 |        40 |        37 |        19 |       248 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       133 |       243 |       353 |       419 |       458 |       458 |       598 |
|                 jaybird                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       846 |
|                    Δ                     |         0 |      -105 |      -215 |      -325 |      -391 |      -430 |      -430 |       248 |
|              Improvement %               |         0 |        79 |        88 |        92 |        93 |        94 |        94 |       248 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       598 |
|                 jaybird                  |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       846 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       248 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       248 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       598 |
|                 jaybird                  |        23 |        23 |        24 |        24 |        24 |        24 |        25 |       846 |
|                    Δ                     |        -9 |        -9 |        -8 |        -8 |        -8 |        -8 |        -7 |       248 |
|              Improvement %               |        28 |        28 |        25 |        25 |        25 |        25 |        22 |       248 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1537 |      1573 |      1595 |      1717 |      1775 |      1819 |      2028 |       595 |
|                 jaybird                  |      1084 |      1118 |      1136 |      1235 |      1279 |      1404 |      1568 |       820 |
|                    Δ                     |      -453 |      -455 |      -459 |      -482 |      -496 |      -415 |      -460 |       225 |
|              Improvement %               |        29 |        29 |        29 |        28 |        28 |        23 |        23 |       225 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1538 |      1576 |      1597 |      1715 |      1778 |      1826 |      2027 |       595 |
|                 jaybird                  |      1086 |      1120 |      1138 |      1236 |      1280 |      1405 |      1566 |       820 |
|                    Δ                     |      -452 |      -456 |      -459 |      -479 |      -498 |      -421 |      -461 |       225 |
|              Improvement %               |        29 |        29 |        29 |        28 |        28 |        23 |        23 |       225 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       651 |       636 |       627 |       583 |       564 |       550 |       493 |       595 |
|                 jaybird                  |       922 |       894 |       881 |       810 |       782 |       713 |       638 |       820 |
|                    Δ                     |       271 |       258 |       254 |       227 |       218 |       163 |       145 |       225 |
|              Improvement %               |        42 |        41 |        41 |        39 |        39 |        30 |        29 |       225 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       132 |       242 |       348 |       414 |       452 |       457 |       595 |
|                 jaybird                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       820 |
|                    Δ                     |         0 |      -104 |      -214 |      -320 |      -386 |      -424 |      -429 |       225 |
|              Improvement %               |         0 |        79 |        88 |        92 |        93 |        94 |        94 |       225 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       595 |
|                 jaybird                  |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       820 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       225 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       225 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       595 |
|                 jaybird                  |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       820 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        -8 |       225 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        24 |        24 |       225 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        16 |        16 |        17 |        17 |        17 |        64 |
|                 jaybird                  |        12 |        12 |        13 |        14 |        14 |        14 |        14 |        76 |
|                    Δ                     |        -3 |        -3 |        -3 |        -2 |        -3 |        -3 |        -3 |        12 |
|              Improvement %               |        20 |        20 |        19 |        12 |        18 |        18 |        18 |        12 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        16 |        16 |        17 |        17 |        17 |        64 |
|                 jaybird                  |        12 |        12 |        13 |        14 |        14 |        14 |        14 |        76 |
|                    Δ                     |        -3 |        -3 |        -3 |        -2 |        -3 |        -3 |        -3 |        12 |
|              Improvement %               |        20 |        20 |        19 |        12 |        18 |        18 |        18 |        12 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        67 |        65 |        64 |        61 |        60 |        59 |        59 |        64 |
|                 jaybird                  |        83 |        81 |        76 |        74 |        73 |        71 |        71 |        76 |
|                    Δ                     |        16 |        16 |        12 |        13 |        13 |        12 |        12 |        12 |
|              Improvement %               |        24 |        25 |        19 |        21 |        22 |        20 |        20 |        12 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        38 |       143 |       263 |       374 |       449 |       494 |       494 |        64 |
|                 jaybird                  |        43 |        49 |        52 |        52 |        52 |        52 |        52 |        76 |
|                    Δ                     |         5 |       -94 |      -211 |      -322 |      -397 |      -442 |      -442 |        12 |
|              Improvement %               |       -13 |        66 |        80 |        86 |        88 |        89 |        89 |        12 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        64 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        76 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        12 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        12 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       319 |       320 |       320 |       320 |       320 |       320 |       320 |        64 |
|                 jaybird                  |       241 |       244 |       244 |       245 |       245 |       254 |       254 |        76 |
|                    Δ                     |       -78 |       -76 |       -76 |       -75 |       -75 |       -66 |       -66 |        12 |
|              Improvement %               |        24 |        24 |        24 |        23 |        23 |        21 |        21 |        12 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        16 |        16 |        17 |        17 |        18 |        18 |        62 |
|                 jaybird                  |        12 |        12 |        13 |        13 |        13 |        14 |        14 |        78 |
|                    Δ                     |        -3 |        -4 |        -3 |        -4 |        -4 |        -4 |        -4 |        16 |
|              Improvement %               |        20 |        25 |        19 |        24 |        24 |        22 |        22 |        16 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        16 |        16 |        17 |        17 |        18 |        18 |        62 |
|                 jaybird                  |        12 |        12 |        13 |        13 |        13 |        14 |        14 |        78 |
|                    Δ                     |        -3 |        -4 |        -3 |        -4 |        -4 |        -4 |        -4 |        16 |
|              Improvement %               |        20 |        25 |        19 |        24 |        24 |        22 |        22 |        16 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        64 |        62 |        60 |        58 |        56 |        56 |        62 |
|                 jaybird                  |        86 |        82 |        79 |        76 |        75 |        69 |        69 |        78 |
|                    Δ                     |        21 |        18 |        17 |        16 |        17 |        13 |        13 |        16 |
|              Improvement %               |        32 |        28 |        27 |        27 |        29 |        23 |        23 |        16 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        37 |       142 |       256 |       369 |       434 |       479 |       479 |        62 |
|                 jaybird                  |        43 |        52 |        52 |        60 |        60 |        60 |        60 |        78 |
|                    Δ                     |         6 |       -90 |      -204 |      -309 |      -374 |      -419 |      -419 |        16 |
|              Improvement %               |       -16 |        63 |        80 |        84 |        86 |        87 |        87 |        16 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        62 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        78 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        16 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        16 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       324 |       325 |       325 |       325 |       325 |       327 |       327 |        62 |
|                 jaybird                  |       244 |       245 |       245 |       249 |       249 |       253 |       253 |        78 |
|                    Δ                     |       -80 |       -80 |       -80 |       -76 |       -76 |       -74 |       -74 |        16 |
|              Improvement %               |        25 |        25 |        25 |        23 |        23 |        23 |        23 |        16 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       190 |       200 |       205 |       222 |       231 |       251 |       646 |      3935 |
|                 jaybird                  |       133 |       137 |       141 |       154 |       159 |       171 |       187 |      5335 |
|                    Δ                     |       -57 |       -63 |       -64 |       -68 |       -72 |       -80 |      -459 |      1400 |
|              Improvement %               |        30 |        32 |        31 |        31 |        31 |        32 |        71 |      1400 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       192 |       201 |       207 |       224 |       233 |       249 |       492 |      3935 |
|                 jaybird                  |       134 |       138 |       143 |       156 |       161 |       171 |       190 |      5335 |
|                    Δ                     |       -58 |       -63 |       -64 |       -68 |       -72 |       -78 |      -302 |      1400 |
|              Improvement %               |        30 |        31 |        31 |        30 |        31 |        31 |        61 |      1400 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5253 |      5015 |      4871 |      4507 |      4331 |      3993 |      1549 |      3935 |
|                 jaybird                  |      7545 |      7315 |      7071 |      6511 |      6299 |      5839 |      5356 |      5335 |
|                    Δ                     |      2292 |      2300 |      2200 |      2004 |      1968 |      1846 |      3807 |      1400 |
|              Improvement %               |        44 |        46 |        45 |        44 |        45 |        46 |       246 |      1400 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       119 |       217 |       312 |       368 |       401 |       405 |      3935 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      5335 |
|                    Δ                     |         0 |       -94 |      -192 |      -287 |      -343 |      -376 |      -380 |      1400 |
|              Improvement %               |         0 |        79 |        88 |        92 |        93 |        94 |        94 |      1400 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      3935 |
|                 jaybird                  |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5335 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1400 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1400 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4079 |      4110 |      4121 |      4129 |      4139 |      4157 |      4387 |      3935 |
|                 jaybird                  |      2935 |      2937 |      2941 |      2943 |      2945 |      3011 |      3081 |      5335 |
|                    Δ                     |     -1144 |     -1173 |     -1180 |     -1186 |     -1194 |     -1146 |     -1306 |      1400 |
|              Improvement %               |        28 |        29 |        29 |        29 |        29 |        28 |        30 |      1400 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       195 |       205 |       210 |       225 |       236 |       252 |       286 |      3884 |
|                 jaybird                  |       136 |       140 |       144 |       154 |       160 |       172 |       193 |      5289 |
|                    Δ                     |       -59 |       -65 |       -66 |       -71 |       -76 |       -80 |       -93 |      1405 |
|              Improvement %               |        30 |        32 |        31 |        32 |        32 |        32 |        33 |      1405 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       197 |       207 |       212 |       227 |       238 |       252 |       288 |      3884 |
|                 jaybird                  |       137 |       141 |       146 |       156 |       162 |       172 |       194 |      5289 |
|                    Δ                     |       -60 |       -66 |       -66 |       -71 |       -76 |       -80 |       -94 |      1405 |
|              Improvement %               |        30 |        32 |        31 |        31 |        32 |        32 |        33 |      1405 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5131 |      4883 |      4759 |      4451 |      4247 |      3977 |      3492 |      3884 |
|                 jaybird                  |      7364 |      7163 |      6955 |      6475 |      6243 |      5823 |      5177 |      5289 |
|                    Δ                     |      2233 |      2280 |      2196 |      2024 |      1996 |      1846 |      1685 |      1405 |
|              Improvement %               |        44 |        47 |        46 |        45 |        47 |        46 |        48 |      1405 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       120 |       214 |       306 |       364 |       398 |       403 |      3884 |
|                 jaybird                  |        25 |        25 |        25 |        26 |        26 |        26 |        26 |      5289 |
|                    Δ                     |         0 |       -95 |      -189 |      -280 |      -338 |      -372 |      -377 |      1405 |
|              Improvement %               |         0 |        79 |        88 |        92 |        93 |        93 |        94 |      1405 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      3884 |
|                 jaybird                  |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5289 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1405 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1405 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4142 |      4176 |      4184 |      4194 |      4202 |      4227 |      4248 |      3884 |
|                 jaybird                  |      2993 |      2994 |      2998 |      3000 |      3002 |      3070 |      3143 |      5289 |
|                    Δ                     |     -1149 |     -1182 |     -1186 |     -1194 |     -1200 |     -1157 |     -1105 |      1405 |
|              Improvement %               |        28 |        28 |        28 |        28 |        29 |        27 |        26 |      1405 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       285 |       294 |       302 |       328 |       338 |       355 |       400 |      2873 |
|                 jaybird                  |        99 |       102 |       104 |       113 |       118 |       124 |       145 |      6943 |
|                    Δ                     |      -186 |      -192 |      -198 |      -215 |      -220 |      -231 |      -255 |      4070 |
|              Improvement %               |        65 |        65 |        66 |        66 |        65 |        65 |        64 |      4070 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       286 |       296 |       304 |       330 |       340 |       357 |       395 |      2873 |
|                 jaybird                  |       101 |       104 |       106 |       115 |       120 |       125 |       148 |      6943 |
|                    Δ                     |      -185 |      -192 |      -198 |      -215 |      -220 |      -232 |      -247 |      4070 |
|              Improvement %               |        65 |        65 |        65 |        65 |        65 |        65 |        63 |      4070 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3514 |      3399 |      3315 |      3051 |      2961 |      2815 |      2503 |      2873 |
|                 jaybird                  |     10076 |      9775 |      9583 |      8847 |      8487 |      8039 |      6912 |      6943 |
|                    Δ                     |      6562 |      6376 |      6268 |      5796 |      5526 |      5224 |      4409 |      4070 |
|              Improvement %               |       187 |       188 |       189 |       190 |       187 |       186 |       176 |      4070 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        78 |       134 |       188 |       220 |       240 |       243 |      2873 |
|                 jaybird                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6943 |
|                    Δ                     |         0 |       -52 |      -108 |      -162 |      -194 |      -214 |      -217 |      4070 |
|              Improvement %               |         0 |        67 |        81 |        86 |        88 |        89 |        89 |      4070 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      2873 |
|                 jaybird                  |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      6943 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      4070 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      4070 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6959 |      6975 |      6980 |      6996 |      7008 |      7029 |      7129 |      2873 |
|                 jaybird                  |      2478 |      2478 |      2480 |      2482 |      2484 |      2497 |      2713 |      6943 |
|                    Δ                     |     -4481 |     -4497 |     -4500 |     -4514 |     -4524 |     -4532 |     -4416 |      4070 |
|              Improvement %               |        64 |        64 |        64 |        65 |        65 |        64 |        62 |      4070 |

<p>
</details>

### Parse (micro) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1708 |      1958 |      2000 |      2333 |      2459 |      3917 |     16500 |     10000 |
|                 jaybird                  |      1750 |      1958 |      2000 |      2083 |      2459 |      3417 |     14584 |     10000 |
|                    Δ                     |        42 |         0 |         0 |      -250 |         0 |      -500 |     -1916 |         0 |
|              Improvement %               |        -2 |         0 |         0 |        11 |         0 |        13 |        12 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3208 |      3501 |      3585 |      4167 |      4419 |      6459 |     18041 |     10000 |
|                 jaybird                  |      3250 |      3501 |      3583 |      3791 |      4375 |      5919 |     18082 |     10000 |
|                    Δ                     |        42 |         0 |        -2 |      -376 |       -44 |      -540 |        41 |         0 |
|              Improvement %               |        -1 |         0 |         0 |         9 |         1 |         8 |         0 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       585 |       511 |       500 |       429 |       407 |       255 |        61 |     10000 |
|                 jaybird                  |       571 |       511 |       500 |       480 |       407 |       293 |        69 |     10000 |
|                    Δ                     |       -14 |         0 |         0 |        51 |         0 |        38 |         8 |         0 |
|              Improvement %               |        -2 |         0 |         0 |        12 |         0 |        15 |        13 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        25 |        25 |        25 |        25 |        26 |        26 |     10000 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10000 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |        -1 |        -1 |         0 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         4 |         4 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         4 |         4 |         4 |         4 |         4 |         4 |         7 |     10000 |
|                 jaybird                  |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     10000 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |        -3 |         0 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |        43 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        17 |        17 |        18 |        18 |        19 |        21 |        32 |     10000 |
|                 jaybird                  |        19 |        19 |        19 |        19 |        19 |        21 |        35 |     10000 |
|                    Δ                     |         2 |         2 |         1 |         1 |         0 |         0 |         3 |         0 |
|              Improvement %               |       -12 |       -12 |        -6 |        -6 |         0 |         0 |        -9 |         0 |

<p>
</details>

### Parse (micro-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1709 |      1917 |      1959 |      2083 |      2417 |      3751 |     11333 |     10000 |
|                 jaybird                  |      1791 |      2041 |      2417 |      2501 |      2875 |      3751 |     23750 |     10000 |
|                    Δ                     |        82 |       124 |       458 |       418 |       458 |         0 |     12417 |         0 |
|              Improvement %               |        -5 |        -6 |       -23 |       -20 |       -19 |         0 |      -110 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3250 |      3501 |      3583 |      3751 |      4375 |      6295 |     16083 |     10000 |
|                 jaybird                  |      3292 |      3709 |      4043 |      4211 |      4875 |      6251 |     19250 |     10000 |
|                    Δ                     |        42 |       208 |       460 |       460 |       500 |       -44 |      3167 |         0 |
|              Improvement %               |        -1 |        -6 |       -13 |       -12 |       -11 |         1 |       -20 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       585 |       522 |       511 |       480 |       414 |       267 |        88 |     10000 |
|                 jaybird                  |       558 |       490 |       414 |       400 |       348 |       267 |        42 |     10000 |
|                    Δ                     |       -27 |       -32 |       -97 |       -80 |       -66 |         0 |       -46 |         0 |
|              Improvement %               |        -5 |        -6 |       -19 |       -17 |       -16 |         0 |       -52 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        25 |        25 |        25 |        26 |        26 |        26 |     10000 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10000 |
|                    Δ                     |         0 |         0 |         0 |         0 |        -1 |        -1 |        -1 |         0 |
|              Improvement %               |         0 |         0 |         0 |         0 |         4 |         4 |         4 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |         4 |         4 |         4 |         4 |         4 |         4 |         7 |     10000 |
|                 jaybird                  |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     10000 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |        -3 |         0 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |        43 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        17 |        17 |        18 |        18 |        19 |        21 |        32 |     10000 |
|                 jaybird                  |        19 |        19 |        19 |        19 |        19 |        21 |        35 |     10000 |
|                    Δ                     |         2 |         2 |         1 |         1 |         0 |         0 |         3 |         0 |
|              Improvement %               |       -12 |       -12 |        -6 |        -6 |         0 |         0 |        -9 |         0 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       447 |       461 |       473 |       510 |       521 |       542 |       603 |      1910 |
|                 jaybird                  |        58 |        60 |        63 |        68 |        71 |        81 |       126 |      9897 |
|                    Δ                     |      -389 |      -401 |      -410 |      -442 |      -450 |      -461 |      -477 |      7987 |
|              Improvement %               |        87 |        87 |        87 |        87 |        86 |        85 |        79 |      7987 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       448 |       463 |       475 |       511 |       522 |       542 |       602 |      1910 |
|                 jaybird                  |        60 |        62 |        65 |        70 |        73 |        81 |       130 |      9897 |
|                    Δ                     |      -388 |      -401 |      -410 |      -441 |      -449 |      -461 |      -472 |      7987 |
|              Improvement %               |        87 |        87 |        86 |        86 |        86 |        85 |        78 |      7987 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2239 |      2171 |      2117 |      1962 |      1920 |      1846 |      1658 |      1910 |
|                 jaybird                  |     17204 |     16575 |     15895 |     14735 |     14159 |     12383 |      7958 |      9897 |
|                    Δ                     |     14965 |     14404 |     13778 |     12773 |     12239 |     10537 |      6300 |      7987 |
|              Improvement %               |       668 |       663 |       651 |       651 |       637 |       571 |       380 |      7987 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        70 |       113 |       158 |       185 |       200 |       202 |      1910 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      9897 |
|                    Δ                     |         0 |       -45 |       -88 |      -133 |      -160 |      -175 |      -177 |      7987 |
|              Improvement %               |         0 |        64 |        78 |        84 |        86 |        88 |        88 |      7987 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      1910 |
|                 jaybird                  |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      9897 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      7987 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      7987 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      9064 |      9101 |      9110 |      9118 |      9126 |      9241 |      9268 |      1910 |
|                 jaybird                  |      1533 |      1534 |      1534 |      1536 |      1538 |      1547 |      1670 |      9897 |
|                    Δ                     |     -7531 |     -7567 |     -7576 |     -7582 |     -7588 |     -7694 |     -7598 |      7987 |
|              Improvement %               |        83 |        83 |        83 |        83 |        83 |        83 |        82 |      7987 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       601 |       625 |       642 |       693 |       712 |       770 |       852 |      1423 |
|                 jaybird                  |        78 |        83 |        87 |        94 |       101 |       123 |       206 |      7569 |
|                    Δ                     |      -523 |      -542 |      -555 |      -599 |      -611 |      -647 |      -646 |      6146 |
|              Improvement %               |        87 |        87 |        86 |        86 |        86 |        84 |        76 |      6146 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       603 |       627 |       644 |       695 |       714 |       773 |       854 |      1423 |
|                 jaybird                  |        80 |        85 |        89 |        96 |       103 |       125 |       211 |      7569 |
|                    Δ                     |      -523 |      -542 |      -555 |      -599 |      -611 |      -648 |      -643 |      6146 |
|              Improvement %               |        87 |        86 |        86 |        86 |        86 |        84 |        75 |      6146 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1664 |      1600 |      1559 |      1444 |      1405 |      1299 |      1173 |      1423 |
|                 jaybird                  |     12780 |     12047 |     11439 |     10607 |      9887 |      8119 |      4845 |      7569 |
|                    Δ                     |     11116 |     10447 |      9880 |      9163 |      8482 |      6820 |      3672 |      6146 |
|              Improvement %               |       668 |       653 |       634 |       635 |       604 |       525 |       313 |      6146 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        39 |        53 |        68 |        76 |        81 |        82 |      1423 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      7569 |
|                    Δ                     |         0 |       -14 |       -28 |       -43 |       -51 |       -56 |       -57 |      6146 |
|              Improvement %               |         0 |        36 |        53 |        63 |        67 |        69 |        70 |      6146 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5756 |      5757 |      5757 |      5757 |      5757 |      5757 |      5757 |      1423 |
|                 jaybird                  |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      7569 |
|                    Δ                     |     -5707 |     -5708 |     -5708 |     -5708 |     -5708 |     -5708 |     -5708 |      6146 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      6146 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      1423 |
|                 jaybird                  |         1 |         1 |         1 |         1 |         1 |         1 |         2 |      7569 |
|                    Δ                     |       -13 |       -13 |       -13 |       -13 |       -13 |       -13 |       -12 |      6146 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        93 |        86 |      6146 |

<p>
</details>

