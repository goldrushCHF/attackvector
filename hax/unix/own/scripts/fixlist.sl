$handle = openf("tmp/hosts.txt");
while $text (readln($handle)) {
	if ($text ismatch 'Host: (.*?)\s+.*?Ports: (.*?)') {
		($host, $open) = matched();
		if ("22/open" isin $open) {
			println($host);
		}
	}
}
closef($hosts);
