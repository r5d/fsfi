<?php

/**
 *
 * SPDX-License-Identifier: ISC
 *
 * Copyright © 2019 Free Software Foundation of India.
 *
 */

function to() {
    return 's@gnu.org.in';
}

function email_valid($e) {
    if (preg_match('/([\w.-]+)@([\w.-]+)/', $e)) {
        return true;
    }
    return false;
}

function conf() {
    return json_decode(file_get_contents(
        $_SERVER['DOCUMENT_ROOT'] . '/../conf.json'
    ));
}

function gl_new_issue($title, $desc) {
    $conf = conf();

    /**
     * Unable to install php curl module on the current server. So
     * commandline curl for now.
     */
    $cmd = sprintf("%s  -v -4 --request POST"
                 . " --header 'Private-Token: %s'"
                 . " %s/1047/issues"
                 . " -d title='%s'"
                 . " -d description='%s'",
                   $conf->curl,
                   $conf->token,
                   $conf->api,
                   urlencode($title),
                   urlencode($desc));
    $o = NULL;
    exec($cmd, $o);
    return true;
}

function send($n, $e, $m) {
    $p = $n . ' <' . $e . '>';
    $s = $p . ' sent a message to FSF India';
    $msg = 'Per says:' . PHP_EOL . PHP_EOL . $m
         . PHP_EOL;

    $mo = mail(to(), $s, $msg);
    $go = gl_new_issue($s, $msg);

    return $mo && $go;
}

function em_fw($t) {
    return preg_replace('/^(\w+)( .+)/', '<strong>$1</strong>$2', $t);
}

function post() {
    $n = $_POST['name'];
    $e = $_POST['email'];
    $m = $_POST['msg'];
    $c = $_POST['c'];

    $errors = [];
    if (!email_valid($e)) {
        $errors[] = em_fw('Email is invalid');
    }
    if (empty($m)) {
        $errors[] = em_fw('Message is required');
    }
    if ($c !== '42') {
        $errors[] = '41 + 1 is not \'' . $c . '\'';
    }

    $sok = true;
    if (empty($errors)) {
        $sok = send($n, $e, $m);
    }
    if (!$sok) {
        $errors[] = 'Unable to process your submission.';
    }

    return [
        'ok' => empty($errors) && $sok,
        'errors' => $errors
    ];
}

$result = post();
include(__DIR__ . '/submit.html');
