@php
    Theme::set('pageTitle', $category->name);
    Theme::set('breadcrumbStyle', 'align-center');
    Theme::layout('full-width');
@endphp

@include(Theme::getThemeNamespace('views.loop'))
