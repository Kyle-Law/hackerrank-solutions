def palindromeIndex(s)
    return -1 if s == s.reverse
    for i in 0..s.length-1
        s_dup = s.dup
        s_dup[i] = ''
        return i if s_dup == s_dup.reverse
    end
end

#Key takeaway: runtime error. The worst case scenario happens when the string is long and the index to be removed is the last index
#To improve: 2 ways to improve. Firstly, improve on line 4 & 5, find an efficient method to clone s. Secondly, improve on the iteration, now it's O(n) algorithms.

#Failed case: aprrmdeykhorwsalkysinbvylgcgiaokrifgolfytvsqqufctxkjbijnonvapmkivrokewlasfskcxowyyiakrpyilyxbmgygxjkuwmpegcheqgdsogdjverkgpnuymbyxovublchqjojptegahpyojlucypdnqclfxijlkqevhoncsuedmftwsoytgchygsheeqrojwlrnbvivanjihibvjvelderylxderrnqffehdnfebqmlypjilovrspqgpvkipabvigflvkryegkdwuoklmcedumuqyfhyhfjpkvnwnmbuahtwxeikjopednxcsfdcmnrwlfvbuaxwhrthyeriskovxoasvdvisnhgveisggppblwapqkkbbiyqismnqvhgdnejxwrfohgaeirvuewvmyoutcjkassfixphuhmmruovfhtaltxysnvophbpatwjrmspwhcqcqmjahjobhpvulmmtnevjchcqarphvglmvwpfgeiqtenfsdbghxplhtdknstjciyxfofmsnfmtutmxvugvmrfhwpwsmjuukuabaovpvijrevpcqxadqgmpxmikvfhgcijcyfrvpdntydyrcyxuhmkiyvuwbdfenoimtdkjgxgiefaigxdonpwmltmpwrvkheadhkpqlvypbyxhadxnswchroyojucsyevjonaajyrmarwcuwpquuamlyduvhpulogdcidojxbmpaonxhescehpfknbudxgthjwpplcnoofpdsnmyiofphkcunwaoguvptnhfpwtgdlmxyyxjqdyxqeuedwujrqalhjswhpgmbskdrimiooifsdlvdhiuakjhtehbtnnxgbbajpjagtfyatxdbiabsjlmosqkggiohjotcatiuckuvkaysaclknabgqloxudfgsbisvtpxemtomuhnwualubtmojmjmtqhvbbruqrygnpsiwghriupjpcyboknkdvgfyacrrexhtrptaxnjudukhvlxhcjkapryswqkbrs{-truncated-}
#Ans of failed case: 16722 76661 10035 57089 46674

# ![image](https://user-images.githubusercontent.com/55923773/78166897-1bd80800-7480-11ea-9282-48ccacf69956.png)