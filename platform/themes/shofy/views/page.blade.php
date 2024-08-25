@php
    Theme::set('pageTitle', $page->name);
    Theme::set('breadcrumbStyle', $page->getMetaData('breadcrumb_style', true) ?: 'align-center');
    Theme::set('breadcrumbBackground', $page->getMetaData('breadcrumb_background', true));
@endphp

{!! apply_filters(PAGE_FILTER_FRONT_PAGE_CONTENT, BaseHelper::clean($page->content), $page) !!}
