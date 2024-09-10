<?php
include("modules/includes/bdd_init.php");
include("modules/admin/geoplugin.class.php");
$geoplugin->locate();
if (!in_array(
    $geoplugin->countryCode,
    array("FR", "GP", "MQ", "GF", "RE", "PM", "YT", "BL", "MF", "WF", "PF", "NC", "TF", "MC", "BE", "CH", "CA")
)) {
    $datetime = date("Y-m-d H:i:s");
    $ipInsert = ip2long($geoplugin->ip);
    $infoInsert = $bdd->prepare('INSERT INTO forbidden_visitor_info(IP, country_code, country_name, region, region_name, region_code, city, accuracy_radius, date_time)
    VALUES(:IP, :country_code, :country_name, :region, :region_name, :region_code, :city, :accuracy_radius, :date_time)');
    $infoInsert->execute(array(
        'IP' => $ipInsert,
        'country_code' => $geoplugin->countryCode,
        'country_name' => $geoplugin->countryName,
        'region' => $geoplugin->region,
        'region_name' => $geoplugin->regionName,
        'region_code' => $geoplugin->regionCode,
        'city' => $geoplugin->city,
        'accuracy_radius' => $geoplugin->locationAccuracyRadius,
        'date_time' => $datetime
    ));
    http_response_code(404);
    die('Error 404: Not Found');
} else {
    $datetime = date("Y-m-d H:i:s");
    $ipInsert = ip2long($geoplugin->ip);
    $infoInsert = $bdd->prepare('INSERT INTO authorized_visitor_info(IP, country_code, country_name, region, region_name, region_code, city, accuracy_radius, date_time)
    VALUES(:IP, :country_code, :country_name, :region, :region_name, :region_code, :city, :accuracy_radius, :date_time)');
    $infoInsert->execute(array(
        'IP' => $ipInsert,
        'country_code' => $geoplugin->countryCode,
        'country_name' => $geoplugin->countryName,
        'region' => $geoplugin->region,
        'region_name' => $geoplugin->regionName,
        'region_code' => $geoplugin->regionCode,
        'city' => $geoplugin->city,
        'accuracy_radius' => $geoplugin->locationAccuracyRadius,
        'date_time' => $datetime
    ));
}
