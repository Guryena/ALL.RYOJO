<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>ALL.RYOJO</title>
</head>
<style>
    .logo {
        width: 15%;
        height: 15%;
        text-align: center;
    }

    header {
        text-align: center;
    }

    @font-face {
        font-family: 'S-CoreDream-3Light';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }

    body {
        margin: 0;
        font-family: 'S-CoreDream-3Light';
    }

    div.container {
        background-color: white;
        padding: 0px;
        width: 100%;

    }

    [class *=menu] {
        width: 25%;
        background-color: black;
        color: white;
        text-align: center;
        float: left;
    }

    p {
        margin: 10px;
    }

    [class *=menu]:hover {
        background-color: gray;
        color: white;
        cursor: pointer;
    }

    [class*=content] {
        width: 100%;
        background-color: white;
        color: black;
    }


    [class*=foot] {
        width: 100%;
        text-align: center;
        background-color: gray;
        color: white;
    }
</style>

<body>

    <header>

        <img src="/img/allryojo.png" class="logo">

    </header>
    <div class="container">

        <div class="menu1">
            <p>旅行</p>
        </div>
        <div class="menu2">
            <p>統計</p>
        </div>
        <div class="menu3">
            <p>匿名掲示板</p>
        </div>
        <div class="menu4">
            <p>About us</p>
        </div>

       <p>
       
       </p>

</body>

</html>