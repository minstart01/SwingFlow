<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>Bigg &raquo; Just another Open Designs template</title>
<meta name="description" content="Just another Open Designs template." />
<meta name="robots" content="noodp,noydir" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" id="child-theme-css" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" id="responsive-main-css-css" href="css/responsive-main.min.css" type="text/css" media="all" />
<link rel="stylesheet" id="responsive-css-css" href="css/responsive.css" type="text/css" media="all" />
<link rel="stylesheet" id="tb_styles-css" href="css/tb-styles.min.css" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="Css/Main2.css" />

<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript">
  jQuery(window).scroll(function (event) {
	  	
		var top = jQuery('#popular-upcoming').offset().top - jQuery(document).scrollTop();;
		// what the y position of the scroll is
		var y = jQuery(this).scrollTop();
		// whether that's below the form
		if (y >= top)  {
		// if so, add the active class to popular-upcoming and remove from content
		jQuery('.page-nav-popular-posts').addClass('active');
		jQuery('.page-nav-top-posts').removeClass('active');
		} else {
		// otherwise remove it
		jQuery('.page-nav-popular-posts').removeClass('active');
		jQuery('.page-nav-top-posts').addClass('active');
	   }
  });
  
  jQuery(document).ready(function (){
  jQuery('#popular-scroll').click(function (){
            //jQuery(this).animate(function(){
                jQuery('html, body').animate({
                    scrollTop: jQuery('#popular-upcoming').offset().top
                     }, 2000);
            //});
        });
		
		jQuery('#feature-scroll').click(function (){
            //jQuery(this).animate(function(){
                jQuery('html, body').animate({
                    scrollTop: jQuery('#inner').offset().top
                     }, 2000);
            //});
        });
		  });
	  </script>
</head>

<body class="home blog header-full-width full-width-content">
<jsp:include page="../Common/top.jsp"></jsp:include>
<!-- <div id="header">
  <div class="site-header">
    <h1 class="site-header-logo-container">
    <a href="/"><span class="image-replace">Bigg</span>
    <img src="images/bigg-logo.png" width="65" height="35" id="bigg-logo" alt="Bigg" /></a>
    </h1>
      
            <ul id="page-nav" class="horizontal-list">
<li class="page-nav-top-posts active"><a href="javascript:void(0)" id="feature-scroll" class="page-anchor-link">여행지 알아보기</a></li>

<li class="page-nav-popular-posts"><a href="javascript:void(0)" id="popular-scroll" class="page-anchor-link">숙박정보 &amp; Upcoming</a></li>

</ul>

<div id="site-nav" class="horizontal-list"><div class="menu-main-menu-container"><ul id="menu-main-menu" class="menu"><li id="menu-item-144" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-144"><a href="/">Home</a></li>
<li id="menu-item-142" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-142"><a href="sample-page.htm">Sample Page</a></li>
</ul></div></div>
<div id="site-header-bigg-social">
<ul class="horizontal-list">
<li><a href="https://twitter.com/opendesigns" target="_blank" class="bigg-social-twitter bigg-social-icon image-replace">Twitter</a></li>
<li><a href="http://www.facebook.com/opendesigns/" target="_blank" class="bigg-social-fb bigg-social-icon image-replace">Facebook</a></li>
<li><a href="https://plus.google.com/101703942483092652776/posts" target="_blank" class="bigg-social-gplus bigg-social-icon image-replace">Google+</a></li>
</ul>
      
    </div>  
    </div>
  </div> -->
  <div id="wrap">
<div id="inner">
<div class="wrap">
<div id="content-sidebar-wrap">
				
				<div id="content" class="hfeed">
				<div class="post-5 post type-post status-publish format-standard hentry category-featured category-parent-category-i entry feature feature">

		<p><a href="#" title="Welcome to Bigg"><img width="660" height="370" src="images/go.jpg" class="alignleft post-image" alt="1" /></a>		</p>
		<p>&nbsp;</p>
		<h2 class="entry-title"><a href="#" title="Welcome to Bigg" rel="bookmark">내린천으로 놀러가요~</a></h2> 
		
				<div class="entry-content">
			<p>This is a little introduction to Bigg, the free website template that might look a little bit like a popular site you’ve probably already heard of.  Can you guess what site I’m talking about? ;)</p>

			<a class="bigg-read-more" href="http://demo.opendesigns.org/welcome/">Read Article</a></div>
				<!-- end .entry-content -->
		
	</div>
    <div align="right"><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><select><option>인기순</option><option>최신순</option></select></p></div>
				<div class="post-1 post type-post status-publish format-standard hentry category-featured category-uncategorized entry fourcol first one-third teaser first">
				  
				  <a href="#" title="Hello world!"><img width="300" height="168" src="images/a300.jpg" class="alignleft post-image" alt="2" /></a>		<h2 class="entry-title"><a href="#" title="Hello world!" rel="bookmark">드루와~!!!</a></h2> 
		
				<div class="entry-content">
			<p>Bacon ipsum dolor sit amet kielbasa swine pariatur consequat consectetur esse tongue ea biltong. Fatback dolore ullamco labore in spare ribs ad hamburger cupidatat tongue. Nisi frankfurter duis proident, officia ham aliqua.</p>

			<a class="bigg-read-more" href="http://demo.opendesigns.org/hello-world/">Read Article</a>		</div><!-- end .entry-content -->
		
	</div>
		<!-- end .postclass -->
		<div class="post-63 post type-post status-publish format-standard hentry category-child-category-i category-featured category-parent-category-i category-parent-category-ii tag-tag2 tag-tag5 tag-tag6 entry fourcol one-third teaser">

		<a href="#" title="Another Post with Everything"><img width="300" height="168" src="images/b300.jpg" class="alignleft post-image" alt="3" /></a>		<h2 class="entry-title"><a href="#" title="Another Post with Everything In It" rel="bookmark">해운대로 고고</a></h2> 
		
				<div class="entry-content">
			<p>Bacon ipsum dolor sit amet kielbasa swine pariatur consequat consectetur esse tongue ea biltong. Fatback dolore ullamco labore in spare ribs ad hamburger cupidatat tongue. Nisi frankfurter duis proident, officia ham aliqua.</p>

			<a class="bigg-read-more" href="http://demo.opendesigns.org/another-post-with-everything-in-it/">Read Article</a>		</div><!-- end .entry-content -->
		
	</div><!-- end .postclass -->
		<div class="post-61 post type-post status-publish format-standard hentry category-featured category-uncategorized entry fourcol one-third teaser">

		<a href="#" title="An Ordered List Post"><img width="300" height="168" src="images/c300.jpg" class="alignleft post-image" alt="4" /></a>		<h2 class="entry-title"><a href="#" title="An Ordered List Post" rel="bookmark">즐거운 해루질</a></h2> 
		
				<div class="entry-content">
			<p>Bacon ipsum dolor sit amet kielbasa swine pariatur consequat consectetur esse tongue ea biltong. Fatback dolore ullamco labore in spare ribs ad hamburger cupidatat tongue. Nisi frankfurter duis proident, officia ham aliqua.</p>

			<a class="bigg-read-more" href="http://demo.opendesigns.org/an-ordered-list-post/">Read Article</a>		</div><!-- end .entry-content -->
		
	</div><!-- end .postclass -->
		<div class="post-56 post type-post status-publish format-standard hentry category-child-category-iii category-featured category-parent-category-iii tag-tag1 tag-tag3 tag-tag6 entry fourcol first last one-third teaser first">

		<a href="#" title="A Simple Text Post"><img width="300" height="168" src="images/d300.jpg" class="alignleft post-image" alt="5" /></a>		<h2 class="entry-title"><a href="#" title="A Simple Text Post" rel="bookmark">졸라 시원하다 와~</a></h2> 
		
				<div class="entry-content">
			<p>Bacon ipsum dolor sit amet kielbasa swine pariatur consequat consectetur esse tongue ea biltong. Fatback dolore ullamco labore in spare ribs ad hamburger cupidatat tongue. Nisi frankfurter duis proident, officia ham aliqua.</p>

			<a class="bigg-read-more" href="#">Read Article</a>		</div><!-- end .entry-content -->
		
	</div><!-- end .postclass -->
		<div class="post-53 post type-post status-publish format-standard hentry category-featured category-uncategorized entry fourcol one-third teaser">

		<a href="#" title="Hello world!"><img width="300" height="168" src="images/e300.jpg" class="alignleft post-image" alt="6" /></a>		<h2 class="entry-title"><a href="#" title="Hello world!" rel="bookmark">벨기에 필수 코스!</a></h2> 
		
				<div class="entry-content">
			<p>Bacon ipsum dolor sit amet kielbasa swine pariatur consequat consectetur esse tongue ea biltong. Fatback dolore ullamco labore in spare ribs ad hamburger cupidatat tongue. Nisi frankfurter duis proident, officia ham aliqua.</p>

			<a class="bigg-read-more" href="#">Read Article</a>		</div><!-- end .entry-content -->
		
	</div><!-- end .postclass -->
		<div class="post-51 post type-post status-publish format-standard hentry category-child-category-ii category-featured category-grandchild-category-i category-parent-category-i category-parent-category-ii tag-tag1 tag-tag2 tag-tag5 tag-tag7 entry fourcol one-third teaser">

		<a href="#" title="A Post With Everything In It"><img width="300" height="168" src="images/f300.jpg" class="alignleft post-image" alt="7" /></a>		<h2 class="entry-title"><a href="#" title="A Post With Everything In It" rel="bookmark">체코의 아름다운 광경</a></h2> 
		
				<div class="entry-content">
			<p>Bacon ipsum dolor sit amet kielbasa swine pariatur consequat consectetur esse tongue ea biltong. Fatback dolore ullamco labore in spare ribs ad hamburger cupidatat tongue. Nisi frankfurter duis proident, officia ham aliqua.</p>

			<a class="bigg-read-more" href="#">Read Article</a>		</div><!-- end .entry-content -->
		
	</div><!-- end .postclass -->
		<div class="post-49 post type-post status-publish format-standard hentry category-featured category-uncategorized tag-tag2 tag-tag5 tag-tag7 entry fourcol first one-third teaser first">

		<a href="#" title="Quotes Time!"><img width="300" height="168" src="images/g300.jpg" class="alignleft post-image" alt="8" /></a>		<h2 class="entry-title"><a href="#" title="Quotes Time!" rel="bookmark">역시 스위스!</a></h2> 
		
				<div class="entry-content">
			<p>Bacon ipsum dolor sit amet kielbasa swine pariatur consequat consectetur esse tongue ea biltong. Fatback dolore ullamco labore in spare ribs ad hamburger cupidatat tongue. Nisi frankfurter duis proident, officia ham aliqua.</p>

			<a class="bigg-read-more" href="#">Read Article</a>		</div><!-- end .entry-content -->
		
	</div><!-- end .postclass -->
		<div class="post-47 post type-post status-publish format-standard hentry category-featured category-parent-category-ii category-parent-category-iii tag-tag2 tag-tag4 tag-tag7 entry fourcol one-third teaser">

		<a href="#" title="Left-Aligned Image"><img width="300" height="168" src="images/h300.jpg" class="alignleft post-image" alt="9" /></a>		<h2 class="entry-title"><a href="#" title="A Post With a Left-Aligned Image" rel="bookmark">스웨덴에서 아침식사</a></h2> 
		
				<div class="entry-content">
			<p>Bacon ipsum dolor sit amet kielbasa swine pariatur consequat consectetur esse tongue ea biltong. Fatback dolore ullamco labore in spare ribs ad hamburger cupidatat tongue. Nisi frankfurter duis proident, officia ham aliqua.</p>

			<a class="bigg-read-more" href="#">Read Article</a>		</div><!-- end .entry-content -->
		
	</div><!-- end .postclass -->
		<div class="post-45 post type-post status-publish format-standard hentry category-child-category-ii category-featured category-grandchild-category-i category-parent-category-i entry fourcol one-third teaser">

		<a href="#" title="Another Text-Only Post"><img width="300" height="168" src="images/10-300x168.jpg" class="alignleft post-image" alt="10" /></a>		<h2 class="entry-title"><a href="#" title="Another Text-Only Post" rel="bookmark">와우!</a></h2> 
		
				<div class="entry-content">
			<p>Bacon ipsum dolor sit amet kielbasa swine pariatur consequat consectetur esse tongue ea biltong. Fatback dolore ullamco labore in spare ribs ad hamburger cupidatat tongue. Nisi frankfurter duis proident, officia ham aliqua.</p>

			<a class="bigg-read-more" href="#">Read Article</a>		</div><!-- end .entry-content -->
		
	</div><!-- end .postclass -->
			</div><!-- end #content -->
        <div align="right"
        ><hr/>
              <input type="button" value="글쓰기">
              <hr/></div>
		
<div id="popular-upcoming" class="stories-container sixcol">

<div class="stories-section-header">
<h2 class="stories-section-header-hed">&nbsp;</h2>
<h2 class="stories-section-header-hed">Popular</h2>
<h3 class="stories-section-header-subhed">The most popular content on SwingFlow!</h3>
</div>

<ul class="plain-list stories-table">
<li><a href="#">진우's Film1080</a></li>
<li><a href="#">영민's MoaMoa</a></li>
<li><a href="#">형일's Movie Finder</a></li>
<li><a href="#">유경's Air Service</a></li>
<li></li>
</ul>

</div>

<div id="recent-stories" class="stories-container sixcol last">
<div class="stories-section-header">
<h2 class="stories-section-header-hed">&nbsp;</h2>
<h2 class="stories-section-header-hed">Upcoming</h2>
<h3 class="stories-section-header-subhed">A selection of the most recently posted content on Bigg.</h3>
</div>

<ul class="plain-list stories-table">

<li><a href="#"><span class="entry-title"><a href="#" title="Hello world!" rel="bookmark">드루와~!!!</a></span></a></li>
<li><a href="#"><span class="entry-title"><a href="#" title="Another Post with Everything In It" rel="bookmark">해운대로 고고</a></span></a></li>
<li><a href="#"><span class="entry-title"><a href="#" title="A Post With Everything In It" rel="bookmark">체코의 아름다운 광경</a></span></a></li>
<li><a href="#"><span class="entry-title"><a href="#" title="A Post With a Left-Aligned Image" rel="bookmark">스웨덴에서 아침식사</a></span></a></li>
<li></li>
</ul>

	</div><!-- end #content-sidebar-wrap -->
	</div><!-- end .wrap --></div><!-- end #inner --> 
<div id="bigg-footer"></html>