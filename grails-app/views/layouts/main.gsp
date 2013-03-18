<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
  <g:javascript library="jquery" />
  <g:layoutHead/>
  <r:layoutResources />
</head>
<body>
  <div id="grailsLogo" role="banner"><a href="/retailsystem"><img src="${resource(dir: 'images', file: 'djamretail_logo.png')}" alt="Grails"/></a><sec:ifLoggedIn>Logged User: <sec:loggedInUserInfo field="username"/></sec:ifLoggedIn></div>
<sec:ifLoggedIn>
  <div class="nav" role="navigation">
    <ul>
      <sec:ifAllGranted roles="ROLE_SYSTEM">
        <li><g:link controller="division" action="list">Division</g:link></li>
        <li><g:link controller="dept" action="list">Dept</g:link></li>
        <li><g:link controller="product" action="list">Product</g:link></li>
        <li><g:link controller="supplier" action="list">Supplier</g:link></li>
        <li><g:link controller="purchase" action="list">Order</g:link></li>
        <li><g:link controller="receive" action="list">Receive</g:link></li>
        <li><g:link controller="transfer" action="list">Transfer</g:link></li>
        <li><g:link controller="return" action="list">Return</g:link></li>
        <li><g:link controller="inventory" action="list">Inventory</g:link></li>
        <li><g:link controller="sales" action="list">Report</g:link></li>
      </sec:ifAllGranted>
      <sec:ifAllGranted roles="ROLE_BUYER">
        <li><g:link controller="division" action="list">Division</g:link></li>
        <li><g:link controller="dept" action="list">Dept</g:link></li>
        <li><g:link controller="product" action="list">Product</g:link></li>
        <li><g:link controller="supplier" action="list">Supplier</g:link></li>
        <li><g:link controller="purchase" action="list">Order</g:link></li>
        <li><g:link controller="return" action="list">Return</g:link></li>
      </sec:ifAllGranted>
      <sec:ifAllGranted roles="ROLE_ADMIN">
        <li><g:link controller="reveive" action="list">Receive</g:link></li>
        <li><g:link controller="transfer" action="list">Transfer</g:link></li>
        <li><g:link controller="return" action="list">Return</g:link></li>
      </sec:ifAllGranted>
      <sec:ifAllGranted roles="ROLE_MGR">
        <li><g:link controller="report" action="list">Report</g:link></li>
      </sec:ifAllGranted>
      <sec:ifLoggedIn>
        <li><g:link controller="searchable">Search</g:link></li>
        <li>
        <g:link controller="logout">Logout</g:link>
        </li>
      </sec:ifLoggedIn>
    </ul>
  </div>
</sec:ifLoggedIn>
<g:layoutBody/>
<div class="footer" role="contentinfo"></div>
<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
<g:javascript library="application"/>
<r:layoutResources />
</body>
</html>