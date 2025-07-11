<?php

header('Access-Control-Allow-Origin: *');

// Ensure the upload directories exist
$videoDir = __DIR__ . '/videos/';
$audioDir = __DIR__ . '/whatsapp/';
$imageDir = __DIR__ . '/images/'; // New directory for images

if (!is_dir($videoDir)) {
    mkdir($videoDir, 0777, true);
}
if (!is_dir($audioDir)) {
    mkdir($audioDir, 0777, true);
}
if (!is_dir($imageDir)) { // Create images directory if it doesn't exist
    mkdir($imageDir, 0777, true);
}

if (empty($_FILES)) {
    $response = [
        'url' => false,
        'message' => 'No files were uploaded.'
    ];
    exit(json_encode($response));
}

$fileKey = isset($_FILES['video']) ? 'video' : (isset($_FILES['image']) ? 'image' : (isset($_FILES['audio']) ? 'audio' : null));
if (!$fileKey) {
    $response = [
        'success' => false,
        'file' => null,
        'message' => 'No valid file key provided.'
    ];
    exit(json_encode($response));
}

$input = $_FILES[$fileKey]['tmp_name'];
$extension = strtolower(pathinfo($_FILES[$fileKey]['name'], PATHINFO_EXTENSION));
$filename = time() . '.' . $extension;

if (in_array($extension, ['mp3', 'ogg'])) {
    $output = $audioDir . $filename;
    $url = "http://181.215.45.148/jester/whatsapp/" . $filename;
} elseif (in_array($extension, ['mp4', 'webm'])) {
    $output = $videoDir . $filename;
    $url = "http://181.215.45.148/jester/videos/" . $filename;
} elseif (in_array($extension, ['png', 'jpg', 'jpeg'])) { // Handle image file types
    $output = $imageDir . $filename;
    $url = "http://181.215.45.148/jester/images/" . $filename;
} else {
    $response = [
        'success' => false,
        'file' => null,
        'message' => 'Unsupported file type.'
    ];
    exit(json_encode($response));
}

if (move_uploaded_file($input, $output)) {
    $response = [
        'url' => $url,
        'success' => true
    ];
    exit(json_encode($response));
} else {
    $response = [
        'success' => false,
        'file' => null,
        'message' => 'Failed to move uploaded file.'
    ];
    exit(json_encode($response));
}
