<!-- Styling -->
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600&display=swap" rel="stylesheet">
<link href="{assetPath file='all.min.css'}?v={$versionHash}" rel="stylesheet">
<link href="{assetPath file='theme.min.css'}?v={$versionHash}" rel="stylesheet">
{*<link href="{$WEB_ROOT}/assets/css/fontawesome-all.min.css" rel="stylesheet">*}
<link href="../assets/LogoOnglet.png" rel="shortcut icon">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;500;700&display=swap" rel="stylesheet">

<link href="fontawesome-5.15.4/css/all.css" rel="stylesheet">

<link rel="stylesheet" href="https://tyrolium.fr/Contenu/Css/Tyrolium/all.css">
<link rel="stylesheet" href="https://tyrolium.fr/Contenu/Css/Tyrolium/normalize.css">
<link rel="stylesheet" href="https://tyrolium.fr/Contenu/Css/Tyrolium/base.css">

<link rel="stylesheet" type="text/css" media="screen" href="https://tyrolium.fr/css/tyrobtn.css">

<link rel="stylesheet" type="text/css" media="screen" href="../css/all.css">
<link rel="stylesheet" type="text/css" media="screen" href="../css/index.css">
<link rel="stylesheet" type="text/css" media="screen" href="../css/hebergement.css">

{assetExists file="custom.css"}
    <link href="{$__assetPath__}" rel="stylesheet">

{/assetExists}

<script>
    var csrfToken = '{$token}',
        markdownGuide = '{lang|addslashes key="markdown.title"}',
        locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
        saved = '{lang|addslashes key="markdown.saved"}',
        saving = '{lang|addslashes key="markdown.saving"}',
        whmcsBaseUrl = "{\WHMCS\Utility\Environment\WebHelper::getBaseUrl()}",
        requiredText = '{lang|addslashes key="orderForm.required"}',
        recaptchaSiteKey = "{if $captcha}{$captcha->recaptcha->getSiteKey()}{/if}";
</script>
<script src="{assetPath file='scripts.min.js'}?v={$versionHash}"></script>

{if $templatefile == "viewticket" && !$loggedin}
    <meta name="robots" content="noindex" />
{/if}
