## Jaybird vs. Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2942 |      3015 |      3074 |      3279 |      3387 |      3443 |      3473 |       314 |
|                 jaybird                  |      2139 |      2191 |      2216 |      2333 |      2480 |      2560 |      2619 |       432 |
|                    Δ                     |      -803 |      -824 |      -858 |      -946 |      -907 |      -883 |      -854 |       118 |
|              Improvement %               |        27 |        27 |        28 |        29 |        27 |        26 |        25 |       118 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2948 |      3019 |      3076 |      3281 |      3389 |      3439 |      3475 |       314 |
|                 jaybird                  |      2146 |      2193 |      2218 |      2333 |      2480 |      2562 |      2620 |       432 |
|                    Δ                     |      -802 |      -826 |      -858 |      -948 |      -909 |      -877 |      -855 |       118 |
|              Improvement %               |        27 |        27 |        28 |        29 |        27 |        26 |        25 |       118 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       340 |       332 |       325 |       305 |       295 |       291 |       288 |       314 |
|                 jaybird                  |       468 |       456 |       451 |       429 |       404 |       391 |       382 |       432 |
|                    Δ                     |       128 |       124 |       126 |       124 |       109 |       100 |        94 |       118 |
|              Improvement %               |        38 |        37 |        39 |        41 |        37 |        34 |        33 |       118 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       138 |       254 |       367 |       436 |       477 |       482 |       314 |
|                 jaybird                  |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       432 |
|                    Δ                     |         3 |      -107 |      -223 |      -336 |      -405 |      -446 |      -451 |       118 |
|              Improvement %               |       -12 |        78 |        88 |        92 |        93 |        94 |        94 |       118 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       314 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       432 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       118 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       118 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        64 |        64 |        64 |        64 |        65 |        65 |       314 |
|                 jaybird                  |        47 |        47 |        47 |        47 |        47 |        48 |        49 |       432 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |       118 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        26 |        25 |       118 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3060 |      3131 |      3185 |      3445 |      3521 |      3590 |      3625 |       302 |
|                 jaybird                  |      2206 |      2251 |      2292 |      2492 |      2548 |      2660 |      2991 |       415 |
|                    Δ                     |      -854 |      -880 |      -893 |      -953 |      -973 |      -930 |      -634 |       113 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        26 |        17 |       113 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3061 |      3131 |      3185 |      3443 |      3521 |      3584 |      3638 |       302 |
|                 jaybird                  |      2207 |      2251 |      2292 |      2494 |      2548 |      2664 |      2991 |       415 |
|                    Δ                     |      -854 |      -880 |      -893 |      -949 |      -973 |      -920 |      -647 |       113 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        26 |        18 |       113 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       327 |       319 |       314 |       290 |       284 |       279 |       276 |       302 |
|                 jaybird                  |       453 |       445 |       437 |       401 |       393 |       376 |       334 |       415 |
|                    Δ                     |       126 |       126 |       123 |       111 |       109 |        97 |        58 |       113 |
|              Improvement %               |        39 |        39 |        39 |        38 |        38 |        35 |        21 |       113 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       137 |       244 |       355 |       418 |       456 |       461 |       302 |
|                 jaybird                  |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       415 |
|                    Δ                     |         3 |      -106 |      -213 |      -324 |      -387 |      -425 |      -430 |       113 |
|              Improvement %               |       -12 |        77 |        87 |        91 |        93 |        93 |        93 |       113 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       302 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       415 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       113 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       113 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        66 |        66 |       302 |
|                 jaybird                  |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       415 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |       113 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        26 |        24 |       113 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       738 |       762 |       777 |       841 |       863 |       895 |       930 |      1191 |
|                 jaybird                  |       528 |       547 |       558 |       607 |       623 |       663 |       769 |      1616 |
|                    Δ                     |      -210 |      -215 |      -219 |      -234 |      -240 |      -232 |      -161 |       425 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        26 |        17 |       425 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       740 |       765 |       779 |       842 |       865 |       898 |       928 |      1191 |
|                 jaybird                  |       530 |       549 |       560 |       609 |       625 |       665 |       773 |      1616 |
|                    Δ                     |      -210 |      -216 |      -219 |      -233 |      -240 |      -233 |      -155 |       425 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        26 |        17 |       425 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1355 |      1312 |      1288 |      1190 |      1159 |      1118 |      1076 |      1191 |
|                 jaybird                  |      1895 |      1830 |      1794 |      1647 |      1606 |      1510 |      1300 |      1616 |
|                    Δ                     |       540 |       518 |       506 |       457 |       447 |       392 |       224 |       425 |
|              Improvement %               |        40 |        39 |        39 |        38 |        39 |        35 |        21 |       425 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       131 |       245 |       351 |       417 |       457 |       462 |      1191 |
|                 jaybird                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1616 |
|                    Δ                     |         1 |      -104 |      -218 |      -324 |      -390 |      -430 |      -435 |       425 |
|              Improvement %               |        -4 |        79 |        89 |        92 |        94 |        94 |        94 |       425 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1191 |
|                 jaybird                  |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1616 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       425 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       425 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1191 |
|                 jaybird                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1616 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       425 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       425 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       764 |       790 |       808 |       881 |       899 |       926 |       942 |      1144 |
|                 jaybird                  |       533 |       553 |       567 |       619 |       633 |       683 |       748 |      1589 |
|                    Δ                     |      -231 |      -237 |      -241 |      -262 |      -266 |      -243 |      -194 |       445 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        26 |        21 |       445 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       766 |       792 |       810 |       882 |       901 |       927 |       943 |      1144 |
|                 jaybird                  |       535 |       555 |       568 |       621 |       635 |       686 |       750 |      1589 |
|                    Δ                     |      -231 |      -237 |      -242 |      -261 |      -266 |      -241 |      -193 |       445 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        26 |        20 |       445 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1308 |      1266 |      1238 |      1136 |      1113 |      1080 |      1062 |      1144 |
|                 jaybird                  |      1876 |      1809 |      1765 |      1616 |      1579 |      1465 |      1337 |      1589 |
|                    Δ                     |       568 |       543 |       527 |       480 |       466 |       385 |       275 |       445 |
|              Improvement %               |        43 |        43 |        43 |        42 |        42 |        36 |        26 |       445 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       126 |       236 |       340 |       403 |       439 |       444 |      1144 |
|                 jaybird                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1589 |
|                    Δ                     |         1 |       -99 |      -209 |      -313 |      -376 |      -412 |      -417 |       445 |
|              Improvement %               |        -4 |        79 |        89 |        92 |        93 |        94 |        94 |       445 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1144 |
|                 jaybird                  |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1589 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       445 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       445 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1144 |
|                 jaybird                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1589 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -5 |       445 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        29 |        29 |       445 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1483 |      1521 |      1555 |      1678 |      1716 |      1790 |      1833 |       610 |
|                 jaybird                  |      1060 |      1090 |      1108 |      1218 |      1243 |      1335 |      1598 |       838 |
|                    Δ                     |      -423 |      -431 |      -447 |      -460 |      -473 |      -455 |      -235 |       228 |
|              Improvement %               |        29 |        28 |        29 |        27 |        28 |        25 |        13 |       228 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1485 |      1523 |      1555 |      1680 |      1717 |      1792 |      1835 |       610 |
|                 jaybird                  |      1062 |      1092 |      1109 |      1220 |      1245 |      1332 |      1601 |       838 |
|                    Δ                     |      -423 |      -431 |      -446 |      -460 |      -472 |      -460 |      -234 |       228 |
|              Improvement %               |        28 |        28 |        29 |        27 |        27 |        26 |        13 |       228 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       674 |       658 |       643 |       596 |       583 |       559 |       546 |       610 |
|                 jaybird                  |       944 |       918 |       903 |       822 |       805 |       749 |       626 |       838 |
|                    Δ                     |       270 |       260 |       260 |       226 |       222 |       190 |        80 |       228 |
|              Improvement %               |        40 |        40 |        40 |        38 |        38 |        34 |        15 |       228 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       134 |       246 |       355 |       423 |       462 |       467 |       610 |
|                 jaybird                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       838 |
|                    Δ                     |         0 |      -106 |      -218 |      -327 |      -395 |      -434 |      -439 |       228 |
|              Improvement %               |         0 |        79 |        89 |        92 |        93 |        94 |        94 |       228 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       610 |
|                 jaybird                  |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       838 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       228 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       228 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       610 |
|                 jaybird                  |        23 |        23 |        24 |        24 |        24 |        24 |        25 |       838 |
|                    Δ                     |        -9 |        -9 |        -8 |        -8 |        -8 |        -8 |        -7 |       228 |
|              Improvement %               |        28 |        28 |        25 |        25 |        25 |        25 |        22 |       228 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1522 |      1577 |      1607 |      1741 |      1778 |      1825 |      1853 |       591 |
|                 jaybird                  |      1079 |      1111 |      1132 |      1241 |      1273 |      1323 |      1380 |       824 |
|                    Δ                     |      -443 |      -466 |      -475 |      -500 |      -505 |      -502 |      -473 |       233 |
|              Improvement %               |        29 |        30 |        30 |        29 |        28 |        28 |        26 |       233 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1524 |      1579 |      1608 |      1743 |      1780 |      1828 |      1853 |       591 |
|                 jaybird                  |      1081 |      1113 |      1134 |      1243 |      1274 |      1322 |      1380 |       824 |
|                    Δ                     |      -443 |      -466 |      -474 |      -500 |      -506 |      -506 |      -473 |       233 |
|              Improvement %               |        29 |        30 |        29 |        29 |        28 |        28 |        26 |       233 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       657 |       634 |       623 |       575 |       563 |       548 |       540 |       591 |
|                 jaybird                  |       926 |       900 |       884 |       806 |       786 |       756 |       725 |       824 |
|                    Δ                     |       269 |       266 |       261 |       231 |       223 |       208 |       185 |       233 |
|              Improvement %               |        41 |        42 |        42 |        40 |        40 |        38 |        34 |       233 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       132 |       239 |       348 |       413 |       450 |       456 |       591 |
|                 jaybird                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       824 |
|                    Δ                     |         0 |      -104 |      -211 |      -320 |      -385 |      -422 |      -428 |       233 |
|              Improvement %               |         0 |        79 |        88 |        92 |        93 |        94 |        94 |       233 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       591 |
|                 jaybird                  |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       824 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       233 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       233 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       591 |
|                 jaybird                  |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       824 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        -8 |       233 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        24 |        24 |       233 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        16 |        16 |        17 |        17 |        64 |
|                 jaybird                  |        11 |        12 |        12 |        13 |        13 |        15 |        15 |        80 |
|                    Δ                     |        -4 |        -3 |        -3 |        -3 |        -3 |        -2 |        -2 |        16 |
|              Improvement %               |        27 |        20 |        20 |        19 |        19 |        12 |        12 |        16 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        16 |        16 |        17 |        17 |        64 |
|                 jaybird                  |        11 |        12 |        12 |        13 |        13 |        15 |        15 |        80 |
|                    Δ                     |        -4 |        -3 |        -3 |        -3 |        -3 |        -2 |        -2 |        16 |
|              Improvement %               |        27 |        20 |        20 |        19 |        19 |        12 |        12 |        16 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        67 |        66 |        64 |        62 |        61 |        59 |        59 |        64 |
|                 jaybird                  |        87 |        85 |        82 |        78 |        76 |        68 |        68 |        80 |
|                    Δ                     |        20 |        19 |        18 |        16 |        15 |         9 |         9 |        16 |
|              Improvement %               |        30 |        29 |        28 |        26 |        25 |        15 |        15 |        16 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        36 |       143 |       261 |       376 |       447 |       492 |       492 |        64 |
|                 jaybird                  |        51 |        52 |        52 |        52 |        52 |        52 |        52 |        80 |
|                    Δ                     |        15 |       -91 |      -209 |      -324 |      -395 |      -440 |      -440 |        16 |
|              Improvement %               |       -42 |        64 |        80 |        86 |        88 |        89 |        89 |        16 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        64 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        80 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        16 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        16 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       319 |       320 |       320 |       320 |       320 |       320 |       320 |        64 |
|                 jaybird                  |       240 |       241 |       241 |       241 |       242 |       252 |       252 |        80 |
|                    Δ                     |       -79 |       -79 |       -79 |       -79 |       -78 |       -68 |       -68 |        16 |
|              Improvement %               |        25 |        25 |        25 |        25 |        24 |        21 |        21 |        16 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        17 |        17 |        18 |        18 |        61 |
|                 jaybird                  |        12 |        12 |        13 |        14 |        14 |        15 |        15 |        76 |
|                    Δ                     |        -4 |        -4 |        -3 |        -3 |        -3 |        -3 |        -3 |        15 |
|              Improvement %               |        25 |        25 |        19 |        18 |        18 |        17 |        17 |        15 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        17 |        17 |        18 |        18 |        61 |
|                 jaybird                  |        12 |        13 |        13 |        14 |        14 |        15 |        15 |        76 |
|                    Δ                     |        -4 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        15 |
|              Improvement %               |        25 |        19 |        19 |        18 |        18 |        17 |        17 |        15 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        63 |        61 |        60 |        59 |        57 |        57 |        61 |
|                 jaybird                  |        81 |        80 |        77 |        74 |        71 |        67 |        67 |        76 |
|                    Δ                     |        17 |        17 |        16 |        14 |        12 |        10 |        10 |        15 |
|              Improvement %               |        27 |        27 |        26 |        23 |        20 |        18 |        18 |        15 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        38 |       143 |       256 |       361 |       428 |       470 |       470 |        61 |
|                 jaybird                  |        50 |        50 |        50 |        50 |        51 |        51 |        51 |        76 |
|                    Δ                     |        12 |       -93 |      -206 |      -311 |      -377 |      -419 |      -419 |        15 |
|              Improvement %               |       -32 |        65 |        80 |        86 |        88 |        89 |        89 |        15 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        61 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        76 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        15 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        15 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       324 |       325 |       325 |       325 |       325 |       327 |       327 |        61 |
|                 jaybird                  |       247 |       250 |       250 |       250 |       250 |       259 |       259 |        76 |
|                    Δ                     |       -77 |       -75 |       -75 |       -75 |       -75 |       -68 |       -68 |        15 |
|              Improvement %               |        24 |        23 |        23 |        23 |        23 |        21 |        21 |        15 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       189 |       199 |       203 |       216 |       227 |       246 |       296 |      4007 |
|                 jaybird                  |       134 |       138 |       144 |       155 |       160 |       172 |       204 |      5290 |
|                    Δ                     |       -55 |       -61 |       -59 |       -61 |       -67 |       -74 |       -92 |      1283 |
|              Improvement %               |        29 |        31 |        29 |        28 |        30 |        30 |        31 |      1283 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       191 |       200 |       205 |       217 |       228 |       246 |       299 |      4007 |
|                 jaybird                  |       136 |       140 |       146 |       157 |       162 |       171 |       198 |      5290 |
|                    Δ                     |       -55 |       -60 |       -59 |       -60 |       -66 |       -75 |      -101 |      1283 |
|              Improvement %               |        29 |        30 |        29 |        28 |        29 |        30 |        34 |      1283 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5288 |      5039 |      4935 |      4639 |      4419 |      4065 |      3381 |      4007 |
|                 jaybird                  |      7463 |      7231 |      6951 |      6467 |      6255 |      5823 |      4891 |      5290 |
|                    Δ                     |      2175 |      2192 |      2016 |      1828 |      1836 |      1758 |      1510 |      1283 |
|              Improvement %               |        41 |        44 |        41 |        39 |        42 |        43 |        45 |      1283 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       118 |       217 |       316 |       376 |       409 |       414 |      4007 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      5290 |
|                    Δ                     |         0 |       -93 |      -192 |      -291 |      -351 |      -384 |      -389 |      1283 |
|              Improvement %               |         0 |        79 |        88 |        92 |        93 |        94 |        94 |      1283 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4007 |
|                 jaybird                  |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5290 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1283 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1283 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4077 |      4112 |      4121 |      4131 |      4141 |      4260 |      4295 |      4007 |
|                 jaybird                  |      2941 |      2943 |      2947 |      2949 |      2951 |      3017 |      3087 |      5290 |
|                    Δ                     |     -1136 |     -1169 |     -1174 |     -1182 |     -1190 |     -1243 |     -1208 |      1283 |
|              Improvement %               |        28 |        28 |        28 |        29 |        29 |        29 |        28 |      1283 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       196 |       205 |       211 |       229 |       236 |       254 |       302 |      3858 |
|                 jaybird                  |       135 |       140 |       144 |       158 |       164 |       173 |       195 |      5254 |
|                    Δ                     |       -61 |       -65 |       -67 |       -71 |       -72 |       -81 |      -107 |      1396 |
|              Improvement %               |        31 |        32 |        32 |        31 |        31 |        32 |        35 |      1396 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       198 |       207 |       213 |       231 |       238 |       254 |       300 |      3858 |
|                 jaybird                  |       137 |       141 |       146 |       159 |       166 |       174 |       199 |      5254 |
|                    Δ                     |       -61 |       -66 |       -67 |       -72 |       -72 |       -80 |      -101 |      1396 |
|              Improvement %               |        31 |        32 |        31 |        31 |        30 |        31 |        34 |      1396 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5106 |      4875 |      4739 |      4371 |      4231 |      3931 |      3317 |      3858 |
|                 jaybird                  |      7389 |      7163 |      6951 |      6347 |      6115 |      5775 |      5125 |      5254 |
|                    Δ                     |      2283 |      2288 |      2212 |      1976 |      1884 |      1844 |      1808 |      1396 |
|              Improvement %               |        45 |        47 |        47 |        45 |        45 |        47 |        55 |      1396 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       115 |       213 |       304 |       360 |       397 |       397 |      3858 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      5254 |
|                    Δ                     |         0 |       -90 |      -188 |      -279 |      -335 |      -372 |      -372 |      1396 |
|              Improvement %               |         0 |        78 |        88 |        92 |        93 |        94 |        94 |      1396 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      3858 |
|                 jaybird                  |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5254 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1396 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1396 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4140 |      4174 |      4184 |      4192 |      4202 |      4329 |      4372 |      3858 |
|                 jaybird                  |      2991 |      2992 |      2996 |      2998 |      3000 |      3064 |      3144 |      5254 |
|                    Δ                     |     -1149 |     -1182 |     -1188 |     -1194 |     -1202 |     -1265 |     -1228 |      1396 |
|              Improvement %               |        28 |        28 |        28 |        28 |        29 |        29 |        28 |      1396 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       281 |       291 |       298 |       320 |       331 |       345 |       383 |      2917 |
|                 jaybird                  |        99 |       103 |       107 |       116 |       120 |       128 |       155 |      6835 |
|                    Δ                     |      -182 |      -188 |      -191 |      -204 |      -211 |      -217 |      -228 |      3918 |
|              Improvement %               |        65 |        65 |        64 |        64 |        64 |        63 |        60 |      3918 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       283 |       293 |       300 |       322 |       333 |       347 |       385 |      2917 |
|                 jaybird                  |       101 |       104 |       109 |       118 |       121 |       128 |       155 |      6835 |
|                    Δ                     |      -182 |      -189 |      -191 |      -204 |      -212 |      -219 |      -230 |      3918 |
|              Improvement %               |        64 |        65 |        64 |        63 |        64 |        63 |        60 |      3918 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3558 |      3437 |      3361 |      3125 |      3025 |      2899 |      2612 |      2917 |
|                 jaybird                  |     10054 |      9743 |      9335 |      8631 |      8367 |      7835 |      6443 |      6835 |
|                    Δ                     |      6496 |      6306 |      5974 |      5506 |      5342 |      4936 |      3831 |      3918 |
|              Improvement %               |       183 |       183 |       178 |       176 |       177 |       170 |       147 |      3918 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        79 |       135 |       189 |       224 |       243 |       246 |      2917 |
|                 jaybird                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6835 |
|                    Δ                     |         0 |       -53 |      -109 |      -163 |      -198 |      -217 |      -220 |      3918 |
|              Improvement %               |         0 |        67 |        81 |        86 |        88 |        89 |        89 |      3918 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      2917 |
|                 jaybird                  |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      6835 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      3918 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      3918 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6961 |      6975 |      6980 |      6996 |      7008 |      7037 |      7165 |      2917 |
|                 jaybird                  |      2478 |      2478 |      2480 |      2482 |      2484 |      2497 |      2729 |      6835 |
|                    Δ                     |     -4483 |     -4497 |     -4500 |     -4514 |     -4524 |     -4540 |     -4436 |      3918 |
|              Improvement %               |        64 |        64 |        64 |        65 |        65 |        65 |        62 |      3918 |

<p>
</details>

### Parse (micro) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1708 |      1917 |      1959 |      2125 |      2417 |      3709 |     16333 |     10000 |
|                 jaybird                  |      1791 |      2000 |      2375 |      2459 |      2917 |      3625 |     17125 |     10000 |
|                    Δ                     |        83 |        83 |       416 |       334 |       500 |       -84 |       792 |         0 |
|              Improvement %               |        -5 |        -4 |       -21 |       -16 |       -21 |         2 |        -5 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3249 |      3541 |      3625 |      3959 |      4419 |      6375 |     17625 |     10000 |
|                 jaybird                  |      3333 |      3667 |      4001 |      4295 |      4919 |      5959 |     15751 |     10000 |
|                    Δ                     |        84 |       126 |       376 |       336 |       500 |      -416 |     -1874 |         0 |
|              Improvement %               |        -3 |        -4 |       -10 |        -8 |       -11 |         7 |        11 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       585 |       522 |       511 |       471 |       414 |       270 |        61 |     10000 |
|                 jaybird                  |       558 |       500 |       421 |       407 |       343 |       276 |        58 |     10000 |
|                    Δ                     |       -27 |       -22 |       -90 |       -64 |       -71 |         6 |        -3 |         0 |
|              Improvement %               |        -5 |        -4 |       -18 |       -14 |       -17 |         2 |        -5 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        25 |        25 |        26 |        26 |        26 |        26 |     10000 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10000 |
|                    Δ                     |         0 |         0 |         0 |        -1 |        -1 |        -1 |        -1 |         0 |
|              Improvement %               |         0 |         0 |         0 |         4 |         4 |         4 |         4 |         0 |

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
|                foundation                |        17 |        17 |        18 |        18 |        19 |        20 |        36 |     10000 |
|                 jaybird                  |        19 |        19 |        19 |        19 |        20 |        21 |        33 |     10000 |
|                    Δ                     |         2 |         2 |         1 |         1 |         1 |         1 |        -3 |         0 |
|              Improvement %               |       -12 |       -12 |        -6 |        -6 |        -5 |        -5 |         8 |         0 |

<p>
</details>

### Parse (micro-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1750 |      1958 |      2041 |      2125 |      2501 |      3793 |     17542 |     10000 |
|                 jaybird                  |      1791 |      1958 |      2000 |      2293 |      2459 |      3335 |     16584 |     10000 |
|                    Δ                     |        41 |         0 |       -41 |       168 |       -42 |      -458 |      -958 |         0 |
|              Improvement %               |        -2 |         0 |         2 |        -8 |         2 |        12 |         5 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3292 |      3583 |      3667 |      3877 |      4503 |      6419 |     17209 |     10000 |
|                 jaybird                  |      3375 |      3625 |      3709 |      4211 |      4543 |      6167 |     20792 |     10000 |
|                    Δ                     |        83 |        42 |        42 |       334 |        40 |      -252 |      3583 |         0 |
|              Improvement %               |        -3 |        -1 |        -1 |        -9 |        -1 |         4 |       -21 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       571 |       511 |       490 |       471 |       400 |       264 |        57 |     10000 |
|                 jaybird                  |       558 |       511 |       500 |       436 |       407 |       296 |        60 |     10000 |
|                    Δ                     |       -13 |         0 |        10 |       -35 |         7 |        32 |         3 |         0 |
|              Improvement %               |        -2 |         0 |         2 |        -7 |         2 |        12 |         5 |         0 |

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
|                foundation                |        17 |        17 |        18 |        18 |        19 |        21 |        33 |     10000 |
|                 jaybird                  |        19 |        19 |        19 |        19 |        20 |        21 |        34 |     10000 |
|                    Δ                     |         2 |         2 |         1 |         1 |         1 |         0 |         1 |         0 |
|              Improvement %               |       -12 |       -12 |        -6 |        -6 |        -5 |         0 |        -3 |         0 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       443 |       455 |       464 |       500 |       516 |       536 |       609 |      1943 |
|                 jaybird                  |        58 |        60 |        61 |        67 |        69 |        80 |       127 |     10000 |
|                    Δ                     |      -385 |      -395 |      -403 |      -433 |      -447 |      -456 |      -482 |      8057 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        85 |        79 |      8057 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       444 |       457 |       466 |       501 |       518 |       536 |       613 |      1943 |
|                 jaybird                  |        60 |        61 |        63 |        68 |        71 |        81 |       131 |     10000 |
|                    Δ                     |      -384 |      -396 |      -403 |      -433 |      -447 |      -455 |      -482 |      8057 |
|              Improvement %               |        86 |        87 |        86 |        86 |        86 |        85 |        79 |      8057 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2259 |      2199 |      2155 |      2001 |      1940 |      1868 |      1642 |      1943 |
|                 jaybird                  |     17217 |     16783 |     16319 |     15039 |     14415 |     12423 |      7903 |     10000 |
|                    Δ                     |     14958 |     14584 |     14164 |     13038 |     12475 |     10555 |      6261 |      8057 |
|              Improvement %               |       662 |       663 |       657 |       652 |       643 |       565 |       381 |      8057 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        68 |       115 |       160 |       187 |       202 |       205 |      1943 |
|                 jaybird                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10000 |
|                    Δ                     |         0 |       -42 |       -89 |      -134 |      -161 |      -176 |      -179 |      8057 |
|              Improvement %               |         0 |        62 |        77 |        84 |        86 |        87 |        87 |      8057 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      1943 |
|                 jaybird                  |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10000 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      8057 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      8057 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      9071 |      9101 |      9110 |      9118 |      9126 |      9249 |      9267 |      1943 |
|                 jaybird                  |      1533 |      1534 |      1535 |      1536 |      1537 |      1546 |      1664 |     10000 |
|                    Δ                     |     -7538 |     -7567 |     -7575 |     -7582 |     -7589 |     -7703 |     -7603 |      8057 |
|              Improvement %               |        83 |        83 |        83 |        83 |        83 |        83 |        82 |      8057 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       604 |       621 |       636 |       691 |       710 |       765 |     33504 |      1382 |
|                 jaybird                  |        79 |        84 |        88 |        96 |       103 |       127 |       215 |      7519 |
|                    Δ                     |      -525 |      -537 |      -548 |      -595 |      -607 |      -638 |    -33289 |      6137 |
|              Improvement %               |        87 |        86 |        86 |        86 |        85 |        83 |        99 |      6137 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       606 |       623 |       638 |       693 |       711 |       765 |       939 |      1382 |
|                 jaybird                  |        80 |        86 |        90 |        98 |       105 |       128 |       212 |      7519 |
|                    Δ                     |      -526 |      -537 |      -548 |      -595 |      -606 |      -637 |      -727 |      6137 |
|              Improvement %               |        87 |        86 |        86 |        86 |        85 |        83 |        77 |      6137 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1656 |      1611 |      1574 |      1448 |      1410 |      1306 |        30 |      1382 |
|                 jaybird                  |     12698 |     11903 |     11343 |     10447 |      9711 |      7903 |      4650 |      7519 |
|                    Δ                     |     11042 |     10292 |      9769 |      8999 |      8301 |      6597 |      4620 |      6137 |
|              Improvement %               |       667 |       639 |       621 |       621 |       589 |       505 |     15400 |      6137 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        38 |        53 |        66 |        75 |        79 |        80 |      1382 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      7519 |
|                    Δ                     |         0 |       -13 |       -28 |       -41 |       -50 |       -54 |       -55 |      6137 |
|              Improvement %               |         0 |        34 |        53 |        62 |        67 |        68 |        69 |      6137 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5756 |      5757 |      5757 |      5757 |      5757 |      5757 |      5757 |      1382 |
|                 jaybird                  |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      7519 |
|                    Δ                     |     -5707 |     -5708 |     -5708 |     -5708 |     -5708 |     -5708 |     -5708 |      6137 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      6137 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      1382 |
|                 jaybird                  |         1 |         1 |         1 |         1 |         1 |         1 |         2 |      7519 |
|                    Δ                     |       -13 |       -13 |       -13 |       -13 |       -13 |       -13 |       -12 |      6137 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        93 |        86 |      6137 |

<p>
</details>

