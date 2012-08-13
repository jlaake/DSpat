print.DSpat.version <- function()
{ library(help=DSpat)$info[[1]] -> version
	version <- version[pmatch("Version",version)]
	um <- strsplit(version," ")[[1]]
	version <- um[nchar(um)>0][2]
	hello <- paste("This is DSpat ",version,"\n",sep="")
	packageStartupMessage(hello)
}

.First.lib<-function(library,pkgname)
{
	print.DSpat.version()
}


.onAttach <- function(...) {
	print.DSpat.version()
}



