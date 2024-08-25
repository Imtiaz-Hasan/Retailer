@php
    Theme::set('pageTitle', __('Search result for: ":query"', ['query' => BaseHelper::stringify(request()->input('q'))]));
    Theme::set('breadcrumbStyle', 'align-center');
    Theme::layout('full-width');
@endphp

@include(Theme::getThemeNamespace('views.loop'))
