<!doctype html>
<html>
<head>
<meta name="layout" content="main"/>
<title>Djamretail: Cloud Retail System</title>
<style type="text/css" media="screen">
#status {
  background-color: #eee;
  border: .2em solid #fff;
  margin: 2em 2em 1em;
  padding: 1em;
  width: 22em;
  float: left;
  -moz-box-shadow: 0px 0px 1.25em #ccc;
  -webkit-box-shadow: 0px 0px 1.25em #ccc;
  box-shadow: 0px 0px 1.25em #ccc;
  -moz-border-radius: 0.6em;
  -webkit-border-radius: 0.6em;
  border-radius: 0.6em;
}

.ie6 #status {
  display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
}

#status ul {
  font-size: 0.9em;
  list-style-type: none;
  margin-bottom: 0.6em;
  padding: 0;
}

#status li {
  line-height: 1.3;
}

#status h1 {
  text-transform: uppercase;
  font-size: 1.1em;
  margin: 0 0 0.3em;
}

#page-body {
  margin: 2em 1em 1.25em 18em;
}

h2 {
  margin-top: 1em;
  margin-bottom: 0.3em;
  font-size: 1em;
}

p {
  line-height: 1.5;
  margin: 0.25em 0;
}

#controller-list ul {
  list-style-position: inside;
}

#controller-list li {
  line-height: 1.3;
  list-style-position: inside;
  margin: 0.25em 0;
}

@media screen and (max-width: 480px) {
  #status {
    display: none;
    }

#page-body {
margin: 0 1em 1em;
}

#page-body h1 {
margin-top: 0;
}
}
</style>
</head>
<body>
<sec:ifNotLoggedIn>
  <div id="status" role="complementary">
    <g:if test='${flash.message}'>
      <div class='login_message'>${flash.message}</div>
    </g:if>
    <form method="POST" action="${resource(file: 'j_spring_security_check')}">
      <table class="noborder">
        <tr>
          <td>Username:</td><td><g:textField name="j_username"/></td>
        </tr>
        <tr>
          <td>Password:</td><td><input name="j_password" type="password"/></td>
        </tr>
        <tr>
          <td colspan="2">
        <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
        <label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
        </td>
        </tr>
        <tr>
          <td colspan="2"><input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/></td>
        </tr>
      </table>
    </form>
  </div>
</sec:ifNotLoggedIn>
<div id="page-body" role="main">
  <h1 align="center">Djamretail</h1>
  <p align="center">Simple, easy and robust cloud retail system<br />
  <img src="images/retail_system.jpg" /></p>
  
</div>
<script type='text/javascript'>
    (function() {
            document.forms['loginForm'].elements['j_username'].focus();
    });
</script>
</body>
</html>
