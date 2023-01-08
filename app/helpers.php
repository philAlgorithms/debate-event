<?php

/**
 * Writes a file and reads it
 * 
 * @param string $filename The intended name for the file or patrh to the old file
 * @param array $data The data to be written into the file
 */
function downloadFile(string $filename, array $data)
{
    // openfile for writing
    $f = fopen($filename, 'w');
    file_put_contents($filename, "");

    if($f === false)
    {
        die('Error opening file {$filename}');
    }

    fputcsv($f, array_keys($data[0]));
    foreach ($data as $k=>$datum)
    {
        fputcsv($f, $datum);
    }

    fclose($f);

    header('Content-Description: File Transfer');
    header('Content-Disposition: attachment; filename='.basename($filename));
    header('Expires: 0');
    header('Cache-Control: must-revalidate');
    header('Pragma: public');
    header('Content-Length: ' . filesize($filename));
    header("Content-Type: text/csv");
    readfile($filename);
}