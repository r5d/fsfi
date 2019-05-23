<?php

/**
 *
 * SPDX-License-Identifier: ISC
 *
 * Copyright © 2019 Free Software Foundation of India.
 *
 */

function to() {
    return 's@cygnus.ricketyspace.net';
}

function email_valid($e) {
    if (preg_match('/([\w.-]+)@([\w.-]+)/', $e)) {
        return true;
    }
    return false;
}

function send($n, $e, $m) {
    $p = $n . ' <' . $e . '>';
    return mail(to(),
                $p . ' wants to volunteer for FSF India',
                'Per says:' . PHP_EOL . PHP_EOL . $m
    );
}

function em_fw($t) {
    return preg_replace('/^(\w+)( .+)/', '<strong>$1</strong>$2', $t);
}

function post() {
    $n = $_POST['name'];
    $e = $_POST['email'];
    $m = $_POST['msg'];

    $errors = [];
    if (empty($n)) {
        $errors[] = em_fw('Name is required');
    }
    if (!email_valid($e)) {
        $errors[] = em_fw('Email is invalid');
    }
    if (empty($m)) {
        $errors[] = em_fw('Message is required');
    }

    $sok = true;
    if (empty($error)) {
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
