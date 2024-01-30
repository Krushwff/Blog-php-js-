<?php
function validateUser($user)
{
    $errors = array();

    if (empty($user['username'])){
        array_push($errors, 'Username is required');
    }
    if (empty($user['email'])){
        array_push($errors, 'Email is required');
    }
    if (empty($user['password'])){
        array_push($errors, 'Password is required');
    }
    if ($user['passwordConf'] !== $user['password']){
        array_push($errors, 'Password do no match');
    }
return $errors;
}