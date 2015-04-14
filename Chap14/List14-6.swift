import Darwin
var fp = fopen("output.dat", "w")       // 書き出しモードでオープン
let ss = [ "戸塚", "平塚", "由比ケ浜" ]
var buffer = [Int8](65...71)        // ASCIIコードの'A'〜'G'
buffer.append(0)                // C文字列の末尾の '\0'
fputs("\(ss)\n", fp)
fputs(buffer, fp)
fputs(" end.\n", fp)
fclose(fp)
