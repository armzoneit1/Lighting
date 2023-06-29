<!-- SOCIAL SIDE MENU :: PC & IPAD -->
<div class="d-none d-md-block">
    <nav class="side-menu">
        <ul>
            <li>
                <a href="https://www.lightingshoponline.com/" target="_blank">
                    <i class="fas fa-shopping-cart"></i>
                </a>
            </li>
            <li>
                <a href="https://www.facebook.com/lightingthailand" target="_blank">
                    <i class="fab fa-facebook-f"></i>
                </a>
            </li>
            <li>
                <a href="https://www.youtube.com/LightingChannel?reload=9" target="_blank">
                    <i class="fab fa-youtube"></i>
                </a>
            </li>
            <li>
                <a href="https://www.tiktok.com/@lightingthailand" target="_blank">
                    <img src="images/icon/icon-tiktokWH.svg">
                </a>
            </li>
            <li>
                <a href="https://lin.ee/P1l76vy" target="_blank">
                    <img src="images/icon/icon-lineWH.svg">
                </a>
            </li>
        </ul>
    </nav>
</div>


<script>
    $(window).scroll(function() {
        if ($(this).scrollTop() > 200) {
            $('.side-menu').fadeIn();
        } else {
            $('.side-menu').fadeOut();
        }
    });
</script>