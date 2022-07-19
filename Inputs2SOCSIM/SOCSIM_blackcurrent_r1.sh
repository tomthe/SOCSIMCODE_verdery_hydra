#!/bin/bash
#script to run the ./socsim.exe for black divorce=current , run 1, adjusting fert rates on the fly
./socsim.exe ./supFiles/run_blackcurrent_r1.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1901
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1901.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1902
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1902.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1903
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1903.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1904
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1904.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1905
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1905.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1906
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1906.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1907
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1907.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1908
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1908.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1909
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1909.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1910
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1910.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1911
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1911.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1912
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1912.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1913
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1913.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1914
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1914.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1915
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1915.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1916
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1916.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1917
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1917.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1918
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1918.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1919
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1919.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1920
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1920.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1921
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1921.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1922
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1922.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1923
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1923.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1924
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1924.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1925
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1925.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1926
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1926.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1927
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1927.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1928
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1928.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1929
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1929.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1930
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1930.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1931
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1931.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1932
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1932.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1933
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1933.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1934
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1934.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1935
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1935.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1936
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1936.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1937
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1937.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1938
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1938.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1939
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1939.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1940
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1940.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1941
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1941.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1942
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1942.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1943
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1943.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1944
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1944.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1945
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1945.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1946
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1946.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1947
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1947.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1948
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1948.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1949
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1949.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1950
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1950.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1951
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1951.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1952
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1952.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1953
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1953.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1954
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1954.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1955
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1955.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1956
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1956.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1957
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1957.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1958
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1958.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1959
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1959.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1960
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1960.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1961
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1961.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1962
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1962.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1963
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1963.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1964
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1964.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1965
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1965.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1966
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1966.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1967
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1967.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1968
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1968.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1969
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1969.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1970
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1970.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1971
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1971.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1972
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1972.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1973
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1973.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1974
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1974.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1975
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1975.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1976
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1976.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1977
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1977.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1978
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1978.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1979
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1979.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1980
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1980.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1981
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1981.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1982
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1982.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1983
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1983.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1984
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1984.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1985
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1985.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1986
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1986.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1987
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1987.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1988
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1988.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1989
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1989.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1990
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1990.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1991
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1991.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1992
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1992.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1993
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1993.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1994
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1994.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1995
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1995.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1996
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1996.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1997
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1997.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1998
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1998.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 1999
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y1999.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2000
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2000.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2001
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2001.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2002
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2002.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2003
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2003.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2004
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2004.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2005
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2005.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2006
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2006.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2007
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2007.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2008
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2008.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2009
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2009.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2010
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2010.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2011
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2011.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2012
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2012.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2013
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2013.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2014
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2014.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2015
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2015.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2016
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2016.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2017
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2017.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2018
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2018.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2019
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2019.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2020
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2020.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2021
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2021.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2022
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2022.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2023
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2023.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2024
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2024.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2025
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2025.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2026
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2026.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2027
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2027.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2028
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2028.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2029
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2029.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2030
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2030.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2031
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2031.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2032
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2032.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2033
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2033.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2034
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2034.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2035
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2035.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2036
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2036.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2037
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2037.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2038
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2038.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2039
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2039.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2040
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2040.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2041
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2041.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2042
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2042.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2043
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2043.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2044
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2044.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2045
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2045.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2046
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2046.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2047
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2047.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2048
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2048.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2049
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2049.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2050
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2050.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2051
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2051.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2052
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2052.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2053
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2053.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2054
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2054.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2055
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2055.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2056
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2056.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2057
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2057.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2058
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2058.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2059
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2059.sup 123456
sleep 10
wait $!
"C:\Program Files\Stata17\StataMP-64.exe" -e -b do ./Programs/RescaleRates 1 black current 1 2060
sleep 10
wait $!
./socsim.exe ./supFiles/run_blackcurrent_r1_y2060.sup 123456
sleep 10
