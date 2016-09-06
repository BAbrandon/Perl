s:\\:\\verb\+\\\+:g
s:%:\\%:g
s:\^:\\\^:g
s:--:-\\hspace\{.01cm\}-:g
/[      ]*\-/ s:$: \\\\:
/[      ]*+/  s:$: \\\\:
1 s:^:\\begin\{center\}\{\\bf\n:
1 s:^:\\begin\{document\}\n:
1 s:^:\\documentstyle\[11pt\]\{article\}\n:
$ s:$:\n\\end\{description\}:
$ s:$:\n\\end\{document\}\n:
2 s:^:\\begin\{description\}\n:
2 s:^:\\end\{center\}\{\\bf\n:
/[A-Z][A-Z]*/ s:^:\\item\[:
/[A-Z][A-Z]*/ s:$:\] \\hfill \\\\:
