## Jaybird vs Foundation

### Parse (200kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1080 |      1113 |      1143 |      1198 |      1251 |      1364 |      1445 |       827 |
|                 jaybird                  |       741 |       773 |       804 |       875 |       911 |       999 |      1068 |      1140 |
|                    Δ                     |      -339 |      -340 |      -339 |      -323 |      -340 |      -365 |      -377 |       313 |
|              Improvement %               |        31 |        31 |        30 |        27 |        27 |        27 |        26 |       313 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1082 |      1114 |      1144 |      1197 |      1251 |      1362 |      1450 |       827 |
|                 jaybird                  |       743 |       776 |       805 |       878 |       914 |       994 |      1074 |      1140 |
|                    Δ                     |      -339 |      -338 |      -339 |      -319 |      -337 |      -368 |      -376 |       313 |
|              Improvement %               |        31 |        30 |        30 |        27 |        27 |        27 |        26 |       313 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       926 |       899 |       876 |       835 |       799 |       733 |       692 |       827 |
|                 jaybird                  |      1350 |      1293 |      1244 |      1143 |      1097 |      1002 |       936 |      1140 |
|                    Δ                     |       424 |       394 |       368 |       308 |       298 |       269 |       244 |       313 |
|              Improvement %               |        46 |        44 |        42 |        37 |        37 |        37 |        35 |       313 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |       121 |       189 |       261 |       301 |       326 |       330 |       827 |
|                 jaybird                  |        54 |        55 |        55 |        55 |        55 |        55 |        55 |      1140 |
|                    Δ                     |         1 |       -66 |      -134 |      -206 |      -246 |      -271 |      -275 |       313 |
|              Improvement %               |        -2 |        55 |        71 |        79 |        82 |        83 |        83 |       313 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      5968 |      5969 |      5969 |      5969 |      5969 |      5969 |      5969 |       827 |
|                 jaybird                  |      2824 |      2824 |      2824 |      2824 |      2824 |      2824 |      2824 |      1140 |
|                    Δ                     |     -3144 |     -3145 |     -3145 |     -3145 |     -3145 |     -3145 |     -3145 |       313 |
|              Improvement %               |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       313 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        19 |        19 |        19 |        19 |        19 |        19 |        19 |       827 |
|                 jaybird                  |        12 |        12 |        13 |        13 |        13 |        13 |        13 |      1140 |
|                    Δ                     |        -7 |        -7 |        -6 |        -6 |        -6 |        -6 |        -6 |       313 |
|              Improvement %               |        37 |        37 |        32 |        32 |        32 |        32 |        32 |       313 |

<p>
</details>

### Parse (200kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1172 |      1207 |      1232 |      1303 |      1364 |      1432 |      1472 |       766 |
|                 jaybird                  |       792 |       819 |       843 |       907 |       949 |      1058 |      1268 |      1089 |
|                    Δ                     |      -380 |      -388 |      -389 |      -396 |      -415 |      -374 |      -204 |       323 |
|              Improvement %               |        32 |        32 |        32 |        30 |        30 |        26 |        14 |       323 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1173 |      1210 |      1234 |      1303 |      1362 |      1426 |      1467 |       766 |
|                 jaybird                  |       794 |       821 |       845 |       910 |       952 |      1060 |      1275 |      1089 |
|                    Δ                     |      -379 |      -389 |      -389 |      -393 |      -410 |      -366 |      -192 |       323 |
|              Improvement %               |        32 |        32 |        32 |        30 |        30 |        26 |        13 |       323 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       854 |       829 |       812 |       768 |       734 |       699 |       680 |       766 |
|                 jaybird                  |      1263 |      1222 |      1187 |      1103 |      1054 |       946 |       789 |      1089 |
|                    Δ                     |       409 |       393 |       375 |       335 |       320 |       247 |       109 |       323 |
|              Improvement %               |        48 |        47 |        46 |        44 |        44 |        35 |        16 |       323 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |       116 |       182 |       246 |       285 |       307 |       310 |       766 |
|                 jaybird                  |        54 |        55 |        55 |        55 |        55 |        55 |        55 |      1089 |
|                    Δ                     |         1 |       -61 |      -127 |      -191 |      -230 |      -252 |      -255 |       323 |
|              Improvement %               |        -2 |        53 |        70 |        78 |        81 |        82 |        82 |       323 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      5968 |      5969 |      5969 |      5969 |      5969 |      5969 |      5969 |       766 |
|                 jaybird                  |      2804 |      2804 |      2804 |      2804 |      2804 |      2804 |      2804 |      1089 |
|                    Δ                     |     -3164 |     -3165 |     -3165 |     -3165 |     -3165 |     -3165 |     -3165 |       323 |
|              Improvement %               |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       323 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        20 |        20 |        20 |        20 |        20 |        20 |        20 |       766 |
|                 jaybird                  |        13 |        13 |        13 |        13 |        13 |        14 |        14 |      1089 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -6 |        -6 |       323 |
|              Improvement %               |        35 |        35 |        35 |        35 |        35 |        30 |        30 |       323 |

<p>
</details>

### Parse (2kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        10 |        11 |        12 |        13 |        14 |        18 |        44 |     10000 |
|                 jaybird                  |         9 |        10 |        11 |        12 |        13 |        14 |        31 |     10000 |
|                    Δ                     |        -1 |        -1 |        -1 |        -1 |        -1 |        -4 |       -13 |         0 |
|              Improvement %               |        10 |         9 |         8 |         8 |         7 |        22 |        30 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        12 |        13 |        13 |        15 |        16 |        20 |        45 |     10000 |
|                 jaybird                  |        11 |        12 |        13 |        14 |        15 |        16 |        28 |     10000 |
|                    Δ                     |        -1 |        -1 |         0 |        -1 |        -1 |        -4 |       -17 |         0 |
|              Improvement %               |         8 |         8 |         0 |         7 |         6 |        20 |        38 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        97 |        92 |        86 |        76 |        71 |        56 |        23 |     10000 |
|                 jaybird                  |       108 |        98 |        95 |        87 |        79 |        73 |        32 |     10000 |
|                    Δ                     |        11 |         6 |         9 |        11 |         8 |        17 |         9 |         0 |
|              Improvement %               |        11 |         7 |        10 |        14 |        11 |        30 |        39 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |        60 |        66 |        74 |        78 |        81 |        81 |     10000 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                    Δ                     |         0 |        -7 |       -13 |       -21 |       -25 |       -28 |       -28 |         0 |
|              Improvement %               |         0 |        12 |        20 |        28 |        32 |        35 |        35 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        46 |        46 |        46 |        46 |        46 |        46 |        47 |     10000 |
|                 jaybird                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |     10000 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -16 |         0 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        34 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       187 |       188 |       190 |       193 |       196 |       203 |       219 |     10000 |
|                 jaybird                  |       166 |       166 |       166 |       167 |       168 |       170 |       185 |     10000 |
|                    Δ                     |       -21 |       -22 |       -24 |       -26 |       -28 |       -33 |       -34 |         0 |
|              Improvement %               |        11 |        12 |        13 |        13 |        14 |        16 |        16 |         0 |

<p>
</details>

### Parse (2kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        11 |        11 |        12 |        13 |        14 |        18 |        38 |     10000 |
|                 jaybird                  |         9 |        10 |        11 |        12 |        13 |        14 |        36 |     10000 |
|                    Δ                     |        -2 |        -1 |        -1 |        -1 |        -1 |        -4 |        -2 |         0 |
|              Improvement %               |        18 |         9 |         8 |         8 |         7 |        22 |         5 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        12 |        13 |        14 |        15 |        16 |        20 |        40 |     10000 |
|                 jaybird                  |        11 |        12 |        13 |        14 |        15 |        17 |        32 |     10000 |
|                    Δ                     |        -1 |        -1 |        -1 |        -1 |        -1 |        -3 |        -8 |         0 |
|              Improvement %               |         8 |         8 |         7 |         7 |         6 |        15 |        20 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        93 |        89 |        84 |        75 |        70 |        56 |        27 |     10000 |
|                 jaybird                  |       107 |        98 |        93 |        85 |        78 |        71 |        28 |     10000 |
|                    Δ                     |        14 |         9 |         9 |        10 |         8 |        15 |         1 |         0 |
|              Improvement %               |        15 |        10 |        11 |        13 |        11 |        27 |         4 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |        59 |        67 |        73 |        78 |        80 |        81 |     10000 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                    Δ                     |         0 |        -6 |       -14 |       -20 |       -25 |       -27 |       -28 |         0 |
|              Improvement %               |         0 |        10 |        21 |        27 |        32 |        34 |        35 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        46 |        46 |        46 |        46 |        46 |        46 |        47 |     10000 |
|                 jaybird                  |        32 |        32 |        32 |        32 |        32 |        32 |        32 |     10000 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -15 |         0 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        32 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       191 |       192 |       194 |       197 |       200 |       207 |       223 |     10000 |
|                 jaybird                  |       171 |       171 |       171 |       171 |       173 |       175 |       194 |     10000 |
|                    Δ                     |       -20 |       -21 |       -23 |       -26 |       -27 |       -32 |       -29 |         0 |
|              Improvement %               |        10 |        11 |        12 |        13 |        14 |        15 |        13 |         0 |

<p>
</details>

### Parse (2mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        13 |        13 |        13 |        14 |        14 |        14 |        14 |        75 |
|                 jaybird                  |         9 |         9 |        10 |        10 |        11 |        11 |        11 |       100 |
|                    Δ                     |        -4 |        -4 |        -3 |        -4 |        -3 |        -3 |        -3 |        25 |
|              Improvement %               |        31 |        31 |        23 |        29 |        21 |        21 |        21 |        25 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        13 |        13 |        13 |        14 |        14 |        14 |        14 |        75 |
|                 jaybird                  |         9 |         9 |        10 |        10 |        11 |        11 |        11 |       100 |
|                    Δ                     |        -4 |        -4 |        -3 |        -4 |        -3 |        -3 |        -3 |        25 |
|              Improvement %               |        31 |        31 |        23 |        29 |        21 |        21 |        21 |        25 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        78 |        77 |        75 |        72 |        70 |        69 |        69 |        75 |
|                 jaybird                  |       108 |       106 |       100 |        97 |        94 |        91 |        91 |       100 |
|                    Δ                     |        30 |        29 |        25 |        25 |        24 |        22 |        22 |        25 |
|              Improvement %               |        38 |        38 |        33 |        35 |        34 |        32 |        32 |        25 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        61 |       126 |       199 |       271 |       313 |       338 |       338 |        75 |
|                 jaybird                  |        59 |        71 |        71 |        71 |        71 |        71 |        71 |       100 |
|                    Δ                     |        -2 |       -55 |      -128 |      -200 |      -242 |      -267 |      -267 |        25 |
|              Improvement %               |         3 |        44 |        64 |        74 |        77 |        79 |        79 |        25 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        70 |        70 |        70 |        70 |        70 |        70 |        70 |        75 |
|                 jaybird                  |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       100 |
|                    Δ                     |       -41 |       -41 |       -41 |       -41 |       -41 |       -41 |       -41 |        25 |
|              Improvement %               |        59 |        59 |        59 |        59 |        59 |        59 |        59 |        25 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       207 |       207 |       207 |       208 |       208 |       210 |       210 |        75 |
|                 jaybird                  |       130 |       131 |       131 |       131 |       131 |       132 |       138 |       100 |
|                    Δ                     |       -77 |       -76 |       -76 |       -77 |       -77 |       -78 |       -72 |        25 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        37 |        34 |        25 |

<p>
</details>

### Parse (2mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        14 |        14 |        14 |        15 |        15 |        16 |        16 |        70 |
|                 jaybird                  |        10 |        10 |        10 |        11 |        11 |        11 |        11 |        97 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -5 |        27 |
|              Improvement %               |        29 |        29 |        29 |        27 |        27 |        31 |        31 |        27 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        14 |        14 |        14 |        15 |        15 |        16 |        16 |        70 |
|                 jaybird                  |        10 |        10 |        10 |        11 |        11 |        11 |        11 |        97 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -5 |        27 |
|              Improvement %               |        29 |        29 |        29 |        27 |        27 |        31 |        31 |        27 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        73 |        72 |        71 |        68 |        67 |        64 |        64 |        70 |
|                 jaybird                  |       103 |       101 |        97 |        93 |        91 |        89 |        89 |        97 |
|                    Δ                     |        30 |        29 |        26 |        25 |        24 |        25 |        25 |        27 |
|              Improvement %               |        41 |        40 |        37 |        37 |        36 |        39 |        39 |        27 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        61 |       123 |       189 |       256 |       291 |       318 |       318 |        70 |
|                 jaybird                  |        60 |        72 |        72 |        72 |        72 |        72 |        72 |        97 |
|                    Δ                     |        -1 |       -51 |      -117 |      -184 |      -219 |      -246 |      -246 |        27 |
|              Improvement %               |         2 |        41 |        62 |        72 |        75 |        77 |        77 |        27 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        70 |        70 |        70 |        70 |        70 |        70 |        70 |        70 |
|                 jaybird                  |        29 |        29 |        29 |        29 |        29 |        29 |        29 |        97 |
|                    Δ                     |       -41 |       -41 |       -41 |       -41 |       -41 |       -41 |       -41 |        27 |
|              Improvement %               |        59 |        59 |        59 |        59 |        59 |        59 |        59 |        27 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       215 |       216 |       216 |       216 |       216 |       218 |       218 |        70 |
|                 jaybird                  |       139 |       139 |       139 |       139 |       139 |       146 |       146 |        97 |
|                    Δ                     |       -76 |       -77 |       -77 |       -77 |       -77 |       -72 |       -72 |        27 |
|              Improvement %               |        35 |        36 |        36 |        36 |        36 |        33 |        33 |        27 |

<p>
</details>

### Parse (500kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      2834 |      2935 |      2990 |      3222 |      3301 |      3430 |      3524 |       321 |
|                 jaybird                  |      2067 |      2130 |      2181 |      2345 |      2413 |      2523 |      2677 |       437 |
|                    Δ                     |      -767 |      -805 |      -809 |      -877 |      -888 |      -907 |      -847 |       116 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        26 |        24 |       116 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      2836 |      2937 |      2992 |      3222 |      3301 |      3432 |      3535 |       321 |
|                 jaybird                  |      2069 |      2132 |      2183 |      2347 |      2419 |      2517 |      2683 |       437 |
|                    Δ                     |      -767 |      -805 |      -809 |      -875 |      -882 |      -915 |      -852 |       116 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        24 |       116 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       353 |       341 |       334 |       310 |       303 |       292 |       284 |       321 |
|                 jaybird                  |       484 |       470 |       459 |       427 |       415 |       397 |       374 |       437 |
|                    Δ                     |       131 |       129 |       125 |       117 |       112 |       105 |        90 |       116 |
|              Improvement %               |        37 |        38 |        37 |        38 |        37 |        36 |        32 |       116 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        54 |       123 |       196 |       264 |       307 |       334 |       334 |       321 |
|                 jaybird                  |        55 |        57 |        57 |        57 |        57 |        57 |        57 |       437 |
|                    Δ                     |         1 |       -66 |      -139 |      -207 |      -250 |      -277 |      -277 |       116 |
|              Improvement %               |        -2 |        54 |        71 |        78 |        81 |        83 |        83 |       116 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        16 |        16 |        16 |        16 |        16 |        16 |        16 |       321 |
|                 jaybird                  |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       437 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       116 |
|              Improvement %               |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       116 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        48 |        48 |        48 |        48 |        48 |        49 |        49 |       321 |
|                 jaybird                  |        31 |        31 |        31 |        31 |        31 |        32 |        32 |       437 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       116 |
|              Improvement %               |        35 |        35 |        35 |        35 |        35 |        35 |        35 |       116 |

<p>
</details>

### Parse (500kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      3094 |      3178 |      3236 |      3447 |      3592 |      3695 |      3708 |       298 |
|                 jaybird                  |      2167 |      2241 |      2341 |      2482 |      2546 |      2656 |      2871 |       413 |
|                    Δ                     |      -927 |      -937 |      -895 |      -965 |     -1046 |     -1039 |      -837 |       115 |
|              Improvement %               |        30 |        29 |        28 |        28 |        29 |        28 |        23 |       115 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      3096 |      3181 |      3236 |      3445 |      3592 |      3697 |      3713 |       298 |
|                 jaybird                  |      2170 |      2241 |      2347 |      2486 |      2548 |      2656 |      2869 |       413 |
|                    Δ                     |      -926 |      -940 |      -889 |      -959 |     -1044 |     -1041 |      -844 |       115 |
|              Improvement %               |        30 |        30 |        27 |        28 |        29 |        28 |        23 |       115 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       323 |       315 |       309 |       290 |       279 |       271 |       270 |       298 |
|                 jaybird                  |       461 |       447 |       427 |       403 |       393 |       377 |       348 |       413 |
|                    Δ                     |       138 |       132 |       118 |       113 |       114 |       106 |        78 |       115 |
|              Improvement %               |        43 |        42 |        38 |        39 |        41 |        39 |        29 |       115 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        54 |       119 |       185 |       251 |       289 |       313 |       316 |       298 |
|                 jaybird                  |        55 |        57 |        58 |        58 |        58 |        58 |        58 |       413 |
|                    Δ                     |         1 |       -62 |      -127 |      -193 |      -231 |      -255 |      -258 |       115 |
|              Improvement %               |        -2 |        52 |        69 |        77 |        80 |        81 |        82 |       115 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        16 |        16 |        16 |        16 |        16 |        16 |        16 |       298 |
|                 jaybird                  |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       413 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       115 |
|              Improvement %               |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       115 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        50 |        50 |        50 |        50 |        50 |        51 |        51 |       298 |
|                 jaybird                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       413 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       115 |
|              Improvement %               |        34 |        34 |        34 |        34 |        34 |        33 |        33 |       115 |

<p>
</details>

### Parse (50kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       281 |       293 |       299 |       325 |       336 |       352 |       376 |      2834 |
|                 jaybird                  |       249 |       257 |       265 |       288 |       294 |       306 |       346 |      3107 |
|                    Δ                     |       -32 |       -36 |       -34 |       -37 |       -42 |       -46 |       -30 |       273 |
|              Improvement %               |        11 |        12 |        11 |        11 |        12 |        13 |         8 |       273 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       283 |       295 |       301 |       326 |       338 |       353 |       375 |      2834 |
|                 jaybird                  |       250 |       259 |       267 |       290 |       297 |       307 |       350 |      3107 |
|                    Δ                     |       -33 |       -36 |       -34 |       -36 |       -41 |       -46 |       -25 |       273 |
|              Improvement %               |        12 |        12 |        11 |        11 |        12 |        13 |         7 |       273 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      3559 |      3417 |      3345 |      3083 |      2979 |      2839 |      2656 |      2834 |
|                 jaybird                  |      4021 |      3895 |      3777 |      3479 |      3401 |      3267 |      2894 |      3107 |
|                    Δ                     |       462 |       478 |       432 |       396 |       422 |       428 |       238 |       273 |
|              Improvement %               |        13 |        14 |        13 |        13 |        14 |        15 |         9 |       273 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |       129 |       207 |       286 |       336 |       364 |       364 |      2834 |
|                 jaybird                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      3107 |
|                    Δ                     |         0 |       -75 |      -153 |      -232 |      -282 |      -310 |      -310 |       273 |
|              Improvement %               |         0 |        58 |        74 |        81 |        84 |        85 |        85 |       273 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1301 |      1301 |      1301 |      1301 |      1301 |      1301 |      1302 |      2834 |
|                 jaybird                  |       869 |       869 |       869 |       869 |       869 |       869 |       869 |      3107 |
|                    Δ                     |      -432 |      -432 |      -432 |      -432 |      -432 |      -432 |      -433 |       273 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       273 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      6089 |      6119 |      6128 |      6136 |      6144 |      6169 |      6203 |      2834 |
|                 jaybird                  |      5103 |      5108 |      5112 |      5116 |      5120 |      5218 |      5303 |      3107 |
|                    Δ                     |      -986 |     -1011 |     -1016 |     -1020 |     -1024 |      -951 |      -900 |       273 |
|              Improvement %               |        16 |        17 |        17 |        17 |        17 |        15 |        15 |       273 |

<p>
</details>

### Parse (50kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       311 |       323 |       329 |       354 |       366 |       385 |       406 |      2613 |
|                 jaybird                  |       257 |       265 |       272 |       295 |       304 |       322 |       345 |      3035 |
|                    Δ                     |       -54 |       -58 |       -57 |       -59 |       -62 |       -63 |       -61 |       422 |
|              Improvement %               |        17 |        18 |        17 |        17 |        17 |        16 |        15 |       422 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       313 |       324 |       331 |       355 |       368 |       386 |       408 |      2613 |
|                 jaybird                  |       258 |       268 |       274 |       297 |       306 |       324 |       348 |      3035 |
|                    Δ                     |       -55 |       -56 |       -57 |       -58 |       -62 |       -62 |       -60 |       422 |
|              Improvement %               |        18 |        17 |        17 |        16 |        17 |        16 |        15 |       422 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      3214 |      3101 |      3039 |      2829 |      2731 |      2601 |      2462 |      2613 |
|                 jaybird                  |      3897 |      3769 |      3683 |      3397 |      3289 |      3113 |      2897 |      3035 |
|                    Δ                     |       683 |       668 |       644 |       568 |       558 |       512 |       435 |       422 |
|              Improvement %               |        21 |        22 |        21 |        20 |        20 |        20 |        18 |       422 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |       124 |       195 |       270 |       313 |       338 |       342 |      2613 |
|                 jaybird                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      3035 |
|                    Δ                     |         0 |       -70 |      -141 |      -216 |      -259 |      -284 |      -288 |       422 |
|              Improvement %               |         0 |        56 |        72 |        80 |        83 |        84 |        84 |       422 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1301 |      1301 |      1301 |      1301 |      1301 |      1301 |      1302 |      2613 |
|                 jaybird                  |       869 |       869 |       869 |       869 |       869 |       869 |       869 |      3035 |
|                    Δ                     |      -432 |      -432 |      -432 |      -432 |      -432 |      -432 |      -433 |       422 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       422 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      6365 |      6394 |      6402 |      6414 |      6423 |      6443 |      6480 |      2613 |
|                 jaybird                  |      5359 |      5366 |      5370 |      5374 |      5374 |      5476 |      5561 |      3035 |
|                    Δ                     |     -1006 |     -1028 |     -1032 |     -1040 |     -1049 |      -967 |      -919 |       422 |
|              Improvement %               |        16 |        16 |        16 |        16 |        16 |        15 |        14 |       422 |

<p>
</details>

### Parse (50mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        69 |        70 |        70 |        72 |        73 |        74 |        74 |        15 |
|                 jaybird                  |        82 |        83 |        85 |        89 |        91 |        91 |        91 |        12 |
|                    Δ                     |        13 |        13 |        15 |        17 |        18 |        17 |        17 |        -3 |
|              Improvement %               |       -19 |       -19 |       -21 |       -24 |       -25 |       -23 |       -23 |        -3 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        69 |        70 |        70 |        72 |        73 |        74 |        74 |        15 |
|                 jaybird                  |        82 |        84 |        85 |        89 |        91 |        91 |        91 |        12 |
|                    Δ                     |        13 |        14 |        15 |        17 |        18 |        17 |        17 |        -3 |
|              Improvement %               |       -19 |       -20 |       -21 |       -24 |       -25 |       -23 |       -23 |        -3 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        15 |        14 |        14 |        14 |        14 |        13 |        13 |        15 |
|                 jaybird                  |        12 |        12 |        12 |        11 |        11 |        11 |        11 |        12 |
|                    Δ                     |        -3 |        -2 |        -2 |        -3 |        -3 |        -2 |        -2 |        -3 |
|              Improvement %               |       -20 |       -14 |       -14 |       -21 |       -21 |       -15 |       -15 |        -3 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       104 |       185 |       297 |       403 |       456 |       487 |       487 |        15 |
|                 jaybird                  |       225 |       225 |       225 |       225 |       226 |       227 |       227 |        12 |
|                    Δ                     |       121 |        40 |       -72 |      -178 |      -230 |      -260 |      -260 |        -3 |
|              Improvement %               |      -116 |       -22 |        24 |        44 |        50 |        53 |        53 |        -3 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       389 |       389 |       389 |       389 |       389 |       389 |       389 |        15 |
|                 jaybird                  |       315 |       315 |       315 |       315 |       315 |       315 |       315 |        12 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |        -3 |
|              Improvement %               |        19 |        19 |        19 |        19 |        19 |        19 |        19 |        -3 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1408 |      1409 |      1409 |      1409 |      1409 |      1409 |      1409 |        15 |
|                 jaybird                  |      1581 |      1583 |      1594 |      1605 |      1611 |      1612 |      1612 |        12 |
|                    Δ                     |       173 |       174 |       185 |       196 |       202 |       203 |       203 |        -3 |
|              Improvement %               |       -12 |       -12 |       -13 |       -14 |       -14 |       -14 |       -14 |        -3 |

<p>
</details>

### Parse (50mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        76 |        76 |        77 |        78 |        79 |        79 |        79 |        13 |
|                 jaybird                  |        88 |        89 |        91 |        93 |        93 |        93 |        93 |        11 |
|                    Δ                     |        12 |        13 |        14 |        15 |        14 |        14 |        14 |        -2 |
|              Improvement %               |       -16 |       -17 |       -18 |       -19 |       -18 |       -18 |       -18 |        -2 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        76 |        76 |        77 |        78 |        79 |        79 |        79 |        13 |
|                 jaybird                  |        88 |        89 |        91 |        93 |        93 |        93 |        93 |        11 |
|                    Δ                     |        12 |        13 |        14 |        15 |        14 |        14 |        14 |        -2 |
|              Improvement %               |       -16 |       -17 |       -18 |       -19 |       -18 |       -18 |       -18 |        -2 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        13 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        11 |
|                    Δ                     |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |
|              Improvement %               |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |        -2 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       106 |       189 |       269 |       349 |       403 |       429 |       429 |        13 |
|                 jaybird                  |       227 |       227 |       228 |       228 |       228 |       228 |       228 |        11 |
|                    Δ                     |       121 |        38 |       -41 |      -121 |      -175 |      -201 |      -201 |        -2 |
|              Improvement %               |      -114 |       -20 |        15 |        35 |        43 |        47 |        47 |        -2 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       389 |       389 |       389 |       389 |       389 |       389 |       389 |        13 |
|                 jaybird                  |       315 |       315 |       315 |       315 |       315 |       315 |       315 |        11 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |        -2 |
|              Improvement %               |        19 |        19 |        19 |        19 |        19 |        19 |        19 |        -2 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1483 |      1484 |      1484 |      1484 |      1484 |      1484 |      1484 |        13 |
|                 jaybird                  |      1673 |      1675 |      1675 |      1679 |      1682 |      1685 |      1685 |        11 |
|                    Δ                     |       190 |       191 |       191 |       195 |       198 |       201 |       201 |        -2 |
|              Improvement %               |       -13 |       -13 |       -13 |       -13 |       -13 |       -14 |       -14 |        -2 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      6441 |      6681 |      6889 |      7266 |      7430 |      7700 |      8029 |       142 |
|                 jaybird                  |      7273 |      7426 |      7651 |      8061 |      8344 |      8970 |      9083 |       128 |
|                    Δ                     |       832 |       745 |       762 |       795 |       914 |      1270 |      1054 |       -14 |
|              Improvement %               |       -13 |       -11 |       -11 |       -11 |       -12 |       -16 |       -13 |       -14 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      6448 |      6689 |      6877 |      7270 |      7430 |      7705 |      8033 |       142 |
|                 jaybird                  |      7280 |      7430 |      7651 |      8057 |      8348 |      8978 |      9084 |       128 |
|                    Δ                     |       832 |       741 |       774 |       787 |       918 |      1273 |      1051 |       -14 |
|              Improvement %               |       -13 |       -11 |       -11 |       -11 |       -12 |       -17 |       -13 |       -14 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       155 |       150 |       145 |       138 |       135 |       130 |       125 |       142 |
|                 jaybird                  |       137 |       135 |       131 |       124 |       120 |       112 |       110 |       128 |
|                    Δ                     |       -18 |       -15 |       -14 |       -14 |       -15 |       -18 |       -15 |       -14 |
|              Improvement %               |       -12 |       -10 |       -10 |       -10 |       -11 |       -14 |       -12 |       -14 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        56 |       149 |       248 |       343 |       401 |       436 |       441 |       142 |
|                 jaybird                  |        61 |        71 |        71 |        71 |        71 |        71 |        71 |       128 |
|                    Δ                     |         5 |       -78 |      -177 |      -272 |      -330 |      -365 |      -370 |       -14 |
|              Improvement %               |        -9 |        52 |        71 |        79 |        82 |        84 |        84 |       -14 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        39 |        39 |        39 |        39 |        39 |        39 |        39 |       142 |
|                 jaybird                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |       128 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |       -14 |
|              Improvement %               |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       -14 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       140 |       140 |       140 |       140 |       140 |       140 |       140 |       142 |
|                 jaybird                  |       155 |       155 |       155 |       155 |       157 |       162 |       165 |       128 |
|                    Δ                     |        15 |        15 |        15 |        15 |        17 |        22 |        25 |       -14 |
|              Improvement %               |       -11 |       -11 |       -11 |       -11 |       -12 |       -16 |       -18 |       -14 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      7186 |      7356 |      7569 |      7995 |      8237 |      8503 |      8523 |       129 |
|                 jaybird                  |      7356 |      7475 |      7610 |      8016 |      8360 |      8569 |      8580 |       128 |
|                    Δ                     |       170 |       119 |        41 |        21 |       123 |        66 |        57 |        -1 |
|              Improvement %               |        -2 |        -2 |        -1 |         0 |        -1 |        -1 |        -1 |        -1 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      7188 |      7365 |      7557 |      7987 |      8237 |      8503 |      8520 |       129 |
|                 jaybird                  |      7366 |      7475 |      7610 |      8020 |      8368 |      8569 |      8588 |       128 |
|                    Δ                     |       178 |       110 |        53 |        33 |       131 |        66 |        68 |        -1 |
|              Improvement %               |        -2 |        -1 |        -1 |         0 |        -2 |        -1 |        -1 |        -1 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       139 |       136 |       132 |       125 |       121 |       118 |       117 |       129 |
|                 jaybird                  |       136 |       134 |       131 |       124 |       120 |       117 |       117 |       128 |
|                    Δ                     |        -3 |        -2 |        -1 |        -1 |        -1 |        -1 |         0 |        -1 |
|              Improvement %               |        -2 |        -1 |        -1 |        -1 |        -1 |        -1 |         0 |        -1 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        56 |       142 |       231 |       319 |       371 |       401 |       405 |       129 |
|                 jaybird                  |        61 |        72 |        72 |        72 |        72 |        72 |        72 |       128 |
|                    Δ                     |         5 |       -70 |      -159 |      -247 |      -299 |      -329 |      -333 |        -1 |
|              Improvement %               |        -9 |        49 |        69 |        77 |        81 |        82 |        82 |        -1 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        39 |        39 |        39 |        39 |        39 |        39 |        39 |       129 |
|                 jaybird                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |       128 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -1 |
|              Improvement %               |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        -1 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       147 |       147 |       147 |       147 |       147 |       148 |       148 |       129 |
|                 jaybird                  |       159 |       160 |       160 |       160 |       160 |       164 |       168 |       128 |
|                    Δ                     |        12 |        13 |        13 |        13 |        13 |        16 |        20 |        -1 |
|              Improvement %               |        -8 |        -9 |        -9 |        -9 |        -9 |       -11 |       -14 |        -1 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       278 |       291 |       299 |       323 |       332 |       346 |       374 |      2841 |
|                 jaybird                  |       100 |       103 |       105 |       115 |       119 |       124 |       163 |      6585 |
|                    Δ                     |      -178 |      -188 |      -194 |      -208 |      -213 |      -222 |      -211 |      3744 |
|              Improvement %               |        64 |        65 |        65 |        64 |        64 |        64 |        56 |      3744 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       280 |       293 |       301 |       324 |       334 |       348 |       371 |      2841 |
|                 jaybird                  |       102 |       105 |       108 |       117 |       121 |       126 |       167 |      6585 |
|                    Δ                     |      -178 |      -188 |      -193 |      -207 |      -213 |      -222 |      -204 |      3744 |
|              Improvement %               |        64 |        64 |        64 |        64 |        64 |        64 |        55 |      3744 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      3595 |      3435 |      3343 |      3099 |      3015 |      2893 |      2676 |      2841 |
|                 jaybird                  |     10034 |      9743 |      9487 |      8719 |      8423 |      8075 |      6148 |      6585 |
|                    Δ                     |      6439 |      6308 |      6144 |      5620 |      5408 |      5182 |      3472 |      3744 |
|              Improvement %               |       179 |       184 |       184 |       181 |       179 |       179 |       130 |      3744 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |       107 |       161 |       214 |       246 |       266 |       268 |      2841 |
|                 jaybird                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      6585 |
|                    Δ                     |         0 |       -53 |      -107 |      -160 |      -192 |      -212 |      -214 |      3744 |
|              Improvement %               |         0 |        50 |        66 |        75 |        78 |        80 |        80 |      3744 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      2841 |
|                 jaybird                  |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      6585 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      3744 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      3744 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      6960 |      6975 |      6980 |      6996 |      7008 |      7029 |      7064 |      2841 |
|                 jaybird                  |      2476 |      2476 |      2480 |      2480 |      2482 |      2492 |      2693 |      6585 |
|                    Δ                     |     -4484 |     -4499 |     -4500 |     -4516 |     -4526 |     -4537 |     -4371 |      3744 |
|              Improvement %               |        64 |        65 |        64 |        65 |        65 |        65 |        62 |      3744 |

<p>
</details>

### Parse (micro) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1750 |      1959 |      2167 |      2375 |      2667 |      3835 |     22958 |     10000 |
|                 jaybird                  |      1833 |      2000 |      2083 |      2417 |      2585 |      3501 |     17625 |     10000 |
|                    Δ                     |        83 |        41 |       -84 |        42 |       -82 |      -334 |     -5333 |         0 |
|              Improvement %               |        -5 |        -2 |         4 |        -2 |         3 |         9 |        23 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      3292 |      3585 |      3793 |      4295 |      4667 |      6543 |     17959 |     10000 |
|                 jaybird                  |      3458 |      3877 |      4043 |      4583 |      4919 |      6335 |     19125 |     10000 |
|                    Δ                     |       166 |       292 |       250 |       288 |       252 |      -208 |      1166 |         0 |
|              Improvement %               |        -5 |        -8 |        -7 |        -7 |        -5 |         3 |        -6 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       571 |       511 |       462 |       421 |       375 |       258 |        44 |     10000 |
|                 jaybird                  |       546 |       500 |       480 |       414 |       387 |       286 |        57 |     10000 |
|                    Δ                     |       -25 |       -11 |        18 |        -7 |        12 |        28 |        13 |         0 |
|              Improvement %               |        -4 |        -2 |         4 |        -2 |         3 |        11 |        30 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |        53 |        54 |        54 |        54 |        54 |        54 |     10000 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                    Δ                     |         0 |         0 |        -1 |        -1 |        -1 |        -1 |        -1 |         0 |
|              Improvement %               |         0 |         0 |         2 |         2 |         2 |         2 |         2 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |         4 |         4 |         4 |         4 |         4 |         4 |         7 |     10000 |
|                 jaybird                  |         5 |         5 |         5 |         5 |         5 |         5 |         5 |     10000 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |        -2 |         0 |
|              Improvement %               |       -25 |       -25 |       -25 |       -25 |       -25 |       -25 |        29 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        17 |        17 |        18 |        18 |        19 |        21 |        41 |     10000 |
|                 jaybird                  |        20 |        20 |        20 |        20 |        20 |        22 |        33 |     10000 |
|                    Δ                     |         3 |         3 |         2 |         2 |         1 |         1 |        -8 |         0 |
|              Improvement %               |       -18 |       -18 |       -11 |       -11 |        -5 |        -5 |        20 |         0 |

<p>
</details>

### Parse (micro-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1750 |      1917 |      2000 |      2251 |      2459 |      3875 |     18500 |     10000 |
|                 jaybird                  |      1833 |      2000 |      2085 |      2459 |      2709 |      3501 |     18291 |     10000 |
|                    Δ                     |        83 |        83 |        85 |       208 |       250 |      -374 |      -209 |         0 |
|              Improvement %               |        -5 |        -4 |        -4 |        -9 |       -10 |        10 |         1 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      3249 |      3459 |      3543 |      4041 |      4375 |      6375 |     17042 |     10000 |
|                 jaybird                  |      3457 |      3917 |      4127 |      4711 |      5083 |      6459 |     16376 |     10000 |
|                    Δ                     |       208 |       458 |       584 |       670 |       708 |        84 |      -666 |         0 |
|              Improvement %               |        -6 |       -13 |       -16 |       -17 |       -16 |        -1 |         4 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       571 |       522 |       500 |       445 |       407 |       255 |        54 |     10000 |
|                 jaybird                  |       546 |       500 |       480 |       407 |       369 |       286 |        55 |     10000 |
|                    Δ                     |       -25 |       -22 |       -20 |       -38 |       -38 |        31 |         1 |         0 |
|              Improvement %               |        -4 |        -4 |        -4 |        -9 |        -9 |        12 |         2 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |        53 |        53 |        54 |        54 |        54 |        54 |     10000 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                    Δ                     |         0 |         0 |         0 |        -1 |        -1 |        -1 |        -1 |         0 |
|              Improvement %               |         0 |         0 |         0 |         2 |         2 |         2 |         2 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |         4 |         4 |         4 |         4 |         4 |         4 |         7 |     10000 |
|                 jaybird                  |         5 |         5 |         5 |         5 |         5 |         5 |         5 |     10000 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |        -2 |         0 |
|              Improvement %               |       -25 |       -25 |       -25 |       -25 |       -25 |       -25 |        29 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        17 |        17 |        18 |        18 |        19 |        21 |        33 |     10000 |
|                 jaybird                  |        20 |        20 |        20 |        20 |        20 |        23 |        38 |     10000 |
|                    Δ                     |         3 |         3 |         2 |         2 |         1 |         2 |         5 |         0 |
|              Improvement %               |       -18 |       -18 |       -11 |       -11 |        -5 |       -10 |       -15 |         0 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       443 |       455 |       463 |       503 |       516 |       538 |       573 |      1912 |
|                 jaybird                  |        64 |        66 |        67 |        73 |        77 |        86 |       121 |      8903 |
|                    Δ                     |      -379 |      -389 |      -396 |      -430 |      -439 |      -452 |      -452 |      6991 |
|              Improvement %               |        86 |        85 |        86 |        85 |        85 |        84 |        79 |      6991 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       444 |       456 |       465 |       504 |       518 |       537 |       577 |      1912 |
|                 jaybird                  |        66 |        68 |        69 |        75 |        79 |        87 |       125 |      8903 |
|                    Δ                     |      -378 |      -388 |      -396 |      -429 |      -439 |      -450 |      -452 |      6991 |
|              Improvement %               |        85 |        85 |        85 |        85 |        85 |        84 |        78 |      6991 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      2259 |      2201 |      2161 |      1990 |      1938 |      1862 |      1746 |      1912 |
|                 jaybird                  |     15676 |     15215 |     14919 |     13767 |     13047 |     11695 |      8276 |      8903 |
|                    Δ                     |     13417 |     13014 |     12758 |     11777 |     11109 |      9833 |      6530 |      6991 |
|              Improvement %               |       594 |       591 |       590 |       592 |       573 |       528 |       374 |      6991 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |        97 |       141 |       186 |       212 |       229 |       229 |      1912 |
|                 jaybird                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      8903 |
|                    Δ                     |         0 |       -43 |       -87 |      -132 |      -158 |      -175 |      -175 |      6991 |
|              Improvement %               |         0 |        44 |        62 |        71 |        75 |        76 |        76 |      6991 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      1912 |
|                 jaybird                  |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      8903 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      6991 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      6991 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      9072 |      9101 |      9110 |      9118 |      9126 |      9232 |      9275 |      1912 |
|                 jaybird                  |      1529 |      1530 |      1532 |      1532 |      1534 |      1543 |      1663 |      8903 |
|                    Δ                     |     -7543 |     -7571 |     -7578 |     -7586 |     -7592 |     -7689 |     -7612 |      6991 |
|              Improvement %               |        83 |        83 |        83 |        83 |        83 |        83 |        82 |      6991 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       607 |       625 |       638 |       696 |       718 |       766 |      5353 |      1400 |
|                 jaybird                  |        98 |       103 |       107 |       115 |       120 |       142 |       233 |      6281 |
|                    Δ                     |      -509 |      -522 |      -531 |      -581 |      -598 |      -624 |     -5120 |      4881 |
|              Improvement %               |        84 |        84 |        83 |        83 |        83 |        81 |        96 |      4881 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       609 |       627 |       641 |       698 |       720 |       767 |       816 |      1400 |
|                 jaybird                  |       100 |       105 |       110 |       117 |       122 |       144 |       231 |      6281 |
|                    Δ                     |      -509 |      -522 |      -531 |      -581 |      -598 |      -623 |      -585 |      4881 |
|              Improvement %               |        84 |        83 |        83 |        83 |        83 |        81 |        72 |      4881 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1647 |      1602 |      1567 |      1437 |      1393 |      1305 |       187 |      1400 |
|                 jaybird                  |     10230 |      9671 |      9311 |      8719 |      8351 |      7031 |      4286 |      6281 |
|                    Δ                     |      8583 |      8069 |      7744 |      7282 |      6958 |      5726 |      4099 |      4881 |
|              Improvement %               |       521 |       504 |       494 |       507 |       499 |       439 |      2192 |      4881 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |        67 |        81 |        95 |       103 |       109 |       109 |      1400 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |      6281 |
|                    Δ                     |         0 |       -14 |       -28 |       -42 |       -50 |       -56 |       -56 |      4881 |
|              Improvement %               |         0 |        21 |        35 |        44 |        49 |        51 |        51 |      4881 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      5756 |      5757 |      5757 |      5757 |      5757 |      5757 |      5757 |      1400 |
|                 jaybird                  |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      6281 |
|                    Δ                     |     -5707 |     -5708 |     -5708 |     -5708 |     -5708 |     -5708 |     -5708 |      4881 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      4881 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      1400 |
|                 jaybird                  |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      6281 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      4881 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        86 |        86 |      4881 |

<p>
</details>

