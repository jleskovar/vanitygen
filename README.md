
Fork of vanitygen with the following changes:

* Will output to stdout search progress every second, rather than overwriting the current line
* Will output progress and results in json, to make it machine-parsable:

$ ./vanitygen 1Love
	{"difficulty":4476342,"prefixes":1}
	{"rate":"38927","total":"1024","prob":0.00022873,"nextprob":0.50,"nextdeadline":79.681}
	{"rate":"86927","total":"2048","prob":0.00045741,"nextprob":0.50,"nextdeadline":35.670}
	{"rate":"152349","total":"3072","prob":0.00068604,"nextprob":0.50,"nextdeadline":20.346}
	{"rate":"225732","total":"4096","prob":0.00091461,"nextprob":0.50,"nextdeadline":13.727}
	{"rate":"266608","total":"5120","prob":0.00114314,"nextprob":0.50,"nextdeadline":11.619}
	{"rate":"325242","total":"6144","prob":0.00137161,"nextprob":0.50,"nextdeadline":9.521}
	{"rate":"368363","total":"7168","prob":0.00160003,"nextprob":0.50,"nextdeadline":8.404}
	{"rate":"418554","total":"8192","prob":0.00182839,"nextprob":0.50,"nextdeadline":7.393}
	{"rate":"1091769","total":"230144","prob":0.05011410,"nextprob":0.50,"nextdeadline":2.631}
	{"rate":"1515373","total":"1323008","prob":0.25588197,"nextprob":0.50,"nextdeadline":1.174}
	{"rate":"1535993","total":"2839296","prob":0.46968777,"nextprob":0.50,"nextdeadline":0.172}
	{"rate":"1540873","total":"4376576","prob":0.62382943,"nextprob":0.75,"nextdeadline":1.187}
	{"rate":"1547523","total":"5918464","prob":0.73344250,"nextprob":0.75,"nextdeadline":0.185}
	{"rate":"1548625","total":"7467008","prob":0.81139585,"nextprob":0.90,"nextdeadline":1.834}
	{"rate":"1549240","total":"9016320","prob":0.86657504,"nextprob":0.90,"nextdeadline":0.833}
	{"pattern":"1Love","address":"1LoveYouJaYw9dRZfaiujug7A4Nt9Zfa66","privkey":"5JNKTNvTy2TVBfdkdB5WqqUWBmrBQHQTfrQPjXrAcgQ23oq3DQ5"}
