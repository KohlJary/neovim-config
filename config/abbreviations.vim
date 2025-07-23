" Correcting layer-tap fuckups
inoreabbrev zi =
iab ;t true
iab ;f false
iab ;n null
iab ;u undefined

function CSAbbreviations()
iab <buffer> ;b bool
iab <buffer> (;b (bool)<Del>
iab <buffer> ;c char
iab <buffer> (;c (char)<Del>
iab <buffer> ;d decimal
iab <buffer> (;d (decimal)<Del>
iab <buffer> ;f float
iab <buffer> (;f (float)<Del>
iab <buffer> ;g Guid
iab <buffer> (;g (Guid)<Del>
iab <buffer> ;i int
iab <buffer> (;i (int)<Del>
iab <buffer> ;s string
iab <buffer> (;s (string)<Del>
iab <buffer> ;v var
iab <buffer> (;v (var)<Del>
inoreabbrev <buffer> @i if ()<cr>{}<left><cr><cr><up><up><up><end><left>
inoreabbrev <buffer> @e else<cr>{}<left><cr><cr><up><end>
inoreabbrev <buffer> @E else if ()<cr>{}<left><cr><cr><up><up><up><end><left>
endfunction

augroup Abbreviations
    autocmd!
    autocmd FileType cs call CSAbbreviations()
augroup END
