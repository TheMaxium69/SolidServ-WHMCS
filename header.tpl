<!doctype html>
<html lang="en">
<head>
    <!-- SALUT -->
    <meta charset="{$charset}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
    {include file="$template/includes/head.tpl"}
    {$headoutput}
</head>
<body class="primary-bg-color" data-phone-cc-input="{$phoneNumberInputStyle}">
<style>
#main-body{
    background: white;
}
</style>

    {$headeroutput}

    <header id="header" class="header">
        <header id="nav-desktop">
            <div class="clear"></div>
            <nav class="fixed-header">
                <div class="site-title visible-title"><a href="http://localhost/SolidServ-WebSite/"><img class="logo" src="http://localhost/SolidServ-WebSite/assets/LogoBrute.png"><img class="text" src="http://localhost/SolidServ-WebSite/assets/TextBrute.png"></a></div>
                <ul class="">
                    <li class=""><a href="http://localhost/SolidServ-WebSite/">Accueil</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Hébergement
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="http://localhost/SolidServ-WebSite/vps.php">VPS</a>
                            <a class="dropdown-item" href="http://localhost/SolidServ-WebSite/siteweb.php">Site Web</a>
                            <a class="dropdown-item" href="http://localhost/SolidServ-WebSite/minecraft.php">Minecraft</a>
                            <a class="dropdown-item" href="http://localhost/SolidServ-WebSite/fivem.php">Five M</a>
                            <a class="dropdown-item" href="http://localhost/SolidServ-WebSite/stockage.php">Stockage</a>
                        </div>
                    </li>
                    <li><a href="http://localhost/SolidServ-WebSite/actu.php">Actualité</a></li><li><a href="http://localhost/SolidServ-WebSite/support.php">Support</a></li><li id="li-espace" class="null"><a class="a-espace" href="login.php">Espace client</a></li><li class="null"><a class="a-shop" href="cart.php?a=view"><i class="fas fa-shopping-cart"></i></a></li>
                </ul>
            </nav>
        </header>

    </header>

    {include file="$template/includes/network-issues-notifications.tpl"}

    {*<nav class="master-breadcrumb" aria-label="breadcrumb">
        <div class="container">
            {include file="$template/includes/breadcrumb.tpl"}
        </div>
    </nav>*}

    {include file="$template/includes/validateuser.tpl"}
    {include file="$template/includes/verifyemail.tpl"}

    {if $templatefile == 'homepage'}
        {if $registerdomainenabled || $transferdomainenabled}
            {include file="$template/includes/domain-search.tpl"}
        {/if}
    {/if}

    <section id="main-body">
        <div class="{if !$skipMainBodyContainer}container{/if}">
            <div class="row">

            {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
                <div class="col-lg-4 col-xl-3">
                    <div class="sidebar">
                        {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
                    </div>
                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        <div class="d-none d-lg-block sidebar">
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                        </div>
                    {/if}
                </div>
            {/if}
            <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-lg-8 col-xl-9{else}col-12{/if} primary-content">
