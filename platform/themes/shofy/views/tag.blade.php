@php
    Theme::set('pageTitle', $tag->name);
    Theme::set('breadcrumbStyle', 'align-center');
    Theme::layout('full-width');
@endphp

@include(Theme::getThemeNamespace('views.loop'))
