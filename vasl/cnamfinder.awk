#***************************************************************************************#
#----------------------- EULA LICENSE AGREEMENT NOTICE ---------------------------------#
#1. This software uses EULA based software agreement that grants users rights to use for#
#any purpose, modify and redistribute creative works about this perl software.          #
#2. This software comes in "is-as" warranty, author "Haroon Awan" take no responsbility #
#what you do with by/this software. Your free to use this software as it is for any     #
#purpose that suites as long as it is not related to crime.                             #
#***************************************************************************************#

/^;/ || NF == 0 { next }

$4 == "CNAME"   { cn[$5] = (cn[$5] ? cn[$5] "," $1 : $1) }
$4 == "A"       { ip[$1] = (ip[$1] ? ip[$1] "," $5 : $5) }

END {
    for (i in ip) {
        if (cn[i])
            printf("%s (%s) = ", i, cn[i])
        else
            printf("%s = ", i)

        print ip[i]
    }
}
