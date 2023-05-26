<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>페트와 메트</title>
    <link href="/webjars/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/sockjs-client/sockjs.min.js"></script>
    <script src="/webjars/stomp-websocket/stomp.min.js"></script>
    <script src="/hechat.js"></script>
    <style>
        body {
            background-color: #f5f5f5;
        }

        #main-content {
            max-width: 60%;
            min-width: 50px;
            height: 60%;
            padding: 2em 3em;
            margin: 0 auto 20px;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
        }
    </style>
</head>
<body>

<div id="main-content" class="container">
    <div class="row">
<%--        <div class="col-md-12">--%>
<%--            <table id="conversation" class="table table-striped">--%>
<%--                <thead>--%>
<%--                <tr>--%>
<%--                    <th>금융상담원 김국민</th>--%>
<%--                </tr>--%>
<%--                </thead>--%>
<%--                <tbody id="communicate">--%>
<%--                </tbody>--%>
<%--            </table>--%>
<%--        </div>--%>
        <div class="chat-history" id="conversation">
            <ul id="communicate">

            </ul>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <form class="form-inline">
                <div class="form-group">
                    <label for="msg">입력 메세지</label>
                    <input type="text" id="msg" class="form-control" placeholder="내용을 입력하세요....">
                </div>
                <button id="send" class="btn btn-default" disabled type="submit">보내기</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>