<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ABOUT_HOTEL.aspx.cs" Inherits="HOTEL.ADMINid.ABOUT_HOTEL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
    <title>Home</title>
    <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no, width = device-width">

    <!--[if lt IE 9]><script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <link rel="stylesheet" href="style.css" media="screen">
    <!--[if lte IE 7]><link rel="stylesheet" href="style.ie7.css" media="screen" /><![endif]-->
    <link rel="stylesheet" href="style.responsive.css" media="all">


    <script src="jquery.js"></script>
    <script src="script.js"></script>
    <script src="script.responsive.js"></script>


<script>jQuery(function ($) {
    'use strict';
    if ($.fn.themeSlider) {
        $(".art-slidecontainer19d297532d2145ce9d808cfadfd74766").each(function () {
            var slideContainer = $(this), tmp;
            var inner = $(".art-slider-inner", slideContainer);
            inner.children().filter("script").remove();
            var helper = null;
            
            if ($.support.themeTransition) {
                helper = new BackgroundHelper();
                helper.init("fade", "next", $(".art-slide-item", inner).first().css($.support.themeTransition.prefix + "transition-duration"));
                inner.children().each(function () {
                    helper.processSlide($(this));
                });

                
            } else if (browser.ie && browser.version <= 8) {
                var slidesInfo = {
".art-slide19d297532d2145ce9d808cfadfd747660": {
    "bgimage" : "url('images/slide19d297532d2145ce9d808cfadfd747660.jpg')",
    "bgposition": "0 0",
    "images": "",
    "positions": ""
},
".art-slide19d297532d2145ce9d808cfadfd747661": {
    "bgimage" : "url('images/slide19d297532d2145ce9d808cfadfd747661.jpg')",
    "bgposition": "0 0",
    "images": "",
    "positions": ""
},
".art-slide19d297532d2145ce9d808cfadfd747662": {
    "bgimage" : "url('images/slide19d297532d2145ce9d808cfadfd747662.jpg')",
    "bgposition": "0 0",
    "images": "",
    "positions": ""
}
                };
                $.each(slidesInfo, function(selector, info) {
                    processElementMultiplyBg(slideContainer.find(selector), info);
                });
            }

            inner.children().eq(0).addClass("active");
            slideContainer.themeSlider({
                pause: 2600,
                speed: 600,
                repeat: true,
                animation: "fade",
                direction: "next",
                navigator: slideContainer.siblings(".art-slidenavigator19d297532d2145ce9d808cfadfd74766"),
                helper: helper
            });
            
                        
        });
    }
});
</script><style>.art-content .art-postcontent-0 .layout-item-0 { padding-right: 10px;padding-left: 10px;  }
.ie7 .art-post .art-layout-cell {border:none !important; padding:0 !important; }
.ie6 .art-post .art-layout-cell {border:none !important; padding:0 !important; }

.art-slidecontainer19d297532d2145ce9d808cfadfd74766 {
    position: relative;
        width: 408px;
    height: 252px;
        }

.default-responsive .art-header .art-slidecontainer19d297532d2145ce9d808cfadfd74766,
.responsive .art-header .art-slidecontainer19d297532d2145ce9d808cfadfd74766
{
  position: absolute !important;
}

.responsive .art-pageslider .art-slidecontainer19d297532d2145ce9d808cfadfd74766 {
  position: absolute !important;
}

.art-slidecontainer19d297532d2145ce9d808cfadfd74766 .art-slide-item
{

    -webkit-transform: rotate(0);
    -moz-transform: rotate(0);
    transform: rotate(0);
}



.art-slidecontainer19d297532d2145ce9d808cfadfd74766 .art-slide-item {
    -webkit-transition: 600ms ease-in-out opacity;
    -moz-transition: 600ms ease-in-out opacity;
    -ms-transition: 600ms ease-in-out opacity;
    -o-transition: 600ms ease-in-out opacity;
    transition: 600ms ease-in-out opacity;
    position: absolute !important;
    display: none;
	left: 0;
	top: 0;
	opacity: 0;
    width:  100%;
    height: 100%;
}

.art-slidecontainer19d297532d2145ce9d808cfadfd74766 .active, .art-slidecontainer19d297532d2145ce9d808cfadfd74766 .next, .art-slidecontainer19d297532d2145ce9d808cfadfd74766 .prev {
    display: block;
}

.art-slidecontainer19d297532d2145ce9d808cfadfd74766 .active {
    opacity: 1;
}

.art-slidecontainer19d297532d2145ce9d808cfadfd74766 .next, .art-slidecontainer19d297532d2145ce9d808cfadfd74766 .prev {
    width: 100%;
}

.art-slidecontainer19d297532d2145ce9d808cfadfd74766 .next.forward, .art-slidecontainer19d297532d2145ce9d808cfadfd74766 .prev.back {
    opacity: 1;
}

.art-slidecontainer19d297532d2145ce9d808cfadfd74766 .active.forward {
    opacity: 0;
}

.art-slidecontainer19d297532d2145ce9d808cfadfd74766 .active.back {
    opacity: 0;
}


.art-slide19d297532d2145ce9d808cfadfd747660 {
    background-image:  url('images/slide19d297532d2145ce9d808cfadfd747660.jpg');
        /* background-size:  auto auto; */
        background-position:  center center;
    background-repeat: no-repeat;
}

/* special setup for header/pageslider */
.responsive .art-header .art-slide19d297532d2145ce9d808cfadfd747660 {
    background-image:  url('images/slide19d297532d2145ce9d808cfadfd747660.jpg');
    background-size: auto auto;
    background-position:  center center;
    background-repeat: no-repeat;
}

.responsive .art-pageslider .art-slide19d297532d2145ce9d808cfadfd747660 {
    background-image:  url('images/slide19d297532d2145ce9d808cfadfd747660.jpg');
    background-size: auto auto;
    background-position:  center center;
    background-repeat: no-repeat;
}

.default-responsive .art-header .art-slide19d297532d2145ce9d808cfadfd747660 {
    background-image: url('images/slide19d297532d2145ce9d808cfadfd747660.jpg');
    background-size: auto auto;
    background-position: center center;
    background-repeat: no-repeat;
}

.default-responsive .art-pageslider .art-slide19d297532d2145ce9d808cfadfd747660 {
    background-image: url('images/slide19d297532d2145ce9d808cfadfd747660.jpg');
    background-size: auto auto;
    background-position: center center;
    background-repeat: no-repeat;
}.art-slide19d297532d2145ce9d808cfadfd747661 {
    background-image:  url('images/slide19d297532d2145ce9d808cfadfd747661.jpg');
        /* background-size:  auto auto; */
        background-position:  center center;
    background-repeat: no-repeat;
}

/* special setup for header/pageslider */
.responsive .art-header .art-slide19d297532d2145ce9d808cfadfd747661 {
    background-image:  url('images/slide19d297532d2145ce9d808cfadfd747661.jpg');
    background-size: auto auto;
    background-position:  center center;
    background-repeat: no-repeat;
}

.responsive .art-pageslider .art-slide19d297532d2145ce9d808cfadfd747661 {
    background-image:  url('images/slide19d297532d2145ce9d808cfadfd747661.jpg');
    background-size: auto auto;
    background-position:  center center;
    background-repeat: no-repeat;
}

.default-responsive .art-header .art-slide19d297532d2145ce9d808cfadfd747661 {
    background-image: url('images/slide19d297532d2145ce9d808cfadfd747661.jpg');
    background-size: auto auto;
    background-position: center center;
    background-repeat: no-repeat;
}

.default-responsive .art-pageslider .art-slide19d297532d2145ce9d808cfadfd747661 {
    background-image: url('images/slide19d297532d2145ce9d808cfadfd747661.jpg');
    background-size: auto auto;
    background-position: center center;
    background-repeat: no-repeat;
}.art-slide19d297532d2145ce9d808cfadfd747662 {
    background-image:  url('images/slide19d297532d2145ce9d808cfadfd747662.jpg');
        /* background-size:  auto auto; */
        background-position:  center center;
    background-repeat: no-repeat;
}

/* special setup for header/pageslider */
.responsive .art-header .art-slide19d297532d2145ce9d808cfadfd747662 {
    background-image:  url('images/slide19d297532d2145ce9d808cfadfd747662.jpg');
    background-size: auto auto;
    background-position:  center center;
    background-repeat: no-repeat;
}

.responsive .art-pageslider .art-slide19d297532d2145ce9d808cfadfd747662 {
    background-image:  url('images/slide19d297532d2145ce9d808cfadfd747662.jpg');
    background-size: auto auto;
    background-position:  center center;
    background-repeat: no-repeat;
}

.default-responsive .art-header .art-slide19d297532d2145ce9d808cfadfd747662 {
    background-image: url('images/slide19d297532d2145ce9d808cfadfd747662.jpg');
    background-size: auto auto;
    background-position: center center;
    background-repeat: no-repeat;
}

.default-responsive .art-pageslider .art-slide19d297532d2145ce9d808cfadfd747662 {
    background-image: url('images/slide19d297532d2145ce9d808cfadfd747662.jpg');
    background-size: auto auto;
    background-position: center center;
    background-repeat: no-repeat;
}

.art-slidenavigator19d297532d2145ce9d808cfadfd74766 {
  display: inline-block;
  position: absolute;
  direction: ltr !important;
  top: 222px;
  left: 4.17%;
  z-index: 101;
  line-height: 0 !important;
  -webkit-background-origin: border !important;
  -moz-background-origin: border !important;
  background-origin: border-box !important;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  text-align: center;
    white-space: nowrap;
    }
.art-slidenavigator19d297532d2145ce9d808cfadfd74766
{
background: #B2D1D7;background: -webkit-linear-gradient(top, rgba(231, 241, 243, 0.6) 0, rgba(124, 177, 187, 0.6) 100%) no-repeat;background: -moz-linear-gradient(top, rgba(231, 241, 243, 0.6) 0, rgba(124, 177, 187, 0.6) 100%) no-repeat;background: -o-linear-gradient(top, rgba(231, 241, 243, 0.6) 0, rgba(124, 177, 187, 0.6) 100%) no-repeat;background: -ms-linear-gradient(top, rgba(231, 241, 243, 0.6) 0, rgba(124, 177, 187, 0.6) 100%) no-repeat;-svg-background: linear-gradient(top, rgba(231, 241, 243, 0.6) 0, rgba(124, 177, 187, 0.6) 100%) no-repeat;background: linear-gradient(to bottom, rgba(231, 241, 243, 0.6) 0, rgba(124, 177, 187, 0.6) 100%) no-repeat;
-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;


padding:7px;





}
.art-slidenavigator19d297532d2145ce9d808cfadfd74766 > a
{
background: #68A5B1;background: #68A5B1;background: #68A5B1;background: #68A5B1;background: #68A5B1;-svg-background: #68A5B1;background: #68A5B1;
-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%;



margin:0 10px 0 0;

width: 10px;

height: 10px;
}
.art-slidenavigator19d297532d2145ce9d808cfadfd74766 > a.active
{
background: #378FA4;background: #378FA4;background: #378FA4;background: #378FA4;background: #378FA4;-svg-background: #378FA4;background: #378FA4;
-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%;



margin:0 10px 0 0;

width: 10px;

height: 10px;
}
.art-slidenavigator19d297532d2145ce9d808cfadfd74766 > a:hover
{
background: #378FA4;background: #378FA4;background: #378FA4;background: #378FA4;background: #378FA4;-svg-background: #378FA4;background: #378FA4;
-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%;



margin:0 10px 0 0;

width: 10px;

height: 10px;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
   <div id="art-main">
    <div class="art-sheet clearfix">
<header class="art-header">

    <div class="art-shapes">
        
            </div>

<h1 class="art-headline">
    <a href="/">HOTEL LIBYA</a>
</h1>





<nav class="art-nav">
     <ul class="art-hmenu"><li><a href="#" class="active">الاعضاء</a></li><li><a href="ROOMS.aspx">الغرف</a></li><li><a href="#">الوظيفة</a><ul><li><a href="JOP.aspx">الاعمال</a></li><li><a href="EMPLOYE.aspx">التوظيف</a></li></ul></li><li><a href="ABOUT_HOTEL.aspx">عن الفندق</a></li><li><a href="HOME.aspx">الرئيسية</a></li></ul> 
    </nav>

                    
</header>
<div class="art-pageslider">

     <div class="art-shapes">
            </div>
<div class="art-slider art-slidecontainerpageslider" data-width="1000" data-height="250">
    <div class="art-slider-inner">
<div class="art-slide-item art-slidepageslider0">


</div>
<div class="art-slide-item art-slidepageslider1">


</div>
<div class="art-slide-item art-slidepageslider2">


</div>

    </div>
</div>
<div class="art-slidenavigator art-slidenavigatorpageslider" data-left="0.5081967" data-top="0.9255814">
<a href="#" class="art-slidenavigatoritem"></a><a href="#" class="art-slidenavigatoritem"></a><a href="#" class="art-slidenavigatoritem"></a>
</div>


</div>
<div class="art-layout-wrapper">
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <div class="art-layout-cell art-content"><article class="art-post art-article">
                                <h2 class="art-postheader">Home</h2>
                                                
                <div class="art-postcontent art-postcontent-0 clearfix"><div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-0" style="width: 100%" >
        <div class="image-caption-wrapper" style="width: 55%; float: left"><div id="19d297532d2145ce9d808cfadfd74766" style="position: relative; display: inline-block; z-index: 0; margin: 7px;  border-width: 0px;  float: left;" class="art-collage">
<div class="art-slider art-slidecontainer19d297532d2145ce9d808cfadfd74766" data-width="408" data-height="252">
    <div class="art-slider-inner">
<div class="art-slide-item art-slide19d297532d2145ce9d808cfadfd747660" >


</div>
<div class="art-slide-item art-slide19d297532d2145ce9d808cfadfd747661" >


</div>
<div class="art-slide-item art-slide19d297532d2145ce9d808cfadfd747662" >


</div>

    </div>
</div>
<div class="art-slidenavigator art-slidenavigator19d297532d2145ce9d808cfadfd74766" data-left="0.04941861" data-top="0.9736842">
<a href="#" class="art-slidenavigatoritem"></a><a href="#" class="art-slidenavigatoritem"></a><a href="#" class="art-slidenavigatoritem"></a>
</div>



    </div>

        </div>
        <p style="text-align: right;"><span style="font-size: 22px;">تمتع بي اجمل المناظر الطبيعية و الراحة في &nbsp; &nbsp; HOTEL LIBYA ارقى &nbsp;الغرف في</span></p>
        <p><br></p>
    </div>
    </div>
</div>
<div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-0" style="width: 50%" >
        <ul>
        <li>Suspendisse pharetra auctor pharetra. Nunc a sollicitudin est.</li>
        <li>Donec vel neque in neque porta venenatis sed sit amet lectus.</li>
        <li>Curabitur ullamcorper gravida felis, sit amet scelerisque lorem iaculis sed.</li>
        </ul>
    </div><div class="art-layout-cell layout-item-0" style="width: 50%" >
        <blockquote style="margin: 10px 0">Nunc a sollicitudin est. Curabitur ullamcorper gravida felis, sit amet scelerisque lorem iaculis sed. Donec vel neque in neque porta venenatis sed sit amet lectus.</blockquote>
    </div>
    </div>
</div>
</div>


</article></div>
                    </div>
                </div>
            </div><footer class="art-footer">
<p>&nbsp;<a href="" class="art-youtube-tag-icon" style="line-height: 32px;"></a>&nbsp;&nbsp;| &nbsp;<a href="" class="art-twitter-tag-icon" style="line-height: 32px; "></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="" class="art-facebook-tag-icon" style="line-height: 32px; "></a>&nbsp;</p>
<p>Copyright © 2020. All Rights Reserved SAIF WALID.</p>
</footer>

    </div>
    <p class="art-page-footer">
        <span id="art-footnote-links"><a href="http://www.artisteer.com/" target="_blank">Web Template</a> created with Artisteer.</span>
    </p>
</div>


    </form>
</body>
</html>
