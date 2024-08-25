<?php

if (is_plugin_active('blog')) {
    require_once __DIR__ . '/blog-about-me.php';

    register_widget(BlogAboutMeWidget::class);
}
