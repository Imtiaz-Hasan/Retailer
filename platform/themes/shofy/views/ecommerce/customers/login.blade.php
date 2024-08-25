@php
    Theme::set('breadcrumbStyle', 'align-center');
    Theme::set('breadcrumbBackground', '');
    Theme::layout('full-width');
@endphp

{!! $form->renderForm() !!}
