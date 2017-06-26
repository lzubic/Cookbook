<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Recipe Info</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="../../resources/styles/common/recipe-info.css" rel="stylesheet">
</head>
<body>
    <div class="fond"> <span class="s1">cook </span><span class="s2">book</span></div>
    <div class="card">
        <div class="thumbnail"><img class="left" src="http://cdn2.hubspot.net/hubfs/322787/Mychefcom/images/BLOG/Header-Blog/photo-culinaire-pexels.jpg"/></div>
        <div class="right">
            <h1>${recipe.name}</h1>
            <div class="author">
                <i class="fa fa-clock-o" aria-hidden="true"></i>
                <h2>${recipe.preparationTime}</h2>
            </div>
            <div class="author">
                <i class="fa fa-cutlery" aria-hidden="true"></i>
                <h2>${recipe.numberOfServings}</h2>
            </div>
            <div class="separator"></div>
            <p>${recipe.description}</p>
            <div class="separator"></div>
            <p>${recipe.instructions}</p>
        </div>
        <h5>${recipe.mealType}</h5>
    </div>
</body>
</html>
