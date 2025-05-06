## Jaybird vs SwiftyJSON

### Parse (200kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5119 |      5255 |      5378 |      5796 |      5919 |      6382 |      7000 |       180 |
|                 jaybird                  |       741 |       773 |       804 |       875 |       911 |       999 |      1068 |      1140 |
|                    Δ                     |     -4378 |     -4482 |     -4574 |     -4921 |     -5008 |     -5383 |     -5932 |       960 |
|              Improvement %               |        86 |        85 |        85 |        85 |        85 |        84 |        85 |       960 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5121 |      5259 |      5374 |      5796 |      5927 |      6386 |      7005 |       180 |
|                 jaybird                  |       743 |       776 |       805 |       878 |       914 |       994 |      1074 |      1140 |
|                    Δ                     |     -4378 |     -4483 |     -4569 |     -4918 |     -5013 |     -5392 |     -5931 |       960 |
|              Improvement %               |        85 |        85 |        85 |        85 |        85 |        84 |        85 |       960 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       195 |       190 |       186 |       173 |       169 |       157 |       143 |       180 |
|                 jaybird                  |      1350 |      1293 |      1244 |      1143 |      1097 |      1002 |       936 |      1140 |
|                    Δ                     |      1155 |      1103 |      1058 |       970 |       928 |       845 |       793 |       960 |
|              Improvement %               |       592 |       581 |       569 |       561 |       549 |       538 |       555 |       960 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        54 |        69 |        85 |       100 |       109 |       114 |       115 |       180 |
|                 jaybird                  |        54 |        55 |        55 |        55 |        55 |        55 |        55 |      1140 |
|                    Δ                     |         0 |       -14 |       -30 |       -45 |       -54 |       -59 |       -60 |       960 |
|              Improvement %               |         0 |        20 |        35 |        45 |        50 |        52 |        52 |       960 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9262 |      9263 |      9263 |      9263 |      9263 |      9263 |      9263 |       180 |
|                 jaybird                  |      2824 |      2824 |      2824 |      2824 |      2824 |      2824 |      2824 |      1140 |
|                    Δ                     |     -6438 |     -6439 |     -6439 |     -6439 |     -6439 |     -6439 |     -6439 |       960 |
|              Improvement %               |        70 |        70 |        70 |        70 |        70 |        70 |        70 |       960 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        99 |        99 |        99 |        99 |        99 |       105 |       105 |       180 |
|                 jaybird                  |        12 |        12 |        13 |        13 |        13 |        13 |        13 |      1140 |
|                    Δ                     |       -87 |       -87 |       -86 |       -86 |       -86 |       -92 |       -92 |       960 |
|              Improvement %               |        88 |        88 |        87 |        87 |        87 |        88 |        88 |       960 |

<p>
</details>

### Parse (200kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5527 |      5759 |      5870 |      6271 |      6480 |      6894 |      7059 |       165 |
|                 jaybird                  |       792 |       819 |       843 |       907 |       949 |      1058 |      1268 |      1089 |
|                    Δ                     |     -4735 |     -4940 |     -5027 |     -5364 |     -5531 |     -5836 |     -5791 |       924 |
|              Improvement %               |        86 |        86 |        86 |        86 |        85 |        85 |        82 |       924 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5535 |      5763 |      5874 |      6275 |      6484 |      6894 |      7061 |       165 |
|                 jaybird                  |       794 |       821 |       845 |       910 |       952 |      1060 |      1275 |      1089 |
|                    Δ                     |     -4741 |     -4942 |     -5029 |     -5365 |     -5532 |     -5834 |     -5786 |       924 |
|              Improvement %               |        86 |        86 |        86 |        85 |        85 |        85 |        82 |       924 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       181 |       174 |       170 |       160 |       154 |       145 |       142 |       165 |
|                 jaybird                  |      1263 |      1222 |      1187 |      1103 |      1054 |       946 |       789 |      1089 |
|                    Δ                     |      1082 |      1048 |      1017 |       943 |       900 |       801 |       647 |       924 |
|              Improvement %               |       598 |       602 |       598 |       589 |       584 |       552 |       456 |       924 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        54 |        68 |        82 |        96 |       105 |       109 |       109 |       165 |
|                 jaybird                  |        54 |        55 |        55 |        55 |        55 |        55 |        55 |      1089 |
|                    Δ                     |         0 |       -13 |       -27 |       -41 |       -50 |       -54 |       -54 |       924 |
|              Improvement %               |         0 |        19 |        33 |        43 |        48 |        50 |        50 |       924 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9262 |      9263 |      9263 |      9263 |      9263 |      9263 |      9263 |       165 |
|                 jaybird                  |      2804 |      2804 |      2804 |      2804 |      2804 |      2804 |      2804 |      1089 |
|                    Δ                     |     -6458 |     -6459 |     -6459 |     -6459 |     -6459 |     -6459 |     -6459 |       924 |
|              Improvement %               |        70 |        70 |        70 |        70 |        70 |        70 |        70 |       924 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       111 |       111 |       165 |
|                 jaybird                  |        13 |        13 |        13 |        13 |        13 |        14 |        14 |      1089 |
|                    Δ                     |       -92 |       -92 |       -92 |       -92 |       -92 |       -97 |       -97 |       924 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        87 |        87 |       924 |

<p>
</details>

### Parse (2kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        42 |        45 |        47 |        51 |        53 |        59 |        80 |     10000 |
|                 jaybird                  |         9 |        10 |        11 |        12 |        13 |        14 |        31 |     10000 |
|                    Δ                     |       -33 |       -35 |       -36 |       -39 |       -40 |       -45 |       -49 |         0 |
|              Improvement %               |        79 |        78 |        77 |        76 |        75 |        76 |        61 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        44 |        47 |        49 |        53 |        55 |        61 |        83 |     10000 |
|                 jaybird                  |        11 |        12 |        13 |        14 |        15 |        16 |        28 |     10000 |
|                    Δ                     |       -33 |       -35 |       -36 |       -39 |       -40 |       -45 |       -55 |         0 |
|              Improvement %               |        75 |        74 |        73 |        74 |        73 |        74 |        66 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        24 |        22 |        21 |        20 |        19 |        17 |        12 |     10000 |
|                 jaybird                  |       108 |        98 |        95 |        87 |        79 |        73 |        32 |     10000 |
|                    Δ                     |        84 |        76 |        74 |        67 |        60 |        56 |        20 |         0 |
|              Improvement %               |       350 |       345 |       352 |       335 |       316 |       329 |       167 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        53 |        60 |        67 |        74 |        78 |        81 |        81 |     10000 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                    Δ                     |         0 |        -7 |       -14 |       -21 |       -25 |       -28 |       -28 |         0 |
|              Improvement %               |         0 |        12 |        21 |        28 |        32 |        35 |        35 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        86 |        86 |        86 |        86 |        86 |        86 |        88 |     10000 |
|                 jaybird                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |     10000 |
|                    Δ                     |       -55 |       -55 |       -55 |       -55 |       -55 |       -55 |       -57 |         0 |
|              Improvement %               |        64 |        64 |        64 |        64 |        64 |        64 |        65 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       843 |       846 |       848 |       851 |       858 |       893 |       918 |     10000 |
|                 jaybird                  |       166 |       166 |       166 |       167 |       168 |       170 |       185 |     10000 |
|                    Δ                     |      -677 |      -680 |      -682 |      -684 |      -690 |      -723 |      -733 |         0 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        80 |         0 |

<p>
</details>

### Parse (2kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        45 |        47 |        50 |        53 |        56 |        62 |        78 |     10000 |
|                 jaybird                  |         9 |        10 |        11 |        12 |        13 |        14 |        36 |     10000 |
|                    Δ                     |       -36 |       -37 |       -39 |       -41 |       -43 |       -48 |       -42 |         0 |
|              Improvement %               |        80 |        79 |        78 |        77 |        77 |        77 |        54 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        49 |        52 |        56 |        58 |        64 |        83 |     10000 |
|                 jaybird                  |        11 |        12 |        13 |        14 |        15 |        17 |        32 |     10000 |
|                    Δ                     |       -36 |       -37 |       -39 |       -42 |       -43 |       -47 |       -51 |         0 |
|              Improvement %               |        77 |        76 |        75 |        75 |        74 |        73 |        61 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        22 |        21 |        20 |        19 |        18 |        16 |        13 |     10000 |
|                 jaybird                  |       107 |        98 |        93 |        85 |        78 |        71 |        28 |     10000 |
|                    Δ                     |        85 |        77 |        73 |        66 |        60 |        55 |        15 |         0 |
|              Improvement %               |       386 |       367 |       365 |       347 |       333 |       344 |       115 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        53 |        60 |        67 |        74 |        78 |        81 |        81 |     10000 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                    Δ                     |         0 |        -7 |       -14 |       -21 |       -25 |       -28 |       -28 |         0 |
|              Improvement %               |         0 |        12 |        21 |        28 |        32 |        35 |        35 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        86 |        86 |        86 |        86 |        86 |        86 |        88 |     10000 |
|                 jaybird                  |        32 |        32 |        32 |        32 |        32 |        32 |        32 |     10000 |
|                    Δ                     |       -54 |       -54 |       -54 |       -54 |       -54 |       -54 |       -56 |         0 |
|              Improvement %               |        63 |        63 |        63 |        63 |        63 |        63 |        64 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       864 |       869 |       871 |       874 |       880 |       917 |       930 |     10000 |
|                 jaybird                  |       171 |       171 |       171 |       171 |       173 |       175 |       194 |     10000 |
|                    Δ                     |      -693 |      -698 |      -700 |      -703 |      -707 |      -742 |      -736 |         0 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        79 |         0 |

<p>
</details>

### Parse (2mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        59 |        62 |        62 |        63 |        64 |        65 |        65 |        17 |
|                 jaybird                  |         9 |         9 |        10 |        10 |        11 |        11 |        11 |       100 |
|                    Δ                     |       -50 |       -53 |       -52 |       -53 |       -53 |       -54 |       -54 |        83 |
|              Improvement %               |        85 |        85 |        84 |        84 |        83 |        83 |        83 |        83 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        59 |        62 |        62 |        63 |        64 |        65 |        65 |        17 |
|                 jaybird                  |         9 |         9 |        10 |        10 |        11 |        11 |        11 |       100 |
|                    Δ                     |       -50 |       -53 |       -52 |       -53 |       -53 |       -54 |       -54 |        83 |
|              Improvement %               |        85 |        85 |        84 |        84 |        83 |        83 |        83 |        83 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        17 |        16 |        16 |        16 |        16 |        15 |        15 |        17 |
|                 jaybird                  |       108 |       106 |       100 |        97 |        94 |        91 |        91 |       100 |
|                    Δ                     |        91 |        90 |        84 |        81 |        78 |        76 |        76 |        83 |
|              Improvement %               |       535 |       562 |       525 |       506 |       488 |       507 |       507 |        83 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        68 |        84 |        99 |       114 |       125 |       129 |       129 |        17 |
|                 jaybird                  |        59 |        71 |        71 |        71 |        71 |        71 |        71 |       100 |
|                    Δ                     |        -9 |       -13 |       -28 |       -43 |       -54 |       -58 |       -58 |        83 |
|              Improvement %               |        13 |        15 |        28 |        38 |        43 |        45 |        45 |        83 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       104 |       104 |       104 |       104 |       104 |       104 |       104 |        17 |
|                 jaybird                  |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       100 |
|                    Δ                     |       -75 |       -75 |       -75 |       -75 |       -75 |       -75 |       -75 |        83 |
|              Improvement %               |        72 |        72 |        72 |        72 |        72 |        72 |        72 |        83 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1069 |      1070 |      1070 |      1070 |      1070 |      1070 |      1070 |        17 |
|                 jaybird                  |       130 |       131 |       131 |       131 |       131 |       132 |       138 |       100 |
|                    Δ                     |      -939 |      -939 |      -939 |      -939 |      -939 |      -938 |      -932 |        83 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        87 |        83 |

<p>
</details>

### Parse (2mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        61 |        61 |        64 |        64 |        66 |        66 |        66 |        16 |
|                 jaybird                  |        10 |        10 |        10 |        11 |        11 |        11 |        11 |        97 |
|                    Δ                     |       -51 |       -51 |       -54 |       -53 |       -55 |       -55 |       -55 |        81 |
|              Improvement %               |        84 |        84 |        84 |        83 |        83 |        83 |        83 |        81 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        61 |        61 |        64 |        64 |        66 |        66 |        66 |        16 |
|                 jaybird                  |        10 |        10 |        10 |        11 |        11 |        11 |        11 |        97 |
|                    Δ                     |       -51 |       -51 |       -54 |       -53 |       -55 |       -55 |       -55 |        81 |
|              Improvement %               |        84 |        84 |        84 |        83 |        83 |        83 |        83 |        81 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        16 |        16 |        16 |        16 |        15 |        15 |        15 |        16 |
|                 jaybird                  |       103 |       101 |        97 |        93 |        91 |        89 |        89 |        97 |
|                    Δ                     |        87 |        85 |        81 |        77 |        76 |        74 |        74 |        81 |
|              Improvement %               |       544 |       531 |       506 |       481 |       507 |       493 |       493 |        81 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        68 |        79 |        95 |       109 |       121 |       125 |       125 |        16 |
|                 jaybird                  |        60 |        72 |        72 |        72 |        72 |        72 |        72 |        97 |
|                    Δ                     |        -8 |        -7 |       -23 |       -37 |       -49 |       -53 |       -53 |        81 |
|              Improvement %               |        12 |         9 |        24 |        34 |        40 |        42 |        42 |        81 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       104 |       104 |       104 |       104 |       104 |       104 |       104 |        16 |
|                 jaybird                  |        29 |        29 |        29 |        29 |        29 |        29 |        29 |        97 |
|                    Δ                     |       -75 |       -75 |       -75 |       -75 |       -75 |       -75 |       -75 |        81 |
|              Improvement %               |        72 |        72 |        72 |        72 |        72 |        72 |        72 |        81 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1078 |      1080 |      1080 |      1081 |      1081 |      1081 |      1081 |        16 |
|                 jaybird                  |       139 |       139 |       139 |       139 |       139 |       146 |       146 |        97 |
|                    Δ                     |      -939 |      -941 |      -941 |      -942 |      -942 |      -935 |      -935 |        81 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        86 |        86 |        81 |

<p>
</details>

### Parse (500kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        14 |        14 |        14 |        15 |        15 |        16 |        16 |        69 |
|                 jaybird                  |         2 |         2 |         2 |         2 |         2 |         3 |         3 |       437 |
|                    Δ                     |       -12 |       -12 |       -12 |       -13 |       -13 |       -13 |       -13 |       368 |
|              Improvement %               |        86 |        86 |        86 |        87 |        87 |        81 |        81 |       368 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        14 |        14 |        15 |        15 |        15 |        16 |        16 |        69 |
|                 jaybird                  |         2 |         2 |         2 |         2 |         2 |         3 |         3 |       437 |
|                    Δ                     |       -12 |       -12 |       -13 |       -13 |       -13 |       -13 |       -13 |       368 |
|              Improvement %               |        86 |        86 |        87 |        87 |        87 |        81 |        81 |       368 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        73 |        71 |        69 |        66 |        65 |        63 |        63 |        69 |
|                 jaybird                  |       484 |       470 |       459 |       427 |       415 |       397 |       374 |       437 |
|                    Δ                     |       411 |       399 |       390 |       361 |       350 |       334 |       311 |       368 |
|              Improvement %               |       563 |       562 |       565 |       547 |       538 |       530 |       494 |       368 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        56 |        72 |        87 |       101 |       111 |       116 |       116 |        69 |
|                 jaybird                  |        55 |        57 |        57 |        57 |        57 |        57 |        57 |       437 |
|                    Δ                     |        -1 |       -15 |       -30 |       -44 |       -54 |       -59 |       -59 |       368 |
|              Improvement %               |         2 |        21 |        34 |        44 |        49 |        51 |        51 |       368 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        24 |        24 |        24 |        24 |        24 |        24 |        24 |        69 |
|                 jaybird                  |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       437 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       368 |
|              Improvement %               |        71 |        71 |        71 |        71 |        71 |        71 |        71 |       368 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       252 |       253 |       253 |       253 |       253 |       260 |       260 |        69 |
|                 jaybird                  |        31 |        31 |        31 |        31 |        31 |        32 |        32 |       437 |
|                    Δ                     |      -221 |      -222 |      -222 |      -222 |      -222 |      -228 |      -228 |       368 |
|              Improvement %               |        88 |        88 |        88 |        88 |        88 |        88 |        88 |       368 |

<p>
</details>

### Parse (500kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        14 |        14 |        14 |        15 |        15 |        16 |        16 |        69 |
|                 jaybird                  |         2 |         2 |         2 |         2 |         3 |         3 |         3 |       413 |
|                    Δ                     |       -12 |       -12 |       -12 |       -13 |       -12 |       -13 |       -13 |       344 |
|              Improvement %               |        86 |        86 |        86 |        87 |        80 |        81 |        81 |       344 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        14 |        14 |        14 |        15 |        15 |        16 |        16 |        69 |
|                 jaybird                  |         2 |         2 |         2 |         2 |         3 |         3 |         3 |       413 |
|                    Δ                     |       -12 |       -12 |       -12 |       -13 |       -12 |       -13 |       -13 |       344 |
|              Improvement %               |        86 |        86 |        86 |        87 |        80 |        81 |        81 |       344 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        73 |        72 |        70 |        67 |        65 |        61 |        61 |        69 |
|                 jaybird                  |       461 |       447 |       427 |       403 |       393 |       377 |       348 |       413 |
|                    Δ                     |       388 |       375 |       357 |       336 |       328 |       316 |       287 |       344 |
|              Improvement %               |       532 |       521 |       510 |       501 |       505 |       518 |       470 |       344 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        56 |        72 |        86 |       102 |       111 |       116 |       116 |        69 |
|                 jaybird                  |        55 |        57 |        58 |        58 |        58 |        58 |        58 |       413 |
|                    Δ                     |        -1 |       -15 |       -28 |       -44 |       -53 |       -58 |       -58 |       344 |
|              Improvement %               |         2 |        21 |        33 |        43 |        48 |        50 |        50 |       344 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        24 |        24 |        24 |        24 |        24 |        24 |        24 |        69 |
|                 jaybird                  |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       413 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       344 |
|              Improvement %               |        71 |        71 |        71 |        71 |        71 |        71 |        71 |       344 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       252 |       252 |       252 |       252 |       253 |       260 |       260 |        69 |
|                 jaybird                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       413 |
|                    Δ                     |      -219 |      -219 |      -219 |      -219 |      -220 |      -226 |      -226 |       344 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        87 |        87 |       344 |

<p>
</details>

### Parse (50kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1616 |      1655 |      1679 |      1833 |      1987 |      2210 |      2382 |       555 |
|                 jaybird                  |       249 |       257 |       265 |       288 |       294 |       306 |       346 |      3107 |
|                    Δ                     |     -1367 |     -1398 |     -1414 |     -1545 |     -1693 |     -1904 |     -2036 |      2552 |
|              Improvement %               |        85 |        84 |        84 |        84 |        85 |        86 |        85 |      2552 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1618 |      1658 |      1681 |      1835 |      1987 |      2212 |      2386 |       555 |
|                 jaybird                  |       250 |       259 |       267 |       290 |       297 |       307 |       350 |      3107 |
|                    Δ                     |     -1368 |     -1399 |     -1414 |     -1545 |     -1690 |     -1905 |     -2036 |      2552 |
|              Improvement %               |        85 |        84 |        84 |        84 |        85 |        86 |        85 |      2552 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       619 |       604 |       596 |       546 |       503 |       453 |       420 |       555 |
|                 jaybird                  |      4021 |      3895 |      3777 |      3479 |      3401 |      3267 |      2894 |      3107 |
|                    Δ                     |      3402 |      3291 |      3181 |      2933 |      2898 |      2814 |      2474 |      2552 |
|              Improvement %               |       550 |       545 |       534 |       537 |       576 |       621 |       589 |      2552 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        53 |        69 |        85 |       100 |       109 |       115 |       115 |       555 |
|                 jaybird                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      3107 |
|                    Δ                     |         0 |       -15 |       -31 |       -46 |       -55 |       -61 |       -61 |      2552 |
|              Improvement %               |         0 |        22 |        36 |        46 |        50 |        53 |        53 |      2552 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2673 |      2673 |      2673 |      2673 |      2673 |      2673 |      2674 |       555 |
|                 jaybird                  |       869 |       869 |       869 |       869 |       869 |       869 |       869 |      3107 |
|                    Δ                     |     -1804 |     -1804 |     -1804 |     -1804 |     -1804 |     -1804 |     -1805 |      2552 |
|              Improvement %               |        67 |        67 |        67 |        67 |        67 |        67 |        68 |      2552 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        36 |        36 |        36 |        36 |        36 |        38 |        38 |       555 |
|                 jaybird                  |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      3107 |
|                    Δ                     |       -31 |       -31 |       -31 |       -31 |       -31 |       -33 |       -33 |      2552 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        87 |        87 |      2552 |

<p>
</details>

### Parse (50kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1679 |      1724 |      1763 |      1919 |      1970 |      2175 |      2345 |       534 |
|                 jaybird                  |       257 |       265 |       272 |       295 |       304 |       322 |       345 |      3035 |
|                    Δ                     |     -1422 |     -1459 |     -1491 |     -1624 |     -1666 |     -1853 |     -2000 |      2501 |
|              Improvement %               |        85 |        85 |        85 |        85 |        85 |        85 |        85 |      2501 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1684 |      1726 |      1765 |      1921 |      1972 |      2179 |      2343 |       534 |
|                 jaybird                  |       258 |       268 |       274 |       297 |       306 |       324 |       348 |      3035 |
|                    Δ                     |     -1426 |     -1458 |     -1491 |     -1624 |     -1666 |     -1855 |     -1995 |      2501 |
|              Improvement %               |        85 |        84 |        84 |        85 |        84 |        85 |        85 |      2501 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       596 |       580 |       567 |       521 |       508 |       460 |       426 |       534 |
|                 jaybird                  |      3897 |      3769 |      3683 |      3397 |      3289 |      3113 |      2897 |      3035 |
|                    Δ                     |      3301 |      3189 |      3116 |      2876 |      2781 |      2653 |      2471 |      2501 |
|              Improvement %               |       554 |       550 |       550 |       552 |       547 |       577 |       580 |      2501 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        53 |        69 |        83 |        98 |       107 |       112 |       113 |       534 |
|                 jaybird                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      3035 |
|                    Δ                     |         0 |       -15 |       -29 |       -44 |       -53 |       -58 |       -59 |      2501 |
|              Improvement %               |         0 |        22 |        35 |        45 |        50 |        52 |        52 |      2501 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2673 |      2673 |      2673 |      2673 |      2673 |      2673 |      2674 |       534 |
|                 jaybird                  |       869 |       869 |       869 |       869 |       869 |       869 |       869 |      3035 |
|                    Δ                     |     -1804 |     -1804 |     -1804 |     -1804 |     -1804 |     -1804 |     -1805 |      2501 |
|              Improvement %               |        67 |        67 |        67 |        67 |        67 |        67 |        68 |      2501 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        37 |        37 |        37 |        37 |        37 |        39 |        39 |       534 |
|                 jaybird                  |         5 |         5 |         5 |         5 |         5 |         5 |         6 |      3035 |
|                    Δ                     |       -32 |       -32 |       -32 |       -32 |       -32 |       -34 |       -33 |      2501 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        87 |        85 |      2501 |

<p>
</details>

### Parse (50mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       384 |       384 |       387 |       388 |       388 |       388 |       388 |         3 |
|                 jaybird                  |        82 |        83 |        85 |        89 |        91 |        91 |        91 |        12 |
|                    Δ                     |      -302 |      -301 |      -302 |      -299 |      -297 |      -297 |      -297 |         9 |
|              Improvement %               |        79 |        78 |        78 |        77 |        77 |        77 |        77 |         9 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       384 |       384 |       387 |       388 |       388 |       388 |       388 |         3 |
|                 jaybird                  |        82 |        84 |        85 |        89 |        91 |        91 |        91 |        12 |
|                    Δ                     |      -302 |      -300 |      -302 |      -299 |      -297 |      -297 |      -297 |         9 |
|              Improvement %               |        79 |        78 |        78 |        77 |        77 |        77 |        77 |         9 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         3 |         3 |         3 |         3 |         3 |         3 |         3 |         3 |
|                 jaybird                  |        12 |        12 |        12 |        11 |        11 |        11 |        11 |        12 |
|                    Δ                     |         9 |         9 |         9 |         8 |         8 |         8 |         8 |         9 |
|              Improvement %               |       300 |       300 |       300 |       267 |       267 |       267 |       267 |         9 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       196 |       196 |       223 |       250 |       250 |       250 |       250 |         3 |
|                 jaybird                  |       225 |       225 |       225 |       225 |       226 |       227 |       227 |        12 |
|                    Δ                     |        29 |        29 |         2 |       -25 |       -24 |       -23 |       -23 |         9 |
|              Improvement %               |       -15 |       -15 |        -1 |        10 |        10 |         9 |         9 |         9 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       808 |       808 |       808 |       808 |       808 |       808 |       808 |         3 |
|                 jaybird                  |       315 |       315 |       315 |       315 |       315 |       315 |       315 |        12 |
|                    Δ                     |      -493 |      -493 |      -493 |      -493 |      -493 |      -493 |      -493 |         9 |
|              Improvement %               |        61 |        61 |        61 |        61 |        61 |        61 |        61 |         9 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7849 |      7852 |      7858 |      7858 |      7858 |      7858 |      7858 |         3 |
|                 jaybird                  |      1581 |      1583 |      1594 |      1605 |      1611 |      1612 |      1612 |        12 |
|                    Δ                     |     -6268 |     -6269 |     -6264 |     -6253 |     -6247 |     -6246 |     -6246 |         9 |
|              Improvement %               |        80 |        80 |        80 |        80 |        79 |        79 |        79 |         9 |

<p>
</details>

### Parse (50mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       390 |       390 |       395 |       405 |       405 |       405 |       405 |         3 |
|                 jaybird                  |        88 |        89 |        91 |        93 |        93 |        93 |        93 |        11 |
|                    Δ                     |      -302 |      -301 |      -304 |      -312 |      -312 |      -312 |      -312 |         8 |
|              Improvement %               |        77 |        77 |        77 |        77 |        77 |        77 |        77 |         8 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       390 |       390 |       395 |       404 |       404 |       404 |       404 |         3 |
|                 jaybird                  |        88 |        89 |        91 |        93 |        93 |        93 |        93 |        11 |
|                    Δ                     |      -302 |      -301 |      -304 |      -311 |      -311 |      -311 |      -311 |         8 |
|              Improvement %               |        77 |        77 |        77 |        77 |        77 |        77 |        77 |         8 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         3 |         3 |         3 |         2 |         2 |         2 |         2 |         3 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        11 |
|                    Δ                     |         8 |         8 |         8 |         9 |         9 |         9 |         9 |         8 |
|              Improvement %               |       267 |       267 |       267 |       450 |       450 |       450 |       450 |         8 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       196 |       196 |       223 |       250 |       250 |       250 |       250 |         3 |
|                 jaybird                  |       227 |       227 |       228 |       228 |       228 |       228 |       228 |        11 |
|                    Δ                     |        31 |        31 |         5 |       -22 |       -22 |       -22 |       -22 |         8 |
|              Improvement %               |       -16 |       -16 |        -2 |         9 |         9 |         9 |         9 |         8 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       808 |       808 |       808 |       808 |       808 |       808 |       808 |         3 |
|                 jaybird                  |       315 |       315 |       315 |       315 |       315 |       315 |       315 |        11 |
|                    Δ                     |      -493 |      -493 |      -493 |      -493 |      -493 |      -493 |      -493 |         8 |
|              Improvement %               |        61 |        61 |        61 |        61 |        61 |        61 |        61 |         8 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7856 |      7856 |      7869 |      7882 |      7882 |      7882 |      7882 |         3 |
|                 jaybird                  |      1673 |      1675 |      1675 |      1679 |      1682 |      1685 |      1685 |        11 |
|                    Δ                     |     -6183 |     -6181 |     -6194 |     -6203 |     -6200 |     -6197 |     -6197 |         8 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        79 |         8 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        36 |        37 |        38 |        39 |        40 |        40 |        40 |        27 |
|                 jaybird                  |         7 |         7 |         8 |         8 |         8 |         9 |         9 |       128 |
|                    Δ                     |       -29 |       -30 |       -30 |       -31 |       -32 |       -31 |       -31 |       101 |
|              Improvement %               |        81 |        81 |        79 |        79 |        80 |        78 |        78 |       101 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        36 |        37 |        38 |        39 |        40 |        40 |        40 |        27 |
|                 jaybird                  |         7 |         7 |         8 |         8 |         8 |         9 |         9 |       128 |
|                    Δ                     |       -29 |       -30 |       -30 |       -31 |       -32 |       -31 |       -31 |       101 |
|              Improvement %               |        81 |        81 |        79 |        79 |        80 |        78 |        78 |       101 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        28 |        27 |        27 |        26 |        25 |        25 |        25 |        27 |
|                 jaybird                  |       137 |       135 |       131 |       124 |       120 |       112 |       110 |       128 |
|                    Δ                     |       109 |       108 |       104 |        98 |        95 |        87 |        85 |       101 |
|              Improvement %               |       389 |       400 |       385 |       377 |       380 |       348 |       340 |       101 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        67 |        84 |       103 |       122 |       133 |       138 |       138 |        27 |
|                 jaybird                  |        61 |        71 |        71 |        71 |        71 |        71 |        71 |       128 |
|                    Δ                     |        -6 |       -13 |       -32 |       -51 |       -62 |       -67 |       -67 |       101 |
|              Improvement %               |         9 |        15 |        31 |        42 |        47 |        49 |        49 |       101 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        81 |        81 |        81 |        81 |        81 |        81 |        81 |        27 |
|                 jaybird                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |       128 |
|                    Δ                     |       -50 |       -50 |       -50 |       -50 |       -50 |       -50 |       -50 |       101 |
|              Improvement %               |        62 |        62 |        62 |        62 |        62 |        62 |        62 |       101 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       777 |       778 |       778 |       779 |       780 |       780 |       780 |        27 |
|                 jaybird                  |       155 |       155 |       155 |       155 |       157 |       162 |       165 |       128 |
|                    Δ                     |      -622 |      -623 |      -623 |      -624 |      -623 |      -618 |      -615 |       101 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        79 |        79 |       101 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        41 |        42 |        42 |        43 |        44 |        45 |        45 |        24 |
|                 jaybird                  |         7 |         7 |         8 |         8 |         8 |         9 |         9 |       128 |
|                    Δ                     |       -34 |       -35 |       -34 |       -35 |       -36 |       -36 |       -36 |       104 |
|              Improvement %               |        83 |        83 |        81 |        81 |        82 |        80 |        80 |       104 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        41 |        42 |        42 |        43 |        44 |        45 |        45 |        24 |
|                 jaybird                  |         7 |         7 |         8 |         8 |         8 |         9 |         9 |       128 |
|                    Δ                     |       -34 |       -35 |       -34 |       -35 |       -36 |       -36 |       -36 |       104 |
|              Improvement %               |        83 |        83 |        81 |        81 |        82 |        80 |        80 |       104 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        24 |        24 |        23 |        23 |        22 |        22 |        24 |
|                 jaybird                  |       136 |       134 |       131 |       124 |       120 |       117 |       117 |       128 |
|                    Δ                     |       111 |       110 |       107 |       101 |        97 |        95 |        95 |       104 |
|              Improvement %               |       444 |       458 |       446 |       439 |       422 |       432 |       432 |       104 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        66 |        79 |       111 |       127 |       140 |       146 |       146 |        24 |
|                 jaybird                  |        61 |        72 |        72 |        72 |        72 |        72 |        72 |       128 |
|                    Δ                     |        -5 |        -7 |       -39 |       -55 |       -68 |       -74 |       -74 |       104 |
|              Improvement %               |         8 |         9 |        35 |        43 |        49 |        51 |        51 |       104 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        81 |        81 |        81 |        81 |        81 |        81 |        81 |        24 |
|                 jaybird                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |       128 |
|                    Δ                     |       -50 |       -50 |       -50 |       -50 |       -50 |       -50 |       -50 |       104 |
|              Improvement %               |        62 |        62 |        62 |        62 |        62 |        62 |        62 |       104 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       850 |       852 |       854 |       856 |       856 |       857 |       857 |        24 |
|                 jaybird                  |       159 |       160 |       160 |       160 |       160 |       164 |       168 |       128 |
|                    Δ                     |      -691 |      -692 |      -694 |      -696 |      -696 |      -693 |      -689 |       104 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        81 |        80 |       104 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1760 |      1806 |      1834 |      2036 |      2107 |      2159 |      2286 |       513 |
|                 jaybird                  |       100 |       103 |       105 |       115 |       119 |       124 |       163 |      6585 |
|                    Δ                     |     -1660 |     -1703 |     -1729 |     -1921 |     -1988 |     -2035 |     -2123 |      6072 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        93 |      6072 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1761 |      1808 |      1837 |      2028 |      2111 |      2161 |      2285 |       513 |
|                 jaybird                  |       102 |       105 |       108 |       117 |       121 |       126 |       167 |      6585 |
|                    Δ                     |     -1659 |     -1703 |     -1729 |     -1911 |     -1990 |     -2035 |     -2118 |      6072 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        93 |      6072 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       568 |       554 |       545 |       491 |       475 |       464 |       437 |       513 |
|                 jaybird                  |     10034 |      9743 |      9487 |      8719 |      8423 |      8075 |      6148 |      6585 |
|                    Δ                     |      9466 |      9189 |      8942 |      8228 |      7948 |      7611 |      5711 |      6072 |
|              Improvement %               |      1667 |      1659 |      1641 |      1676 |      1673 |      1640 |      1307 |      6072 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        53 |        64 |        74 |        84 |        89 |        93 |        93 |       513 |
|                 jaybird                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      6585 |
|                    Δ                     |         0 |       -10 |       -20 |       -30 |       -35 |       -39 |       -39 |      6072 |
|              Improvement %               |         0 |        16 |        27 |        36 |        39 |        42 |        42 |      6072 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       513 |
|                 jaybird                  |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      6585 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      6072 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      6072 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        44 |        44 |        44 |        44 |        44 |        47 |        47 |       513 |
|                 jaybird                  |         2 |         2 |         2 |         2 |         2 |         2 |         3 |      6585 |
|                    Δ                     |       -42 |       -42 |       -42 |       -42 |       -42 |       -45 |       -44 |      6072 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        96 |        94 |      6072 |

<p>
</details>

### Parse (micro) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      3959 |      4295 |      4543 |      5127 |      5503 |      6795 |     21667 |     10000 |
|                 jaybird                  |      1833 |      2000 |      2083 |      2417 |      2585 |      3501 |     17625 |     10000 |
|                    Δ                     |     -2126 |     -2295 |     -2460 |     -2710 |     -2918 |     -3294 |     -4042 |         0 |
|              Improvement %               |        54 |        53 |        54 |        53 |        53 |        48 |        19 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5624 |      6251 |      6503 |      7335 |      7835 |      9671 |     27626 |     10000 |
|                 jaybird                  |      3458 |      3877 |      4043 |      4583 |      4919 |      6335 |     19125 |     10000 |
|                    Δ                     |     -2166 |     -2374 |     -2460 |     -2752 |     -2916 |     -3336 |     -8501 |         0 |
|              Improvement %               |        39 |        38 |        38 |        38 |        37 |        34 |        31 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       253 |       233 |       220 |       195 |       182 |       146 |        46 |     10000 |
|                 jaybird                  |       546 |       500 |       480 |       414 |       387 |       286 |        57 |     10000 |
|                    Δ                     |       293 |       267 |       260 |       219 |       205 |       140 |        11 |         0 |
|              Improvement %               |       116 |       115 |       118 |       112 |       113 |        96 |        24 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        53 |        53 |        54 |        54 |        54 |        54 |        54 |     10000 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                    Δ                     |         0 |         0 |        -1 |        -1 |        -1 |        -1 |        -1 |         0 |
|              Improvement %               |         0 |         0 |         2 |         2 |         2 |         2 |         2 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         8 |         8 |         8 |         8 |         8 |         8 |        11 |     10000 |
|                 jaybird                  |         5 |         5 |         5 |         5 |         5 |         5 |         5 |     10000 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -6 |         0 |
|              Improvement %               |        38 |        38 |        38 |        38 |        38 |        38 |        55 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        53 |        53 |        54 |        54 |        55 |        57 |        73 |     10000 |
|                 jaybird                  |        20 |        20 |        20 |        20 |        20 |        22 |        33 |     10000 |
|                    Δ                     |       -33 |       -33 |       -34 |       -34 |       -35 |       -35 |       -40 |         0 |
|              Improvement %               |        62 |        62 |        63 |        63 |        64 |        61 |        55 |         0 |

<p>
</details>

### Parse (micro-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4041 |      4459 |      4667 |      5295 |      5667 |      7083 |     22750 |     10000 |
|                 jaybird                  |      1833 |      2000 |      2085 |      2459 |      2709 |      3501 |     18291 |     10000 |
|                    Δ                     |     -2208 |     -2459 |     -2582 |     -2836 |     -2958 |     -3582 |     -4459 |         0 |
|              Improvement %               |        55 |        55 |        55 |        54 |        52 |        51 |        20 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5751 |      6375 |      6667 |      7543 |      7959 |     10007 |     22124 |     10000 |
|                 jaybird                  |      3457 |      3917 |      4127 |      4711 |      5083 |      6459 |     16376 |     10000 |
|                    Δ                     |     -2294 |     -2458 |     -2540 |     -2832 |     -2876 |     -3548 |     -5748 |         0 |
|              Improvement %               |        40 |        39 |        38 |        38 |        36 |        35 |        26 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       247 |       224 |       214 |       189 |       177 |       141 |        44 |     10000 |
|                 jaybird                  |       546 |       500 |       480 |       407 |       369 |       286 |        55 |     10000 |
|                    Δ                     |       299 |       276 |       266 |       218 |       192 |       145 |        11 |         0 |
|              Improvement %               |       121 |       123 |       124 |       115 |       108 |       103 |        25 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        53 |        53 |        54 |        54 |        54 |        54 |        54 |     10000 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                    Δ                     |         0 |         0 |        -1 |        -1 |        -1 |        -1 |        -1 |         0 |
|              Improvement %               |         0 |         0 |         2 |         2 |         2 |         2 |         2 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         8 |         8 |         8 |         8 |         8 |         8 |        11 |     10000 |
|                 jaybird                  |         5 |         5 |         5 |         5 |         5 |         5 |         5 |     10000 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -6 |         0 |
|              Improvement %               |        38 |        38 |        38 |        38 |        38 |        38 |        55 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        55 |        55 |        56 |        56 |        57 |        60 |        82 |     10000 |
|                 jaybird                  |        20 |        20 |        20 |        20 |        20 |        23 |        38 |     10000 |
|                    Δ                     |       -35 |       -35 |       -36 |       -36 |       -37 |       -37 |       -44 |         0 |
|              Improvement %               |        64 |        64 |        64 |        64 |        65 |        62 |        54 |         0 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1285 |      1318 |      1352 |      1490 |      1516 |      1572 |      1901 |       690 |
|                 jaybird                  |        64 |        66 |        67 |        73 |        77 |        86 |       121 |      8903 |
|                    Δ                     |     -1221 |     -1252 |     -1285 |     -1417 |     -1439 |     -1486 |     -1780 |      8213 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        94 |      8213 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1286 |      1321 |      1354 |      1492 |      1518 |      1565 |      1908 |       690 |
|                 jaybird                  |        66 |        68 |        69 |        75 |        79 |        87 |       125 |      8903 |
|                    Δ                     |     -1220 |     -1253 |     -1285 |     -1417 |     -1439 |     -1478 |     -1783 |      8213 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        93 |      8213 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       778 |       759 |       739 |       671 |       660 |       636 |       526 |       690 |
|                 jaybird                  |     15676 |     15215 |     14919 |     13767 |     13047 |     11695 |      8276 |      8903 |
|                    Δ                     |     14898 |     14456 |     14180 |     13096 |     12387 |     11059 |      7750 |      8213 |
|              Improvement %               |      1915 |      1905 |      1919 |      1952 |      1877 |      1739 |      1473 |      8213 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        53 |        70 |        87 |       102 |       112 |       118 |       118 |       690 |
|                 jaybird                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      8903 |
|                    Δ                     |         0 |       -16 |       -33 |       -48 |       -58 |       -64 |       -64 |      8213 |
|              Improvement %               |         0 |        23 |        38 |        47 |        52 |        54 |        54 |      8213 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2971 |      2971 |      2971 |      2971 |      2971 |      2971 |      2973 |       690 |
|                 jaybird                  |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      8903 |
|                    Δ                     |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2963 |      8213 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      8213 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        29 |        29 |        29 |        29 |        29 |        31 |        31 |       690 |
|                 jaybird                  |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      8903 |
|                    Δ                     |       -27 |       -27 |       -27 |       -27 |       -27 |       -29 |       -29 |      8213 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |      8213 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       625 |       656 |       689 |       731 |       753 |       834 |       896 |      1331 |
|                 jaybird                  |        98 |       103 |       107 |       115 |       120 |       142 |       233 |      6281 |
|                    Δ                     |      -527 |      -553 |      -582 |      -616 |      -633 |      -692 |      -663 |      4950 |
|              Improvement %               |        84 |        84 |        84 |        84 |        84 |        83 |        74 |      4950 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       627 |       658 |       691 |       733 |       755 |       836 |       898 |      1331 |
|                 jaybird                  |       100 |       105 |       110 |       117 |       122 |       144 |       231 |      6281 |
|                    Δ                     |      -527 |      -553 |      -581 |      -616 |      -633 |      -692 |      -667 |      4950 |
|              Improvement %               |        84 |        84 |        84 |        84 |        84 |        83 |        74 |      4950 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1599 |      1525 |      1453 |      1369 |      1328 |      1200 |      1115 |      1331 |
|                 jaybird                  |     10230 |      9671 |      9311 |      8719 |      8351 |      7031 |      4286 |      6281 |
|                    Δ                     |      8631 |      8146 |      7858 |      7350 |      7023 |      5831 |      3171 |      4950 |
|              Improvement %               |       540 |       534 |       541 |       537 |       529 |       486 |       284 |      4950 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        53 |        66 |        80 |        93 |       101 |       106 |       106 |      1331 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |      6281 |
|                    Δ                     |         0 |       -13 |       -27 |       -40 |       -48 |       -53 |       -53 |      4950 |
|              Improvement %               |         0 |        20 |        34 |        43 |        48 |        50 |        50 |      4950 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5760 |      5763 |      5763 |      5763 |      5763 |      5763 |      5763 |      1331 |
|                 jaybird                  |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      6281 |
|                    Δ                     |     -5711 |     -5714 |     -5714 |     -5714 |     -5714 |     -5714 |     -5714 |      4950 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      4950 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      1331 |
|                 jaybird                  |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      6281 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      4950 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        86 |        86 |      4950 |

<p>
</details>

