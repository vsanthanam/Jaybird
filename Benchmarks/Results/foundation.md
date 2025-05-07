## Jaybird vs. Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2943 |      3017 |      3097 |      3353 |      3437 |      4170 |      4237 |       309 |
|                 jaybird                  |      2159 |      2206 |      2265 |      2474 |      2531 |      2669 |      2700 |       419 |
|                    Δ                     |      -784 |      -811 |      -832 |      -879 |      -906 |     -1501 |     -1537 |       110 |
|              Improvement %               |        27 |        27 |        27 |        26 |        26 |        36 |        36 |       110 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2945 |      3021 |      3097 |      3355 |      3434 |      4182 |      4239 |       309 |
|                 jaybird                  |      2161 |      2208 |      2265 |      2478 |      2529 |      2671 |      2698 |       419 |
|                    Δ                     |      -784 |      -813 |      -832 |      -877 |      -905 |     -1511 |     -1541 |       110 |
|              Improvement %               |        27 |        27 |        27 |        26 |        26 |        36 |        36 |       110 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       340 |       332 |       323 |       298 |       291 |       240 |       236 |       309 |
|                 jaybird                  |       463 |       454 |       442 |       404 |       395 |       375 |       370 |       419 |
|                    Δ                     |       123 |       122 |       119 |       106 |       104 |       135 |       134 |       110 |
|              Improvement %               |        36 |        37 |        37 |        36 |        36 |        56 |        57 |       110 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       136 |       249 |       359 |       431 |       471 |       471 |       309 |
|                 jaybird                  |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       419 |
|                    Δ                     |         3 |      -105 |      -218 |      -328 |      -400 |      -440 |      -440 |       110 |
|              Improvement %               |       -12 |        77 |        88 |        91 |        93 |        93 |        93 |       110 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       309 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       419 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       110 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       110 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        64 |        64 |        64 |        64 |        65 |        65 |       309 |
|                 jaybird                  |        47 |        47 |        47 |        47 |        47 |        49 |        49 |       419 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |       -16 |       110 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        25 |        25 |       110 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3069 |      3199 |      3385 |      3535 |      3676 |      4510 |      4535 |       290 |
|                 jaybird                  |      2190 |      2243 |      2304 |      2488 |      2578 |      2824 |      8147 |       412 |
|                    Δ                     |      -879 |      -956 |     -1081 |     -1047 |     -1098 |     -1686 |      3612 |       122 |
|              Improvement %               |        29 |        30 |        32 |        30 |        30 |        37 |       -80 |       122 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3070 |      3201 |      3389 |      3537 |      3678 |      4514 |      4535 |       290 |
|                 jaybird                  |      2192 |      2245 |      2302 |      2492 |      2578 |      2822 |      2965 |       412 |
|                    Δ                     |      -878 |      -956 |     -1087 |     -1045 |     -1100 |     -1692 |     -1570 |       122 |
|              Improvement %               |        29 |        30 |        32 |        30 |        30 |        37 |        35 |       122 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       326 |       313 |       295 |       283 |       272 |       222 |       221 |       290 |
|                 jaybird                  |       457 |       446 |       434 |       402 |       388 |       354 |       123 |       412 |
|                    Δ                     |       131 |       133 |       139 |       119 |       116 |       132 |       -98 |       122 |
|              Improvement %               |        40 |        42 |        47 |        42 |        43 |        59 |       -44 |       122 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       127 |       232 |       341 |       403 |       440 |       446 |       290 |
|                 jaybird                  |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       412 |
|                    Δ                     |         3 |       -96 |      -201 |      -310 |      -372 |      -409 |      -415 |       122 |
|              Improvement %               |       -12 |        76 |        87 |        91 |        92 |        93 |        93 |       122 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       290 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       412 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       122 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       122 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        66 |        66 |       290 |
|                 jaybird                  |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       412 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |       122 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        26 |        24 |       122 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       749 |       785 |       812 |       871 |       899 |       937 |       964 |      1148 |
|                 jaybird                  |       530 |       547 |       567 |       616 |       630 |       660 |      5401 |      1588 |
|                    Δ                     |      -219 |      -238 |      -245 |      -255 |      -269 |      -277 |      4437 |       440 |
|              Improvement %               |        29 |        30 |        30 |        29 |        30 |        30 |      -460 |       440 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       751 |       787 |       814 |       874 |       901 |       942 |       966 |      1148 |
|                 jaybird                  |       532 |       549 |       569 |       619 |       632 |       660 |       744 |      1588 |
|                    Δ                     |      -219 |      -238 |      -245 |      -255 |      -269 |      -282 |      -222 |       440 |
|              Improvement %               |        29 |        30 |        30 |        29 |        30 |        30 |        23 |       440 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1335 |      1274 |      1232 |      1147 |      1113 |      1067 |      1038 |      1148 |
|                 jaybird                  |      1888 |      1828 |      1763 |      1623 |      1588 |      1514 |       185 |      1588 |
|                    Δ                     |       553 |       554 |       531 |       476 |       475 |       447 |      -853 |       440 |
|              Improvement %               |        41 |        43 |        43 |        41 |        43 |        42 |       -82 |       440 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       126 |       237 |       342 |       404 |       443 |       443 |      1148 |
|                 jaybird                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1588 |
|                    Δ                     |         1 |       -99 |      -210 |      -315 |      -377 |      -416 |      -416 |       440 |
|              Improvement %               |        -4 |        79 |        89 |        92 |        93 |        94 |        94 |       440 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1148 |
|                 jaybird                  |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1588 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       440 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       440 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1148 |
|                 jaybird                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1588 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       440 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       440 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       759 |       792 |       846 |       901 |       924 |       993 |      1015 |      1120 |
|                 jaybird                  |       548 |       571 |       597 |       650 |       669 |       721 |      6803 |      1517 |
|                    Δ                     |      -211 |      -221 |      -249 |      -251 |      -255 |      -272 |      5788 |       397 |
|              Improvement %               |        28 |        28 |        29 |        28 |        28 |        27 |      -570 |       397 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       761 |       795 |       848 |       903 |       927 |       995 |      1021 |      1120 |
|                 jaybird                  |       550 |       573 |       600 |       653 |       672 |       719 |       759 |      1517 |
|                    Δ                     |      -211 |      -222 |      -248 |      -250 |      -255 |      -276 |      -262 |       397 |
|              Improvement %               |        28 |        28 |        29 |        28 |        28 |        28 |        26 |       397 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1318 |      1263 |      1182 |      1111 |      1083 |      1008 |       985 |      1120 |
|                 jaybird                  |      1826 |      1752 |      1675 |      1538 |      1494 |      1387 |       147 |      1517 |
|                    Δ                     |       508 |       489 |       493 |       427 |       411 |       379 |      -838 |       397 |
|              Improvement %               |        39 |        39 |        42 |        38 |        38 |        38 |       -85 |       397 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       124 |       229 |       332 |       395 |       433 |       438 |      1120 |
|                 jaybird                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1517 |
|                    Δ                     |         1 |       -97 |      -202 |      -305 |      -368 |      -406 |      -411 |       397 |
|              Improvement %               |        -4 |        78 |        88 |        92 |        93 |        94 |        94 |       397 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1120 |
|                 jaybird                  |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1517 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       397 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       397 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1120 |
|                 jaybird                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1517 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -5 |       397 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        29 |        29 |       397 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1485 |      1531 |      1577 |      1729 |      1797 |      1959 |      2186 |       597 |
|                 jaybird                  |      1070 |      1117 |      1175 |      1252 |      1313 |      1399 |      1471 |       808 |
|                    Δ                     |      -415 |      -414 |      -402 |      -477 |      -484 |      -560 |      -715 |       211 |
|              Improvement %               |        28 |        27 |        25 |        28 |        27 |        29 |        33 |       211 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1487 |      1533 |      1581 |      1730 |      1797 |      1960 |      2188 |       597 |
|                 jaybird                  |      1072 |      1119 |      1176 |      1255 |      1316 |      1403 |      1474 |       808 |
|                    Δ                     |      -415 |      -414 |      -405 |      -475 |      -481 |      -557 |      -714 |       211 |
|              Improvement %               |        28 |        27 |        26 |        27 |        27 |        28 |        33 |       211 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       673 |       654 |       634 |       579 |       557 |       511 |       457 |       597 |
|                 jaybird                  |       935 |       895 |       852 |       798 |       762 |       715 |       680 |       808 |
|                    Δ                     |       262 |       241 |       218 |       219 |       205 |       204 |       223 |       211 |
|              Improvement %               |        39 |        37 |        34 |        38 |        37 |        40 |        49 |       211 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       131 |       242 |       349 |       414 |       458 |       458 |       597 |
|                 jaybird                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       808 |
|                    Δ                     |         1 |      -103 |      -214 |      -321 |      -386 |      -430 |      -430 |       211 |
|              Improvement %               |        -4 |        79 |        88 |        92 |        93 |        94 |        94 |       211 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       597 |
|                 jaybird                  |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       808 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       211 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       211 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       597 |
|                 jaybird                  |        23 |        23 |        24 |        24 |        24 |        24 |        25 |       808 |
|                    Δ                     |        -9 |        -9 |        -8 |        -8 |        -8 |        -8 |        -7 |       211 |
|              Improvement %               |        28 |        28 |        25 |        25 |        25 |        25 |        22 |       211 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1536 |      1593 |      1639 |      1741 |      1807 |      2210 |      2302 |       581 |
|                 jaybird                  |      1080 |      1107 |      1123 |      1235 |      1255 |      1304 |      1329 |       828 |
|                    Δ                     |      -456 |      -486 |      -516 |      -506 |      -552 |      -906 |      -973 |       247 |
|              Improvement %               |        30 |        31 |        31 |        29 |        31 |        41 |        42 |       247 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1538 |      1597 |      1641 |      1745 |      1811 |      2212 |      2310 |       581 |
|                 jaybird                  |      1082 |      1110 |      1125 |      1237 |      1257 |      1306 |      1332 |       828 |
|                    Δ                     |      -456 |      -487 |      -516 |      -508 |      -554 |      -906 |      -978 |       247 |
|              Improvement %               |        30 |        30 |        31 |        29 |        31 |        41 |        42 |       247 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       651 |       628 |       610 |       575 |       553 |       453 |       434 |       581 |
|                 jaybird                  |       926 |       903 |       891 |       810 |       797 |       768 |       752 |       828 |
|                    Δ                     |       275 |       275 |       281 |       235 |       244 |       315 |       318 |       247 |
|              Improvement %               |        42 |        44 |        46 |        41 |        44 |        70 |        73 |       247 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       130 |       237 |       343 |       403 |       444 |       449 |       581 |
|                 jaybird                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       828 |
|                    Δ                     |         0 |      -102 |      -209 |      -315 |      -375 |      -416 |      -421 |       247 |
|              Improvement %               |         0 |        78 |        88 |        92 |        93 |        94 |        94 |       247 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       581 |
|                 jaybird                  |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       828 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       247 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       247 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       581 |
|                 jaybird                  |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       828 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        -8 |       247 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        24 |        24 |       247 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        16 |        16 |        17 |        18 |        18 |        63 |
|                 jaybird                  |        12 |        12 |        13 |        14 |        14 |        16 |        16 |        75 |
|                    Δ                     |        -3 |        -3 |        -3 |        -2 |        -3 |        -2 |        -2 |        12 |
|              Improvement %               |        20 |        20 |        19 |        12 |        18 |        11 |        11 |        12 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        16 |        16 |        17 |        18 |        18 |        63 |
|                 jaybird                  |        12 |        12 |        13 |        14 |        14 |        16 |        16 |        75 |
|                    Δ                     |        -3 |        -3 |        -3 |        -2 |        -3 |        -2 |        -2 |        12 |
|              Improvement %               |        20 |        20 |        19 |        12 |        18 |        11 |        11 |        12 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        67 |        65 |        63 |        61 |        59 |        56 |        56 |        63 |
|                 jaybird                  |        83 |        80 |        76 |        73 |        70 |        63 |        63 |        75 |
|                    Δ                     |        16 |        15 |        13 |        12 |        11 |         7 |         7 |        12 |
|              Improvement %               |        24 |        23 |        21 |        20 |        19 |        12 |        12 |        12 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        37 |       144 |       259 |       378 |       442 |       488 |       488 |        63 |
|                 jaybird                  |        50 |        50 |        51 |        59 |        59 |        59 |        59 |        75 |
|                    Δ                     |        13 |       -94 |      -208 |      -319 |      -383 |      -429 |      -429 |        12 |
|              Improvement %               |       -35 |        65 |        80 |        84 |        87 |        88 |        88 |        12 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        63 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        75 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        12 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        12 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       319 |       320 |       320 |       320 |       320 |       321 |       321 |        63 |
|                 jaybird                  |       240 |       241 |       245 |       245 |       246 |       256 |       256 |        75 |
|                    Δ                     |       -79 |       -79 |       -75 |       -75 |       -74 |       -65 |       -65 |        12 |
|              Improvement %               |        25 |        25 |        23 |        23 |        23 |        20 |        20 |        12 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        17 |        17 |        19 |        19 |        60 |
|                 jaybird                  |        12 |        12 |        13 |        13 |        14 |        15 |        15 |        76 |
|                    Δ                     |        -4 |        -4 |        -3 |        -4 |        -3 |        -4 |        -4 |        16 |
|              Improvement %               |        25 |        25 |        19 |        24 |        18 |        21 |        21 |        16 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        17 |        17 |        19 |        19 |        60 |
|                 jaybird                  |        12 |        12 |        13 |        13 |        14 |        15 |        15 |        76 |
|                    Δ                     |        -4 |        -4 |        -3 |        -4 |        -3 |        -4 |        -4 |        16 |
|              Improvement %               |        25 |        25 |        19 |        24 |        18 |        21 |        21 |        16 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        62 |        61 |        58 |        57 |        54 |        54 |        60 |
|                 jaybird                  |        84 |        80 |        78 |        75 |        72 |        68 |        68 |        76 |
|                    Δ                     |        20 |        18 |        17 |        17 |        15 |        14 |        14 |        16 |
|              Improvement %               |        31 |        29 |        28 |        29 |        26 |        26 |        26 |        16 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        37 |       139 |       247 |       357 |       423 |       465 |       465 |        60 |
|                 jaybird                  |        51 |        52 |        52 |        52 |        52 |        52 |        52 |        76 |
|                    Δ                     |        14 |       -87 |      -195 |      -305 |      -371 |      -413 |      -413 |        16 |
|              Improvement %               |       -38 |        63 |        79 |        85 |        88 |        89 |        89 |        16 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        60 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        76 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        16 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        16 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       324 |       325 |       325 |       325 |       325 |       326 |       326 |        60 |
|                 jaybird                  |       245 |       245 |       246 |       246 |       246 |       261 |       261 |        76 |
|                    Δ                     |       -79 |       -80 |       -79 |       -79 |       -79 |       -65 |       -65 |        16 |
|              Improvement %               |        24 |        25 |        24 |        24 |        24 |        20 |        20 |        16 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       189 |       209 |       221 |       227 |       232 |       249 |       282 |      3815 |
|                 jaybird                  |       133 |       142 |       148 |       159 |       169 |       183 |       211 |      5148 |
|                    Δ                     |       -56 |       -67 |       -73 |       -68 |       -63 |       -66 |       -71 |      1333 |
|              Improvement %               |        30 |        32 |        33 |        30 |        27 |        27 |        25 |      1333 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       192 |       211 |       223 |       230 |       235 |       249 |       284 |      3815 |
|                 jaybird                  |       135 |       145 |       150 |       162 |       171 |       185 |       210 |      5148 |
|                    Δ                     |       -57 |       -66 |       -73 |       -68 |       -64 |       -64 |       -74 |      1333 |
|              Improvement %               |        30 |        31 |        33 |        30 |        27 |        26 |        26 |      1333 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5281 |      4787 |      4527 |      4407 |      4303 |      4009 |      3546 |      3815 |
|                 jaybird                  |      7502 |      7023 |      6759 |      6271 |      5919 |      5471 |      4736 |      5148 |
|                    Δ                     |      2221 |      2236 |      2232 |      1864 |      1616 |      1462 |      1190 |      1333 |
|              Improvement %               |        42 |        47 |        49 |        42 |        38 |        36 |        34 |      1333 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       118 |       208 |       302 |       358 |       390 |       394 |      3815 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      5148 |
|                    Δ                     |         0 |       -93 |      -183 |      -277 |      -333 |      -365 |      -369 |      1333 |
|              Improvement %               |         0 |        79 |        88 |        92 |        93 |        94 |        94 |      1333 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      3815 |
|                 jaybird                  |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5148 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1333 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1333 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4079 |      4110 |      4121 |      4131 |      4139 |      4252 |      4302 |      3815 |
|                 jaybird                  |      2936 |      2937 |      2941 |      2943 |      2945 |      3015 |      3083 |      5148 |
|                    Δ                     |     -1143 |     -1173 |     -1180 |     -1188 |     -1194 |     -1237 |     -1219 |      1333 |
|              Improvement %               |        28 |        29 |        29 |        29 |        29 |        29 |        28 |      1333 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       197 |       211 |       218 |       231 |       244 |       264 |       303 |      3775 |
|                 jaybird                  |       135 |       144 |       150 |       160 |       168 |       186 |       212 |      5118 |
|                    Δ                     |       -62 |       -67 |       -68 |       -71 |       -76 |       -78 |       -91 |      1343 |
|              Improvement %               |        31 |        32 |        31 |        31 |        31 |        30 |        30 |      1343 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       199 |       213 |       220 |       233 |       246 |       264 |       306 |      3775 |
|                 jaybird                  |       136 |       146 |       152 |       162 |       170 |       188 |       214 |      5118 |
|                    Δ                     |       -63 |       -67 |       -68 |       -71 |       -76 |       -76 |       -92 |      1343 |
|              Improvement %               |        32 |        31 |        31 |        30 |        31 |        29 |        30 |      1343 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5068 |      4743 |      4587 |      4335 |      4103 |      3789 |      3296 |      3775 |
|                 jaybird                  |      7433 |      6947 |      6663 |      6263 |      5951 |      5379 |      4710 |      5118 |
|                    Δ                     |      2365 |      2204 |      2076 |      1928 |      1848 |      1590 |      1414 |      1343 |
|              Improvement %               |        47 |        46 |        45 |        44 |        45 |        42 |        43 |      1343 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       114 |       208 |       300 |       356 |       387 |       392 |      3775 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      5118 |
|                    Δ                     |         0 |       -89 |      -183 |      -275 |      -331 |      -362 |      -367 |      1343 |
|              Improvement %               |         0 |        78 |        88 |        92 |        93 |        94 |        94 |      1343 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      3775 |
|                 jaybird                  |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5118 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1343 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1343 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4140 |      4174 |      4184 |      4194 |      4202 |      4313 |      4355 |      3775 |
|                 jaybird                  |      2990 |      2992 |      2996 |      2998 |      3000 |      3070 |      3148 |      5118 |
|                    Δ                     |     -1150 |     -1182 |     -1188 |     -1196 |     -1202 |     -1243 |     -1207 |      1343 |
|              Improvement %               |        28 |        28 |        28 |        29 |        29 |        29 |        28 |      1343 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       280 |       297 |       318 |       329 |       345 |       368 |      5362 |      2797 |
|                 jaybird                  |        98 |       102 |       106 |       115 |       118 |       124 |       151 |      6881 |
|                    Δ                     |      -182 |      -195 |      -212 |      -214 |      -227 |      -244 |     -5211 |      4084 |
|              Improvement %               |        65 |        66 |        67 |        65 |        66 |        66 |        97 |      4084 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       282 |       299 |       320 |       332 |       347 |       371 |       404 |      2797 |
|                 jaybird                  |       100 |       104 |       108 |       117 |       121 |       126 |       155 |      6881 |
|                    Δ                     |      -182 |      -195 |      -212 |      -215 |      -226 |      -245 |      -249 |      4084 |
|              Improvement %               |        65 |        65 |        66 |        65 |        65 |        66 |        62 |      4084 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3574 |      3373 |      3151 |      3039 |      2903 |      2717 |       186 |      2797 |
|                 jaybird                  |     10157 |      9831 |      9415 |      8711 |      8455 |      8083 |      6606 |      6881 |
|                    Δ                     |      6583 |      6458 |      6264 |      5672 |      5552 |      5366 |      6420 |      4084 |
|              Improvement %               |       184 |       191 |       199 |       187 |       191 |       197 |      3452 |      4084 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        78 |       129 |       185 |       215 |       233 |       236 |      2797 |
|                 jaybird                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6881 |
|                    Δ                     |         0 |       -52 |      -103 |      -159 |      -189 |      -207 |      -210 |      4084 |
|              Improvement %               |         0 |        67 |        80 |        86 |        88 |        89 |        89 |      4084 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      2797 |
|                 jaybird                  |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      6881 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      4084 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      4084 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6960 |      6975 |      6980 |      6996 |      7008 |      7029 |      7152 |      2797 |
|                 jaybird                  |      2478 |      2478 |      2480 |      2482 |      2484 |      2497 |      2710 |      6881 |
|                    Δ                     |     -4482 |     -4497 |     -4500 |     -4514 |     -4524 |     -4532 |     -4442 |      4084 |
|              Improvement %               |        64 |        64 |        64 |        65 |        65 |        64 |        62 |      4084 |

<p>
</details>

### Parse (micro) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1708 |      1958 |      2083 |      2375 |      2583 |      3585 |     11583 |     10000 |
|                 jaybird                  |      1750 |      1958 |      2042 |      2375 |      2583 |      3459 |     17375 |     10000 |
|                    Δ                     |        42 |         0 |       -41 |         0 |         0 |      -126 |      5792 |         0 |
|              Improvement %               |        -2 |         0 |         2 |         0 |         0 |         4 |       -50 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3375 |      3875 |      4127 |      4627 |      4919 |      6167 |     16626 |     10000 |
|                 jaybird                  |      3333 |      3833 |      4001 |      4587 |      4875 |      6127 |     17250 |     10000 |
|                    Δ                     |       -42 |       -42 |      -126 |       -40 |       -44 |       -40 |       624 |         0 |
|              Improvement %               |         1 |         1 |         3 |         1 |         1 |         1 |        -4 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       585 |       511 |       480 |       421 |       387 |       276 |        86 |     10000 |
|                 jaybird                  |       571 |       511 |       490 |       421 |       387 |       289 |        58 |     10000 |
|                    Δ                     |       -14 |         0 |        10 |         0 |         0 |        13 |       -28 |         0 |
|              Improvement %               |        -2 |         0 |         2 |         0 |         0 |         5 |       -33 |         0 |

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
|                foundation                |        17 |        17 |        17 |        18 |        19 |        21 |        31 |     10000 |
|                 jaybird                  |        19 |        19 |        19 |        19 |        19 |        21 |        32 |     10000 |
|                    Δ                     |         2 |         2 |         2 |         1 |         0 |         0 |         1 |         0 |
|              Improvement %               |       -12 |       -12 |       -12 |        -6 |         0 |         0 |        -3 |         0 |

<p>
</details>

### Parse (micro-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1750 |      1958 |      2042 |      2293 |      2543 |      3583 |      9000 |     10000 |
|                 jaybird                  |      1791 |      2042 |      2417 |      2583 |      2959 |      3709 |     18959 |     10000 |
|                    Δ                     |        41 |        84 |       375 |       290 |       416 |       126 |      9959 |         0 |
|              Improvement %               |        -2 |        -4 |       -18 |       -13 |       -16 |        -4 |      -111 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3333 |      3835 |      4001 |      4459 |      4875 |      6083 |     18500 |     10000 |
|                 jaybird                  |      3417 |      4001 |      4335 |      4711 |      5251 |      6251 |     19833 |     10000 |
|                    Δ                     |        84 |       166 |       334 |       252 |       376 |       168 |      1333 |         0 |
|              Improvement %               |        -3 |        -4 |        -8 |        -6 |        -8 |        -3 |        -7 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       571 |       511 |       490 |       436 |       393 |       279 |       111 |     10000 |
|                 jaybird                  |       558 |       490 |       414 |       387 |       338 |       267 |        53 |     10000 |
|                    Δ                     |       -13 |       -21 |       -76 |       -49 |       -55 |       -12 |       -58 |         0 |
|              Improvement %               |        -2 |        -4 |       -16 |       -11 |       -14 |        -4 |       -52 |         0 |

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
|                foundation                |        17 |        17 |        18 |        18 |        19 |        21 |        34 |     10000 |
|                 jaybird                  |        19 |        19 |        19 |        19 |        19 |        21 |        32 |     10000 |
|                    Δ                     |         2 |         2 |         1 |         1 |         0 |         0 |        -2 |         0 |
|              Improvement %               |       -12 |       -12 |        -6 |        -6 |         0 |         0 |         6 |         0 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       440 |       460 |       477 |       510 |       527 |       549 |       589 |      1905 |
|                 jaybird                  |        59 |        61 |        62 |        68 |        70 |        78 |       118 |      9905 |
|                    Δ                     |      -381 |      -399 |      -415 |      -442 |      -457 |      -471 |      -471 |      8000 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        86 |        80 |      8000 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       442 |       462 |       479 |       513 |       529 |       551 |       594 |      1905 |
|                 jaybird                  |        60 |        63 |        65 |        70 |        73 |        78 |       123 |      9905 |
|                    Δ                     |      -382 |      -399 |      -414 |      -443 |      -456 |      -473 |      -471 |      8000 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        86 |        79 |      8000 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2272 |      2175 |      2095 |      1963 |      1898 |      1823 |      1698 |      1905 |
|                 jaybird                  |     17082 |     16495 |     16039 |     14767 |     14199 |     12807 |      8466 |      9905 |
|                    Δ                     |     14810 |     14320 |     13944 |     12804 |     12301 |     10984 |      6768 |      8000 |
|              Improvement %               |       652 |       658 |       666 |       652 |       648 |       603 |       399 |      8000 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        68 |       114 |       158 |       184 |       200 |       201 |      1905 |
|                 jaybird                  |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      9905 |
|                    Δ                     |         0 |       -43 |       -88 |      -132 |      -158 |      -174 |      -175 |      8000 |
|              Improvement %               |         0 |        63 |        77 |        84 |        86 |        87 |        87 |      8000 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      1905 |
|                 jaybird                  |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      9905 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      8000 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      8000 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      9072 |      9110 |      9118 |      9126 |      9134 |      9249 |      9262 |      1905 |
|                 jaybird                  |      1533 |      1534 |      1535 |      1536 |      1538 |      1546 |      1665 |      9905 |
|                    Δ                     |     -7539 |     -7576 |     -7583 |     -7590 |     -7596 |     -7703 |     -7597 |      8000 |
|              Improvement %               |        83 |        83 |        83 |        83 |        83 |        83 |        82 |      8000 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       605 |       636 |       664 |       715 |       827 |       953 |       994 |      1356 |
|                 jaybird                  |        81 |        87 |        93 |        99 |       107 |       134 |       198 |      7280 |
|                    Δ                     |      -524 |      -549 |      -571 |      -616 |      -720 |      -819 |      -796 |      5924 |
|              Improvement %               |        87 |        86 |        86 |        86 |        87 |        86 |        80 |      5924 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       607 |       638 |       666 |       717 |       828 |       954 |       997 |      1356 |
|                 jaybird                  |        82 |        89 |        95 |       101 |       109 |       137 |       201 |      7280 |
|                    Δ                     |      -525 |      -549 |      -571 |      -616 |      -719 |      -817 |      -796 |      5924 |
|              Improvement %               |        86 |        86 |        86 |        86 |        87 |        86 |        80 |      5924 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1653 |      1573 |      1507 |      1399 |      1210 |      1050 |      1006 |      1356 |
|                 jaybird                  |     12416 |     11527 |     10791 |     10103 |      9391 |      7451 |      5054 |      7280 |
|                    Δ                     |     10763 |      9954 |      9284 |      8704 |      8181 |      6401 |      4048 |      5924 |
|              Improvement %               |       651 |       633 |       616 |       622 |       676 |       610 |       402 |      5924 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        38 |        52 |        66 |        74 |        79 |        79 |      1356 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      7280 |
|                    Δ                     |         0 |       -13 |       -27 |       -41 |       -49 |       -54 |       -54 |      5924 |
|              Improvement %               |         0 |        34 |        52 |        62 |        66 |        68 |        68 |      5924 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5756 |      5757 |      5757 |      5757 |      5757 |      5757 |      5757 |      1356 |
|                 jaybird                  |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      7280 |
|                    Δ                     |     -5707 |     -5708 |     -5708 |     -5708 |     -5708 |     -5708 |     -5708 |      5924 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      5924 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      1356 |
|                 jaybird                  |         1 |         1 |         1 |         1 |         1 |         1 |         2 |      7280 |
|                    Δ                     |       -13 |       -13 |       -13 |       -13 |       -13 |       -13 |       -12 |      5924 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        93 |        86 |      5924 |

<p>
</details>

