
##Rerequirement

* Ubuntu 14.04+
* git

##Start

1. download openjdk 8

git clone -b jdk8 https://github.com/dmlloyd/openjdk

2. build openjdk 8

bash ./startup.sh

3. create java class HelloHotSpot

``` HelloHotSpot.java
public class HelloHotSpot {
    public static void main(String []args) {
        System.out.println("Hello HotSpot");
    }
}
```

4. start hotspot

../../../jdk/bin/javac HelloHotSpot.java

cd build/linux-x86_64-normal-server-fastdebug/hotspot/linux_amd64_compiler2/fastdebug/

ALT_JAVA_HOME=../../../jdk

./hotspot  -gdb HelloHotSpot




##HotSpot code base

http://cloc.sourceforge.net v 1.60  T=32.92 s (128.6 files/s, 39208.1 lines/s)

   4669 text files.
   4519 unique files.
    408 files ignored.

-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
C++                            812          80690         120633         431429
Java                          2078          33010          76297         257950
C/C++ Header                  1051          35023          61731         137310
XML                             54            643            242          16066
C                               29           1736           1919           8961
XSLT                            11            653            239           4712
Assembly                         8            105             32           3154
Bourne Shell                    90            612           2300           2451
make                            20            560           1094           2358
HTML                             8            237              3           2063
D                                8            164            248           1685
Javascript                       3            103            192            698
Objective C                      1            112            121            611
SKILL                            3             75              0            531
DOS Batch                       41            175           1002            430
ASP.Net                          1             24              0            161
Ant                             13             27             88            107
DTD                              1              6             18             62
Teamcenter def                   1              0              0              7
-------------------------------------------------------------------------------
SUM:                          4233         153955         266159         870746
-------------------------------------------------------------------------------


##JDK code base

   22345 text files.
   21831 unique files.
    2173 files ignored.

http://cloc.sourceforge.net v 1.60  T=156.42 s (128.2 files/s, 35520.6 lines/s)
--------------------------------------------------------------------------------
Language                      files          blank        comment           code
--------------------------------------------------------------------------------
Java                          16462         429040        1508621        2314751
XML                             672            776           1895         392095
C                               910          69727          82096         360196
C/C++ Header                    752          19917          43739          83461
C++                             223          16243          19359          83161
HTML                            368           3953           6258          25363
Objective C                     101           5688           6434          21785
Bourne Shell                    375           4618          13117          17403
Javascript                       31            515           2298           3264
SKILL                             4             50              0           3059
XSLT                              9            137             58           2512
DTD                               6            718            312           2380
Ant                              28            582            820           1778
XSD                              13            100             84           1069
D                                14            358            812           1024
make                             13            194            397            736
awk                              21            108            196            367
ASP.Net                          22             40              0            284
Assembly                          1             34              0            228
Korn Shell                        5             68            145            228
Haskell                           1             35             45            195
CSS                               2             63             26            182
Bourne Again Shell                3             34             71            157
C#                                2             29             76             72
Ruby                              2             16             53             46
IDL                               2              1              0             34
JSP                               1              6              0             24
Perl                              1              2             24             13
C Shell                           3              0             71              6
DOS Batch                         1              3             30              2
--------------------------------------------------------------------------------
SUM:                          20048         553055        1687037        3315875
--------------------------------------------------------------------------------
