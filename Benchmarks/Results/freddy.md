## Jaybird vs Freddy

### Parse (200kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       866 |       896 |       913 |       994 |      1022 |      1084 |      1123 |      1006 |
|                 jaybird                  |       741 |       773 |       804 |       875 |       911 |       999 |      1068 |      1140 |
|                    Δ                     |      -125 |      -123 |      -109 |      -119 |      -111 |       -85 |       -55 |       134 |
|              Improvement %               |        14 |        14 |        12 |        12 |        11 |         8 |         5 |       134 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       867 |       898 |       915 |       996 |      1024 |      1087 |      1120 |      1006 |
|                 jaybird                  |       743 |       776 |       805 |       878 |       914 |       994 |      1074 |      1140 |
|                    Δ                     |      -124 |      -122 |      -110 |      -118 |      -110 |       -93 |       -46 |       134 |
|              Improvement %               |        14 |        14 |        12 |        12 |        11 |         9 |         4 |       134 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1155 |      1116 |      1095 |      1006 |       979 |       922 |       891 |      1006 |
|                 jaybird                  |      1350 |      1293 |      1244 |      1143 |      1097 |      1002 |       936 |      1140 |
|                    Δ                     |       195 |       177 |       149 |       137 |       118 |        80 |        45 |       134 |
|              Improvement %               |        17 |        16 |        14 |        14 |        12 |         9 |         5 |       134 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        54 |        54 |        54 |        54 |        54 |        54 |        54 |      1006 |
|                 jaybird                  |        54 |        55 |        55 |        55 |        55 |        55 |        55 |      1140 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       134 |
|              Improvement %               |         0 |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |       134 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5298 |      5298 |      5298 |      5298 |      5298 |      5298 |      5298 |      1006 |
|                 jaybird                  |      2824 |      2824 |      2824 |      2824 |      2824 |      2824 |      2824 |      1140 |
|                    Δ                     |     -2474 |     -2474 |     -2474 |     -2474 |     -2474 |     -2474 |     -2474 |       134 |
|              Improvement %               |        47 |        47 |        47 |        47 |        47 |        47 |        47 |       134 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1006 |
|                 jaybird                  |        12 |        12 |        13 |        13 |        13 |        13 |        13 |      1140 |
|                    Δ                     |        -4 |        -4 |        -3 |        -3 |        -3 |        -3 |        -3 |       134 |
|              Improvement %               |        25 |        25 |        19 |        19 |        19 |        19 |        19 |       134 |

<p>
</details>

### Parse (200kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       924 |       951 |       974 |      1059 |      1087 |      1159 |      1216 |       948 |
|                 jaybird                  |       792 |       819 |       843 |       907 |       949 |      1058 |      1268 |      1089 |
|                    Δ                     |      -132 |      -132 |      -131 |      -152 |      -138 |      -101 |        52 |       141 |
|              Improvement %               |        14 |        14 |        13 |        14 |        13 |         9 |        -4 |       141 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       925 |       953 |       976 |      1060 |      1089 |      1162 |      1224 |       948 |
|                 jaybird                  |       794 |       821 |       845 |       910 |       952 |      1060 |      1275 |      1089 |
|                    Δ                     |      -131 |      -132 |      -131 |      -150 |      -137 |      -102 |        51 |       141 |
|              Improvement %               |        14 |        14 |        13 |        14 |        13 |         9 |        -4 |       141 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1083 |      1052 |      1027 |       945 |       920 |       863 |       822 |       948 |
|                 jaybird                  |      1263 |      1222 |      1187 |      1103 |      1054 |       946 |       789 |      1089 |
|                    Δ                     |       180 |       170 |       160 |       158 |       134 |        83 |       -33 |       141 |
|              Improvement %               |        17 |        16 |        16 |        17 |        15 |        10 |        -4 |       141 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        54 |        54 |        54 |        54 |        54 |        54 |        54 |       948 |
|                 jaybird                  |        54 |        55 |        55 |        55 |        55 |        55 |        55 |      1089 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       141 |
|              Improvement %               |         0 |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |       141 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5298 |      5298 |      5298 |      5298 |      5298 |      5298 |      5298 |       948 |
|                 jaybird                  |      2804 |      2804 |      2804 |      2804 |      2804 |      2804 |      2804 |      1089 |
|                    Δ                     |     -2494 |     -2494 |     -2494 |     -2494 |     -2494 |     -2494 |     -2494 |       141 |
|              Improvement %               |        47 |        47 |        47 |        47 |        47 |        47 |        47 |       141 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        18 |        18 |       948 |
|                 jaybird                  |        13 |        13 |        13 |        13 |        13 |        14 |        14 |      1089 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       141 |
|              Improvement %               |        24 |        24 |        24 |        24 |        24 |        22 |        22 |       141 |

<p>
</details>

### Parse (2kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        12 |        12 |        14 |        15 |        16 |        56 |     10000 |
|                 jaybird                  |         9 |        10 |        11 |        12 |        13 |        14 |        31 |     10000 |
|                    Δ                     |        -3 |        -2 |        -1 |        -2 |        -2 |        -2 |       -25 |         0 |
|              Improvement %               |        25 |        17 |         8 |        14 |        13 |        12 |        45 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        14 |        14 |        16 |        17 |        19 |        43 |     10000 |
|                 jaybird                  |        11 |        12 |        13 |        14 |        15 |        16 |        28 |     10000 |
|                    Δ                     |        -2 |        -2 |        -1 |        -2 |        -2 |        -3 |       -15 |         0 |
|              Improvement %               |        15 |        14 |         7 |        12 |        12 |        16 |        35 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        87 |        85 |        82 |        72 |        68 |        61 |        18 |     10000 |
|                 jaybird                  |       108 |        98 |        95 |        87 |        79 |        73 |        32 |     10000 |
|                    Δ                     |        21 |        13 |        13 |        15 |        11 |        12 |        14 |         0 |
|              Improvement %               |        24 |        15 |        16 |        21 |        16 |        20 |        78 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        50 |        50 |        50 |        50 |        50 |        50 |        50 |     10000 |
|                 jaybird                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |     10000 |
|                    Δ                     |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |         0 |
|              Improvement %               |        38 |        38 |        38 |        38 |        38 |        38 |        38 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       205 |       206 |       206 |       206 |       208 |       212 |       232 |     10000 |
|                 jaybird                  |       166 |       166 |       166 |       167 |       168 |       170 |       185 |     10000 |
|                    Δ                     |       -39 |       -40 |       -40 |       -39 |       -40 |       -42 |       -47 |         0 |
|              Improvement %               |        19 |        19 |        19 |        19 |        19 |        20 |        20 |         0 |

<p>
</details>

### Parse (2kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        12 |        13 |        14 |        15 |        17 |        35 |     10000 |
|                 jaybird                  |         9 |        10 |        11 |        12 |        13 |        14 |        36 |     10000 |
|                    Δ                     |        -3 |        -2 |        -2 |        -2 |        -2 |        -3 |         1 |         0 |
|              Improvement %               |        25 |        17 |        15 |        14 |        13 |        18 |        -3 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        14 |        14 |        15 |        16 |        17 |        20 |        32 |     10000 |
|                 jaybird                  |        11 |        12 |        13 |        14 |        15 |        17 |        32 |     10000 |
|                    Δ                     |        -3 |        -2 |        -2 |        -2 |        -2 |        -3 |         0 |         0 |
|              Improvement %               |        21 |        14 |        13 |        12 |        12 |        15 |         0 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        84 |        81 |        77 |        70 |        66 |        59 |        29 |     10000 |
|                 jaybird                  |       107 |        98 |        93 |        85 |        78 |        71 |        28 |     10000 |
|                    Δ                     |        23 |        17 |        16 |        15 |        12 |        12 |        -1 |         0 |
|              Improvement %               |        27 |        21 |        21 |        21 |        18 |        20 |        -3 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        50 |        50 |        50 |        50 |        50 |        50 |        50 |     10000 |
|                 jaybird                  |        32 |        32 |        32 |        32 |        32 |        32 |        32 |     10000 |
|                    Δ                     |       -18 |       -18 |       -18 |       -18 |       -18 |       -18 |       -18 |         0 |
|              Improvement %               |        36 |        36 |        36 |        36 |        36 |        36 |        36 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       214 |       214 |       214 |       214 |       216 |       220 |       236 |     10000 |
|                 jaybird                  |       171 |       171 |       171 |       171 |       173 |       175 |       194 |     10000 |
|                    Δ                     |       -43 |       -43 |       -43 |       -43 |       -43 |       -45 |       -42 |         0 |
|              Improvement %               |        20 |        20 |        20 |        20 |        20 |        20 |        18 |         0 |

<p>
</details>

### Parse (2mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        10 |        10 |        11 |        11 |        11 |        12 |        12 |        95 |
|                 jaybird                  |         9 |         9 |        10 |        10 |        11 |        11 |        11 |       100 |
|                    Δ                     |        -1 |        -1 |        -1 |        -1 |         0 |        -1 |        -1 |         5 |
|              Improvement %               |        10 |        10 |         9 |         9 |         0 |         8 |         8 |         5 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        10 |        10 |        11 |        11 |        11 |        12 |        12 |        95 |
|                 jaybird                  |         9 |         9 |        10 |        10 |        11 |        11 |        11 |       100 |
|                    Δ                     |        -1 |        -1 |        -1 |        -1 |         0 |        -1 |        -1 |         5 |
|              Improvement %               |        10 |        10 |         9 |         9 |         0 |         8 |         8 |         5 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       102 |       100 |        95 |        91 |        90 |        83 |        83 |        95 |
|                 jaybird                  |       108 |       106 |       100 |        97 |        94 |        91 |        91 |       100 |
|                    Δ                     |         6 |         6 |         5 |         6 |         4 |         8 |         8 |         5 |
|              Improvement %               |         6 |         6 |         5 |         7 |         4 |        10 |        10 |         5 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        59 |        61 |        61 |        61 |        61 |        61 |        61 |        95 |
|                 jaybird                  |        59 |        71 |        71 |        71 |        71 |        71 |        71 |       100 |
|                    Δ                     |         0 |        10 |        10 |        10 |        10 |        10 |        10 |         5 |
|              Improvement %               |         0 |       -16 |       -16 |       -16 |       -16 |       -16 |       -16 |         5 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        54 |        54 |        54 |        54 |        54 |        54 |        54 |        95 |
|                 jaybird                  |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       100 |
|                    Δ                     |       -25 |       -25 |       -25 |       -25 |       -25 |       -25 |       -25 |         5 |
|              Improvement %               |        46 |        46 |        46 |        46 |        46 |        46 |        46 |         5 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       165 |       165 |       165 |       165 |       165 |       169 |       169 |        95 |
|                 jaybird                  |       130 |       131 |       131 |       131 |       131 |       132 |       138 |       100 |
|                    Δ                     |       -35 |       -34 |       -34 |       -34 |       -34 |       -37 |       -31 |         5 |
|              Improvement %               |        21 |        21 |        21 |        21 |        21 |        22 |        18 |         5 |

<p>
</details>

### Parse (2mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        10 |        11 |        11 |        12 |        12 |        12 |        12 |        89 |
|                 jaybird                  |        10 |        10 |        10 |        11 |        11 |        11 |        11 |        97 |
|                    Δ                     |         0 |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |         8 |
|              Improvement %               |         0 |         9 |         9 |         8 |         8 |         8 |         8 |         8 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        10 |        11 |        11 |        12 |        12 |        12 |        12 |        89 |
|                 jaybird                  |        10 |        10 |        10 |        11 |        11 |        11 |        11 |        97 |
|                    Δ                     |         0 |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |         8 |
|              Improvement %               |         0 |         9 |         9 |         8 |         8 |         8 |         8 |         8 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        96 |        94 |        89 |        87 |        84 |        81 |        81 |        89 |
|                 jaybird                  |       103 |       101 |        97 |        93 |        91 |        89 |        89 |        97 |
|                    Δ                     |         7 |         7 |         8 |         6 |         7 |         8 |         8 |         8 |
|              Improvement %               |         7 |         7 |         9 |         7 |         8 |        10 |        10 |         8 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        59 |        61 |        61 |        61 |        61 |        61 |        61 |        89 |
|                 jaybird                  |        60 |        72 |        72 |        72 |        72 |        72 |        72 |        97 |
|                    Δ                     |         1 |        11 |        11 |        11 |        11 |        11 |        11 |         8 |
|              Improvement %               |        -2 |       -18 |       -18 |       -18 |       -18 |       -18 |       -18 |         8 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        54 |        54 |        54 |        54 |        54 |        54 |        54 |        89 |
|                 jaybird                  |        29 |        29 |        29 |        29 |        29 |        29 |        29 |        97 |
|                    Δ                     |       -25 |       -25 |       -25 |       -25 |       -25 |       -25 |       -25 |         8 |
|              Improvement %               |        46 |        46 |        46 |        46 |        46 |        46 |        46 |         8 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       178 |       179 |       179 |       179 |       179 |       182 |       182 |        89 |
|                 jaybird                  |       139 |       139 |       139 |       139 |       139 |       146 |       146 |        97 |
|                    Δ                     |       -39 |       -40 |       -40 |       -40 |       -40 |       -36 |       -36 |         8 |
|              Improvement %               |        22 |        22 |        22 |        22 |        22 |        20 |        20 |         8 |

<p>
</details>

### Parse (500kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2262 |      2312 |      2396 |      2580 |      2626 |      2763 |      2875 |       400 |
|                 jaybird                  |      2067 |      2130 |      2181 |      2345 |      2413 |      2523 |      2677 |       437 |
|                    Δ                     |      -195 |      -182 |      -215 |      -235 |      -213 |      -240 |      -198 |        37 |
|              Improvement %               |         9 |         8 |         9 |         9 |         8 |         9 |         7 |        37 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2262 |      2316 |      2404 |      2580 |      2628 |      2761 |      2876 |       400 |
|                 jaybird                  |      2069 |      2132 |      2183 |      2347 |      2419 |      2517 |      2683 |       437 |
|                    Δ                     |      -193 |      -184 |      -221 |      -233 |      -209 |      -244 |      -193 |        37 |
|              Improvement %               |         9 |         8 |         9 |         9 |         8 |         9 |         7 |        37 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       442 |       433 |       417 |       388 |       381 |       362 |       348 |       400 |
|                 jaybird                  |       484 |       470 |       459 |       427 |       415 |       397 |       374 |       437 |
|                    Δ                     |        42 |        37 |        42 |        39 |        34 |        35 |        26 |        37 |
|              Improvement %               |        10 |         9 |        10 |        10 |         9 |        10 |         7 |        37 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        55 |        56 |        56 |        56 |        56 |        56 |        56 |       400 |
|                 jaybird                  |        55 |        57 |        57 |        57 |        57 |        57 |        57 |       437 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |        37 |
|              Improvement %               |         0 |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        37 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |       400 |
|                 jaybird                  |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       437 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        37 |
|              Improvement %               |        46 |        46 |        46 |        46 |        46 |        46 |        46 |        37 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        39 |        39 |        39 |        39 |        39 |        40 |        41 |       400 |
|                 jaybird                  |        31 |        31 |        31 |        31 |        31 |        32 |        32 |       437 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |        37 |
|              Improvement %               |        21 |        21 |        21 |        21 |        21 |        20 |        22 |        37 |

<p>
</details>

### Parse (500kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2432 |      2484 |      2525 |      2750 |      2808 |      2943 |      3027 |       376 |
|                 jaybird                  |      2167 |      2241 |      2341 |      2482 |      2546 |      2656 |      2871 |       413 |
|                    Δ                     |      -265 |      -243 |      -184 |      -268 |      -262 |      -287 |      -156 |        37 |
|              Improvement %               |        11 |        10 |         7 |        10 |         9 |        10 |         5 |        37 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2438 |      2488 |      2527 |      2748 |      2810 |      2941 |      3030 |       376 |
|                 jaybird                  |      2170 |      2241 |      2347 |      2486 |      2548 |      2656 |      2869 |       413 |
|                    Δ                     |      -268 |      -247 |      -180 |      -262 |      -262 |      -285 |      -161 |        37 |
|              Improvement %               |        11 |        10 |         7 |        10 |         9 |        10 |         5 |        37 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       411 |       403 |       396 |       363 |       356 |       340 |       330 |       376 |
|                 jaybird                  |       461 |       447 |       427 |       403 |       393 |       377 |       348 |       413 |
|                    Δ                     |        50 |        44 |        31 |        40 |        37 |        37 |        18 |        37 |
|              Improvement %               |        12 |        11 |         8 |        11 |        10 |        11 |         5 |        37 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        55 |        56 |        56 |        56 |        56 |        56 |        56 |       376 |
|                 jaybird                  |        55 |        57 |        58 |        58 |        58 |        58 |        58 |       413 |
|                    Δ                     |         0 |         1 |         2 |         2 |         2 |         2 |         2 |        37 |
|              Improvement %               |         0 |        -2 |        -4 |        -4 |        -4 |        -4 |        -4 |        37 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |       376 |
|                 jaybird                  |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       413 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        37 |
|              Improvement %               |        46 |        46 |        46 |        46 |        46 |        46 |        46 |        37 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        43 |        43 |        43 |        43 |        43 |        44 |        44 |       376 |
|                 jaybird                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       413 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |        37 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |        37 |

<p>
</details>

### Parse (50kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       302 |       310 |       317 |       346 |       354 |       373 |       410 |      2647 |
|                 jaybird                  |       249 |       257 |       265 |       288 |       294 |       306 |       346 |      3107 |
|                    Δ                     |       -53 |       -53 |       -52 |       -58 |       -60 |       -67 |       -64 |       460 |
|              Improvement %               |        18 |        17 |        16 |        17 |        17 |        18 |        16 |       460 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       304 |       312 |       319 |       347 |       356 |       374 |       407 |      2647 |
|                 jaybird                  |       250 |       259 |       267 |       290 |       297 |       307 |       350 |      3107 |
|                    Δ                     |       -54 |       -53 |       -52 |       -57 |       -59 |       -67 |       -57 |       460 |
|              Improvement %               |        18 |        17 |        16 |        16 |        17 |        18 |        14 |       460 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3306 |      3225 |      3151 |      2893 |      2825 |      2681 |      2442 |      2647 |
|                 jaybird                  |      4021 |      3895 |      3777 |      3479 |      3401 |      3267 |      2894 |      3107 |
|                    Δ                     |       715 |       670 |       626 |       586 |       576 |       586 |       452 |       460 |
|              Improvement %               |        22 |        21 |        20 |        20 |        20 |        22 |        19 |       460 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      2647 |
|                 jaybird                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      3107 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       460 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       460 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1666 |      1666 |      1666 |      1666 |      1666 |      1666 |      1666 |      2647 |
|                 jaybird                  |       869 |       869 |       869 |       869 |       869 |       869 |       869 |      3107 |
|                    Δ                     |      -797 |      -797 |      -797 |      -797 |      -797 |      -797 |      -797 |       460 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       460 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      6221 |      6226 |      6230 |      6234 |      6238 |      6382 |      6419 |      2647 |
|                 jaybird                  |      5103 |      5108 |      5112 |      5116 |      5120 |      5218 |      5303 |      3107 |
|                    Δ                     |     -1118 |     -1118 |     -1118 |     -1118 |     -1118 |     -1164 |     -1116 |       460 |
|              Improvement %               |        18 |        18 |        18 |        18 |        18 |        18 |        17 |       460 |

<p>
</details>

### Parse (50kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       315 |       324 |       330 |       359 |       370 |       386 |       420 |      2558 |
|                 jaybird                  |       257 |       265 |       272 |       295 |       304 |       322 |       345 |      3035 |
|                    Δ                     |       -58 |       -59 |       -58 |       -64 |       -66 |       -64 |       -75 |       477 |
|              Improvement %               |        18 |        18 |        18 |        18 |        18 |        17 |        18 |       477 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       317 |       326 |       333 |       360 |       371 |       387 |       417 |      2558 |
|                 jaybird                  |       258 |       268 |       274 |       297 |       306 |       324 |       348 |      3035 |
|                    Δ                     |       -59 |       -58 |       -59 |       -63 |       -65 |       -63 |       -69 |       477 |
|              Improvement %               |        19 |        18 |        18 |        18 |        18 |        16 |        17 |       477 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3175 |      3085 |      3027 |      2787 |      2707 |      2591 |      2380 |      2558 |
|                 jaybird                  |      3897 |      3769 |      3683 |      3397 |      3289 |      3113 |      2897 |      3035 |
|                    Δ                     |       722 |       684 |       656 |       610 |       582 |       522 |       517 |       477 |
|              Improvement %               |        23 |        22 |        22 |        22 |        21 |        20 |        22 |       477 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      2558 |
|                 jaybird                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      3035 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       477 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       477 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1666 |      1666 |      1666 |      1666 |      1666 |      1666 |      1666 |      2558 |
|                 jaybird                  |       869 |       869 |       869 |       869 |       869 |       869 |       869 |      3035 |
|                    Δ                     |      -797 |      -797 |      -797 |      -797 |      -797 |      -797 |      -797 |       477 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       477 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      6653 |      6660 |      6664 |      6668 |      6672 |      6816 |      6844 |      2558 |
|                 jaybird                  |      5359 |      5366 |      5370 |      5374 |      5374 |      5476 |      5561 |      3035 |
|                    Δ                     |     -1294 |     -1294 |     -1294 |     -1294 |     -1298 |     -1340 |     -1283 |       477 |
|              Improvement %               |        19 |        19 |        19 |        19 |        19 |        20 |        19 |       477 |

<p>
</details>

### Parse (50mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        85 |        89 |        90 |        90 |        92 |        92 |        92 |        12 |
|                 jaybird                  |        82 |        83 |        85 |        89 |        91 |        91 |        91 |        12 |
|                    Δ                     |        -3 |        -6 |        -5 |        -1 |        -1 |        -1 |        -1 |         0 |
|              Improvement %               |         4 |         7 |         6 |         1 |         1 |         1 |         1 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        85 |        89 |        90 |        91 |        92 |        92 |        92 |        12 |
|                 jaybird                  |        82 |        84 |        85 |        89 |        91 |        91 |        91 |        12 |
|                    Δ                     |        -3 |        -5 |        -5 |        -2 |        -1 |        -1 |        -1 |         0 |
|              Improvement %               |         4 |         6 |         6 |         2 |         1 |         1 |         1 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        11 |        11 |        11 |        11 |        11 |        11 |        12 |
|                 jaybird                  |        12 |        12 |        12 |        11 |        11 |        11 |        11 |        12 |
|                    Δ                     |         0 |         1 |         1 |         0 |         0 |         0 |         0 |         0 |
|              Improvement %               |         0 |         9 |         9 |         0 |         0 |         0 |         0 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       132 |       147 |       147 |       147 |       149 |       149 |       149 |        12 |
|                 jaybird                  |       225 |       225 |       225 |       225 |       226 |       227 |       227 |        12 |
|                    Δ                     |        93 |        78 |        78 |        78 |        77 |        78 |        78 |         0 |
|              Improvement %               |       -70 |       -53 |       -53 |       -53 |       -52 |       -52 |       -52 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       341 |       341 |       341 |       341 |       341 |       341 |       341 |        12 |
|                 jaybird                  |       315 |       315 |       315 |       315 |       315 |       315 |       315 |        12 |
|                    Δ                     |       -26 |       -26 |       -26 |       -26 |       -26 |       -26 |       -26 |         0 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         8 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1658 |      1663 |      1666 |      1668 |      1672 |      1676 |      1676 |        12 |
|                 jaybird                  |      1581 |      1583 |      1594 |      1605 |      1611 |      1612 |      1612 |        12 |
|                    Δ                     |       -77 |       -80 |       -72 |       -63 |       -61 |       -64 |       -64 |         0 |
|              Improvement %               |         5 |         5 |         4 |         4 |         4 |         4 |         4 |         0 |

<p>
</details>

### Parse (50mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        90 |        92 |        93 |        95 |        96 |        98 |        98 |        11 |
|                 jaybird                  |        88 |        89 |        91 |        93 |        93 |        93 |        93 |        11 |
|                    Δ                     |        -2 |        -3 |        -2 |        -2 |        -3 |        -5 |        -5 |         0 |
|              Improvement %               |         2 |         3 |         2 |         2 |         3 |         5 |         5 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        90 |        92 |        93 |        95 |        96 |        98 |        98 |        11 |
|                 jaybird                  |        88 |        89 |        91 |        93 |        93 |        93 |        93 |        11 |
|                    Δ                     |        -2 |        -3 |        -2 |        -2 |        -3 |        -5 |        -5 |         0 |
|              Improvement %               |         2 |         3 |         2 |         2 |         3 |         5 |         5 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        10 |        10 |        10 |        10 |        11 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        11 |
|                    Δ                     |         0 |         0 |         0 |         1 |         1 |         1 |         1 |         0 |
|              Improvement %               |         0 |         0 |         0 |        10 |        10 |        10 |        10 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       128 |       147 |       147 |       147 |       147 |       147 |       147 |        11 |
|                 jaybird                  |       227 |       227 |       228 |       228 |       228 |       228 |       228 |        11 |
|                    Δ                     |        99 |        80 |        81 |        81 |        81 |        81 |        81 |         0 |
|              Improvement %               |       -77 |       -54 |       -55 |       -55 |       -55 |       -55 |       -55 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       341 |       341 |       341 |       341 |       341 |       341 |       341 |        11 |
|                 jaybird                  |       315 |       315 |       315 |       315 |       315 |       315 |       315 |        11 |
|                    Δ                     |       -26 |       -26 |       -26 |       -26 |       -26 |       -26 |       -26 |         0 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         8 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1745 |      1748 |      1750 |      1754 |      1756 |      1759 |      1759 |        11 |
|                 jaybird                  |      1673 |      1675 |      1675 |      1679 |      1682 |      1685 |      1685 |        11 |
|                    Δ                     |       -72 |       -73 |       -75 |       -75 |       -74 |       -74 |       -74 |         0 |
|              Improvement %               |         4 |         4 |         4 |         4 |         4 |         4 |         4 |         0 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      7827 |      7995 |      8196 |      8700 |      8905 |      9290 |      9440 |       120 |
|                 jaybird                  |      7273 |      7426 |      7651 |      8061 |      8344 |      8970 |      9083 |       128 |
|                    Δ                     |      -554 |      -569 |      -545 |      -639 |      -561 |      -320 |      -357 |         8 |
|              Improvement %               |         7 |         7 |         7 |         7 |         6 |         3 |         4 |         8 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      7835 |      7991 |      8188 |      8708 |      8913 |      9290 |      9445 |       120 |
|                 jaybird                  |      7280 |      7430 |      7651 |      8057 |      8348 |      8978 |      9084 |       128 |
|                    Δ                     |      -555 |      -561 |      -537 |      -651 |      -565 |      -312 |      -361 |         8 |
|              Improvement %               |         7 |         7 |         7 |         7 |         6 |         3 |         4 |         8 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       128 |       125 |       122 |       115 |       112 |       108 |       106 |       120 |
|                 jaybird                  |       137 |       135 |       131 |       124 |       120 |       112 |       110 |       128 |
|                    Δ                     |         9 |        10 |         9 |         9 |         8 |         4 |         4 |         8 |
|              Improvement %               |         7 |         8 |         7 |         8 |         7 |         4 |         4 |         8 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        60 |        70 |        70 |        70 |        70 |        70 |        70 |       120 |
|                 jaybird                  |        61 |        71 |        71 |        71 |        71 |        71 |        71 |       128 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |         8 |
|              Improvement %               |        -2 |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |         8 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        34 |        34 |        34 |        34 |        34 |        34 |        34 |       120 |
|                 jaybird                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |       128 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |         8 |
|              Improvement %               |         9 |         9 |         9 |         9 |         9 |         9 |         9 |         8 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       162 |       162 |       162 |       162 |       162 |       167 |       169 |       120 |
|                 jaybird                  |       155 |       155 |       155 |       155 |       157 |       162 |       165 |       128 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -5 |        -5 |        -4 |         8 |
|              Improvement %               |         4 |         4 |         4 |         4 |         3 |         3 |         2 |         8 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8352 |      8536 |      8847 |      9331 |      9568 |      9830 |      9840 |       112 |
|                 jaybird                  |      7356 |      7475 |      7610 |      8016 |      8360 |      8569 |      8580 |       128 |
|                    Δ                     |      -996 |     -1061 |     -1237 |     -1315 |     -1208 |     -1261 |     -1260 |        16 |
|              Improvement %               |        12 |        12 |        14 |        14 |        13 |        13 |        13 |        16 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8358 |      8536 |      8839 |      9339 |      9568 |      9830 |      9848 |       112 |
|                 jaybird                  |      7366 |      7475 |      7610 |      8020 |      8368 |      8569 |      8588 |       128 |
|                    Δ                     |      -992 |     -1061 |     -1229 |     -1319 |     -1200 |     -1261 |     -1260 |        16 |
|              Improvement %               |        12 |        12 |        14 |        14 |        13 |        13 |        13 |        16 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       120 |       117 |       113 |       107 |       105 |       102 |       102 |       112 |
|                 jaybird                  |       136 |       134 |       131 |       124 |       120 |       117 |       117 |       128 |
|                    Δ                     |        16 |        17 |        18 |        17 |        15 |        15 |        15 |        16 |
|              Improvement %               |        13 |        15 |        16 |        16 |        14 |        15 |        15 |        16 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        60 |        65 |        65 |        65 |        65 |        65 |        65 |       112 |
|                 jaybird                  |        61 |        72 |        72 |        72 |        72 |        72 |        72 |       128 |
|                    Δ                     |         1 |         7 |         7 |         7 |         7 |         7 |         7 |        16 |
|              Improvement %               |        -2 |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |        16 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        39 |        39 |        39 |        39 |        39 |        39 |        39 |       112 |
|                 jaybird                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |       128 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        16 |
|              Improvement %               |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        16 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       178 |       178 |       178 |       178 |       178 |       182 |       185 |       112 |
|                 jaybird                  |       159 |       160 |       160 |       160 |       160 |       164 |       168 |       128 |
|                    Δ                     |       -19 |       -18 |       -18 |       -18 |       -18 |       -18 |       -17 |        16 |
|              Improvement %               |        11 |        10 |        10 |        10 |        10 |        10 |         9 |        16 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       105 |       107 |       111 |       120 |       125 |       130 |       150 |      6193 |
|                 jaybird                  |       100 |       103 |       105 |       115 |       119 |       124 |       163 |      6585 |
|                    Δ                     |        -5 |        -4 |        -6 |        -5 |        -6 |        -6 |        13 |       392 |
|              Improvement %               |         5 |         4 |         5 |         4 |         5 |         5 |        -9 |       392 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       106 |       109 |       113 |       122 |       126 |       132 |       153 |      6193 |
|                 jaybird                  |       102 |       105 |       108 |       117 |       121 |       126 |       167 |      6585 |
|                    Δ                     |        -4 |        -4 |        -5 |        -5 |        -5 |        -6 |        14 |       392 |
|              Improvement %               |         4 |         4 |         4 |         4 |         4 |         5 |        -9 |       392 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      9550 |      9343 |      9015 |      8327 |      8035 |      7687 |      6656 |      6193 |
|                 jaybird                  |     10034 |      9743 |      9487 |      8719 |      8423 |      8075 |      6148 |      6585 |
|                    Δ                     |       484 |       400 |       472 |       392 |       388 |       388 |      -508 |       392 |
|              Improvement %               |         5 |         4 |         5 |         5 |         5 |         5 |        -8 |       392 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      6193 |
|                 jaybird                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      6585 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       392 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       392 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      6193 |
|                 jaybird                  |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      6585 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       392 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       392 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2658 |      2658 |      2660 |      2662 |      2664 |      2683 |      2780 |      6193 |
|                 jaybird                  |      2476 |      2476 |      2480 |      2480 |      2482 |      2492 |      2693 |      6585 |
|                    Δ                     |      -182 |      -182 |      -180 |      -182 |      -182 |      -191 |       -87 |       392 |
|              Improvement %               |         7 |         7 |         7 |         7 |         7 |         7 |         3 |       392 |

<p>
</details>

### Parse (micro) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1708 |      1875 |      1958 |      2251 |      2417 |      3335 |     20125 |     10000 |
|                 jaybird                  |      1833 |      2000 |      2083 |      2417 |      2585 |      3501 |     17625 |     10000 |
|                    Δ                     |       125 |       125 |       125 |       166 |       168 |       166 |     -2500 |         0 |
|              Improvement %               |        -7 |        -7 |        -6 |        -7 |        -7 |        -5 |        12 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3208 |      3459 |      3543 |      4167 |      4419 |      5875 |     19792 |     10000 |
|                 jaybird                  |      3458 |      3877 |      4043 |      4583 |      4919 |      6335 |     19125 |     10000 |
|                    Δ                     |       250 |       418 |       500 |       416 |       500 |       460 |      -667 |         0 |
|              Improvement %               |        -8 |       -12 |       -14 |       -10 |       -11 |        -8 |         3 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       585 |       534 |       511 |       445 |       414 |       300 |        50 |     10000 |
|                 jaybird                  |       546 |       500 |       480 |       414 |       387 |       286 |        57 |     10000 |
|                    Δ                     |       -39 |       -34 |       -31 |       -31 |       -27 |       -14 |         7 |         0 |
|              Improvement %               |        -7 |        -6 |        -6 |        -7 |        -7 |        -5 |        14 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     10000 |
|                 jaybird                  |         5 |         5 |         5 |         5 |         5 |         5 |         5 |     10000 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |         0 |
|              Improvement %               |       -25 |       -25 |       -25 |       -25 |       -25 |       -25 |       -25 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        18 |        18 |        18 |        18 |        20 |        29 |     10000 |
|                 jaybird                  |        20 |        20 |        20 |        20 |        20 |        22 |        33 |     10000 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         4 |         0 |
|              Improvement %               |       -11 |       -11 |       -11 |       -11 |       -11 |       -10 |       -14 |         0 |

<p>
</details>

### Parse (micro-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1750 |      1917 |      1958 |      2167 |      2417 |      3291 |     14500 |     10000 |
|                 jaybird                  |      1833 |      2000 |      2085 |      2459 |      2709 |      3501 |     18291 |     10000 |
|                    Δ                     |        83 |        83 |       127 |       292 |       292 |       210 |      3791 |         0 |
|              Improvement %               |        -5 |        -4 |        -6 |       -13 |       -12 |        -6 |       -26 |         0 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ns) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3250 |      3499 |      3543 |      3959 |      4375 |      5707 |     17792 |     10000 |
|                 jaybird                  |      3457 |      3917 |      4127 |      4711 |      5083 |      6459 |     16376 |     10000 |
|                    Δ                     |       207 |       418 |       584 |       752 |       708 |       752 |     -1416 |         0 |
|              Improvement %               |        -6 |       -12 |       -16 |       -19 |       -16 |       -13 |         8 |         0 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       571 |       522 |       511 |       462 |       414 |       304 |        69 |     10000 |
|                 jaybird                  |       546 |       500 |       480 |       407 |       369 |       286 |        55 |     10000 |
|                    Δ                     |       -25 |       -22 |       -31 |       -55 |       -45 |       -18 |       -14 |         0 |
|              Improvement %               |        -4 |        -4 |        -6 |       -12 |       -11 |        -6 |       -20 |         0 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |     10000 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |         0 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         4 |         4 |         4 |         4 |         4 |         4 |         4 |     10000 |
|                 jaybird                  |         5 |         5 |         5 |         5 |         5 |         5 |         5 |     10000 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |         0 |
|              Improvement %               |       -25 |       -25 |       -25 |       -25 |       -25 |       -25 |       -25 |         0 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        18 |        18 |        18 |        18 |        20 |        31 |     10000 |
|                 jaybird                  |        20 |        20 |        20 |        20 |        20 |        23 |        38 |     10000 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         3 |         7 |         0 |
|              Improvement %               |       -11 |       -11 |       -11 |       -11 |       -11 |       -15 |       -23 |         0 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        98 |       100 |       102 |       109 |       114 |       121 |       146 |      6627 |
|                 jaybird                  |        64 |        66 |        67 |        73 |        77 |        86 |       121 |      8903 |
|                    Δ                     |       -34 |       -34 |       -35 |       -36 |       -37 |       -35 |       -25 |      2276 |
|              Improvement %               |        35 |        34 |        34 |        33 |        32 |        29 |        17 |      2276 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        99 |       101 |       104 |       111 |       116 |       122 |       145 |      6627 |
|                 jaybird                  |        66 |        68 |        69 |        75 |        79 |        87 |       125 |      8903 |
|                    Δ                     |       -33 |       -33 |       -35 |       -36 |       -37 |       -35 |       -20 |      2276 |
|              Improvement %               |        33 |        33 |        34 |        32 |        32 |        29 |        14 |      2276 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     10256 |     10039 |      9839 |      9167 |      8783 |      8271 |      6847 |      6627 |
|                 jaybird                  |     15676 |     15215 |     14919 |     13767 |     13047 |     11695 |      8276 |      8903 |
|                    Δ                     |      5420 |      5176 |      5080 |      4600 |      4264 |      3424 |      1429 |      2276 |
|              Improvement %               |        53 |        52 |        52 |        50 |        49 |        41 |        21 |      2276 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      6627 |
|                 jaybird                  |        53 |        54 |        54 |        54 |        54 |        54 |        54 |      8903 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2276 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2276 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      6627 |
|                 jaybird                  |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      8903 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      2276 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      2276 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1798 |      1799 |      1801 |      1803 |      1804 |      1817 |      1869 |      6627 |
|                 jaybird                  |      1529 |      1530 |      1532 |      1532 |      1534 |      1543 |      1663 |      8903 |
|                    Δ                     |      -269 |      -269 |      -269 |      -271 |      -270 |      -274 |      -206 |      2276 |
|              Improvement %               |        15 |        15 |        15 |        15 |        15 |        15 |        11 |      2276 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       384 |       396 |       407 |       444 |       453 |       505 |       548 |      2123 |
|                 jaybird                  |        98 |       103 |       107 |       115 |       120 |       142 |       233 |      6281 |
|                    Δ                     |      -286 |      -293 |      -300 |      -329 |      -333 |      -363 |      -315 |      4158 |
|              Improvement %               |        74 |        74 |        74 |        74 |        74 |        72 |        57 |      4158 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       385 |       398 |       409 |       446 |       455 |       508 |       550 |      2123 |
|                 jaybird                  |       100 |       105 |       110 |       117 |       122 |       144 |       231 |      6281 |
|                    Δ                     |      -285 |      -293 |      -299 |      -329 |      -333 |      -364 |      -319 |      4158 |
|              Improvement %               |        74 |        74 |        73 |        74 |        73 |        72 |        58 |      4158 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2607 |      2529 |      2461 |      2253 |      2207 |      1980 |      1826 |      2123 |
|                 jaybird                  |     10230 |      9671 |      9311 |      8719 |      8351 |      7031 |      4286 |      6281 |
|                    Δ                     |      7623 |      7142 |      6850 |      6466 |      6144 |      5051 |      2460 |      4158 |
|              Improvement %               |       292 |       282 |       278 |       287 |       278 |       255 |       135 |      4158 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |      2123 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |      6281 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4158 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4158 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5701 |      5701 |      5701 |      5701 |      5701 |      5701 |      5701 |      2123 |
|                 jaybird                  |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      6281 |
|                    Δ                     |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |      4158 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      4158 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8224 |      8229 |      8237 |      8241 |      8245 |      8659 |      8696 |      2123 |
|                 jaybird                  |      1691 |      1692 |      1694 |      1696 |      1698 |      1709 |      1725 |      6281 |
|                    Δ                     |     -6533 |     -6537 |     -6543 |     -6545 |     -6547 |     -6950 |     -6971 |      4158 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        80 |        80 |      4158 |

<p>
</details>

