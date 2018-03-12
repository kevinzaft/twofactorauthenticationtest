<!doctype html>
<html>
<head>
    %{--<meta name="layout" content="main"/>--}%
    <title>Login</title>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:javascript src="application.js"/>
    <asset:stylesheet src="application.css"/>
</head>
<body>
<div style="text-align: center" id="content" role="main">
    <div style="display: block; margin-left: auto; margin-right: auto;">
    <section class="row colset-2-its">
        <g:if test="${flash.message}">
            <div class="message" role="alert">
                ${flash.message}
            </div>
        </g:if>
        <h2>Login</h2>
        <g:form controller="webpage" action="login">
            <div class="fieldcontain">
                <g:textField name="username" placeholder="example@email.com" required="" />
            </div>
            <div class="fieldcontain">
                <g:field type="password" name="password" placeholder="password" required=""  />
            </div>
            <fieldset>
                <g:submitButton name="Login" value="Login" />
            </fieldset>
        </g:form>
    </section>
    </div>
</div>

</body>
</html>