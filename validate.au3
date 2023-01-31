$xmlfile=InputBox("xml", "put the name of a xml file")

$xml= ObjCreate("MSXML2.DOMDocument.6.0")
With $xml
	.setProperty ("ProhibitDTD",False)
	.async = False
	.validateOnParse = True
	.resolveExternals = True
	.Load ($xmlfile)
EndWith
if $xml.parseError.reason="" Then
	msgbox(48, "success!", "XML document validated successfully!")
	EndIf
msgbox (16, "Error", $xml.parseError.reason)