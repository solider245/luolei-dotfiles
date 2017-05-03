<?php

require_once('workflows.php');
$w = new Workflows();
$query = '{query}';
if (strpos($query, '://') === false) {
    $query = 'http://' . $query;
}
$host = parse_url($query);

$domain = $host['host'];
$ip = gethostbyname($domain);

$w->result('lookdomainip', $ip,'IP地址是:'. $ip, '搜索域名:'. $domain, 'icon.png', 'yes');
echo $w->toxml();


 ?>