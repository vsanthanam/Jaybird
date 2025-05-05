
## Comparing results between 'apple' and 'current'

```
Host 'Varuns-MacBook-Pro.local' with 16 'arm64' processors with 128 GB memory, running:
Darwin Kernel Version 24.4.0: Fri Apr 11 18:32:50 PDT 2025; root:xnu-11417.101.15~117/RELEASE_ARM64_T6041
```
## JaybirdBenchmark

### Parse (200kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1080 |      1113 |      1143 |      1198 |      1251 |      1364 |      1445 |       827 |
|                 current                  |       747 |       780 |       817 |       873 |       904 |       990 |      1047 |      1134 |
|                    Δ                     |      -333 |      -333 |      -326 |      -325 |      -347 |      -374 |      -398 |       307 |
|              Improvement %               |        31 |        30 |        29 |        27 |        28 |        27 |        28 |       307 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1082 |      1114 |      1144 |      1197 |      1251 |      1362 |      1450 |       827 |
|                 current                  |       748 |       782 |       819 |       874 |       906 |       992 |      1049 |      1134 |
|                    Δ                     |      -334 |      -332 |      -325 |      -323 |      -345 |      -370 |      -401 |       307 |
|              Improvement %               |        31 |        30 |        28 |        27 |        28 |        27 |        28 |       307 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       926 |       899 |       876 |       835 |       799 |       733 |       692 |       827 |
|                 current                  |      1340 |      1282 |      1224 |      1146 |      1107 |      1010 |       955 |      1134 |
|                    Δ                     |       414 |       383 |       348 |       311 |       308 |       277 |       263 |       307 |
|              Improvement %               |        45 |        43 |        40 |        37 |        39 |        38 |        38 |       307 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |       121 |       189 |       261 |       301 |       326 |       330 |       827 |
|                 current                  |        54 |        55 |        55 |        55 |        55 |        55 |        55 |      1134 |
|                    Δ                     |         1 |       -66 |      -134 |      -206 |      -246 |      -271 |      -275 |       307 |
|              Improvement %               |        -2 |        55 |        71 |        79 |        82 |        83 |        83 |       307 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      5968 |      5969 |      5969 |      5969 |      5969 |      5969 |      5969 |       827 |
|                 current                  |      2824 |      2824 |      2824 |      2824 |      2824 |      2824 |      2824 |      1134 |
|                    Δ                     |     -3144 |     -3145 |     -3145 |     -3145 |     -3145 |     -3145 |     -3145 |       307 |
|              Improvement %               |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       307 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        19 |        19 |        19 |        19 |        19 |        19 |        19 |       827 |
|                 current                  |        12 |        12 |        12 |        12 |        12 |        13 |        13 |      1134 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -6 |        -6 |       307 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        32 |        32 |       307 |

<p>
</details>

### Parse (200kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1172 |      1207 |      1232 |      1303 |      1364 |      1432 |      1472 |       766 |
|                 current                  |       779 |       818 |       855 |       913 |       946 |      1019 |      1127 |      1087 |
|                    Δ                     |      -393 |      -389 |      -377 |      -390 |      -418 |      -413 |      -345 |       321 |
|              Improvement %               |        34 |        32 |        31 |        30 |        31 |        29 |        23 |       321 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1173 |      1210 |      1234 |      1303 |      1362 |      1426 |      1467 |       766 |
|                 current                  |       781 |       820 |       854 |       915 |       945 |      1018 |      1132 |      1087 |
|                    Δ                     |      -392 |      -390 |      -380 |      -388 |      -417 |      -408 |      -335 |       321 |
|              Improvement %               |        33 |        32 |        31 |        30 |        31 |        29 |        23 |       321 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       854 |       829 |       812 |       768 |       734 |       699 |       680 |       766 |
|                 current                  |      1283 |      1223 |      1170 |      1095 |      1057 |       982 |       887 |      1087 |
|                    Δ                     |       429 |       394 |       358 |       327 |       323 |       283 |       207 |       321 |
|              Improvement %               |        50 |        48 |        44 |        43 |        44 |        40 |        30 |       321 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |       116 |       182 |       246 |       285 |       307 |       310 |       766 |
|                 current                  |        54 |        55 |        55 |        55 |        55 |        55 |        55 |      1087 |
|                    Δ                     |         1 |       -61 |      -127 |      -191 |      -230 |      -252 |      -255 |       321 |
|              Improvement %               |        -2 |        53 |        70 |        78 |        81 |        82 |        82 |       321 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      5968 |      5969 |      5969 |      5969 |      5969 |      5969 |      5969 |       766 |
|                 current                  |      2804 |      2804 |      2804 |      2804 |      2804 |      2804 |      2804 |      1087 |
|                    Δ                     |     -3164 |     -3165 |     -3165 |     -3165 |     -3165 |     -3165 |     -3165 |       321 |
|              Improvement %               |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       321 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        20 |        20 |        20 |        20 |        20 |        20 |        20 |       766 |
|                 current                  |        13 |        13 |        13 |        13 |        13 |        13 |        14 |      1087 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -6 |       321 |
|              Improvement %               |        35 |        35 |        35 |        35 |        35 |        35 |        30 |       321 |

<p>
</details>

### Parse (2kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        10 |        11 |        12 |        13 |        14 |        18 |        44 |     10000 |
|                 current                  |         9 |        10 |        10 |        11 |        12 |        14 |        31 |     10000 |
|                    Δ                     |        -1 |        -1 |        -2 |        -2 |        -2 |        -4 |       -13 |         0 |
|              Improvement %               |        10 |         9 |        17 |        15 |        14 |        22 |        30 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        12 |        13 |        13 |        15 |        16 |        20 |        45 |     10000 |
|                 current                  |        11 |        12 |        12 |        13 |        14 |        17 |        30 |     10000 |
|                    Δ                     |        -1 |        -1 |        -1 |        -2 |        -2 |        -3 |       -15 |         0 |
|              Improvement %               |         8 |         8 |         8 |        13 |        12 |        15 |        33 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        97 |        92 |        86 |        76 |        71 |        56 |        23 |     10000 |
|                 current                  |       110 |       100 |        98 |        88 |        81 |        72 |        32 |     10000 |
|                    Δ                     |        13 |         8 |        12 |        12 |        10 |        16 |         9 |         0 |
|              Improvement %               |        13 |         9 |        14 |        16 |        14 |        29 |        39 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |        60 |        66 |        74 |        78 |        81 |        81 |     10000 |
|                 current                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                    Δ                     |         0 |        -7 |       -13 |       -21 |       -25 |       -28 |       -28 |         0 |
|              Improvement %               |         0 |        12 |        20 |        28 |        32 |        35 |        35 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        46 |        46 |        46 |        46 |        46 |        46 |        47 |     10000 |
|                 current                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |     10000 |
|                    Δ                     |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |       -16 |         0 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        34 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       187 |       188 |       190 |       193 |       196 |       203 |       219 |     10000 |
|                 current                  |       166 |       166 |       166 |       167 |       168 |       170 |       187 |     10000 |
|                    Δ                     |       -21 |       -22 |       -24 |       -26 |       -28 |       -33 |       -32 |         0 |
|              Improvement %               |        11 |        12 |        13 |        13 |        14 |        16 |        15 |         0 |

<p>
</details>

### Parse (2kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        11 |        11 |        12 |        13 |        14 |        18 |        38 |     10000 |
|                 current                  |         9 |        10 |        10 |        11 |        12 |        22 |       579 |     10000 |
|                    Δ                     |        -2 |        -1 |        -2 |        -2 |        -2 |         4 |       541 |         0 |
|              Improvement %               |        18 |         9 |        17 |        15 |        14 |       -22 |     -1424 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        12 |        13 |        14 |        15 |        16 |        20 |        40 |     10000 |
|                 current                  |        11 |        11 |        11 |        13 |        14 |        25 |        76 |     10000 |
|                    Δ                     |        -1 |        -2 |        -3 |        -2 |        -2 |         5 |        36 |         0 |
|              Improvement %               |         8 |        15 |        21 |        13 |        12 |       -25 |       -90 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        93 |        89 |        84 |        75 |        70 |        56 |        27 |     10000 |
|                 current                  |       107 |       104 |       102 |        93 |        84 |        45 |         2 |     10000 |
|                    Δ                     |        14 |        15 |        18 |        18 |        14 |       -11 |       -25 |         0 |
|              Improvement %               |        15 |        17 |        21 |        24 |        20 |       -20 |       -93 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |        59 |        67 |        73 |        78 |        80 |        81 |     10000 |
|                 current                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                    Δ                     |         0 |        -6 |       -14 |       -20 |       -25 |       -27 |       -28 |         0 |
|              Improvement %               |         0 |        10 |        21 |        27 |        32 |        34 |        35 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        46 |        46 |        46 |        46 |        46 |        46 |        47 |     10000 |
|                 current                  |        32 |        32 |        32 |        32 |        32 |        32 |        32 |     10000 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -15 |         0 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        32 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       191 |       192 |       194 |       197 |       200 |       207 |       223 |     10000 |
|                 current                  |       171 |       171 |       171 |       171 |       173 |       176 |       273 |     10000 |
|                    Δ                     |       -20 |       -21 |       -23 |       -26 |       -27 |       -31 |        50 |         0 |
|              Improvement %               |        10 |        11 |        12 |        13 |        14 |        15 |       -22 |         0 |

<p>
</details>

### Parse (2mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        13 |        13 |        13 |        14 |        14 |        14 |        14 |        75 |
|                 current                  |         9 |        10 |        10 |        10 |        10 |        11 |        11 |       101 |
|                    Δ                     |        -4 |        -3 |        -3 |        -4 |        -4 |        -3 |        -3 |        26 |
|              Improvement %               |        31 |        23 |        23 |        29 |        29 |        21 |        21 |        26 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        13 |        13 |        13 |        14 |        14 |        14 |        14 |        75 |
|                 current                  |         9 |         9 |        10 |        10 |        10 |        11 |        11 |       101 |
|                    Δ                     |        -4 |        -4 |        -3 |        -4 |        -4 |        -3 |        -3 |        26 |
|              Improvement %               |        31 |        31 |        23 |        29 |        29 |        21 |        21 |        26 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        78 |        77 |        75 |        72 |        70 |        69 |        69 |        75 |
|                 current                  |       108 |       105 |       102 |        99 |        96 |        92 |        92 |       101 |
|                    Δ                     |        30 |        28 |        27 |        27 |        26 |        23 |        23 |        26 |
|              Improvement %               |        38 |        36 |        36 |        38 |        37 |        33 |        33 |        26 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        61 |       126 |       199 |       271 |       313 |       338 |       338 |        75 |
|                 current                  |        59 |        71 |        71 |        71 |        71 |        71 |        71 |       101 |
|                    Δ                     |        -2 |       -55 |      -128 |      -200 |      -242 |      -267 |      -267 |        26 |
|              Improvement %               |         3 |        44 |        64 |        74 |        77 |        79 |        79 |        26 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        70 |        70 |        70 |        70 |        70 |        70 |        70 |        75 |
|                 current                  |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       101 |
|                    Δ                     |       -41 |       -41 |       -41 |       -41 |       -41 |       -41 |       -41 |        26 |
|              Improvement %               |        59 |        59 |        59 |        59 |        59 |        59 |        59 |        26 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       207 |       207 |       207 |       208 |       208 |       210 |       210 |        75 |
|                 current                  |       131 |       131 |       131 |       131 |       131 |       132 |       138 |       101 |
|                    Δ                     |       -76 |       -76 |       -76 |       -77 |       -77 |       -78 |       -72 |        26 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        37 |        34 |        26 |

<p>
</details>

### Parse (2mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        14 |        14 |        14 |        15 |        15 |        16 |        16 |        70 |
|                 current                  |        10 |        10 |        10 |        11 |        11 |        11 |        11 |        98 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -5 |        28 |
|              Improvement %               |        29 |        29 |        29 |        27 |        27 |        31 |        31 |        28 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        14 |        14 |        14 |        15 |        15 |        16 |        16 |        70 |
|                 current                  |        10 |        10 |        10 |        11 |        11 |        11 |        11 |        98 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -5 |        28 |
|              Improvement %               |        29 |        29 |        29 |        27 |        27 |        31 |        31 |        28 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        73 |        72 |        71 |        68 |        67 |        64 |        64 |        70 |
|                 current                  |       104 |       102 |       100 |        95 |        91 |        88 |        88 |        98 |
|                    Δ                     |        31 |        30 |        29 |        27 |        24 |        24 |        24 |        28 |
|              Improvement %               |        42 |        42 |        41 |        40 |        36 |        38 |        38 |        28 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        61 |       123 |       189 |       256 |       291 |       318 |       318 |        70 |
|                 current                  |        59 |        73 |        73 |        73 |        73 |        73 |        73 |        98 |
|                    Δ                     |        -2 |       -50 |      -116 |      -183 |      -218 |      -245 |      -245 |        28 |
|              Improvement %               |         3 |        41 |        61 |        71 |        75 |        77 |        77 |        28 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        70 |        70 |        70 |        70 |        70 |        70 |        70 |        70 |
|                 current                  |        29 |        29 |        29 |        29 |        29 |        29 |        29 |        98 |
|                    Δ                     |       -41 |       -41 |       -41 |       -41 |       -41 |       -41 |       -41 |        28 |
|              Improvement %               |        59 |        59 |        59 |        59 |        59 |        59 |        59 |        28 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       215 |       216 |       216 |       216 |       216 |       218 |       218 |        70 |
|                 current                  |       139 |       139 |       139 |       140 |       141 |       146 |       146 |        98 |
|                    Δ                     |       -76 |       -77 |       -77 |       -76 |       -75 |       -72 |       -72 |        28 |
|              Improvement %               |        35 |        36 |        36 |        35 |        35 |        33 |        33 |        28 |

<p>
</details>

### Parse (500kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      2834 |      2935 |      2990 |      3222 |      3301 |      3430 |      3524 |       321 |
|                 current                  |      2066 |      2142 |      2200 |      2314 |      2392 |      2484 |      2530 |       438 |
|                    Δ                     |      -768 |      -793 |      -790 |      -908 |      -909 |      -946 |      -994 |       117 |
|              Improvement %               |        27 |        27 |        26 |        28 |        28 |        28 |        28 |       117 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      2836 |      2937 |      2992 |      3222 |      3301 |      3432 |      3535 |       321 |
|                 current                  |      2067 |      2144 |      2202 |      2312 |      2396 |      2484 |      2532 |       438 |
|                    Δ                     |      -769 |      -793 |      -790 |      -910 |      -905 |      -948 |     -1003 |       117 |
|              Improvement %               |        27 |        27 |        26 |        28 |        27 |        28 |        28 |       117 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       353 |       341 |       334 |       310 |       303 |       292 |       284 |       321 |
|                 current                  |       484 |       467 |       455 |       432 |       418 |       403 |       395 |       438 |
|                    Δ                     |       131 |       126 |       121 |       122 |       115 |       111 |       111 |       117 |
|              Improvement %               |        37 |        37 |        36 |        39 |        38 |        38 |        39 |       117 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        54 |       123 |       196 |       264 |       307 |       334 |       334 |       321 |
|                 current                  |        55 |        57 |        57 |        57 |        57 |        57 |        57 |       438 |
|                    Δ                     |         1 |       -66 |      -139 |      -207 |      -250 |      -277 |      -277 |       117 |
|              Improvement %               |        -2 |        54 |        71 |        78 |        81 |        83 |        83 |       117 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        16 |        16 |        16 |        16 |        16 |        16 |        16 |       321 |
|                 current                  |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       438 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       117 |
|              Improvement %               |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       117 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        48 |        48 |        48 |        48 |        48 |        49 |        49 |       321 |
|                 current                  |        31 |        31 |        31 |        31 |        31 |        32 |        32 |       438 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       117 |
|              Improvement %               |        35 |        35 |        35 |        35 |        35 |        35 |        35 |       117 |

<p>
</details>

### Parse (500kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      3094 |      3178 |      3236 |      3447 |      3592 |      3695 |      3708 |       298 |
|                 current                  |      2164 |      2245 |      2329 |      2480 |      2535 |      2656 |      2914 |       414 |
|                    Δ                     |      -930 |      -933 |      -907 |      -967 |     -1057 |     -1039 |      -794 |       116 |
|              Improvement %               |        30 |        29 |        28 |        28 |        29 |        28 |        21 |       116 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      3096 |      3181 |      3236 |      3445 |      3592 |      3697 |      3713 |       298 |
|                 current                  |      2166 |      2247 |      2329 |      2478 |      2540 |      2664 |      2918 |       414 |
|                    Δ                     |      -930 |      -934 |      -907 |      -967 |     -1052 |     -1033 |      -795 |       116 |
|              Improvement %               |        30 |        29 |        28 |        28 |        29 |        28 |        21 |       116 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       323 |       315 |       309 |       290 |       279 |       271 |       270 |       298 |
|                 current                  |       462 |       446 |       429 |       403 |       394 |       377 |       343 |       414 |
|                    Δ                     |       139 |       131 |       120 |       113 |       115 |       106 |        73 |       116 |
|              Improvement %               |        43 |        42 |        39 |        39 |        41 |        39 |        27 |       116 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        54 |       119 |       185 |       251 |       289 |       313 |       316 |       298 |
|                 current                  |        55 |        57 |        57 |        58 |        58 |        58 |        58 |       414 |
|                    Δ                     |         1 |       -62 |      -128 |      -193 |      -231 |      -255 |      -258 |       116 |
|              Improvement %               |        -2 |        52 |        69 |        77 |        80 |        81 |        82 |       116 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        16 |        16 |        16 |        16 |        16 |        16 |        16 |       298 |
|                 current                  |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       414 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       116 |
|              Improvement %               |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       116 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        50 |        50 |        50 |        50 |        50 |        51 |        51 |       298 |
|                 current                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       414 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       116 |
|              Improvement %               |        34 |        34 |        34 |        34 |        34 |        33 |        33 |       116 |

<p>
</details>

### Parse (50kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       281 |       293 |       299 |       325 |       336 |       352 |       376 |      2834 |
|                 current                  |       250 |       257 |       262 |       281 |       293 |       311 |       417 |      3140 |
|                    Δ                     |       -31 |       -36 |       -37 |       -44 |       -43 |       -41 |        41 |       306 |
|              Improvement %               |        11 |        12 |        12 |        14 |        13 |        12 |       -11 |       306 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       283 |       295 |       301 |       326 |       338 |       353 |       375 |      2834 |
|                 current                  |       251 |       258 |       264 |       282 |       295 |       312 |       331 |      3140 |
|                    Δ                     |       -32 |       -37 |       -37 |       -44 |       -43 |       -41 |       -44 |       306 |
|              Improvement %               |        11 |        13 |        12 |        13 |        13 |        12 |        12 |       306 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      3559 |      3417 |      3345 |      3083 |      2979 |      2839 |      2656 |      2834 |
|                 current                  |      4003 |      3901 |      3819 |      3559 |      3415 |      3221 |      2399 |      3140 |
|                    Δ                     |       444 |       484 |       474 |       476 |       436 |       382 |      -257 |       306 |
|              Improvement %               |        12 |        14 |        14 |        15 |        15 |        13 |       -10 |       306 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |       129 |       207 |       286 |       336 |       364 |       364 |      2834 |
|                 current                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      3140 |
|                    Δ                     |         0 |       -75 |      -153 |      -232 |      -282 |      -310 |      -310 |       306 |
|              Improvement %               |         0 |        58 |        74 |        81 |        84 |        85 |        85 |       306 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1301 |      1301 |      1301 |      1301 |      1301 |      1301 |      1302 |      2834 |
|                 current                  |       869 |       869 |       869 |       869 |       869 |       869 |       869 |      3140 |
|                    Δ                     |      -432 |      -432 |      -432 |      -432 |      -432 |      -432 |      -433 |       306 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       306 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      6089 |      6119 |      6128 |      6136 |      6144 |      6169 |      6203 |      2834 |
|                 current                  |      5106 |      5112 |      5116 |      5120 |      5124 |      5222 |      5308 |      3140 |
|                    Δ                     |      -983 |     -1007 |     -1012 |     -1016 |     -1020 |      -947 |      -895 |       306 |
|              Improvement %               |        16 |        16 |        17 |        17 |        17 |        15 |        14 |       306 |

<p>
</details>

### Parse (50kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       311 |       323 |       329 |       354 |       366 |       385 |       406 |      2613 |
|                 current                  |       257 |       266 |       272 |       296 |       304 |       316 |       333 |      3031 |
|                    Δ                     |       -54 |       -57 |       -57 |       -58 |       -62 |       -69 |       -73 |       418 |
|              Improvement %               |        17 |        18 |        17 |        16 |        17 |        18 |        18 |       418 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       313 |       324 |       331 |       355 |       368 |       386 |       408 |      2613 |
|                 current                  |       258 |       268 |       274 |       298 |       306 |       317 |       333 |      3031 |
|                    Δ                     |       -55 |       -56 |       -57 |       -57 |       -62 |       -69 |       -75 |       418 |
|              Improvement %               |        18 |        17 |        17 |        16 |        17 |        18 |        18 |       418 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      3214 |      3101 |      3039 |      2829 |      2731 |      2601 |      2462 |      2613 |
|                 current                  |      3894 |      3765 |      3675 |      3375 |      3291 |      3169 |      2999 |      3031 |
|                    Δ                     |       680 |       664 |       636 |       546 |       560 |       568 |       537 |       418 |
|              Improvement %               |        21 |        21 |        21 |        19 |        21 |        22 |        22 |       418 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |       124 |       195 |       270 |       313 |       338 |       342 |      2613 |
|                 current                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      3031 |
|                    Δ                     |         0 |       -70 |      -141 |      -216 |      -259 |      -284 |      -288 |       418 |
|              Improvement %               |         0 |        56 |        72 |        80 |        83 |        84 |        84 |       418 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1301 |      1301 |      1301 |      1301 |      1301 |      1301 |      1302 |      2613 |
|                 current                  |       869 |       869 |       869 |       869 |       869 |       869 |       869 |      3031 |
|                    Δ                     |      -432 |      -432 |      -432 |      -432 |      -432 |      -432 |      -433 |       418 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       418 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      6365 |      6394 |      6402 |      6414 |      6423 |      6443 |      6480 |      2613 |
|                 current                  |      5362 |      5366 |      5374 |      5374 |      5378 |      5472 |      5560 |      3031 |
|                    Δ                     |     -1003 |     -1028 |     -1028 |     -1040 |     -1045 |      -971 |      -920 |       418 |
|              Improvement %               |        16 |        16 |        16 |        16 |        16 |        15 |        14 |       418 |

<p>
</details>

### Parse (50mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        69 |        70 |        70 |        72 |        73 |        74 |        74 |        15 |
|                 current                  |        86 |        87 |        87 |        88 |        89 |        89 |        89 |        12 |
|                    Δ                     |        17 |        17 |        17 |        16 |        16 |        15 |        15 |        -3 |
|              Improvement %               |       -25 |       -24 |       -24 |       -22 |       -22 |       -20 |       -20 |        -3 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        69 |        70 |        70 |        72 |        73 |        74 |        74 |        15 |
|                 current                  |        86 |        87 |        87 |        88 |        89 |        89 |        89 |        12 |
|                    Δ                     |        17 |        17 |        17 |        16 |        16 |        15 |        15 |        -3 |
|              Improvement %               |       -25 |       -24 |       -24 |       -22 |       -22 |       -20 |       -20 |        -3 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        15 |        14 |        14 |        14 |        14 |        13 |        13 |        15 |
|                 current                  |        12 |        12 |        11 |        11 |        11 |        11 |        11 |        12 |
|                    Δ                     |        -3 |        -2 |        -3 |        -3 |        -3 |        -2 |        -2 |        -3 |
|              Improvement %               |       -20 |       -14 |       -21 |       -21 |       -21 |       -15 |       -15 |        -3 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       104 |       185 |       297 |       403 |       456 |       487 |       487 |        15 |
|                 current                  |       212 |       225 |       225 |       225 |       225 |       225 |       225 |        12 |
|                    Δ                     |       108 |        40 |       -72 |      -178 |      -231 |      -262 |      -262 |        -3 |
|              Improvement %               |      -104 |       -22 |        24 |        44 |        51 |        54 |        54 |        -3 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       389 |       389 |       389 |       389 |       389 |       389 |       389 |        15 |
|                 current                  |       315 |       315 |       315 |       315 |       315 |       315 |       315 |        12 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |        -3 |
|              Improvement %               |        19 |        19 |        19 |        19 |        19 |        19 |        19 |        -3 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1408 |      1409 |      1409 |      1409 |      1409 |      1409 |      1409 |        15 |
|                 current                  |      1604 |      1605 |      1607 |      1610 |      1611 |      1612 |      1612 |        12 |
|                    Δ                     |       196 |       196 |       198 |       201 |       202 |       203 |       203 |        -3 |
|              Improvement %               |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |        -3 |

<p>
</details>

### Parse (50mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        76 |        76 |        77 |        78 |        79 |        79 |        79 |        13 |
|                 current                  |        86 |        87 |        89 |        91 |        92 |        92 |        92 |        12 |
|                    Δ                     |        10 |        11 |        12 |        13 |        13 |        13 |        13 |        -1 |
|              Improvement %               |       -13 |       -14 |       -16 |       -17 |       -16 |       -16 |       -16 |        -1 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        76 |        76 |        77 |        78 |        79 |        79 |        79 |        13 |
|                 current                  |        86 |        87 |        89 |        90 |        92 |        92 |        92 |        12 |
|                    Δ                     |        10 |        11 |        12 |        12 |        13 |        13 |        13 |        -1 |
|              Improvement %               |       -13 |       -14 |       -16 |       -15 |       -16 |       -16 |       -16 |        -1 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        13 |
|                 current                  |        12 |        11 |        11 |        11 |        11 |        11 |        11 |        12 |
|                    Δ                     |        -1 |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -1 |
|              Improvement %               |        -8 |       -15 |       -15 |       -15 |       -15 |       -15 |       -15 |        -1 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       106 |       189 |       269 |       349 |       403 |       429 |       429 |        13 |
|                 current                  |       207 |       223 |       223 |       223 |       223 |       223 |       223 |        12 |
|                    Δ                     |       101 |        34 |       -46 |      -126 |      -180 |      -206 |      -206 |        -1 |
|              Improvement %               |       -95 |       -18 |        17 |        36 |        45 |        48 |        48 |        -1 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       389 |       389 |       389 |       389 |       389 |       389 |       389 |        13 |
|                 current                  |       315 |       315 |       315 |       315 |       315 |       315 |       315 |        12 |
|                    Δ                     |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |       -74 |        -1 |
|              Improvement %               |        19 |        19 |        19 |        19 |        19 |        19 |        19 |        -1 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1483 |      1484 |      1484 |      1484 |      1484 |      1484 |      1484 |        13 |
|                 current                  |      1656 |      1664 |      1667 |      1674 |      1677 |      1684 |      1684 |        12 |
|                    Δ                     |       173 |       180 |       183 |       190 |       193 |       200 |       200 |        -1 |
|              Improvement %               |       -12 |       -12 |       -12 |       -13 |       -13 |       -13 |       -13 |        -1 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      6441 |      6681 |      6889 |      7266 |      7430 |      7700 |      8029 |       142 |
|                 current                  |      7251 |      7381 |      7676 |      8036 |      8290 |      8724 |      9186 |       128 |
|                    Δ                     |       810 |       700 |       787 |       770 |       860 |      1024 |      1157 |       -14 |
|              Improvement %               |       -13 |       -10 |       -11 |       -11 |       -12 |       -13 |       -14 |       -14 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      6448 |      6689 |      6877 |      7270 |      7430 |      7705 |      8033 |       142 |
|                 current                  |      7261 |      7385 |      7680 |      8040 |      8294 |      8733 |      9165 |       128 |
|                    Δ                     |       813 |       696 |       803 |       770 |       864 |      1028 |      1132 |       -14 |
|              Improvement %               |       -13 |       -10 |       -12 |       -11 |       -12 |       -13 |       -14 |       -14 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       155 |       150 |       145 |       138 |       135 |       130 |       125 |       142 |
|                 current                  |       138 |       136 |       130 |       124 |       121 |       115 |       109 |       128 |
|                    Δ                     |       -17 |       -14 |       -15 |       -14 |       -14 |       -15 |       -16 |       -14 |
|              Improvement %               |       -11 |        -9 |       -10 |       -10 |       -10 |       -12 |       -13 |       -14 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        56 |       149 |       248 |       343 |       401 |       436 |       441 |       142 |
|                 current                  |        61 |        74 |        74 |        74 |        74 |        74 |        74 |       128 |
|                    Δ                     |         5 |       -75 |      -174 |      -269 |      -327 |      -362 |      -367 |       -14 |
|              Improvement %               |        -9 |        50 |        70 |        78 |        82 |        83 |        83 |       -14 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        39 |        39 |        39 |        39 |        39 |        39 |        39 |       142 |
|                 current                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |       128 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |       -14 |
|              Improvement %               |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       -14 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       140 |       140 |       140 |       140 |       140 |       140 |       140 |       142 |
|                 current                  |       154 |       155 |       155 |       155 |       155 |       158 |       163 |       128 |
|                    Δ                     |        14 |        15 |        15 |        15 |        15 |        18 |        23 |       -14 |
|              Improvement %               |       -10 |       -11 |       -11 |       -11 |       -11 |       -13 |       -16 |       -14 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      7186 |      7356 |      7569 |      7995 |      8237 |      8503 |      8523 |       129 |
|                 current                  |      7325 |      7479 |      7741 |      8167 |      8389 |      8544 |      8880 |       127 |
|                    Δ                     |       139 |       123 |       172 |       172 |       152 |        41 |       357 |        -2 |
|              Improvement %               |        -2 |        -2 |        -2 |        -2 |        -2 |         0 |        -4 |        -2 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      7188 |      7365 |      7557 |      7987 |      8237 |      8503 |      8520 |       129 |
|                 current                  |      7329 |      7483 |      7733 |      8176 |      8397 |      8536 |      8887 |       127 |
|                    Δ                     |       141 |       118 |       176 |       189 |       160 |        33 |       367 |        -2 |
|              Improvement %               |        -2 |        -2 |        -2 |        -2 |        -2 |         0 |        -4 |        -2 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       139 |       136 |       132 |       125 |       121 |       118 |       117 |       129 |
|                 current                  |       137 |       134 |       129 |       122 |       119 |       117 |       113 |       127 |
|                    Δ                     |        -2 |        -2 |        -3 |        -3 |        -2 |        -1 |        -4 |        -2 |
|              Improvement %               |        -1 |        -1 |        -2 |        -2 |        -2 |        -1 |        -3 |        -2 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        56 |       142 |       231 |       319 |       371 |       401 |       405 |       129 |
|                 current                  |        61 |        74 |        74 |        74 |        74 |        74 |        74 |       127 |
|                    Δ                     |         5 |       -68 |      -157 |      -245 |      -297 |      -327 |      -331 |        -2 |
|              Improvement %               |        -9 |        48 |        68 |        77 |        80 |        82 |        82 |        -2 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        39 |        39 |        39 |        39 |        39 |        39 |        39 |       129 |
|                 current                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |       127 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -2 |
|              Improvement %               |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        -2 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       147 |       147 |       147 |       147 |       147 |       148 |       148 |       129 |
|                 current                  |       159 |       160 |       160 |       160 |       160 |       164 |       167 |       127 |
|                    Δ                     |        12 |        13 |        13 |        13 |        13 |        16 |        19 |        -2 |
|              Improvement %               |        -8 |        -9 |        -9 |        -9 |        -9 |       -11 |       -13 |        -2 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       278 |       291 |       299 |       323 |       332 |       346 |       374 |      2841 |
|                 current                  |        99 |       102 |       106 |       115 |       119 |       124 |       146 |      6589 |
|                    Δ                     |      -179 |      -189 |      -193 |      -208 |      -213 |      -222 |      -228 |      3748 |
|              Improvement %               |        64 |        65 |        65 |        64 |        64 |        64 |        61 |      3748 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       280 |       293 |       301 |       324 |       334 |       348 |       371 |      2841 |
|                 current                  |       101 |       104 |       108 |       117 |       121 |       126 |       150 |      6589 |
|                    Δ                     |      -179 |      -189 |      -193 |      -207 |      -213 |      -222 |      -221 |      3748 |
|              Improvement %               |        64 |        65 |        64 |        64 |        64 |        64 |        60 |      3748 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      3595 |      3435 |      3343 |      3099 |      3015 |      2893 |      2676 |      2841 |
|                 current                  |     10076 |      9775 |      9431 |      8703 |      8407 |      8047 |      6830 |      6589 |
|                    Δ                     |      6481 |      6340 |      6088 |      5604 |      5392 |      5154 |      4154 |      3748 |
|              Improvement %               |       180 |       185 |       182 |       181 |       179 |       178 |       155 |      3748 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |       107 |       161 |       214 |       246 |       266 |       268 |      2841 |
|                 current                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      6589 |
|                    Δ                     |         0 |       -53 |      -107 |      -160 |      -192 |      -212 |      -214 |      3748 |
|              Improvement %               |         0 |        50 |        66 |        75 |        78 |        80 |        80 |      3748 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      2841 |
|                 current                  |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      6589 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      3748 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      3748 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      6960 |      6975 |      6980 |      6996 |      7008 |      7029 |      7064 |      2841 |
|                 current                  |      2476 |      2478 |      2480 |      2482 |      2482 |      2497 |      2708 |      6589 |
|                    Δ                     |     -4484 |     -4497 |     -4500 |     -4514 |     -4526 |     -4532 |     -4356 |      3748 |
|              Improvement %               |        64 |        64 |        64 |        65 |        65 |        64 |        62 |      3748 |

<p>
</details>

### Parse (micro) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1750 |      1959 |      2167 |      2375 |      2667 |      3835 |     22958 |     10000 |
|                 current                  |      1792 |      2000 |      2083 |      2459 |      2543 |      3543 |     28834 |     10000 |
|                    Δ                     |        42 |        41 |       -84 |        84 |      -124 |      -292 |      5876 |         0 |
|              Improvement %               |        -2 |        -2 |         4 |        -4 |         5 |         8 |       -26 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      3292 |      3585 |      3793 |      4295 |      4667 |      6543 |     17959 |     10000 |
|                 current                  |      3292 |      3543 |      3667 |      4295 |      4459 |      6167 |     20042 |     10000 |
|                    Δ                     |         0 |       -42 |      -126 |         0 |      -208 |      -376 |      2083 |         0 |
|              Improvement %               |         0 |         1 |         3 |         0 |         4 |         6 |       -12 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       571 |       511 |       462 |       421 |       375 |       258 |        44 |     10000 |
|                 current                  |       558 |       500 |       480 |       407 |       393 |       282 |        35 |     10000 |
|                    Δ                     |       -13 |       -11 |        18 |       -14 |        18 |        24 |        -9 |         0 |
|              Improvement %               |        -2 |        -2 |         4 |        -3 |         5 |         9 |       -20 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |        53 |        54 |        54 |        54 |        54 |        54 |     10000 |
|                 current                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                    Δ                     |         0 |         0 |        -1 |        -1 |        -1 |        -1 |        -1 |         0 |
|              Improvement %               |         0 |         0 |         2 |         2 |         2 |         2 |         2 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |         4 |         4 |         4 |         4 |         4 |         4 |         7 |     10000 |
|                 current                  |         5 |         5 |         5 |         5 |         5 |         5 |         5 |     10000 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |        -2 |         0 |
|              Improvement %               |       -25 |       -25 |       -25 |       -25 |       -25 |       -25 |        29 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        17 |        17 |        18 |        18 |        19 |        21 |        41 |     10000 |
|                 current                  |        20 |        20 |        20 |        20 |        20 |        22 |        42 |     10000 |
|                    Δ                     |         3 |         3 |         2 |         2 |         1 |         1 |         1 |         0 |
|              Improvement %               |       -18 |       -18 |       -11 |       -11 |        -5 |        -5 |        -2 |         0 |

<p>
</details>

### Parse (micro-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1750 |      1917 |      2000 |      2251 |      2459 |      3875 |     18500 |     10000 |
|                 current                  |      1833 |      2000 |      2125 |      2459 |      2625 |      3625 |     20541 |     10000 |
|                    Δ                     |        83 |        83 |       125 |       208 |       166 |      -250 |      2041 |         0 |
|              Improvement %               |        -5 |        -4 |        -6 |        -9 |        -7 |         6 |       -11 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      3249 |      3459 |      3543 |      4041 |      4375 |      6375 |     17042 |     10000 |
|                 current                  |      3416 |      3667 |      3875 |      4419 |      4711 |      6583 |     20958 |     10000 |
|                    Δ                     |       167 |       208 |       332 |       378 |       336 |       208 |      3916 |         0 |
|              Improvement %               |        -5 |        -6 |        -9 |        -9 |        -8 |        -3 |       -23 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       571 |       522 |       500 |       445 |       407 |       255 |        54 |     10000 |
|                 current                  |       546 |       500 |       471 |       407 |       381 |       276 |        49 |     10000 |
|                    Δ                     |       -25 |       -22 |       -29 |       -38 |       -26 |        21 |        -5 |         0 |
|              Improvement %               |        -4 |        -4 |        -6 |        -9 |        -6 |         8 |        -9 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |        53 |        53 |        54 |        54 |        54 |        54 |     10000 |
|                 current                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                    Δ                     |         0 |         0 |         0 |        -1 |        -1 |        -1 |        -1 |         0 |
|              Improvement %               |         0 |         0 |         0 |         2 |         2 |         2 |         2 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |         4 |         4 |         4 |         4 |         4 |         4 |         7 |     10000 |
|                 current                  |         5 |         5 |         5 |         5 |         5 |         5 |         5 |     10000 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |        -2 |         0 |
|              Improvement %               |       -25 |       -25 |       -25 |       -25 |       -25 |       -25 |        29 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        17 |        17 |        18 |        18 |        19 |        21 |        33 |     10000 |
|                 current                  |        20 |        20 |        20 |        20 |        20 |        23 |        40 |     10000 |
|                    Δ                     |         3 |         3 |         2 |         2 |         1 |         2 |         7 |         0 |
|              Improvement %               |       -18 |       -18 |       -11 |       -11 |        -5 |       -10 |       -21 |         0 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       443 |       455 |       463 |       503 |       516 |       538 |       573 |      1912 |
|                 current                  |        58 |        60 |        62 |        67 |        70 |        79 |       123 |      9380 |
|                    Δ                     |      -385 |      -395 |      -401 |      -436 |      -446 |      -459 |      -450 |      7468 |
|              Improvement %               |        87 |        87 |        87 |        87 |        86 |        85 |        79 |      7468 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       444 |       456 |       465 |       504 |       518 |       537 |       577 |      1912 |
|                 current                  |        60 |        62 |        64 |        69 |        71 |        78 |       128 |      9380 |
|                    Δ                     |      -384 |      -394 |      -401 |      -435 |      -447 |      -459 |      -449 |      7468 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        85 |        78 |      7468 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      2259 |      2201 |      2161 |      1990 |      1938 |      1862 |      1746 |      1912 |
|                 current                  |     17241 |     16639 |     16151 |     14975 |     14399 |     12743 |      8105 |      9380 |
|                    Δ                     |     14982 |     14438 |     13990 |     12985 |     12461 |     10881 |      6359 |      7468 |
|              Improvement %               |       663 |       656 |       647 |       653 |       643 |       584 |       364 |      7468 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |        97 |       141 |       186 |       212 |       229 |       229 |      1912 |
|                 current                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      9380 |
|                    Δ                     |         0 |       -43 |       -87 |      -132 |      -158 |      -175 |      -175 |      7468 |
|              Improvement %               |         0 |        44 |        62 |        71 |        75 |        76 |        76 |      7468 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      1912 |
|                 current                  |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      9380 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      7468 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      7468 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      9072 |      9101 |      9110 |      9118 |      9126 |      9232 |      9275 |      1912 |
|                 current                  |      1529 |      1530 |      1532 |      1532 |      1534 |      1542 |      1660 |      9380 |
|                    Δ                     |     -7543 |     -7571 |     -7578 |     -7586 |     -7592 |     -7690 |     -7615 |      7468 |
|              Improvement %               |        83 |        83 |        83 |        83 |        83 |        83 |        82 |      7468 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       607 |       625 |       638 |       696 |       718 |       766 |      5353 |      1400 |
|                 current                  |        99 |       105 |       109 |       117 |       123 |       150 |       238 |      6235 |
|                    Δ                     |      -508 |      -520 |      -529 |      -579 |      -595 |      -616 |     -5115 |      4835 |
|              Improvement %               |        84 |        83 |        83 |        83 |        83 |        80 |        96 |      4835 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |       609 |       627 |       641 |       698 |       720 |       767 |       816 |      1400 |
|                 current                  |       100 |       106 |       111 |       119 |       124 |       152 |       234 |      6235 |
|                    Δ                     |      -509 |      -521 |      -530 |      -579 |      -596 |      -615 |      -582 |      4835 |
|              Improvement %               |        84 |        83 |        83 |        83 |        83 |        80 |        71 |      4835 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      1647 |      1602 |      1567 |      1437 |      1393 |      1305 |       187 |      1400 |
|                 current                  |     10148 |      9567 |      9159 |      8559 |      8155 |      6671 |      4199 |      6235 |
|                    Δ                     |      8501 |      7965 |      7592 |      7122 |      6762 |      5366 |      4012 |      4835 |
|              Improvement %               |       516 |       497 |       484 |       496 |       485 |       411 |      2145 |      4835 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        53 |        67 |        81 |        95 |       103 |       109 |       109 |      1400 |
|                 current                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |      6235 |
|                    Δ                     |         0 |       -14 |       -28 |       -42 |       -50 |       -56 |       -56 |      4835 |
|              Improvement %               |         0 |        21 |        35 |        44 |        49 |        51 |        51 |      4835 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |      5756 |      5757 |      5757 |      5757 |      5757 |      5757 |      5757 |      1400 |
|                 current                  |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      6235 |
|                    Δ                     |     -5707 |     -5708 |     -5708 |     -5708 |     -5708 |     -5708 |     -5708 |      4835 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      4835 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  apple                   |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      1400 |
|                 current                  |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      6235 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      4835 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        86 |        86 |      4835 |

<p>
</details>

