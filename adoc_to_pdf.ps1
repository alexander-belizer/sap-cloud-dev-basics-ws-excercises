param(
	[Parameter(Mandatory = $True, Position = 1)]
	[string]$adoc_file_name
)

# $pdf_stylesdir = "c:/_data/adocs/_themes/"
# $pdf_fontsdir = "c:/_data/adocs/_fonts/"
# $pdf_abs_style = "c:/_data/adocs/_themes/emineo-theme.yml"
# $pdf_rel_style = ".\..\..\..\..\_themes/emineo-theme.yml"
# $pdf_style = "emineo"

#asciidoctor-pdf $adoc_file_name -a pdf-stylesdir=$pdf_stylesdir -a pdf-style=$pdf_style -a pdf-fontsdir=$pdf_fontsdir
#asciidoctor-pdf $adoc_file_name -a  -a pdf-style=$pdf_abs_style

#ls $pdf_abs_style

# Make this relative?
#asciidoctor-pdf $adoc_file_name -a pdf-style=C:\_data\#sync\adocs\_themes\emineo-theme.yml
# asciidoctor-pdf $adoc_file_name -a pdf-style=C:\_data\adocs\_cfg\themes\emineo-theme.yml
asciidoctor-pdf $adoc_file_name -a pdf-style=..\cfg\themes\emineo-theme.yml
